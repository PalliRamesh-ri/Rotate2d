module rotate2d(x,y,angle,x_rot,y_rot);
input signed[7:0]x,y;
input signed[1:0]angle;
output reg [7:0]x_rot,y_rot;

always@(*)begin
case(angle)
2'b00: begin
x_rot=x;
y_rot=y;
end
2'b01:begin
x_rot=-y;
y_rot=x;
end
2'b10:begin
x_rot=-x;
y_rot=-y;
end
2'b11:begin
x_rot=y;
y_rot=-x;
end
default:begin
x_rot=0;
y_rot=0;
end
endcase
end
endmodule
