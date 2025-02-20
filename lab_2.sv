module lab_2(
input wire a,
input wire b,
input wire c,
output wire x,
output wire y
);
assign x=~c^(a|b);
assign y=(a|b)&(~(a&b)^(a|b));
endmodule
