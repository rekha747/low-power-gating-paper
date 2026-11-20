# Low-Power Design Techniques: Clock Gating and Operand Isolation
### An FPGA and ASIC case study on an 8-bit MAC

## Goal
Take one small RTL block (an 8-bit multiply-accumulate unit) and build three
versions: a baseline, a clock-gated version and an operand-isolated version.
Measure the power of each on **FPGA (Vivado)** and **ASIC (OpenLane + Sky130)**
at different activity levels, and report the savings in a paper.

Power gating is **out of scope**. An FPGA cannot switch off part of its supply,
so it is discussed only as related work and future work. We do not claim any
power-gating results.

## The block: 8-bit MAC
`acc = acc + a * b` whenever `valid_in = 1`. The accumulator holds its value
when nothing valid arrives, and `clear` resets it to 0.

| Port | Direction | Meaning |
|---|---|---|
| `clk` | in | clock |
| `rst_n` | in | reset, active low |
| `valid_in` | in | 1 = `a` and `b` are real data |
| `clear` | in | 1 = reset the accumulator to 0 |
| `a`, `b` | in | `W`-bit inputs |
| `valid_out` | out | `valid_in` delayed to match the pipeline |
| `acc` | out | accumulator, `ACC_W` bits |

Parameters: `W = 8` (16 as an extra variable), `ACC_W = 2*W + 6`.
**All versions must use the same ports and parameters**, so one testbench
works for every design.

## Designs compared (per flow)
| Design | Module name | What it does |
|---|---|---|
| Baseline | `mac_baseline` | No power optimization. Do not edit once verified. |
| Clock gated | `mac_cg` | Clock to the input/output registers is stopped when idle. |
| Operand isolated | `mac_oi` | Multiplier inputs are forced to 0 when data is not valid. |
| (Optional) both | `mac_cg_oi` | Only if the team has time. |

## Clock-gate module (the only code that differs between flows)
Every flow has its own file with the **same module name and ports**
(`clk_gate`: inputs `clk`, `en`; output `gclk`):

| File | Used for | Written by |
|---|---|---|
| `clk_gate_sim.v` | functional simulation (latch + AND) | RESHMI |
| `clk_gate_fpga.v` | Vivado implementation (BUFGCE or clock enable) | RESHMI |
| `clk_gate_asic.v` | OpenLane / Sky130 clock-gating cell | REKHA |

Do not use latch + AND gating for FPGA implementation.

## Common settings (everyone uses the same)
- Language: plain Verilog (no SystemVerilog, no vendor cells in the baseline)
- Clock: 50 MHz in both flows
- Activity levels: `valid_in` active **10%, 50%, 90%** of cycles
- Stimulus: one testbench, random data, fixed seed. Data keeps changing even when not valid.
- FPGA flow: Vivado, one Artix-7 part (TBD, same for everyone)
- ASIC flow: OpenLane 2, `sky130_fd_sc_hd`, typical corner, 1.8 V
- Runs: 3 designs x 3 activity levels = 9 runs per flow
- Metrics: dynamic power, total power, % saving vs baseline, area (LUT/FF or cells), timing slack.
  Leakage is reported for ASIC only.

## Team and stages
| Stage | Task | Owner |
|---|---|---|
| 1 | Literature review and scope | NILOFAR |
| 2 | Baseline MAC and testbench | MANVITHA |
| 3 | Clock gating and operand isolation: shared RTL (`mac_cg.v`, `mac_oi.v`) and ASIC clock gate | REKHA |
| 3 | FPGA clock gate (`clk_gate_sim.v`, `clk_gate_fpga.v`) | RESHMI |
| 4 | Power analysis, ASIC | REKHA |
| 4 | Power analysis, FPGA | RESHMI |
| 5 | Paper writing | SUMMY |

Each stage hands over to the next through this repo. Tell the team in the
group when you push.

## Folder structure
- `literature/`: paper summary table, scope document
- `rtl_baseline/`: `mac_baseline.v`
- `rtl_gated/`: `mac_cg.v`, `mac_oi.v`, `clk_gate_*.v`
- `testbench/`: `tb_mac.v`
- `scripts/`: Tcl and shell scripts to re-run the analysis
- `power_reports/fpga/` and `power_reports/asic/`: reports, tables, graphs
- `paper/`: draft, figures, references

