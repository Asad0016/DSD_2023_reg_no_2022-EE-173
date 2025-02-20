`timescale 1ns/10ps
module lab_2_tb();
    logic a1;
    logic b1;
    logic c1;
    logic x1;
    logic y1;

    lab_2 uut(
        .a(a1),
        .b(b1),
        .c(c1),
        .x(x1),
        .y(y1)
    );
    initial begin
        a1 = 0; b1 = 0; c1 = 0; #10;
        a1 = 0; b1 = 0; c1 = 1; #10;
        a1 = 0; b1 = 1; c1 = 0; #10;
        a1 = 0; b1 = 1; c1 = 1; #10;
        a1 = 1; b1 = 0; c1 = 0; #10;
        a1 = 1; b1 = 0; c1 = 1; #10;
        a1 = 1; b1 = 1; c1 = 0; #10;
        a1 = 1; b1 = 1; c1 = 1; #10;
        $stop;
    end

    initial begin 
        $monitor("Time=%0t | a=%b, b=%b, c=%b | x=%b, y=%b", $time, a1, b1, c1, x1, y1);
    end
endmodule
