module pattern0101(x, CLK, z);
  input x, CLK;
  output z;
  wire y1, y2;
  wire D1, D2;
  assign D1 = (x & y2) | (~x & y1 & ~y2);
  assign D2 = (~x & ~y2) | (y1);
  assign z = x & y1 & ~y2;

  TFlipFlop TFF1(D1, CLK, 1'b1, 1'b1, y1);
  TFlipFlop TFF2(D2, CLK, 1'b1, 1'b1, y2);
endmodule