## How to run the testbench (Icarus Verilog)
```
iverilog -DDUT=mac_baseline -o sim testbench/tb_mac.v rtl_baseline/mac_baseline.v
vvp sim +DUTY=10
vvp sim +DUTY=50
vvp sim +DUTY=90
```
- Every run must print `PASS`.
- For 16-bit, add `-Ptb.W=16` to the `iverilog` line.
- For the gated versions, change `-DDUT=` to `mac_cg` or `mac_oi` and add the
  gated files and `clk_gate_sim.v` to the command.
- In Vivado, set `DUT=<module name>` as a Verilog define in the simulation settings.

## Rules
1. Edit only your own folder. Message the owner if you need a change.
2. Pull before you start work, commit and push when you finish.
3. Write a short, clear commit message.
4. Do not push VCD, SAIF or tool work folders (see `.gitignore`). Share large files through Google Drive.
5. Never edit the baseline after it is verified. Make changes in `rtl_gated/`.
6. Do not change the ports or parameters after hand-over.
7. Track tasks and problems in GitHub Issues, one per task, with an owner.

## Reporting rules
- FPGA and ASIC results go in **separate tables**. Never compare absolute numbers across the two flows. Only the % savings may be compared.
- Compare dynamic power only on FPGA, because FPGA static power barely changes between designs.
- Report overhead (area, timing) honestly, and report cases where a technique gives little or no saving.
- Keep every report file in `power_reports/`, so any number can be checked.

## Known limitations
- Power gating cannot be implemented on an FPGA and is not measured here.
- On Vivado, small memories may be mapped to LUT RAM. Not an issue for this block, but keep in mind if it is extended.
- On ASIC, OpenLane's default power report assumes default switching activity. Activity-specific power needs a gate-level simulation dump read by OpenSTA.

## ASIC flow: how the results were produced (REKHA)
Tools: OpenLane 2.3.10 (Docker image), PDK `sky130A` (`sky130_fd_sc_hd`), Icarus Verilog.
OpenROAD is run from inside the OpenLane image.

Settings, identical for all three designs: `CLOCK_PORT: clk`, `CLOCK_PERIOD: 20`
(50 MHz), no other overrides. The configs and final metrics are in
`power_reports/asic/<design>/`. Folder paths must not contain spaces, or the
OpenLane lint step fails.

1. In each design folder, run `openlane --dockerized config.yaml`.
2. Simulate the final netlist (`runs/*/final/nl/<design>.nl.v`) with the
   testbench at `DUTY=10`, `50` and `90`. Use a copy of `tb_mac.v` without the
   `#(.W(W), .ACC_W(ACC_W))` parameter override (the netlist has no parameters),
   and compile with the Sky130 cell models:
   ```
   iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 -DDUT=<design> -o gl tb_mac_gl.v \
     <netlist> <cells>/primitives.v <cells>/sky130_fd_sc_hd.v
   vvp gl +DUTY=<duty>
   ```
   Every run must print `PASS`. Rename `mac.vcd` after each run
   (`<design>_<duty>.vcd`). Do not push VCD files.
3. Run `scripts/run_power.sh <design> <duty>` for all 9 runs. It reads the final
   OpenLane database, the typical-corner library (`tt_025C_1v80`), the nominal
   SPEF and the VCD into OpenROAD (`scripts/power.tcl`) and writes
   `power_<design>_<duty>.rpt`. Check that the `Annotated ... pin activities`
   line is the same for all three duty levels of one design.
4. Run `scripts/summarize.py` to produce `results_power.csv`, and
   `scripts/plot_savings.py` for the figure in `paper/`.

Limitations of the ASIC numbers: one fixed-seed run per point; gate-level
simulation with unit delay, so glitch power is only roughly modeled; data toggles
even when `valid_in` is low, which favors both techniques; clock gating also holds
the multiplier inputs still while idle, so the two techniques overlap.

## Open items
- [ ] Target conference/journal, template and deadline
- [ ] Faculty guide approval
- [ ] FPGA part number
- [x] Who runs the Vivado power runs: RESHMI
- [ ] Optional extra variable: 16-bit width, or a second clock frequency

## Status
- [x] Stage 1: Literature review and scope
- [x] Stage 2: Baseline MAC and testbench
- [x] Stage 3, ASIC side: `mac_cg.v`, `mac_oi.v`, `clk_gate_asic.v` in `rtl_gated/`
- [x] Stage 3, FPGA side: `clk_gate_sim.v`, `clk_gate_fpga.v`
- [x] Stage 4, ASIC: reports and results table in `power_reports/asic/`
- [x] Stage 4, FPGA: reports and results table in `power_reports/fpga/`
- [x] Stage 5: Paper writing
- [x] Final review and submission
