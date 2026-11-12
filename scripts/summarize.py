rows = {}
for d in ["mac_baseline", "mac_cg", "mac_oi"]:
    for u in (10, 50, 90):
        for line in open(f"power_{d}_{u}.rpt"):
            if line.startswith("Total"):
                rows[(d, u)] = float(line.split()[4])   # total power in W
                break
print("duty,baseline_uW,cg_uW,cg_saving_pct,oi_uW,oi_saving_pct")
for u in (10, 50, 90):
    b = rows[("mac_baseline", u)]
    c = rows[("mac_cg", u)]
    o = rows[("mac_oi", u)]
    print(f"{u},{b*1e6:.1f},{c*1e6:.1f},{(b-c)/b*100:.1f},{o*1e6:.1f},{(b-o)/b*100:.1f}")
