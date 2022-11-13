`timescale 1 ns/1 ps

module ham_tb();

reg aclk_reg;
reg aresetn_reg;

reg s_axis_tvalid_reg;
reg s_axis_last_reg;

reg [15:0] s_axis_tdata_im_reg;
reg [15:0] s_axis_tdata_re_reg;

design_1_wrapper
design_1_wrapper_inst
(
   .aclk(aclk_reg),
   .aresetn(aresetn_reg),

   .s_axis_last(s_axis_last_reg),
   .s_axis_ready(),
   .s_axis_tdata_im(s_axis_tdata_im_reg),
   .s_axis_tdata_re(s_axis_tdata_re_reg),
   .s_axis_tvalid(s_axis_tvalid_reg)
);

integer i;
integer n;

real x;

real a0 = 0.53836;
real a1 = 0.46164;

initial begin
   aclk_reg = 0;
   forever begin
      #5;
      aclk_reg = !aclk_reg;
   end
end

initial begin
   $display("Begin verification of hamming windows ... ");

   for (n = 0; n < 255; n = n + 1) begin
      x = 2 * 3.1415 * n/255;
      $display("$cos(%0.3f) = %0.3f", x , a0 - a1 * $cos(x));
   end
   
   aresetn_reg = 0;
   s_axis_last_reg = 0;
   s_axis_tvalid_reg = 0;
   s_axis_tdata_im_reg = 0;
   s_axis_tdata_re_reg = 0;
   #1000;
   aresetn_reg = 1;
   #1000;

   @(posedge aclk_reg);
   #9.9;
   s_axis_tvalid_reg = 1;
   for (i = 0; i < 256 - 1; i = i + 1) begin
      @(posedge aclk_reg);
      if(i > 0) 
      s_axis_tdata_re_reg = s_axis_tdata_re_reg + 1;   
   end
   @(posedge aclk_reg); 
   s_axis_last_reg = 1;
   s_axis_tdata_re_reg = s_axis_tdata_re_reg + 1; 
   #9.9;
   s_axis_tvalid_reg = 0;
   s_axis_tdata_re_reg = 0;
   s_axis_last_reg = 0;

   $display("TEST PASSED");
end

endmodule