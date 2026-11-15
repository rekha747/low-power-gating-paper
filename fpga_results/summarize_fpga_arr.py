import os, re
D = os.environ.get("D", ".")

def num(s):
    s = s.strip()
    return 0.0005 if s.startswith("<") else float(s)   # "<0.001" -> half a step

def rd(inner, n, duty):
    dyn = io = None
    for line in open(f"{D}/arr_vpower_{inner}_N{n}_{duty}.rpt"):
        m = re.search(r"\|\s*Dynamic \(W\)\s*\|\s*([<0-9.eE+-]+)", line)
        if m: dyn = num(m.group(1))
        m = re.search(r"\|\s*I/O\s*\|\s*([<0-9.eE+-]+)", line)
        if m and io is None: io = num(m.group(1))
    if dyn is None or io is None:
        raise SystemExit(f"missing Dynamic or I/O row in {inner} N={n} duty={duty}")
    return dyn * 1e3, io * 1e3

print("N,duty,design,dyn_mW,io_mW,core_mW,saving_dyn_pct,saving_core_pct")
for n in (2, 4):
    for u in (10, 50, 90):
        bd, bi = rd("mac_baseline", n, u)
        for inner, name in (("mac_baseline", "baseline"), ("mac_cg", "clock_gated"), ("mac_oi", "operand_isolated")):
            d, i = rd(inner, n, u)
            core, bcore = d - i, bd - bi
            sd = (bd - d) / bd * 100 if bd else float("nan")
            sc = (bcore - core) / bcore * 100 if bcore else float("nan")
            print(f"{n},{u},{name},{d:.1f},{i:.1f},{core:.1f},{sd:.1f},{sc:.1f}")
