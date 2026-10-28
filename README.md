# Low-Power Design Techniques: Clock Gating / Power Gating Case Study

## Goal
Apply clock gating and power gating to one RTL block and measure the power
savings against a baseline design, using simulation/synthesis. Output: a
research paper.

## Team and stages
| Stage | Task | Owner |
|---|---|---|
| 1 | Literature review and scope | TBD |
| 2 | Baseline RTL and testbench | TBD |
| 3 | Clock/power gating implementation | TBD |
| 4 | Power analysis | Rekha |
| 5 | Paper writing | TBD |

## Common settings (everyone must use the same)
- RTL block: TBD
- Language: Verilog / VHDL (TBD)
- Simulator: TBD
- Synthesis / power tool: TBD
- Technology library: TBD
- Clock frequency: TBD
- Supply voltage: TBD
- Activity levels tested: low / medium / high

## Folder structure
- `literature/`: papers and the summary table
- `rtl_baseline/`: baseline design code
- `rtl_gated/`: gated design code (and UPF if used)
- `testbench/`: testbenches
- `scripts/`: tool scripts to re-run the analysis
- `power_reports/`: final reports, tables, graphs
- `paper/`: paper draft and figures

## Rules
1. Edit only your own folder. Message the owner if you need a change.
2. Pull before you start work, push when you finish.
3. Write a short, clear commit message.
4. Do not push large files (VCD, SAIF, tool work folders). See .gitignore.
5. Never edit the baseline RTL after it is verified. Make changes in
   `rtl_gated/`.
6. Report problems and track tasks in GitHub Issues.

## Target venue
- Conference/journal: TBD
- Deadline: TBD
- Faculty guide: TBD

## Status
- [ ] Stage 1: Literature review and scope
- [ ] Stage 2: Baseline design
- [ ] Stage 3: Gating implementation
- [ ] Stage 4: Power analysis
- [ ] Stage 5: Paper writing
- [ ] Final review and submission# low-power-gating-paper
