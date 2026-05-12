module alu_2bit (
    input [1:0] A,
    input [1:0] B,
    input [1:0] sel,
    output reg [3:0] Y
);

always @(*) begin
    case(sel)
        2'b00: Y = A + B;   // Addition
        2'b01: Y = A - B;   // Subtraction
        2'b10: Y = A & B;   // AND
        2'b11: Y = A | B;   // OR
        default: Y = 4'b0000;
    endcase
end

endmodule
