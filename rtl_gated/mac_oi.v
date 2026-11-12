// Operand-isolated 8-bit MAC. Same ports/parameters as mac_baseline.
// Operands are ANDed with valid_in before the operand registers, so a_r/b_r
// (the multiplier inputs) are forced to 0 whenever the data is not valid and the
// multiplier sees no switching during idle cycles.
module mac_oi #(parameter W = 8, parameter ACC_W = 2*W + 6)(
    input  wire             clk, rst_n, valid_in, clear,
    input  wire [W-1:0]     a, b,
    output reg              valid_out,
    output reg  [ACC_W-1:0] acc
);
    reg [W-1:0] a_r, b_r;
    reg v_r, clr_r;

    wire [W-1:0] a_iso = a & {W{valid_in}};
    wire [W-1:0] b_iso = b & {W{valid_in}};

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            a_r <= 0; b_r <= 0; v_r <= 0; clr_r <= 0;
            acc <= 0; valid_out <= 0;
        end else begin
            a_r <= a_iso;  b_r <= b_iso;  v_r <= valid_in;  clr_r <= clear;
            if (clr_r)      acc <= 0;
            else if (v_r)   acc <= acc + a_r * b_r;
            valid_out <= v_r;
        end
    end
endmodule
