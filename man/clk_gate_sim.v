// Simulation model of the clock gate: latch (transparent while clk low) + AND.
module clk_gate (
    input  wire clk,
    input  wire en,
    output wire gclk
);
    reg en_latch;
    initial en_latch = 1'b0;
    always @(*) if (!clk) en_latch = en;
    assign gclk = clk & en_latch;
endmodule
