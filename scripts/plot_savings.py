import csv
import matplotlib
matplotlib.use("Agg")          # no window needed, just write the file
import matplotlib.pyplot as plt

rows = list(csv.DictReader(open("results_power.csv")))
duty = [r["duty"] for r in rows]
cg = [float(r["cg_saving_pct"]) for r in rows]
oi = [float(r["oi_saving_pct"]) for r in rows]

x = list(range(len(duty)))
w = 0.35
fig, ax = plt.subplots(figsize=(6, 4))
b1 = ax.bar([i - w / 2 for i in x], cg, w, label="Clock gating")
b2 = ax.bar([i + w / 2 for i in x], oi, w, label="Operand isolation")
ax.axhline(0, color="black", linewidth=0.8)
ax.set_ylim(min(cg + oi) - 8, max(cg + oi) + 10)
ax.set_xticks(x)
ax.set_xticklabels([f"{d}%" for d in duty])
ax.set_xlabel("Valid-input activity (% of cycles)")
ax.set_ylabel("Power saving vs baseline (%)")
ax.set_title("8-bit MAC, Sky130, 50 MHz (ASIC)")
ax.bar_label(b1, fmt="%.1f", padding=2)
ax.bar_label(b2, fmt="%.1f", padding=2)
ax.legend()
fig.tight_layout()
fig.savefig("power_saving_asic.png", dpi=300)
print("saved power_saving_asic.png")
