// FPGA clock gate for Vivado (Xilinx 7-series, e.g. Artix-7).
// Same module name and ports as clk_gate_sim.v and clk_gate_asic.v.
// BUFGCE is a global clock buffer with a clock-enable input. Its enable is
// sampled while the clock is low, so the gated clock cannot glitch.
// Do NOT use latch + AND gating on an FPGA.
module clk_gate (
    input  wire clk,
    input  wire en,
    output wire gclk
);
    BUFGCE u_bufgce (
        .I  (clk),
        .CE (en),
        .O  (gclk)
    );
endmodule
