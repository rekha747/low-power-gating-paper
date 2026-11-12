// Clock-gated 8-bit MAC. Same ports/parameters as mac_baseline.
// Two gated clock domains; the small control registers stay on the free clock.
//   gclk_in  : a_r, b_r        enabled by valid_in (operands only load when valid)
//   gclk_acc : acc             enabled by v_r | clr_r (acc only changes then)
module mac_cg #(parameter W = 8, parameter ACC_W = 2*W + 6)(
    input  wire             clk, rst_n, valid_in, clear,
    input  wire [W-1:0]     a, b,
    output reg              valid_out,
    output reg  [ACC_W-1:0] acc
);
    reg [W-1:0] a_r, b_r;
    reg v_r, clr_r;

    wire gclk_in, gclk_acc;
    clk_gate u_cg_in  (.clk(clk), .en(valid_in),     .gclk(gclk_in));
    clk_gate u_cg_acc (.clk(clk), .en(v_r | clr_r),  .gclk(gclk_acc));

    // control registers: must see every cycle, so no gating
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            v_r <= 0; clr_r <= 0; valid_out <= 0;
        end else begin
            v_r <= valid_in; clr_r <= clear; valid_out <= v_r;
        end
    end

    // operand registers: clock runs only when valid_in = 1
    always @(posedge gclk_in or negedge rst_n) begin
        if (!rst_n) begin a_r <= 0; b_r <= 0; end
        else        begin a_r <= a; b_r <= b;  end
    end

    // accumulator: clock runs only when there is something to do
    always @(posedge gclk_acc or negedge rst_n) begin
        if (!rst_n)      acc <= 0;
        else if (clr_r)  acc <= 0;                // clear has priority, as in baseline
        else             acc <= acc + a_r * b_r;  // here v_r must be 1
    end
endmodule
