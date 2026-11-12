// ASIC clock gate for OpenLane / sky130_fd_sc_hd.
// Same module name and ports as clk_gate_sim.v and clk_gate_fpga.v.
// Wraps the library integrated clock-gating cell (latch + AND in one cell).
// The enable `en` is sampled while clk is low, so gclk cannot glitch.
module clk_gate (
    input  wire clk,
    input  wire en,
    output wire gclk
);
    sky130_fd_sc_hd__dlclkp_1 u_icg (
        .CLK  (clk),
        .GATE (en),
        .GCLK (gclk)
    );
endmodule
