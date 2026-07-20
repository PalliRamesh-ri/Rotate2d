module rotate2d_tb();
reg signed[7:0]x,y;
reg signed[1:0]angle;
wire  signed[7:0]x_rot,y_rot;

rotate2d uut(.x(x),.y(y),.angle(angle),.x_rot(x_rot),.y_rot(y_rot));
initial begin
$monitor("$time=%t\t,x=%d\t,y=%d\t,angle=%b\t,x_rot=%d\t,y_rot=%d\t",$time,x,y,angle,x_rot,y_rot);
#5 x=10;y=5;angle=00;
#5 x=5;y=10;angle=01;
#5 x=10;y=10;angle=10;
#5 x=20;y=15;angle=11;
#5 $finish;
end
endmodule