`timescale 1ns/1ps
`ifndef DUT
  `define DUT mac_baseline      // override with -DDUT=mac_cg etc.
`endif
module tb;
    parameter W     = 8;
    parameter ACC_W = 2*W + 6;
    parameter N     = 10000;    // random-phase cycles

    reg clk = 0, rst_n = 0, valid_in = 0, clear = 0;
    reg [W-1:0] a = 0, b = 0;
    wire valid_out;
    wire [ACC_W-1:0] acc;

    `DUT #(.W(W), .ACC_W(ACC_W)) dut (.clk(clk), .rst_n(rst_n),
        .valid_in(valid_in), .clear(clear), .a(a), .b(b),
        .valid_out(valid_out), .acc(acc));

    always #10 clk = ~clk;      // 50 MHz

    // reference model (checks that every version behaves like the baseline)
    reg [W-1:0] ma, mb;  reg mv, mc;  reg [ACC_W-1:0] macc;  reg mvo;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin ma<=0; mb<=0; mv<=0; mc<=0; macc<=0; mvo<=0; end
        else begin
            ma<=a; mb<=b; mv<=valid_in; mc<=clear;
            if (mc) macc<=0; else if (mv) macc<=macc + ma*mb;
            mvo<=mv;
        end
    end

    integer duty, seed, i, errors;
    reg [ACC_W-1:0] expected, maxv;

    task check(input [ACC_W-1:0] exp_val);
        begin
            if (acc !== exp_val) begin
                errors = errors + 1;
                $display("DIRECTED MISMATCH at %0t: acc=%0d expected=%0d",
                         $time, acc, exp_val);
            end
        end
    endtask
    task send(input [W-1:0] x, input [W-1:0] y);   // one valid product
        begin @(negedge clk); a=x; b=y; valid_in=1; clear=0;
              @(negedge clk); valid_in=0; end
    endtask
    task do_clear;
        begin @(negedge clk); clear=1; @(negedge clk); clear=0; end
    endtask
    task settle; begin repeat (3) @(negedge clk); end endtask

    initial begin
        if (!$value$plusargs("DUTY=%d", duty)) duty = 50;   // % valid cycles
        seed = 1;  errors = 0;
        $dumpfile("mac.vcd");  $dumpvars(0, tb);
        #55 rst_n = 1;

        // ---- hand-checked directed tests ----
        do_clear;  settle;           check(0);                    // clear works
        send(3, 4);  settle;         check(12);                   // 3*4
        maxv = {W{1'b1}};
        send(maxv[W-1:0], maxv[W-1:0]); settle;
        expected = 12 + maxv*maxv;   check(expected);             // max*max
        @(negedge clk); a=2; b=5; valid_in=1;                     // two in a row
        @(negedge clk);              valid_in=1;
        @(negedge clk);              valid_in=0;
        repeat (3) begin             // idle gap, data keeps changing
            @(negedge clk); a=$random(seed); b=$random(seed);
        end
        settle;                      check(expected + 20);        // acc held

        // ---- random phase ----
        for (i = 0; i < N; i = i + 1) begin
            @(negedge clk);
            a        = $random(seed);        // data changes EVERY cycle,
            b        = $random(seed);        // even when not valid
            valid_in = (({$random(seed)} % 100) < duty);
            clear    = (i % 64 == 63);
            if (acc !== macc || valid_out !== mvo) errors = errors + 1;
        end

        if (errors == 0) $display("PASS (duty=%0d%%, W=%0d)", duty, W);
        else             $display("FAIL: %0d mismatches", errors);
        $finish;
    end
endmodule
