module TFlipFlop(T, CLK, presetN, clearN, Q);
  input T, CLK, presetN, clearN;
  output reg Q;

  always @(posedge CLK or negedge presetN or negedge clearN)
  begin
    if (~presetN) Q <= 1'b1;
    else if (~clearN) Q <= 1'b0;
    else if (T) Q <= ~Q;  // 使用 T 輸入來切換 Q 的值
  end
endmodule
