// Measurement scaffold: N copies of the MAC under test (valid for N <= 4 with W = 8).
// Copy 0 uses a and b unchanged; copy i >= 1 uses a ^ rotate_left(a, i), same for b,
// so no two operand registers can be merged by synthesis.
// Accumulators are XOR-reduced into one acc port so the I/O pin count does not grow with N.
// Expected registers after synthesis for every design: 38*N + 3.
`ifndef INNER
  `define INNER mac_baseline
`endif
`ifndef ARRAY_N
  `define ARRAY_N 4
`endif
module mac_array #(parameter N = `ARRAY_N, parameter W = 8, parameter ACC_W = 2*W + 6)(
    input  wire             clk, rst_n, valid_in, clear,
    input  wire [W-1:0]     a, b,
    output wire             valid_out,
    output wire [ACC_W-1:0] acc
);
    wire [ACC_W-1:0] acc_i [0:N-1];
    wire [N-1:0]     vo;
    wire [ACC_W-1:0] x [0:N];
    assign x[0] = {ACC_W{1'b0}};

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : g
            wire [W-1:0] a_i, b_i;
            if (i == 0) begin : plain
                assign a_i = a;
                assign b_i = b;
            end else begin : mixed
                assign a_i = a ^ ((a << i) | (a >> (W - i)));
                assign b_i = b ^ ((b << i) | (b >> (W - i)));
            end
            `INNER #(.W(W), .ACC_W(ACC_W)) u (
                .clk(clk), .rst_n(rst_n), .valid_in(valid_in), .clear(clear),
                .a(a_i), .b(b_i),
                .valid_out(vo[i]), .acc(acc_i[i]));
            assign x[i+1] = x[i] ^ acc_i[i];
        end
    endgenerate

    assign acc       = x[N];
    assign valid_out = vo[0];
endmodule
