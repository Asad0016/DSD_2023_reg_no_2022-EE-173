`timescale 1ns / 1ps

module lab_3_tb;
    logic a, b, c; 
    logic sum, carry;

    lab_3 uut (
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
      .carry(carry)
    );

    initial begin  
      $display("Time | A | B | C | Sum | Carry");
        $monitor("%4t  | %b | %b |  %b  |  %b  |  %b", 
                  $time, a, b, c, sum, carry);
        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;

        $finish;
    end
endmodule
