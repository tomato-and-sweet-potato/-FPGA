// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Wed Feb 24 11:16:44 2021
//
// Verilog Description of module top
//

module top (sys_clk, sys_rst_n, sw1, sw2, beep, uart_txd, one_wire, 
            uart_rxd, oled_res, key1, key2, key3, oled_cs, oled_dc, 
            oled_sck, oled_mosi, led) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(1[8:11])
    input sys_clk;   // d:/new porject/top-xu/top.v(3[8:15])
    input sys_rst_n;   // d:/new porject/top-xu/top.v(4[8:17])
    input sw1;   // d:/new porject/top-xu/top.v(10[8:11])
    input sw2;   // d:/new porject/top-xu/top.v(11[8:11])
    output beep;   // d:/new porject/top-xu/top.v(19[18:22])
    output uart_txd;   // d:/new porject/top-xu/top.v(20[10:18])
    inout one_wire;   // d:/new porject/top-xu/top.v(23[8:16])
    input uart_rxd;   // d:/new porject/top-xu/top.v(12[18:26])
    output oled_res;   // d:/new porject/top-xu/top.v(14[9:17])
    input key1;   // d:/new porject/top-xu/top.v(5[8:12])
    input key2;   // d:/new porject/top-xu/top.v(6[8:12])
    input key3;   // d:/new porject/top-xu/top.v(7[8:12])
    output oled_cs;   // d:/new porject/top-xu/top.v(15[9:16])
    output oled_dc;   // d:/new porject/top-xu/top.v(16[9:16])
    output oled_sck;   // d:/new porject/top-xu/top.v(17[9:17])
    output oled_mosi;   // d:/new porject/top-xu/top.v(18[9:18])
    output led;   // d:/new porject/top-xu/top.v(9[13:16])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire clk_1s /* synthesis is_clock=1, SET_AS_NETWORK=clk_1s */ ;   // d:/new porject/top-xu/top.v(29[7:13])
    
    wire GND_net, VCC_net, sys_rst_n_c, key1_c, key2_c, key3_c, 
        led_c, sw1_c, sw2_c, uart_rxd_c, oled_res_c, oled_cs_c, 
        oled_dc_c, oled_sck_c, oled_mosi_c, beep_c, uart_txd_c;
    wire [7:0]sec;   // d:/new porject/top-xu/top.v(25[14:17])
    wire [7:0]min;   // d:/new porject/top-xu/top.v(26[14:17])
    wire [7:0]hour;   // d:/new porject/top-xu/top.v(27[14:18])
    
    wire key1_pulse;
    wire [7:0]sec_t;   // d:/new porject/top-xu/top.v(62[16:21])
    wire [7:0]min_t;   // d:/new porject/top-xu/top.v(63[16:21])
    wire [7:0]hour_t;   // d:/new porject/top-xu/top.v(64[16:22])
    wire [2:0]key_mode;   // d:/new porject/top-xu/top.v(65[16:24])
    wire [7:0]min_warning;   // d:/new porject/top-xu/top.v(67[16:27])
    wire [7:0]hour_warning;   // d:/new porject/top-xu/top.v(68[16:28])
    wire [7:0]min_waning_t;   // d:/new porject/top-xu/top.v(69[16:28])
    wire [7:0]hour_waning_t;   // d:/new porject/top-xu/top.v(70[16:29])
    
    wire warning, time_set;
    wire [7:0]warning_time;   // d:/new porject/top-xu/top.v(74[16:28])
    wire [3:0]min_tens;   // d:/new porject/top-xu/top.v(234[15:23])
    wire [3:0]min_ones;   // d:/new porject/top-xu/top.v(235[15:23])
    wire [3:0]hour_tens;   // d:/new porject/top-xu/top.v(237[15:24])
    wire [3:0]hour_ones;   // d:/new porject/top-xu/top.v(238[15:24])
    wire [3:0]min_warning_tens;   // d:/new porject/top-xu/top.v(241[15:31])
    wire [3:0]min_warning_ones;   // d:/new porject/top-xu/top.v(242[15:31])
    wire [3:0]hour_warning_tens;   // d:/new porject/top-xu/top.v(244[15:32])
    wire [3:0]hour_warning_ones;   // d:/new porject/top-xu/top.v(245[15:32])
    wire [15:0]ds18b20_data;   // d:/new porject/top-xu/top.v(289[14:26])
    wire [3:0]Tem_high;   // d:/new porject/top-xu/top.v(291[13:21])
    wire [3:0]Tem_lower;   // d:/new porject/top-xu/top.v(292[13:22])
    wire [7:0]Temp_H;   // d:/new porject/top-xu/top.v(310[11:17])
    
    wire uart_en;
    wire [7:0]uart_send_data;   // d:/new porject/top-xu/top.v(342[12:26])
    
    wire warning_TEM, uart_recv_done;
    wire [7:0]uart_recv_data;   // d:/new porject/top-xu/top.v(400[13:27])
    wire [7:0]music_tone;   // d:/new porject/top-xu/top.v(401[13:23])
    
    wire n5514, n5513, n5512, n5511, n5274, n5496, n5497, n5507, 
        n5172, n5492, n5493, n5494, n5495, n5360, n5359, n5358, 
        n5357, n5223, n5479, n5480, n5510, n5509, n5508, n5474, 
        n5475, n5476, n5477, n5490, n5491, n5350, n5349, n5348, 
        n5347, n5478, n5340, n5339, n5338, n5337, n5336, n5548, 
        n5547, n5546, n5545, n5544, n5543, n5542, n5541, n5531, 
        n5530, n5529, n5528, n5527, n5526, n5525, warning_time_7__N_176, 
        led_N_216, n749, n750, n751, n752, n753, n754, n755, 
        n756, led_N_213, n795, n796, n797, n798, n799, n800, 
        n801, n802, n805, n806, n807, n808, n809, n810, n811, 
        n812, n831, n850;
    wire [7:0]sec_7__N_1;
    wire [7:0]min_7__N_11;
    wire [7:0]hour_7__N_19;
    
    wire uart_en_N_227, uart_en_N_226, n986, n987, n988, n989, n990, 
        n991, n992, n20729, n4, n34513, key_sec_pre, key_sec, 
        key_sec_pre_adj_1904, key_sec_adj_1905, n9689;
    wire [3:0]hundres_0__N_349;
    wire [3:0]hundres_0__N_352;
    wire [3:0]hundres_0__N_352_adj_1962;
    
    wire hundres_0__N_357, n36980;
    wire [3:0]hundres_0__N_349_adj_1986;
    wire [3:0]hundres_0__N_352_adj_1988;
    
    wire hundres_0__N_357_adj_1908;
    wire [3:0]hundres_0__N_349_adj_2012;
    wire [3:0]hundres_0__N_352_adj_2014;
    
    wire hundres_0__N_357_adj_1911;
    wire [3:0]hundres_0__N_352_adj_2040;
    
    wire hundres_0__N_357_adj_1913, sys_clk_c_enable_106;
    wire [3:0]hundres_1__N_341_adj_2058;
    wire [5:0]cnt_write;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    
    wire n4_adj_1914, n37214, n21939, one_wire_N_667, n34406, n34405;
    wire [4:0]cnt_main_adj_2083;   // d:/new porject/top-xu/oled.v(45[12:20])
    wire [15:0]cnt_adj_2088;   // d:/new porject/top-xu/oled.v(46[35:38])
    
    wire n9607, sys_clk_c_enable_136, n34404, n9602, n34403, n14, 
        n8602, n8599, sys_clk_c_enable_79, n29, n20731, n8609, clk_1s_enable_16, 
        n34398, n34397, n34396, n34395, n8623, n8622, n8621, n34390, 
        n34389, n34388, n8629, n8628, n8627, n8626, n34387, n5473, 
        n38817, n2507, n2508, n2509, n2510, n2676, n2677, n2678, 
        n2679, n2680, n2681, n2682, n3054, n3055, n3056, n3057, 
        n3058, n3059, n3060, n38816, n3432, n3433, n3434, n3435, 
        n3436, n3437, n3438, n3810, n3811, n3812, n3813, n3814, 
        n3815, n3816, n4188, n4189, n4190, n4191, n4192, n4193, 
        n4194, n38815, n37729, n37727, n37434, rx_flag, n20151, 
        n37706;
    wire [7:0]cnt_run;   // d:/new porject/top-xu/music_player.v(36[11:18])
    wire [4:0]state_adj_2110;   // d:/new porject/top-xu/music_player.v(41[11:16])
    wire [8:0]music_cnt;   // d:/new porject/top-xu/music_player.v(47[11:20])
    
    wire n123, n124, n125, n126, n9316, n9303, clk_1s_enable_12, 
        n34376, n34375, n34374, n34373, n5335, n5334, n5333, n5344, 
        n5343, n5346, n5345, n9685, n9683, n5354, n5353, n5356, 
        n5355, n36995, n37670, n37668, n37666, n13, n34212, n5, 
        n15, n34211, n39351, n27351, n41006, n34210, n19, n18, 
        n34209, n34208, n34207, n34206, n34205, n34204, n34203, 
        n34202, n41, n31, n34201, n24, n39369, n34188, n34038, 
        n34036, n34, n44, n37866, n5524, n19664, n6, n9598, 
        n39663, n8, n22, n22_adj_1915, n11472, n39657, sys_clk_c_enable_266, 
        n15_adj_1916, n37215, sys_clk_c_enable_119, n9593, n37381, 
        n9611, n40989, n37216, n37081, n39643, one_wire_out, n39642, 
        n39641, n39303, n39302, n41_adj_1917, n39301, n39632, n4_adj_1918, 
        n39631, n25720, n34888, n4_adj_1919, n4_adj_1920, n37867, 
        n5_adj_1921, n34582, n37719, n39615, n34189, n39232, n39231, 
        n39230, n39206, n39205, n8_adj_1922, n14_adj_1923, n11, 
        n39587, n39586, n6_adj_1924, n7, n34035, n1, n39569, n39364, 
        n39562, n37077, n39561, n39363, n7_adj_1925, n37838, n34037, 
        n39362, n12, n12_adj_1926, n39546, n39545, n38562, n4_adj_1927, 
        n39359, n39537, n38554, n34707, n36, n26543, n39528, n26549, 
        n34190, n34187, n39514, n39512, n39511, sys_clk_c_enable_54, 
        n38528, n38527, sys_clk_c_enable_152, n39485, sys_clk_c_enable_241, 
        n37358, n4_adj_1928, n6_adj_1929, n39483, n39482, n19147, 
        n6_adj_1930, n5_adj_1931, n39471, n13261, n13249, n6_adj_1932, 
        sys_clk_c_enable_159, n11_adj_1933, n38480, n12689, n12685, 
        n4_adj_1934, n27972;
    
    VHI i32700 (.Z(VCC_net));
    FD1P3JX uart_send_data_i0_i6 (.D(n986), .SP(sys_clk_c_enable_241), .PD(n21939), 
            .CK(sys_clk_c), .Q(uart_send_data[6]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam uart_send_data_i0_i6.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i0 (.D(n5548), .SP(sys_clk_c_enable_79), .CK(sys_clk_c), 
            .Q(sec_t[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i0.GSR = "ENABLED";
    FD1P3AY min_waning_t_i0_i0 (.D(min_warning[0]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(min_waning_t[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i0.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i0 (.D(hour_warning[0]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(hour_waning_t[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i0.GSR = "ENABLED";
    FD1S3AX sec_i0 (.D(sec_7__N_1[0]), .CK(clk_1s), .Q(sec[0]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i0.GSR = "ENABLED";
    FD1S3AX min_i0 (.D(min_7__N_11[0]), .CK(clk_1s), .Q(min[0]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam min_i0.GSR = "ENABLED";
    FD1P3JX uart_send_data_i0_i5 (.D(n987), .SP(sys_clk_c_enable_241), .PD(n21939), 
            .CK(sys_clk_c), .Q(uart_send_data[5]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam uart_send_data_i0_i5.GSR = "DISABLED";
    FD1P3AX hour_i0 (.D(hour_7__N_19[0]), .SP(clk_1s_enable_16), .CK(clk_1s), 
            .Q(hour[0]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i0.GSR = "ENABLED";
    FD1P3AX Temp_H_i0 (.D(ds18b20_data[4]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[0]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam Temp_H_i0.GSR = "ENABLED";
    CCU2D add_1889_9 (.A0(n5172), .B0(n39642), .C0(n5344), .D0(sec_t[6]), 
          .A1(n5172), .B1(n39642), .C1(n5343), .D1(sec_t[7]), .CIN(n34390), 
          .S0(n5542), .S1(n5541));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1889_9.INIT0 = 16'he4b1;
    defparam add_1889_9.INIT1 = 16'he4b1;
    defparam add_1889_9.INJECT1_0 = "NO";
    defparam add_1889_9.INJECT1_1 = "NO";
    FD1S3AY min_warning__i0 (.D(n24), .CK(sys_clk_c), .Q(min_warning[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i0.GSR = "ENABLED";
    FD1P3IX warning_time__i0 (.D(n756), .SP(clk_1s_enable_12), .CD(n9683), 
            .CK(clk_1s), .Q(warning_time[0]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i0.GSR = "ENABLED";
    CCU2D add_1889_7 (.A0(n5172), .B0(n39642), .C0(n5346), .D0(sec_t[4]), 
          .A1(n5172), .B1(n39642), .C1(n5345), .D1(sec_t[5]), .CIN(n34389), 
          .COUT(n34390), .S0(n5544), .S1(n5543));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1889_7.INIT0 = 16'he4b1;
    defparam add_1889_7.INIT1 = 16'he4b1;
    defparam add_1889_7.INJECT1_0 = "NO";
    defparam add_1889_7.INJECT1_1 = "NO";
    CCU2D add_1889_5 (.A0(n5172), .B0(n39642), .C0(n5348), .D0(sec_t[2]), 
          .A1(n5172), .B1(n39642), .C1(n5347), .D1(sec_t[3]), .CIN(n34388), 
          .COUT(n34389), .S0(n5546), .S1(n5545));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1889_5.INIT0 = 16'he4b1;
    defparam add_1889_5.INIT1 = 16'he4b1;
    defparam add_1889_5.INJECT1_0 = "NO";
    defparam add_1889_5.INJECT1_1 = "NO";
    FD1P3IX hour_i3 (.D(hour_t[3]), .SP(clk_1s_enable_16), .CD(n26549), 
            .CK(clk_1s), .Q(hour[3]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i3.GSR = "ENABLED";
    FD1P3IX hour_i2 (.D(hour_t[2]), .SP(clk_1s_enable_16), .CD(n26549), 
            .CK(clk_1s), .Q(hour[2]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i2.GSR = "ENABLED";
    CCU2D add_1889_3 (.A0(n39642), .B0(n5172), .C0(n5350), .D0(sec_t[0]), 
          .A1(n5172), .B1(n39642), .C1(n5349), .D1(sec_t[1]), .CIN(n34387), 
          .COUT(n34388), .S0(n5548), .S1(n5547));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1889_3.INIT0 = 16'hd1e2;
    defparam add_1889_3.INIT1 = 16'he4b1;
    defparam add_1889_3.INJECT1_0 = "NO";
    defparam add_1889_3.INJECT1_1 = "NO";
    ROM128X1A mux_888_Mux_28 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3056)) /* synthesis initstate=0x001808620D0000023C91810800000491 */ ;
    defparam mux_888_Mux_28.initval = 128'h001808620D0000023C91810800000491;
    ROM128X1A mux_888_Mux_26 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3058)) /* synthesis initstate=0x041BA2FA090040003C3001AC00000030 */ ;
    defparam mux_888_Mux_26.initval = 128'h041BA2FA090040003C3001AC00000030;
    FD1P3JX uart_send_data_i0_i4 (.D(n988), .SP(sys_clk_c_enable_241), .PD(n21939), 
            .CK(sys_clk_c), .Q(uart_send_data[4]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam uart_send_data_i0_i4.GSR = "DISABLED";
    CCU2D add_124_7 (.A0(warning_time[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34203), .COUT(n34204), .S0(n751), .S1(n750));   // d:/new porject/top-xu/top.v(193[22:41])
    defparam add_124_7.INIT0 = 16'h5aaa;
    defparam add_124_7.INIT1 = 16'h5aaa;
    defparam add_124_7.INJECT1_0 = "NO";
    defparam add_124_7.INJECT1_1 = "NO";
    CCU2D add_1889_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5172), .B1(n39642), .C1(GND_net), .D1(GND_net), .COUT(n34387));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1889_1.INIT0 = 16'hF000;
    defparam add_1889_1.INIT1 = 16'heeee;
    defparam add_1889_1.INJECT1_0 = "NO";
    defparam add_1889_1.INJECT1_1 = "NO";
    CCU2D add_124_5 (.A0(warning_time[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34202), .COUT(n34203), .S0(n753), .S1(n752));   // d:/new porject/top-xu/top.v(193[22:41])
    defparam add_124_5.INIT0 = 16'h5aaa;
    defparam add_124_5.INIT1 = 16'h5aaa;
    defparam add_124_5.INJECT1_0 = "NO";
    defparam add_124_5.INJECT1_1 = "NO";
    CCU2D add_124_3 (.A0(warning_time[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34201), .COUT(n34202), .S0(n755), .S1(n754));   // d:/new porject/top-xu/top.v(193[22:41])
    defparam add_124_3.INIT0 = 16'h5aaa;
    defparam add_124_3.INIT1 = 16'h5aaa;
    defparam add_124_3.INJECT1_0 = "NO";
    defparam add_124_3.INJECT1_1 = "NO";
    CCU2D add_124_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(warning_time[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n34201), .S1(n756));   // d:/new porject/top-xu/top.v(193[22:41])
    defparam add_124_1.INIT0 = 16'hF000;
    defparam add_124_1.INIT1 = 16'h5555;
    defparam add_124_1.INJECT1_0 = "NO";
    defparam add_124_1.INJECT1_1 = "NO";
    FD1P3AX min_waning_t_i0_i7 (.D(min_warning[7]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(min_waning_t[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i7.GSR = "ENABLED";
    FD1P3JX uart_send_data_i0_i3 (.D(n989), .SP(sys_clk_c_enable_241), .PD(n21939), 
            .CK(sys_clk_c), .Q(uart_send_data[3]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam uart_send_data_i0_i3.GSR = "DISABLED";
    FD1P3AX min_waning_t_i0_i6 (.D(min_warning[6]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(min_waning_t[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i6.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i5 (.D(min_warning[5]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(min_waning_t[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i5.GSR = "ENABLED";
    ROM128X1A mux_888_Mux_39 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2676)) /* synthesis initstate=0x050D6D04950D7976000400200000EC04 */ ;
    defparam mux_888_Mux_39.initval = 128'h050D6D04950D7976000400200000EC04;
    ROM128X1A mux_888_Mux_37 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2677)) /* synthesis initstate=0x00A5E93E05A7FDFF016980700000FD69 */ ;
    defparam mux_888_Mux_37.initval = 128'h00A5E93E05A7FDFF016980700000FD69;
    ROM128X1A mux_888_Mux_30 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3054)) /* synthesis initstate=0x04A8927EACAA96BD4BEF426800007BEF */ ;
    defparam mux_888_Mux_30.initval = 128'h04A8927EACAA96BD4BEF426800007BEF;
    ROM128X1A mux_888_Mux_24 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3060)) /* synthesis initstate=0x001010012C1F82FDC3AD02CC0000FBAD */ ;
    defparam mux_888_Mux_24.initval = 128'h001010012C1F82FDC3AD02CC0000FBAD;
    ROM128X1A mux_888_Mux_22 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3432)) /* synthesis initstate=0x0478923EBE7A96BD836F405000007B6F */ ;
    defparam mux_888_Mux_22.initval = 128'h0478923EBE7A96BD836F405000007B6F;
    ROM128X1A mux_888_Mux_21 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3433)) /* synthesis initstate=0x02831A80029002005C025F1200000002 */ ;
    defparam mux_888_Mux_21.initval = 128'h02831A80029002005C025F1200000002;
    ROM128X1A mux_888_Mux_20 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3434)) /* synthesis initstate=0x0588322212960A03AC160C5800000416 */ ;
    defparam mux_888_Mux_20.initval = 128'h0588322212960A03AC160C5800000416;
    FD1P3JX uart_send_data_i0_i2 (.D(n990), .SP(sys_clk_c_enable_241), .PD(n21939), 
            .CK(sys_clk_c), .Q(uart_send_data[2]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam uart_send_data_i0_i2.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(min_warning[6]), .B(min_warning[5]), .C(n6_adj_1929), 
         .D(min_warning[4]), .Z(n4)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'heaaa;
    FD1P3AX min_waning_t_i0_i4 (.D(min_warning[4]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(min_waning_t[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i4.GSR = "ENABLED";
    IB sw2_pad (.I(sw2), .O(sw2_c));   // d:/new porject/top-xu/top.v(11[8:11])
    FD1P3AX min_waning_t_i0_i3 (.D(min_warning[3]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(min_waning_t[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i3.GSR = "ENABLED";
    FD1P3JX uart_send_data_i0_i1 (.D(n991), .SP(sys_clk_c_enable_241), .PD(n21939), 
            .CK(sys_clk_c), .Q(uart_send_data[1]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam uart_send_data_i0_i1.GSR = "DISABLED";
    FD1P3IX hour_i1 (.D(hour_t[1]), .SP(clk_1s_enable_16), .CD(n26549), 
            .CK(clk_1s), .Q(hour[1]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i1.GSR = "ENABLED";
    PFUMX i31911 (.BLUT(n39231), .ALUT(n39230), .C0(cnt_adj_2088[4]), 
          .Z(n39232));
    FD1P3AX hour_t_i0_i0 (.D(n5531), .SP(sys_clk_c_enable_159), .CK(sys_clk_c), 
            .Q(hour_t[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i0.GSR = "ENABLED";
    CCU2D add_138_9 (.A0(sec[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34212), 
          .S0(n805));   // d:/new porject/top-xu/top.v(219[14:24])
    defparam add_138_9.INIT0 = 16'h5aaa;
    defparam add_138_9.INIT1 = 16'h0000;
    defparam add_138_9.INJECT1_0 = "NO";
    defparam add_138_9.INJECT1_1 = "NO";
    CCU2D add_138_7 (.A0(sec[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34211), 
          .COUT(n34212), .S0(n807), .S1(n806));   // d:/new porject/top-xu/top.v(219[14:24])
    defparam add_138_7.INIT0 = 16'h5aaa;
    defparam add_138_7.INIT1 = 16'h5aaa;
    defparam add_138_7.INJECT1_0 = "NO";
    defparam add_138_7.INJECT1_1 = "NO";
    FD1P3IX key_mode_2996__i0 (.D(n39587), .SP(key1_pulse), .CD(n26543), 
            .CK(sys_clk_c), .Q(key_mode[0]));   // d:/new porject/top-xu/top.v(99[22:37])
    defparam key_mode_2996__i0.GSR = "ENABLED";
    FD1P3JX uart_send_data_i0_i0 (.D(n992), .SP(sys_clk_c_enable_241), .PD(n21939), 
            .CK(sys_clk_c), .Q(uart_send_data[0]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam uart_send_data_i0_i0.GSR = "DISABLED";
    FD1P3AY led_187 (.D(led_N_213), .SP(warning_time_7__N_176), .CK(clk_1s), 
            .Q(led_c));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam led_187.GSR = "ENABLED";
    CCU2D add_138_5 (.A0(sec[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34210), 
          .COUT(n34211), .S0(n809), .S1(n808));   // d:/new porject/top-xu/top.v(219[14:24])
    defparam add_138_5.INIT0 = 16'h5aaa;
    defparam add_138_5.INIT1 = 16'h5aaa;
    defparam add_138_5.INJECT1_0 = "NO";
    defparam add_138_5.INJECT1_1 = "NO";
    FD1P3IX uart_en_192 (.D(n41006), .SP(sys_clk_c_enable_54), .CD(n20151), 
            .CK(sys_clk_c), .Q(uart_en));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam uart_en_192.GSR = "ENABLED";
    FD1P3AX min_t_i0_i0 (.D(n5480), .SP(sys_clk_c_enable_152), .CK(sys_clk_c), 
            .Q(min_t[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i0.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i2 (.D(min_warning[2]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(min_waning_t[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i2.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i1 (.D(min_warning[1]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(min_waning_t[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i1.GSR = "ENABLED";
    IB sw1_pad (.I(sw1), .O(sw1_c));   // d:/new porject/top-xu/top.v(10[8:11])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/new porject/top-xu/top.v(4[8:17])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/new porject/top-xu/top.v(3[8:15])
    OB led_pad (.I(led_c), .O(led));   // d:/new porject/top-xu/top.v(9[13:16])
    OB oled_mosi_pad (.I(oled_mosi_c), .O(oled_mosi));   // d:/new porject/top-xu/top.v(18[9:18])
    OB oled_sck_pad (.I(oled_sck_c), .O(oled_sck));   // d:/new porject/top-xu/top.v(17[9:17])
    OB oled_dc_pad (.I(oled_dc_c), .O(oled_dc));   // d:/new porject/top-xu/top.v(16[9:16])
    FD1P3AX sec_t_i0_i7 (.D(n5541), .SP(sys_clk_c_enable_79), .CK(sys_clk_c), 
            .Q(sec_t[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i7.GSR = "ENABLED";
    OB oled_cs_pad (.I(oled_cs_c), .O(oled_cs));   // d:/new porject/top-xu/top.v(15[9:16])
    FD1P3AX sec_t_i0_i6 (.D(n5542), .SP(sys_clk_c_enable_79), .CK(sys_clk_c), 
            .Q(sec_t[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i6.GSR = "ENABLED";
    ROM128X1A mux_888_Mux_19 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3435)) /* synthesis initstate=0x00003A40059D63E503C3AC320000CBC3 */ ;
    defparam mux_888_Mux_19.initval = 128'h00003A40059D63E503C3AC320000CBC3;
    ROM128X1A mux_888_Mux_18 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3436)) /* synthesis initstate=0x041FD7BE10102A002C2A0C5A0000002A */ ;
    defparam mux_888_Mux_18.initval = 128'h041FD7BE10102A002C2A0C5A0000002A;
    OB oled_res_pad (.I(oled_res_c), .O(oled_res));   // d:/new porject/top-xu/top.v(14[9:17])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // d:/new porject/top-xu/top.v(20[10:18])
    OB beep_pad (.I(beep_c), .O(beep));   // d:/new porject/top-xu/top.v(19[18:22])
    ROM128X1A mux_888_Mux_25 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3059)) /* synthesis initstate=0x00100040580020020C42001C00000442 */ ;
    defparam mux_888_Mux_25.initval = 128'h00100040580020020C42001C00000442;
    ROM128X1A mux_888_Mux_29 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3055)) /* synthesis initstate=0x075300C0184000000484403800000084 */ ;
    defparam mux_888_Mux_29.initval = 128'h075300C0184000000484403800000084;
    ROM128X1A mux_888_Mux_32 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2682)) /* synthesis initstate=0x0000090417F5797400A800000000E8A8 */ ;
    defparam mux_888_Mux_32.initval = 128'h0000090417F5797400A800000000E8A8;
    ROM128X1A mux_888_Mux_33 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2681)) /* synthesis initstate=0x0000090403EFF9FD832500600000FB25 */ ;
    defparam mux_888_Mux_33.initval = 128'h0000090403EFF9FD832500600000FB25;
    ROM128X1A mux_888_Mux_34 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2680)) /* synthesis initstate=0x07F5690452EFF9FE236104580000FF61 */ ;
    defparam mux_888_Mux_34.initval = 128'h07F5690452EFF9FE236104580000FF61;
    ROM128X1A mux_888_Mux_35 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2679)) /* synthesis initstate=0x02EFE9FC00E7F9FE105128000000FC51 */ ;
    defparam mux_888_Mux_35.initval = 128'h02EFE9FC00E7F9FE105128000000FC51;
    ROM128X1A mux_888_Mux_36 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2678)) /* synthesis initstate=0x02E7E9BC10E7F9FF215104480000FD51 */ ;
    defparam mux_888_Mux_36.initval = 128'h02E7E9BC10E7F9FF215104480000FD51;
    FD1P3IX hour_warning__i2 (.D(n5512), .SP(sys_clk_c_enable_266), .CD(n9685), 
            .CK(sys_clk_c), .Q(hour_warning[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i2.GSR = "ENABLED";
    FD1P3IX hour_warning__i1 (.D(n5513), .SP(sys_clk_c_enable_266), .CD(n9685), 
            .CK(sys_clk_c), .Q(hour_warning[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i1.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i5 (.D(n5543), .SP(sys_clk_c_enable_79), .CK(sys_clk_c), 
            .Q(sec_t[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i5.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i4 (.D(n5544), .SP(sys_clk_c_enable_79), .CK(sys_clk_c), 
            .Q(sec_t[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i4.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i3 (.D(n5545), .SP(sys_clk_c_enable_79), .CK(sys_clk_c), 
            .Q(sec_t[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i3.GSR = "ENABLED";
    ROM128X1A mux_888_Mux_0 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4194)) /* synthesis initstate=0x0000001017F86D6000A800200000C0A8 */ ;
    defparam mux_888_Mux_0.initval = 128'h0000001017F86D6000A800200000C0A8;
    FD1P3AX warning_188 (.D(led_N_216), .SP(warning_time_7__N_176), .CK(clk_1s), 
            .Q(warning));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_188.GSR = "ENABLED";
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // d:/new porject/top-xu/top.v(12[18:26])
    ROM128X1A mux_888_Mux_17 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3437)) /* synthesis initstate=0x00001001001002005C120F9200000012 */ ;
    defparam mux_888_Mux_17.initval = 128'h00001001001002005C120F9200000012;
    ROM128X1A mux_888_Mux_16 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3438)) /* synthesis initstate=0x000012407C1F86FF83EF00D20000FFEF */ ;
    defparam mux_888_Mux_16.initval = 128'h000012407C1F86FF83EF00D20000FFEF;
    FD1P3AX sec_t_i0_i2 (.D(n5546), .SP(sys_clk_c_enable_79), .CK(sys_clk_c), 
            .Q(sec_t[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i2.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i1 (.D(n5547), .SP(sys_clk_c_enable_79), .CK(sys_clk_c), 
            .Q(sec_t[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i1.GSR = "ENABLED";
    ROM128X1A mux_888_Mux_14 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3810)) /* synthesis initstate=0x04989E3EACA892AD117F11080000597F */ ;
    defparam mux_888_Mux_14.initval = 128'h04989E3EACA892AD117F11080000597F;
    FD1P3AX time_set_176 (.D(n39528), .SP(key1_pulse), .CK(sys_clk_c), 
            .Q(time_set));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam time_set_176.GSR = "ENABLED";
    ROM128X1A mux_888_Mux_6 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4188)) /* synthesis initstate=0x07226192950679A20004004000004404 */ ;
    defparam mux_888_Mux_6.initval = 128'h07226192950679A20004004000004404;
    ROM128X1A mux_888_Mux_4 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4190)) /* synthesis initstate=0x02E3E1B610EAE1972379045800002F79 */ ;
    defparam mux_888_Mux_4.initval = 128'h02E3E1B610EAE1972379045800002F79;
    CCU2D add_1862_9 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[6]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[7]), 
          .D1(GND_net), .CIN(n34376), .S0(n5491), .S1(n5490));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1862_9.INIT0 = 16'h2d2d;
    defparam add_1862_9.INIT1 = 16'h2d2d;
    defparam add_1862_9.INJECT1_0 = "NO";
    defparam add_1862_9.INJECT1_1 = "NO";
    ROM128X1A mux_888_Mux_1 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4193)) /* synthesis initstate=0x0000005007E7E18D8385803000001B85 */ ;
    defparam mux_888_Mux_1.initval = 128'h0000005007E7E18D8385803000001B85;
    CCU2D add_1862_7 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[4]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[5]), 
          .D1(GND_net), .CIN(n34375), .COUT(n34376), .S0(n5493), .S1(n5492));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1862_7.INIT0 = 16'h2d2d;
    defparam add_1862_7.INIT1 = 16'h2d2d;
    defparam add_1862_7.INJECT1_0 = "NO";
    defparam add_1862_7.INJECT1_1 = "NO";
    ROM128X1A mux_889_Mux_3 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n124)) /* synthesis initstate=0x0000000091DC0303010384C3F70384C3 */ ;
    defparam mux_889_Mux_3.initval = 128'h0000000091DC0303010384C3F70384C3;
    CCU2D add_1862_5 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[2]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[3]), 
          .D1(GND_net), .CIN(n34374), .COUT(n34375), .S0(n5495), .S1(n5494));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1862_5.INIT0 = 16'h2d2d;
    defparam add_1862_5.INIT1 = 16'h2d2d;
    defparam add_1862_5.INJECT1_0 = "NO";
    defparam add_1862_5.INJECT1_1 = "NO";
    ROM128X1A mux_888_Mux_27 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3057)) /* synthesis initstate=0x011441441A0D096503402D580000CB40 */ ;
    defparam mux_888_Mux_27.initval = 128'h011441441A0D096503402D580000CB40;
    CCU2D add_1862_3 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[0]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[1]), 
          .D1(GND_net), .CIN(n34373), .COUT(n34374), .S0(n5497), .S1(n5496));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1862_3.INIT0 = 16'hd2d2;
    defparam add_1862_3.INIT1 = 16'h2d2d;
    defparam add_1862_3.INJECT1_0 = "NO";
    defparam add_1862_3.INJECT1_1 = "NO";
    CCU2D add_1862_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre), .B1(key_sec), .C1(GND_net), .D1(GND_net), 
          .COUT(n34373));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1862_1.INIT0 = 16'hF000;
    defparam add_1862_1.INIT1 = 16'h2222;
    defparam add_1862_1.INJECT1_0 = "NO";
    defparam add_1862_1.INJECT1_1 = "NO";
    BB one_wire_pad (.I(one_wire_N_667), .T(n11472), .B(one_wire), .O(one_wire_out));   // d:/new porject/top-xu/ds18b20.v(63[2] 264[5])
    ROM128X1A mux_889_Mux_1 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n126)) /* synthesis initstate=0x00000000054D4A4A014A244A954A244A */ ;
    defparam mux_889_Mux_1.initval = 128'h00000000054D4A4A014A244A954A244A;
    ROM128X1A mux_889_Mux_2 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n125)) /* synthesis initstate=0x000000005994949451139113B7139113 */ ;
    defparam mux_889_Mux_2.initval = 128'h000000005994949451139113B7139113;
    PFUMX i28 (.BLUT(n37215), .ALUT(n34513), .C0(min_t[5]), .Z(n11));
    ROM128X1A mux_889_Mux_5 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n123)) /* synthesis initstate=0x00000000CE03DFDF44DCF5DC48DCF5DC */ ;
    defparam mux_889_Mux_5.initval = 128'h00000000CE03DFDF44DCF5DC48DCF5DC;
    ROM128X1A mux_888_Mux_2 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4192)) /* synthesis initstate=0x07E2009052E7E117A305040800002F05 */ ;
    defparam mux_888_Mux_2.initval = 128'h07E2009052E7E117A305040800002F05;
    ROM128X1A mux_888_Mux_3 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4191)) /* synthesis initstate=0x02E7E1B600E2E1934221280000002621 */ ;
    defparam mux_888_Mux_3.initval = 128'h02E7E1B600E2E1934221280000002621;
    CCU2D add_138_3 (.A0(sec[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34209), 
          .COUT(n34210), .S0(n811), .S1(n810));   // d:/new porject/top-xu/top.v(219[14:24])
    defparam add_138_3.INIT0 = 16'h5aaa;
    defparam add_138_3.INIT1 = 16'h5aaa;
    defparam add_138_3.INJECT1_0 = "NO";
    defparam add_138_3.INJECT1_1 = "NO";
    ROM128X1A mux_888_Mux_5 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4189)) /* synthesis initstate=0x02BAE19E01A8E18F0169002000001D69 */ ;
    defparam mux_888_Mux_5.initval = 128'h02BAE19E01A8E18F0169002000001D69;
    CCU2D add_138_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n34209), 
          .S1(n812));   // d:/new porject/top-xu/top.v(219[14:24])
    defparam add_138_1.INIT0 = 16'hF000;
    defparam add_138_1.INIT1 = 16'h5555;
    defparam add_138_1.INJECT1_0 = "NO";
    defparam add_138_1.INJECT1_1 = "NO";
    CCU2D add_137_9 (.A0(min[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34208), 
          .S0(n795));   // d:/new porject/top-xu/top.v(217[14:24])
    defparam add_137_9.INIT0 = 16'h5aaa;
    defparam add_137_9.INIT1 = 16'h0000;
    defparam add_137_9.INJECT1_0 = "NO";
    defparam add_137_9.INJECT1_1 = "NO";
    CCU2D add_137_7 (.A0(min[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34207), 
          .COUT(n34208), .S0(n797), .S1(n796));   // d:/new porject/top-xu/top.v(217[14:24])
    defparam add_137_7.INIT0 = 16'h5aaa;
    defparam add_137_7.INIT1 = 16'h5aaa;
    defparam add_137_7.INJECT1_0 = "NO";
    defparam add_137_7.INJECT1_1 = "NO";
    CCU2D equal_2994_11 (.A0(min[5]), .B0(min_waning_t[5]), .C0(min[4]), 
          .D0(min_waning_t[4]), .A1(min[3]), .B1(min_waning_t[3]), .C1(min[2]), 
          .D1(min_waning_t[2]), .CIN(n34035), .COUT(n34036));
    defparam equal_2994_11.INIT0 = 16'h9009;
    defparam equal_2994_11.INIT1 = 16'h9009;
    defparam equal_2994_11.INJECT1_0 = "YES";
    defparam equal_2994_11.INJECT1_1 = "YES";
    CCU2D add_137_5 (.A0(min[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34206), 
          .COUT(n34207), .S0(n799), .S1(n798));   // d:/new porject/top-xu/top.v(217[14:24])
    defparam add_137_5.INIT0 = 16'h5aaa;
    defparam add_137_5.INIT1 = 16'h5aaa;
    defparam add_137_5.INJECT1_0 = "NO";
    defparam add_137_5.INJECT1_1 = "NO";
    CCU2D add_137_3 (.A0(min[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34205), 
          .COUT(n34206), .S0(n801), .S1(n800));   // d:/new porject/top-xu/top.v(217[14:24])
    defparam add_137_3.INIT0 = 16'h5aaa;
    defparam add_137_3.INIT1 = 16'h5aaa;
    defparam add_137_3.INJECT1_0 = "NO";
    defparam add_137_3.INJECT1_1 = "NO";
    CCU2D add_137_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[0]), .B1(sec[7]), .C1(n19664), .D1(sec[6]), .COUT(n34205), 
          .S1(n802));   // d:/new porject/top-xu/top.v(217[14:24])
    defparam add_137_1.INIT0 = 16'hF000;
    defparam add_137_1.INIT1 = 16'h5556;
    defparam add_137_1.INJECT1_0 = "NO";
    defparam add_137_1.INJECT1_1 = "NO";
    CCU2D add_124_9 (.A0(warning_time[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34204), .S0(n749));   // d:/new porject/top-xu/top.v(193[22:41])
    defparam add_124_9.INIT0 = 16'h5aaa;
    defparam add_124_9.INIT1 = 16'h0000;
    defparam add_124_9.INJECT1_0 = "NO";
    defparam add_124_9.INJECT1_1 = "NO";
    PFUMX i31061 (.BLUT(n25720), .ALUT(n13261), .C0(cnt_write[5]), .Z(n37866));
    ROM128X1A mux_888_Mux_8 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3816)) /* synthesis initstate=0x000004402C1F86ED93FD012C0000DBFD */ ;
    defparam mux_888_Mux_8.initval = 128'h000004402C1F86ED93FD012C0000DBFD;
    ROM128X1A mux_888_Mux_9 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3815)) /* synthesis initstate=0x0000000070002C120018007C00002418 */ ;
    defparam mux_888_Mux_9.initval = 128'h0000000070002C120018007C00002418;
    ROM128X1A mux_888_Mux_10 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3814)) /* synthesis initstate=0x040DEDAF2500040060B1820C000000B1 */ ;
    defparam mux_888_Mux_10.initval = 128'h040DEDAF2500040060B1820C000000B1;
    ROM128X1A mux_888_Mux_11 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3813)) /* synthesis initstate=0x05020410320D05E4835C2E180000CB5C */ ;
    defparam mux_888_Mux_11.initval = 128'h05020410320D05E4835C2E180000CB5C;
    ROM128X1A mux_888_Mux_12 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3812)) /* synthesis initstate=0x000A0422210044036010022800000410 */ ;
    defparam mux_888_Mux_12.initval = 128'h000A0422210044036010022800000410;
    ROM128X1A mux_888_Mux_13 (.AD0(n39545), .AD1(n39512), .AD2(n39482), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3811)) /* synthesis initstate=0x0361048030460C100210105800002210 */ ;
    defparam mux_888_Mux_13.initval = 128'h0361048030460C100210105800002210;
    FD1P3IX hour_warning__i7 (.D(n5507), .SP(sys_clk_c_enable_266), .CD(n9685), 
            .CK(sys_clk_c), .Q(hour_warning[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i7.GSR = "ENABLED";
    LUT4 i27631_3_lut (.A(key_mode[2]), .B(key_mode[1]), .C(key_mode[0]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/top.v(99[22:37])
    defparam i27631_3_lut.init = 16'h6a6a;
    FD1P3IX hour_warning__i6 (.D(n5508), .SP(sys_clk_c_enable_266), .CD(n9685), 
            .CK(sys_clk_c), .Q(hour_warning[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i6.GSR = "ENABLED";
    FD1P3IX hour_warning__i5 (.D(n5509), .SP(sys_clk_c_enable_266), .CD(n9685), 
            .CK(sys_clk_c), .Q(hour_warning[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i5.GSR = "ENABLED";
    FD1P3IX hour_warning__i4 (.D(n5510), .SP(sys_clk_c_enable_266), .CD(n9685), 
            .CK(sys_clk_c), .Q(hour_warning[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i4.GSR = "ENABLED";
    FD1P3IX hour_warning__i3 (.D(n5511), .SP(sys_clk_c_enable_266), .CD(n9685), 
            .CK(sys_clk_c), .Q(hour_warning[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i3.GSR = "ENABLED";
    FD1S3AX sec_i2 (.D(sec_7__N_1[2]), .CK(clk_1s), .Q(sec[2]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i2.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i6 (.D(hour_warning[6]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(hour_waning_t[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i6.GSR = "ENABLED";
    FD1S3AX sec_i1 (.D(sec_7__N_1[1]), .CK(clk_1s), .Q(sec[1]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i1.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i1 (.D(hour_warning[1]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(hour_waning_t[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i1.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i5 (.D(hour_warning[5]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(hour_waning_t[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i5.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i4 (.D(hour_warning[4]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(hour_waning_t[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i4.GSR = "ENABLED";
    FD1S3AX min_i1 (.D(min_7__N_11[1]), .CK(clk_1s), .Q(min[1]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam min_i1.GSR = "ENABLED";
    CCU2D add_1880_5 (.A0(n5274), .B0(n39642), .C0(n5358), .D0(hour_t[2]), 
          .A1(n5274), .B1(n39642), .C1(n5357), .D1(hour_t[3]), .CIN(n34188), 
          .COUT(n34189), .S0(n5529), .S1(n5528));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1880_5.INIT0 = 16'he4b1;
    defparam add_1880_5.INIT1 = 16'he4b1;
    defparam add_1880_5.INJECT1_0 = "NO";
    defparam add_1880_5.INJECT1_1 = "NO";
    FD1S3AX min_i2 (.D(min_7__N_11[2]), .CK(clk_1s), .Q(min[2]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam min_i2.GSR = "ENABLED";
    FD1S3AX min_i3 (.D(min_7__N_11[3]), .CK(clk_1s), .Q(min[3]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam min_i3.GSR = "ENABLED";
    FD1S3AX min_i4 (.D(min_7__N_11[4]), .CK(clk_1s), .Q(min[4]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam min_i4.GSR = "ENABLED";
    FD1S3AX min_i5 (.D(min_7__N_11[5]), .CK(clk_1s), .Q(min[5]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam min_i5.GSR = "ENABLED";
    FD1S3AX min_i6 (.D(min_7__N_11[6]), .CK(clk_1s), .Q(min[6]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam min_i6.GSR = "ENABLED";
    FD1S3AX min_i7 (.D(min_7__N_11[7]), .CK(clk_1s), .Q(min[7]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam min_i7.GSR = "ENABLED";
    FD1P3AX Temp_H_i1 (.D(ds18b20_data[5]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[1]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam Temp_H_i1.GSR = "ENABLED";
    FD1P3AX Temp_H_i2 (.D(ds18b20_data[6]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[2]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam Temp_H_i2.GSR = "ENABLED";
    FD1P3AX Temp_H_i3 (.D(ds18b20_data[7]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[3]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam Temp_H_i3.GSR = "ENABLED";
    FD1P3AX Temp_H_i4 (.D(ds18b20_data[8]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[4]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam Temp_H_i4.GSR = "ENABLED";
    FD1P3AX Temp_H_i5 (.D(hundres_1__N_341_adj_2058[0]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[5]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam Temp_H_i5.GSR = "ENABLED";
    FD1P3AX Temp_H_i6 (.D(hundres_1__N_341_adj_2058[1]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[6]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam Temp_H_i6.GSR = "ENABLED";
    FD1P3IX min_warning__i1 (.D(n5496), .SP(sys_clk_c_enable_119), .CD(n9689), 
            .CK(sys_clk_c), .Q(min_warning[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i1.GSR = "ENABLED";
    FD1P3IX min_warning__i2 (.D(n5495), .SP(sys_clk_c_enable_119), .CD(n9689), 
            .CK(sys_clk_c), .Q(min_warning[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i2.GSR = "ENABLED";
    FD1P3IX min_warning__i3 (.D(n5494), .SP(sys_clk_c_enable_119), .CD(n9689), 
            .CK(sys_clk_c), .Q(min_warning[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i3.GSR = "ENABLED";
    FD1P3IX min_warning__i4 (.D(n5493), .SP(sys_clk_c_enable_119), .CD(n9689), 
            .CK(sys_clk_c), .Q(min_warning[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i4.GSR = "ENABLED";
    FD1P3IX min_warning__i5 (.D(n5492), .SP(sys_clk_c_enable_119), .CD(n9689), 
            .CK(sys_clk_c), .Q(min_warning[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i5.GSR = "ENABLED";
    FD1P3IX min_warning__i6 (.D(n5491), .SP(sys_clk_c_enable_119), .CD(n9689), 
            .CK(sys_clk_c), .Q(min_warning[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i6.GSR = "ENABLED";
    FD1P3IX min_warning__i7 (.D(n5490), .SP(sys_clk_c_enable_119), .CD(n9689), 
            .CK(sys_clk_c), .Q(min_warning[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i7.GSR = "ENABLED";
    FD1P3IX warning_time__i1 (.D(n755), .SP(clk_1s_enable_12), .CD(n9683), 
            .CK(clk_1s), .Q(warning_time[1]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i1.GSR = "ENABLED";
    FD1P3IX warning_time__i2 (.D(n754), .SP(clk_1s_enable_12), .CD(n9683), 
            .CK(clk_1s), .Q(warning_time[2]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i2.GSR = "ENABLED";
    FD1P3IX warning_time__i3 (.D(n753), .SP(clk_1s_enable_12), .CD(n9683), 
            .CK(clk_1s), .Q(warning_time[3]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i3.GSR = "ENABLED";
    FD1P3IX warning_time__i4 (.D(n752), .SP(clk_1s_enable_12), .CD(n9683), 
            .CK(clk_1s), .Q(warning_time[4]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i4.GSR = "ENABLED";
    FD1P3IX warning_time__i5 (.D(n751), .SP(clk_1s_enable_12), .CD(n9683), 
            .CK(clk_1s), .Q(warning_time[5]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i5.GSR = "ENABLED";
    FD1P3IX warning_time__i6 (.D(n750), .SP(clk_1s_enable_12), .CD(n9683), 
            .CK(clk_1s), .Q(warning_time[6]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i6.GSR = "ENABLED";
    FD1P3IX warning_time__i7 (.D(n749), .SP(clk_1s_enable_12), .CD(n9683), 
            .CK(clk_1s), .Q(warning_time[7]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i7.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i3 (.D(hour_warning[3]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(hour_waning_t[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i3.GSR = "ENABLED";
    IB key3_pad (.I(key3), .O(key3_c));   // d:/new porject/top-xu/top.v(7[8:12])
    IB key2_pad (.I(key2), .O(key2_c));   // d:/new porject/top-xu/top.v(6[8:12])
    IB key1_pad (.I(key1), .O(key1_c));   // d:/new porject/top-xu/top.v(5[8:12])
    LUT4 i5185_4_lut (.A(n7), .B(Temp_H[6]), .C(Temp_H[5]), .D(n8_adj_1922), 
         .Z(uart_en_N_227)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i5185_4_lut.init = 16'hfcec;
    FD1S3AX sec_i7 (.D(sec_7__N_1[7]), .CK(clk_1s), .Q(sec[7]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i7.GSR = "ENABLED";
    FD1S3AX sec_i6 (.D(sec_7__N_1[6]), .CK(clk_1s), .Q(sec[6]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i6.GSR = "ENABLED";
    FD1S3AX sec_i5 (.D(sec_7__N_1[5]), .CK(clk_1s), .Q(sec[5]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i5.GSR = "ENABLED";
    FD1S3AX sec_i4 (.D(sec_7__N_1[4]), .CK(clk_1s), .Q(sec[4]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i4.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i2 (.D(hour_warning[2]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(hour_waning_t[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i2.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i7 (.D(hour_warning[7]), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(hour_waning_t[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i7.GSR = "ENABLED";
    FD1S3AX sec_i3 (.D(sec_7__N_1[3]), .CK(clk_1s), .Q(sec[3]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i3.GSR = "ENABLED";
    LUT4 i27624_2_lut (.A(key_mode[1]), .B(key_mode[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/top.v(99[22:37])
    defparam i27624_2_lut.init = 16'h6666;
    FD1P3AX min_t_i0_i7 (.D(n5473), .SP(sys_clk_c_enable_152), .CK(sys_clk_c), 
            .Q(min_t[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i7.GSR = "ENABLED";
    FD1P3AX min_t_i0_i6 (.D(n5474), .SP(sys_clk_c_enable_152), .CK(sys_clk_c), 
            .Q(min_t[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i6.GSR = "ENABLED";
    FD1P3AX min_t_i0_i5 (.D(n5475), .SP(sys_clk_c_enable_152), .CK(sys_clk_c), 
            .Q(min_t[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i5.GSR = "ENABLED";
    FD1P3AX min_t_i0_i4 (.D(n5476), .SP(sys_clk_c_enable_152), .CK(sys_clk_c), 
            .Q(min_t[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i4.GSR = "ENABLED";
    FD1P3AX min_t_i0_i3 (.D(n5477), .SP(sys_clk_c_enable_152), .CK(sys_clk_c), 
            .Q(min_t[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i3.GSR = "ENABLED";
    FD1P3AX min_t_i0_i2 (.D(n5478), .SP(sys_clk_c_enable_152), .CK(sys_clk_c), 
            .Q(min_t[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i2.GSR = "ENABLED";
    FD1P3AX min_t_i0_i1 (.D(n5479), .SP(sys_clk_c_enable_152), .CK(sys_clk_c), 
            .Q(min_t[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i1.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i7 (.D(n5524), .SP(sys_clk_c_enable_159), .CK(sys_clk_c), 
            .Q(hour_t[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i7.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i6 (.D(n5525), .SP(sys_clk_c_enable_159), .CK(sys_clk_c), 
            .Q(hour_t[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i6.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i5 (.D(n5526), .SP(sys_clk_c_enable_159), .CK(sys_clk_c), 
            .Q(hour_t[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i5.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i4 (.D(n5527), .SP(sys_clk_c_enable_159), .CK(sys_clk_c), 
            .Q(hour_t[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i4.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i3 (.D(n5528), .SP(sys_clk_c_enable_159), .CK(sys_clk_c), 
            .Q(hour_t[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i3.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i2 (.D(n5529), .SP(sys_clk_c_enable_159), .CK(sys_clk_c), 
            .Q(hour_t[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i2.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i1 (.D(n5530), .SP(sys_clk_c_enable_159), .CK(sys_clk_c), 
            .Q(hour_t[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i1.GSR = "ENABLED";
    PFUMX i31062 (.BLUT(n13249), .ALUT(n29), .C0(cnt_write[5]), .Z(n37867));
    LUT4 cnt_4__bdd_3_lut (.A(cnt_adj_2088[2]), .B(cnt_adj_2088[0]), .C(cnt_adj_2088[1]), 
         .Z(n39302)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam cnt_4__bdd_3_lut.init = 16'h3232;
    CCU2D add_1880_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5274), .B1(n39642), .C1(GND_net), .D1(GND_net), .COUT(n34187));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1880_1.INIT0 = 16'hF000;
    defparam add_1880_1.INIT1 = 16'heeee;
    defparam add_1880_1.INJECT1_0 = "NO";
    defparam add_1880_1.INJECT1_1 = "NO";
    CCU2D add_1880_9 (.A0(n5274), .B0(n39642), .C0(n5354), .D0(hour_t[6]), 
          .A1(n5274), .B1(n39642), .C1(n5353), .D1(hour_t[7]), .CIN(n34190), 
          .S0(n5525), .S1(n5524));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1880_9.INIT0 = 16'he4b1;
    defparam add_1880_9.INIT1 = 16'he4b1;
    defparam add_1880_9.INJECT1_0 = "NO";
    defparam add_1880_9.INJECT1_1 = "NO";
    LUT4 cnt_4__bdd_4_lut_32515 (.A(cnt_adj_2088[3]), .B(cnt_adj_2088[2]), 
         .C(cnt_adj_2088[0]), .D(cnt_adj_2088[1]), .Z(n39301)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam cnt_4__bdd_4_lut_32515.init = 16'h4115;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(n39615), 
         .D(n39641), .Z(n37214)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/new porject/top-xu/top.v(99[22:37])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_577 (.A(key_sec_pre), .B(key_sec), .Z(n39615)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_577.init = 16'hdddd;
    LUT4 i3209_1_lut (.A(warning_time_7__N_176), .Z(n9683)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/top.v(189[7:28])
    defparam i3209_1_lut.init = 16'h5555;
    LUT4 i31328_4_lut (.A(warning_time[1]), .B(n36980), .C(warning_time[3]), 
         .D(warning_time[2]), .Z(led_N_216)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i31328_4_lut.init = 16'h0313;
    LUT4 i31274_2_lut_2_lut (.A(warning_time_7__N_176), .B(led_N_216), .Z(clk_1s_enable_12)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i31274_2_lut_2_lut.init = 16'hdddd;
    LUT4 i2_4_lut (.A(min_warning[3]), .B(min_warning[2]), .C(min_warning[1]), 
         .D(min_warning[0]), .Z(n6_adj_1929)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha888;
    LUT4 n38527_bdd_2_lut (.A(n38527), .B(cnt_adj_2088[0]), .Z(n38528)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n38527_bdd_2_lut.init = 16'h2222;
    FD1P3AX uart_send_data_i0_i7 (.D(uart_en_N_227), .SP(sys_clk_c_enable_241), 
            .CK(sys_clk_c), .Q(uart_send_data[7]));   // d:/new porject/top-xu/top.v(319[8] 337[6])
    defparam uart_send_data_i0_i7.GSR = "DISABLED";
    LUT4 i4_4_lut (.A(key_mode[0]), .B(n12_adj_1926), .C(n36995), .D(n39643), 
         .Z(n9685)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_300 (.A(n11_adj_1933), .B(n34582), .C(n37727), .D(n39642), 
         .Z(n12_adj_1926)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_300.init = 16'hce0a;
    LUT4 i3_4_lut (.A(n39663), .B(hour_warning[5]), .C(hour_warning[4]), 
         .D(n34), .Z(n34582)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut.init = 16'hfeee;
    LUT4 i30922_4_lut (.A(hour_warning[2]), .B(hour_warning[1]), .C(hour_warning[4]), 
         .D(n37668), .Z(n37727)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30922_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_301 (.A(hour_warning[3]), .B(hour_warning[2]), .C(hour_warning[1]), 
         .D(hour_warning[0]), .Z(n34)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_301.init = 16'heaaa;
    LUT4 i1_2_lut_rep_619 (.A(key_mode[2]), .B(key_mode[1]), .Z(n39657)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/top.v(153[9:13])
    defparam i1_2_lut_rep_619.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut (.A(key_mode[2]), .B(key_mode[1]), .C(key_mode[0]), 
         .Z(n37358)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/new porject/top-xu/top.v(153[9:13])
    defparam i1_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i30865_3_lut (.A(min_t[4]), .B(min_t[3]), .C(min_t[0]), .Z(n37670)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30865_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut (.A(min_t[0]), .B(min_t[2]), .C(min_t[1]), .Z(n41_adj_1917)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/new porject/top-xu/top.v(63[16:21])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 char_reg_0__bdd_4_lut_32254 (.A(cnt_adj_2088[1]), .B(cnt_adj_2088[0]), 
         .C(cnt_adj_2088[3]), .D(cnt_adj_2088[2]), .Z(n38480)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam char_reg_0__bdd_4_lut_32254.init = 16'h0315;
    PFUMX i31665 (.BLUT(n38816), .ALUT(n38815), .C0(cnt_adj_2088[0]), 
          .Z(n38817));
    LUT4 i1_2_lut_rep_625 (.A(hour_warning[7]), .B(hour_warning[6]), .Z(n39663)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_625.init = 16'heeee;
    LUT4 i30863_2_lut_3_lut (.A(hour_warning[7]), .B(hour_warning[6]), .C(hour_warning[0]), 
         .Z(n37668)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30863_2_lut_3_lut.init = 16'hfefe;
    FD1P3IX hour_warning__i0 (.D(n5514), .SP(sys_clk_c_enable_266), .CD(n9685), 
            .CK(sys_clk_c), .Q(hour_warning[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i0.GSR = "ENABLED";
    LUT4 sec_7__I_0_i3_4_lut (.A(n810), .B(sec_t[2]), .C(n39562), .D(n34707), 
         .Z(sec_7__N_1[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam sec_7__I_0_i3_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i2_4_lut (.A(n811), .B(sec_t[1]), .C(n39562), .D(n34707), 
         .Z(sec_7__N_1[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam sec_7__I_0_i2_4_lut.init = 16'hc0ca;
    LUT4 i19524_4_lut (.A(n831), .B(min_t[1]), .C(n39562), .D(n801), 
         .Z(min_7__N_11[1])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19524_4_lut.init = 16'hc5c0;
    LUT4 i1_4_lut_adj_302 (.A(key1_pulse), .B(n39562), .C(n37077), .D(n39561), 
         .Z(n5274)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_302.init = 16'h5051;
    LUT4 i2_4_lut_adj_303 (.A(n39514), .B(n13), .C(n41), .D(n39643), 
         .Z(n37077)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_4_lut_adj_303.init = 16'h0040;
    LUT4 i1_4_lut_adj_304 (.A(n37729), .B(n39642), .C(n39569), .D(n36), 
         .Z(n41)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_304.init = 16'hdc50;
    LUT4 i31402_3_lut_3_lut_4_lut (.A(n39562), .B(n39511), .C(n39483), 
         .D(n37358), .Z(sys_clk_c_enable_152)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;
    defparam i31402_3_lut_3_lut_4_lut.init = 16'h111f;
    LUT4 i30924_4_lut (.A(n5_adj_1921), .B(n37706), .C(hour_t[3]), .D(hour_t[1]), 
         .Z(n37729)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30924_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_305 (.A(n5_adj_1921), .B(hour_t[6]), .C(hour_t[4]), 
         .D(n44), .Z(n36)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut_adj_305.init = 16'hfeee;
    LUT4 mux_282_Mux_0_i15_4_lut_4_lut (.A(cnt_adj_2088[0]), .B(cnt_adj_2088[1]), 
         .C(cnt_adj_2088[2]), .D(cnt_adj_2088[3]), .Z(n15_adj_1916)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B (C (D))))) */ ;   // d:/new porject/top-xu/oled.v(132[20] 135[14])
    defparam mux_282_Mux_0_i15_4_lut_4_lut.init = 16'h54e0;
    LUT4 i30901_4_lut (.A(hour_t[2]), .B(hour_t[4]), .C(hour_t[0]), .D(hour_t[6]), 
         .Z(n37706)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30901_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_306 (.A(hour_t[3]), .B(hour_t[2]), .C(hour_t[1]), 
         .D(hour_t[0]), .Z(n44)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_306.init = 16'heaaa;
    LUT4 i1_2_lut (.A(hour_t[5]), .B(hour_t[7]), .Z(n5_adj_1921)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i19543_4_lut (.A(n831), .B(min_t[2]), .C(n39562), .D(n800), 
         .Z(min_7__N_11[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19543_4_lut.init = 16'hc5c0;
    LUT4 i19533_4_lut (.A(n831), .B(min_t[3]), .C(n39562), .D(n799), 
         .Z(min_7__N_11[3])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19533_4_lut.init = 16'hc5c0;
    LUT4 i19530_4_lut (.A(n831), .B(min_t[4]), .C(n39562), .D(n798), 
         .Z(min_7__N_11[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19530_4_lut.init = 16'hc5c0;
    LUT4 i19521_4_lut (.A(n831), .B(min_t[5]), .C(n39562), .D(n797), 
         .Z(min_7__N_11[5])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19521_4_lut.init = 16'hc5c0;
    LUT4 i30914_4_lut (.A(min_warning[4]), .B(min_warning[3]), .C(min_warning[5]), 
         .D(n37666), .Z(n37719)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30914_4_lut.init = 16'hfffe;
    LUT4 min_7__I_0_i7_4_lut (.A(n796), .B(min_t[6]), .C(n39562), .D(n831), 
         .Z(min_7__N_11[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam min_7__I_0_i7_4_lut.init = 16'hc0ca;
    LUT4 min_7__I_0_i8_4_lut (.A(n795), .B(min_t[7]), .C(n39562), .D(n831), 
         .Z(min_7__N_11[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam min_7__I_0_i8_4_lut.init = 16'hc0ca;
    LUT4 i20969_2_lut (.A(Temp_H[6]), .B(uart_en_N_226), .Z(n986)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/top.v(330[10] 333[8])
    defparam i20969_2_lut.init = 16'h8888;
    LUT4 i30861_3_lut (.A(min_warning[0]), .B(min_warning[6]), .C(min_warning[7]), 
         .Z(n37666)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30861_3_lut.init = 16'hfefe;
    CCU2D equal_2994_16 (.A0(hour[1]), .B0(hour_waning_t[1]), .C0(hour[0]), 
          .D0(hour_waning_t[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34038), .S1(warning_time_7__N_176));
    defparam equal_2994_16.INIT0 = 16'h9009;
    defparam equal_2994_16.INIT1 = 16'hFFFF;
    defparam equal_2994_16.INJECT1_0 = "YES";
    defparam equal_2994_16.INJECT1_1 = "NO";
    CCU2D equal_2994_15 (.A0(hour[5]), .B0(hour_waning_t[5]), .C0(hour[4]), 
          .D0(hour_waning_t[4]), .A1(hour[3]), .B1(hour_waning_t[3]), 
          .C1(hour[2]), .D1(hour_waning_t[2]), .CIN(n34037), .COUT(n34038));
    defparam equal_2994_15.INIT0 = 16'h9009;
    defparam equal_2994_15.INIT1 = 16'h9009;
    defparam equal_2994_15.INJECT1_0 = "YES";
    defparam equal_2994_15.INJECT1_1 = "YES";
    CCU2D equal_2994_13 (.A0(min[1]), .B0(min_waning_t[1]), .C0(min[0]), 
          .D0(min_waning_t[0]), .A1(hour[7]), .B1(hour_waning_t[7]), .C1(hour[6]), 
          .D1(hour_waning_t[6]), .CIN(n34036), .COUT(n34037));
    defparam equal_2994_13.INIT0 = 16'h9009;
    defparam equal_2994_13.INIT1 = 16'h9009;
    defparam equal_2994_13.INJECT1_0 = "YES";
    defparam equal_2994_13.INJECT1_1 = "YES";
    CCU2D equal_2994_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[7]), .B1(min_waning_t[7]), .C1(min[6]), .D1(min_waning_t[6]), 
          .COUT(n34035));   // d:/new porject/top-xu/top.v(189[7:28])
    defparam equal_2994_0.INIT0 = 16'hF000;
    defparam equal_2994_0.INIT1 = 16'h9009;
    defparam equal_2994_0.INJECT1_0 = "NO";
    defparam equal_2994_0.INJECT1_1 = "YES";
    LUT4 i31372_4_lut (.A(key_mode[2]), .B(key_mode[1]), .C(key_mode[0]), 
         .D(n39511), .Z(sys_clk_c_enable_136)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i31372_4_lut.init = 16'h0001;
    VLO i1 (.Z(GND_net));
    LUT4 sec_7__I_0_i1_4_lut (.A(n812), .B(sec_t[0]), .C(n39562), .D(n34707), 
         .Z(sec_7__N_1[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam sec_7__I_0_i1_4_lut.init = 16'hc0ca;
    FD1P3IX key_mode_2996__i2 (.D(n18), .SP(key1_pulse), .CD(n26543), 
            .CK(sys_clk_c), .Q(key_mode[2]));   // d:/new porject/top-xu/top.v(99[22:37])
    defparam key_mode_2996__i2.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(sec[7]), .B(sec[6]), .C(n19664), .Z(n34707)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i3_4_lut_adj_307 (.A(n6), .B(sec[5]), .C(sec[4]), .D(sec[3]), 
         .Z(n19664)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_307.init = 16'h8000;
    LUT4 mux_282_Mux_2_i22_4_lut_3_lut (.A(cnt_adj_2088[1]), .B(cnt_adj_2088[2]), 
         .C(cnt_adj_2088[0]), .Z(n22_adj_1915)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // d:/new porject/top-xu/oled.v(132[20] 135[14])
    defparam mux_282_Mux_2_i22_4_lut_3_lut.init = 16'h9898;
    LUT4 sec_7__I_0_i8_4_lut (.A(n805), .B(sec_t[7]), .C(n39562), .D(n34707), 
         .Z(sec_7__N_1[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam sec_7__I_0_i8_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i7_4_lut (.A(n806), .B(sec_t[6]), .C(n39562), .D(n34707), 
         .Z(sec_7__N_1[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam sec_7__I_0_i7_4_lut.init = 16'hc0ca;
    LUT4 i3542_3_lut (.A(sec[0]), .B(sec[2]), .C(sec[1]), .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i3542_3_lut.init = 16'hecec;
    LUT4 cnt_4__bdd_2_lut_32514 (.A(cnt_adj_2088[4]), .B(cnt_adj_2088[2]), 
         .Z(n38815)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam cnt_4__bdd_2_lut_32514.init = 16'h4444;
    LUT4 cnt_4__bdd_4_lut_31934 (.A(cnt_adj_2088[4]), .B(cnt_adj_2088[2]), 
         .C(cnt_adj_2088[3]), .D(cnt_adj_2088[1]), .Z(n38816)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B+!(D)))) */ ;
    defparam cnt_4__bdd_4_lut_31934.init = 16'h4e7f;
    LUT4 i20911_2_lut_rep_468 (.A(uart_en_N_226), .B(uart_en_N_227), .Z(sys_clk_c_enable_54)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20911_2_lut_rep_468.init = 16'heeee;
    LUT4 i2_3_lut_rep_446_4_lut (.A(uart_en_N_226), .B(uart_en_N_227), .C(sys_rst_n_c), 
         .D(clk_1s), .Z(sys_clk_c_enable_241)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_446_4_lut.init = 16'he000;
    LUT4 sec_7__I_0_i6_4_lut (.A(n807), .B(sec_t[5]), .C(n39562), .D(n34707), 
         .Z(sec_7__N_1[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam sec_7__I_0_i6_4_lut.init = 16'hc0ca;
    LUT4 i15320_2_lut_4_lut_3_lut (.A(uart_en_N_227), .B(sys_rst_n_c), .C(clk_1s), 
         .Z(n21939)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i15320_2_lut_4_lut_3_lut.init = 16'h8080;
    LUT4 sec_7__I_0_i5_4_lut (.A(n808), .B(sec_t[4]), .C(n39562), .D(n34707), 
         .Z(sec_7__N_1[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam sec_7__I_0_i5_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i4_4_lut (.A(n809), .B(sec_t[3]), .C(n39562), .D(n34707), 
         .Z(sec_7__N_1[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam sec_7__I_0_i4_4_lut.init = 16'hc0ca;
    LUT4 i19527_4_lut (.A(n831), .B(min_t[0]), .C(n39562), .D(n802), 
         .Z(min_7__N_11[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19527_4_lut.init = 16'hc5c0;
    LUT4 i2_4_lut_adj_308 (.A(min[7]), .B(min[6]), .C(n5_adj_1931), .D(n6_adj_1930), 
         .Z(n831)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_308.init = 16'hfeee;
    LUT4 cnt_0__bdd_4_lut_31513 (.A(cnt_adj_2088[4]), .B(cnt_adj_2088[3]), 
         .C(cnt_adj_2088[1]), .D(cnt_adj_2088[2]), .Z(n38527)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam cnt_0__bdd_4_lut_31513.init = 16'h144f;
    LUT4 i1_4_lut_adj_309 (.A(min[0]), .B(min[4]), .C(min[2]), .D(min[1]), 
         .Z(n5_adj_1931)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_309.init = 16'hc8c0;
    LUT4 i2_2_lut (.A(min[5]), .B(min[3]), .Z(n6_adj_1930)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i20968_2_lut (.A(Temp_H[5]), .B(uart_en_N_226), .Z(n987)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/top.v(330[10] 333[8])
    defparam i20968_2_lut.init = 16'h8888;
    LUT4 cnt_1__bdd_3_lut (.A(cnt_adj_2088[1]), .B(cnt_adj_2088[2]), .C(cnt_adj_2088[0]), 
         .Z(n38554)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam cnt_1__bdd_3_lut.init = 16'h2c2c;
    LUT4 i21066_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(sec[4]), 
         .D(n39562), .Z(n5346)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21066_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_4_lut_adj_310 (.A(hour[7]), .B(n8), .C(n39632), .D(hour[4]), 
         .Z(n850)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_310.init = 16'hfefa;
    LUT4 i3535_4_lut (.A(hour[2]), .B(hour[3]), .C(hour[1]), .D(hour[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i3535_4_lut.init = 16'heccc;
    LUT4 i21069_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(sec[7]), 
         .D(n39562), .Z(n5343)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21069_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21068_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(sec[6]), 
         .D(n39562), .Z(n5344)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21068_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21067_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(sec[5]), 
         .D(n39562), .Z(n5345)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21067_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21064_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(sec[2]), 
         .D(n39562), .Z(n5348)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21064_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_311 (.A(cnt_main_adj_2083[2]), .B(cnt_main_adj_2083[1]), 
         .C(cnt_main_adj_2083[0]), .D(n39631), .Z(n7_adj_1925)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))) */ ;   // d:/new porject/top-xu/oled.v(45[12:20])
    defparam i1_4_lut_adj_311.init = 16'ha828;
    LUT4 i21065_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(sec[3]), 
         .D(n39562), .Z(n5347)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21065_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20868_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(sec[0]), 
         .D(n39562), .Z(n5350)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20868_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21063_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(sec[1]), 
         .D(n39562), .Z(n5349)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21063_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20945_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(hour[2]), 
         .D(n39562), .Z(n5358)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20945_2_lut_3_lut_4_lut.init = 16'h0010;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i20935_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(hour[3]), 
         .D(n39562), .Z(n5357)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20935_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20879_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(hour[6]), 
         .D(n39562), .Z(n5354)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20879_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20878_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(hour[7]), 
         .D(n39562), .Z(n5353)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20878_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21254_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(min[6]), 
         .D(n39562), .Z(n5334)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21254_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21255_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(min[7]), 
         .D(n39562), .Z(n5333)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21255_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21252_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(min[4]), 
         .D(n39562), .Z(n5336)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21252_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21253_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(min[5]), 
         .D(n39562), .Z(n5335)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21253_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20906_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(hour[4]), 
         .D(n39562), .Z(n5356)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20906_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20880_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(hour[5]), 
         .D(n39562), .Z(n5355)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20880_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20653_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(hour[0]), 
         .D(n39562), .Z(n5360)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20653_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20951_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(hour[1]), 
         .D(n39562), .Z(n5359)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20951_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21250_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(min[2]), 
         .D(n39562), .Z(n5338)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21250_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21251_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(min[3]), 
         .D(n39562), .Z(n5337)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21251_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20915_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(min[0]), 
         .D(n39562), .Z(n5340)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20915_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i21249_2_lut_3_lut_4_lut (.A(key1_pulse), .B(n39561), .C(min[1]), 
         .D(n39562), .Z(n5339)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i21249_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20967_2_lut (.A(Temp_H[4]), .B(uart_en_N_226), .Z(n988)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/top.v(330[10] 333[8])
    defparam i20967_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_445_4_lut (.A(n39562), .B(n39561), .C(sw1_c), .D(key1_pulse), 
         .Z(n39483)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam i2_3_lut_rep_445_4_lut.init = 16'hfff2;
    LUT4 i1_4_lut_adj_312 (.A(n39485), .B(n13), .C(n1), .D(n37081), 
         .Z(n5172)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_312.init = 16'hddd5;
    LUT4 i4_4_lut_adj_313 (.A(warning_time[0]), .B(n36980), .C(warning_time[2]), 
         .D(n6_adj_1924), .Z(uart_en_N_226)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/top.v(330[13:25])
    defparam i4_4_lut_adj_313.init = 16'hfffe;
    LUT4 i2_4_lut_adj_314 (.A(n27351), .B(n15), .C(sec_t[7]), .D(n4_adj_1914), 
         .Z(n1)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i2_4_lut_adj_314.init = 16'h4440;
    LUT4 i1_2_lut_adj_315 (.A(warning_time[1]), .B(warning_time[3]), .Z(n6_adj_1924)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/top.v(330[13:25])
    defparam i1_2_lut_adj_315.init = 16'heeee;
    LUT4 i1_4_lut_adj_316 (.A(n39546), .B(n37434), .C(n37381), .D(n14), 
         .Z(n37081)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_316.init = 16'h0200;
    LUT4 i1_4_lut_adj_317 (.A(sec_t[6]), .B(sec_t[5]), .C(n6_adj_1932), 
         .D(sec_t[4]), .Z(n4_adj_1914)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_317.init = 16'heaaa;
    LUT4 i31339_4_lut_4_lut (.A(n39561), .B(key1_pulse), .C(n37358), .D(sw1_c), 
         .Z(sys_clk_c_enable_119)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i31339_4_lut_4_lut.init = 16'h0200;
    LUT4 i2_2_lut_adj_318 (.A(Temp_H[2]), .B(Temp_H[0]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_318.init = 16'heeee;
    LUT4 i4_2_lut (.A(key_mode[0]), .B(sw1_c), .Z(n13)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4_2_lut.init = 16'h2222;
    LUT4 cnt_0__bdd_3_lut_31620 (.A(cnt_adj_2088[0]), .B(cnt_adj_2088[1]), 
         .C(cnt_adj_2088[2]), .Z(n38562)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;
    defparam cnt_0__bdd_3_lut_31620.init = 16'hdbdb;
    LUT4 i2_4_lut_adj_319 (.A(sec_t[3]), .B(sec_t[2]), .C(sec_t[1]), .D(sec_t[0]), 
         .Z(n6_adj_1932)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_319.init = 16'ha888;
    LUT4 i30639_4_lut (.A(sec_t[7]), .B(sec_t[1]), .C(sec_t[3]), .D(sec_t[2]), 
         .Z(n37434)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30639_4_lut.init = 16'hfffe;
    LUT4 i30595_2_lut (.A(sec_t[0]), .B(sec_t[4]), .Z(n37381)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30595_2_lut.init = 16'heeee;
    LUT4 i20966_2_lut (.A(Temp_H[3]), .B(uart_en_N_226), .Z(n989)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/top.v(330[10] 333[8])
    defparam i20966_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_2_lut_4_lut (.A(key_mode[2]), .B(n39586), .C(key_mode[1]), 
         .D(key1_pulse), .Z(n26543)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;
    defparam i1_2_lut_2_lut_4_lut.init = 16'hea00;
    LUT4 i5_4_lut (.A(sec_t[6]), .B(sec_t[5]), .C(n39615), .D(n27351), 
         .Z(n14)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i5_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_320 (.A(n39586), .B(n39485), .C(n27351), .D(n14_adj_1923), 
         .Z(n5223)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_320.init = 16'h3733;
    LUT4 i27_4_lut (.A(n11), .B(n15), .C(min_t[6]), .D(min_t[7]), .Z(n14_adj_1923)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i27_4_lut.init = 16'hccca;
    LUT4 i3_3_lut (.A(Temp_H[4]), .B(Temp_H[3]), .C(Temp_H[1]), .Z(n8_adj_1922)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_3_lut.init = 16'hfefe;
    CCU2D add_1871_9 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[6]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[7]), 
          .D1(GND_net), .CIN(n34406), .S0(n5508), .S1(n5507));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1871_9.INIT0 = 16'h2d2d;
    defparam add_1871_9.INIT1 = 16'h2d2d;
    defparam add_1871_9.INJECT1_0 = "NO";
    defparam add_1871_9.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_321 (.A(warning_time[4]), .B(warning_time[6]), .C(warning_time[5]), 
         .D(warning_time[7]), .Z(n36980)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/top.v(330[13:25])
    defparam i3_4_lut_adj_321.init = 16'hfffe;
    LUT4 i3_4_lut_adj_322 (.A(min_t[4]), .B(min_t[3]), .C(n15), .D(n41_adj_1917), 
         .Z(n34513)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/top.v(63[16:21])
    defparam i3_4_lut_adj_322.init = 16'h8000;
    LUT4 i1_4_lut_adj_323 (.A(min_t[2]), .B(n37214), .C(n37670), .D(min_t[1]), 
         .Z(n37215)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_323.init = 16'h0004;
    CCU2D add_1871_7 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[4]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[5]), 
          .D1(GND_net), .CIN(n34405), .COUT(n34406), .S0(n5510), .S1(n5509));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1871_7.INIT0 = 16'h2d2d;
    defparam add_1871_7.INIT1 = 16'h2d2d;
    defparam add_1871_7.INJECT1_0 = "NO";
    defparam add_1871_7.INJECT1_1 = "NO";
    CCU2D add_1871_5 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[2]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[3]), 
          .D1(GND_net), .CIN(n34404), .COUT(n34405), .S0(n5512), .S1(n5511));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1871_5.INIT0 = 16'h2d2d;
    defparam add_1871_5.INIT1 = 16'h2d2d;
    defparam add_1871_5.INJECT1_0 = "NO";
    defparam add_1871_5.INJECT1_1 = "NO";
    CCU2D add_1871_3 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[0]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[1]), 
          .D1(GND_net), .CIN(n34403), .COUT(n34404), .S0(n5514), .S1(n5513));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1871_3.INIT0 = 16'hd2d2;
    defparam add_1871_3.INIT1 = 16'h2d2d;
    defparam add_1871_3.INJECT1_0 = "NO";
    defparam add_1871_3.INJECT1_1 = "NO";
    CCU2D add_1871_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre), .B1(key_sec), .C1(GND_net), .D1(GND_net), 
          .COUT(n34403));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1871_1.INIT0 = 16'hF000;
    defparam add_1871_1.INIT1 = 16'h2222;
    defparam add_1871_1.INJECT1_0 = "NO";
    defparam add_1871_1.INJECT1_1 = "NO";
    LUT4 i20965_2_lut (.A(Temp_H[2]), .B(uart_en_N_226), .Z(n990)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/top.v(330[10] 333[8])
    defparam i20965_2_lut.init = 16'h8888;
    CCU2D add_1853_9 (.A0(n5223), .B0(n39642), .C0(n5334), .D0(min_t[6]), 
          .A1(n5223), .B1(n39642), .C1(n5333), .D1(min_t[7]), .CIN(n34398), 
          .S0(n5474), .S1(n5473));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1853_9.INIT0 = 16'he4b1;
    defparam add_1853_9.INIT1 = 16'he4b1;
    defparam add_1853_9.INJECT1_0 = "NO";
    defparam add_1853_9.INJECT1_1 = "NO";
    LUT4 i31331_4_lut (.A(n39471), .B(rx_flag), .C(n31), .D(n39537), 
         .Z(sys_clk_c_enable_106)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam i31331_4_lut.init = 16'h3f3b;
    LUT4 hour_7__I_0_i1_3_lut_4_lut (.A(key_mode[0]), .B(n39643), .C(hour_t[0]), 
         .D(n850), .Z(hour_7__N_19[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;
    defparam hour_7__I_0_i1_3_lut_4_lut.init = 16'he0f1;
    LUT4 i1_2_lut_3_lut_4_lut_adj_324 (.A(key_mode[0]), .B(n39643), .C(n850), 
         .D(n831), .Z(n26549)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_324.init = 16'h1110;
    LUT4 i1_2_lut_rep_476_3_lut_4_lut (.A(key_mode[0]), .B(n39643), .C(n39641), 
         .D(n39642), .Z(n39514)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_476_3_lut_4_lut.init = 16'h000e;
    LUT4 i2_2_lut_3_lut_4_lut (.A(key_mode[0]), .B(n39643), .C(n850), 
         .D(n831), .Z(clk_1s_enable_16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_1853_7 (.A0(n5223), .B0(n39642), .C0(n5336), .D0(min_t[4]), 
          .A1(n5223), .B1(n39642), .C1(n5335), .D1(min_t[5]), .CIN(n34397), 
          .COUT(n34398), .S0(n5476), .S1(n5475));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1853_7.INIT0 = 16'he4b1;
    defparam add_1853_7.INIT1 = 16'he4b1;
    defparam add_1853_7.INJECT1_0 = "NO";
    defparam add_1853_7.INJECT1_1 = "NO";
    LUT4 mux_3205_i2_3_lut (.A(hundres_0__N_352_adj_1988[3]), .B(hundres_0__N_352_adj_2014[3]), 
         .C(sw1_c), .Z(n12689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(109[119:149])
    defparam mux_3205_i2_3_lut.init = 16'hcaca;
    CCU2D add_1880_7 (.A0(n5274), .B0(n39642), .C0(n5356), .D0(hour_t[4]), 
          .A1(n5274), .B1(n39642), .C1(n5355), .D1(hour_t[5]), .CIN(n34189), 
          .COUT(n34190), .S0(n5527), .S1(n5526));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1880_7.INIT0 = 16'he4b1;
    defparam add_1880_7.INIT1 = 16'he4b1;
    defparam add_1880_7.INJECT1_0 = "NO";
    defparam add_1880_7.INJECT1_1 = "NO";
    CCU2D add_1880_3 (.A0(n39642), .B0(n5274), .C0(n5360), .D0(hour_t[0]), 
          .A1(n5274), .B1(n39642), .C1(n5359), .D1(hour_t[1]), .CIN(n34187), 
          .COUT(n34188), .S0(n5531), .S1(n5530));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1880_3.INIT0 = 16'hd1e2;
    defparam add_1880_3.INIT1 = 16'he4b1;
    defparam add_1880_3.INJECT1_0 = "NO";
    defparam add_1880_3.INJECT1_1 = "NO";
    LUT4 i4_3_lut_4_lut (.A(n39615), .B(n39641), .C(hour_warning[5]), 
         .D(hour_warning[3]), .Z(n11_adj_1933)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i4_3_lut_4_lut.init = 16'h0008;
    LUT4 cnt_2__bdd_4_lut (.A(cnt_adj_2088[2]), .B(cnt_adj_2088[4]), .C(cnt_adj_2088[1]), 
         .D(cnt_adj_2088[3]), .Z(n39205)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam cnt_2__bdd_4_lut.init = 16'h3525;
    LUT4 i2_4_lut_adj_325 (.A(n39657), .B(key_mode[0]), .C(n12), .D(n36995), 
         .Z(n9689)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i2_4_lut_adj_325.init = 16'h1000;
    LUT4 i1_2_lut_rep_548 (.A(sw1_c), .B(key_mode[0]), .Z(n39586)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i1_2_lut_rep_548.init = 16'heeee;
    LUT4 i31303_3_lut_rep_490_4_lut (.A(sw1_c), .B(key_mode[0]), .C(key_mode[1]), 
         .D(key_mode[2]), .Z(n39528)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i31303_3_lut_rep_490_4_lut.init = 16'h001f;
    LUT4 i6_1_lut_rep_549 (.A(key_mode[0]), .Z(n39587)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/top.v(91[11:24])
    defparam i6_1_lut_rep_549.init = 16'h5555;
    LUT4 i31336_4_lut_4_lut_4_lut (.A(key_mode[0]), .B(n4_adj_1928), .C(key1_pulse), 
         .D(n39561), .Z(sys_clk_c_enable_266)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/top.v(91[11:24])
    defparam i31336_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 mux_3204_i2_3_lut (.A(hundres_0__N_352_adj_1962[3]), .B(hundres_0__N_352_adj_2040[3]), 
         .C(sw1_c), .Z(n12685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(111[119:148])
    defparam mux_3204_i2_3_lut.init = 16'hcaca;
    CCU2D add_1853_5 (.A0(n5223), .B0(n39642), .C0(n5338), .D0(min_t[2]), 
          .A1(n5223), .B1(n39642), .C1(n5337), .D1(min_t[3]), .CIN(n34396), 
          .COUT(n34397), .S0(n5478), .S1(n5477));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1853_5.INIT0 = 16'he4b1;
    defparam add_1853_5.INIT1 = 16'he4b1;
    defparam add_1853_5.INJECT1_0 = "NO";
    defparam add_1853_5.INJECT1_1 = "NO";
    CCU2D add_1853_3 (.A0(n39642), .B0(n5223), .C0(n5340), .D0(min_t[0]), 
          .A1(n5223), .B1(n39642), .C1(n5339), .D1(min_t[1]), .CIN(n34395), 
          .COUT(n34396), .S0(n5480), .S1(n5479));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1853_3.INIT0 = 16'hd1e2;
    defparam add_1853_3.INIT1 = 16'he4b1;
    defparam add_1853_3.INJECT1_0 = "NO";
    defparam add_1853_3.INJECT1_1 = "NO";
    LUT4 mux_282_Mux_3_i30_4_lut_3_lut_4_lut (.A(cnt_adj_2088[1]), .B(cnt_adj_2088[2]), 
         .C(cnt_adj_2088[3]), .D(cnt_adj_2088[0]), .Z(n27972)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(132[20] 135[14])
    defparam mux_282_Mux_3_i30_4_lut_3_lut_4_lut.init = 16'hfee0;
    \divide(WIDTH=32,N=12000000)_U2  devide_1s (.clk_1s(clk_1s), .sys_clk_c(sys_clk_c), 
            .GND_net(GND_net), .n20151(n20151)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(30[37] 36[3])
    LUT4 i1_3_lut_4_lut (.A(cnt_adj_2088[0]), .B(cnt_adj_2088[1]), .C(cnt_adj_2088[2]), 
         .D(cnt_adj_2088[3]), .Z(n4_adj_1927)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(132[20] 135[14])
    defparam i1_3_lut_4_lut.init = 16'hfe00;
    LUT4 n39205_bdd_2_lut (.A(n39205), .B(cnt_adj_2088[0]), .Z(n39206)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n39205_bdd_2_lut.init = 16'h2222;
    LUT4 mux_282_Mux_1_i22_3_lut_3_lut_4_lut_3_lut (.A(cnt_adj_2088[0]), .B(cnt_adj_2088[1]), 
         .C(cnt_adj_2088[2]), .Z(n22)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;   // d:/new porject/top-xu/oled.v(132[20] 135[14])
    defparam mux_282_Mux_1_i22_3_lut_3_lut_4_lut_3_lut.init = 16'h1616;
    LUT4 i1_4_lut_adj_326 (.A(n37216), .B(n15), .C(min_warning[7]), .D(n4), 
         .Z(n12)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_326.init = 16'heeea;
    PFUMX mux_3205_i3 (.BLUT(n4_adj_1919), .ALUT(n4_adj_1934), .C0(sw1_c), 
          .Z(n20731));
    BCD bcd_sec (.\sec[4] (sec[4]), .\sec[3] (sec[3]), .n19147(n19147), 
        .n9593(n9593), .\hundres_0__N_349[0] (hundres_0__N_349[0]), .\sec[2] (sec[2]), 
        .\sec[1] (sec[1]), .n39359(n39359), .\sec[7] (sec[7]), .\hundres_0__N_349[1] (hundres_0__N_349[1]), 
        .\hundres_0__N_352[2] (hundres_0__N_352[2]), .n39369(n39369), .n39364(n39364), 
        .\hundres_0__N_352[1] (hundres_0__N_352[1]), .n39351(n39351), .\sec[6] (sec[6]), 
        .\sec[5] (sec[5])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(248[6] 254[3])
    LUT4 i3_4_lut_adj_327 (.A(warning), .B(n5), .C(cnt_run[0]), .D(state_adj_2110[0]), 
         .Z(n34888)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_327.init = 16'hfdff;
    LUT4 i20964_2_lut (.A(Temp_H[1]), .B(uart_en_N_226), .Z(n991)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/top.v(330[10] 333[8])
    defparam i20964_2_lut.init = 16'h8888;
    FD1P3IX hour_i7 (.D(hour_t[7]), .SP(clk_1s_enable_16), .CD(n26549), 
            .CK(clk_1s), .Q(hour[7]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i7.GSR = "ENABLED";
    PFUMX mux_3205_i4 (.BLUT(n9607), .ALUT(n9611), .C0(sw1_c), .Z(n8599));
    PFUMX mux_3204_i3 (.BLUT(n4_adj_1918), .ALUT(n4_adj_1920), .C0(sw1_c), 
          .Z(n20729));
    PFUMX mux_3204_i4 (.BLUT(n9598), .ALUT(n9602), .C0(sw1_c), .Z(n8609));
    CCU2D add_1853_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5223), .B1(n39642), .C1(GND_net), .D1(GND_net), .COUT(n34395));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1853_1.INIT0 = 16'hF000;
    defparam add_1853_1.INIT1 = 16'heeee;
    defparam add_1853_1.INJECT1_0 = "NO";
    defparam add_1853_1.INJECT1_1 = "NO";
    DS18B20Z u_DS18B20Z (.sys_clk_c(sys_clk_c), .\cnt_write[5] (cnt_write[5]), 
            .GND_net(GND_net), .one_wire_N_667(one_wire_N_667), .\hundres_1__N_341[1] (hundres_1__N_341_adj_2058[1]), 
            .\hundres_1__N_341[0] (hundres_1__N_341_adj_2058[0]), .\ds18b20_data[8] (ds18b20_data[8]), 
            .\ds18b20_data[7] (ds18b20_data[7]), .\ds18b20_data[6] (ds18b20_data[6]), 
            .\ds18b20_data[5] (ds18b20_data[5]), .\ds18b20_data[4] (ds18b20_data[4]), 
            .one_wire_out(one_wire_out), .n25720(n25720), .n13261(n13261), 
            .n13249(n13249), .n11472(n11472), .n37866(n37866), .n37867(n37867), 
            .sys_rst_n_c(sys_rst_n_c), .n29(n29)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(303[11] 309[2])
    FD1P3IX hour_i6 (.D(hour_t[6]), .SP(clk_1s_enable_16), .CD(n26549), 
            .CK(clk_1s), .Q(hour[6]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i6.GSR = "ENABLED";
    LUT4 m1_lut (.Z(n41006)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    KEY_U0 key_2 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre), .key_sec(key_sec), 
           .key2_c(key2_c), .key_mode({key_mode}), .n39483(n39483), .n39643(n39643), 
           .n39485(n39485), .sys_clk_c_enable_159(sys_clk_c_enable_159), 
           .n39657(n39657), .sys_clk_c_enable_79(sys_clk_c_enable_79), .n39642(n39642), 
           .n15(n15), .key_sec_adj_11(key_sec_adj_1905), .key_sec_pre_adj_12(key_sec_pre_adj_1904), 
           .n39561(n39561), .GND_net(GND_net), .n39641(n39641), .n39562(n39562), 
           .key1_pulse(key1_pulse), .sw1_c(sw1_c), .n36995(n36995), .n27351(n27351)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(47[6] 52[3])
    PFUMX mux_3205_i1 (.BLUT(hour_tens[0]), .ALUT(hour_warning_tens[0]), 
          .C0(sw1_c), .Z(n8602));
    KEY_U1 key_1 (.sys_clk_c(sys_clk_c), .key1_c(key1_c), .GND_net(GND_net), 
           .key1_pulse(key1_pulse)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(39[6] 44[3])
    LUT4 i20663_2_lut (.A(Temp_H[0]), .B(uart_en_N_226), .Z(n992)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/top.v(330[10] 333[8])
    defparam i20663_2_lut.init = 16'h8888;
    LUT4 i31393_2_lut (.A(led_c), .B(led_N_216), .Z(led_N_213)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i31393_2_lut.init = 16'h7777;
    LUT4 i6_4_lut (.A(n37214), .B(n37719), .C(min_warning[1]), .D(min_warning[2]), 
         .Z(n37216)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i6_4_lut.init = 16'h0002;
    uart_send u_uart_send (.sys_clk_c(sys_clk_c), .uart_en(uart_en), .uart_send_data({uart_send_data}), 
            .GND_net(GND_net), .uart_txd_c(uart_txd_c)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(344[11] 353[2])
    BCD_U4 bcd_min (.\min[1] (min[1]), .\min_ones[1] (min_ones[1]), .\min[4] (min[4]), 
           .\hundres_0__N_352[3] (hundres_0__N_352_adj_1962[3]), .hundres_0__N_357(hundres_0__N_357), 
           .n9316(n9316), .n9598(n9598), .\min[2] (min[2]), .\min[3] (min[3]), 
           .\min_tens[0] (min_tens[0]), .\min[7] (min[7]), .\min_ones[3] (min_ones[3]), 
           .\min_ones[2] (min_ones[2]), .\min[6] (min[6]), .\min[5] (min[5]), 
           .n4(n4_adj_1918)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(256[6] 262[3])
    FD1P3IX hour_i5 (.D(hour_t[5]), .SP(clk_1s_enable_16), .CD(n26549), 
            .CK(clk_1s), .Q(hour[5]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i5.GSR = "ENABLED";
    BCD_U7 bcd_T (.\ds18b20_data[8] (ds18b20_data[8]), .\hundres_1__N_341[0] (hundres_1__N_341_adj_2058[0]), 
           .\hundres_1__N_341[1] (hundres_1__N_341_adj_2058[1]), .\ds18b20_data[7] (ds18b20_data[7]), 
           .\ds18b20_data[6] (ds18b20_data[6]), .\cnt_main[0] (cnt_main_adj_2083[0]), 
           .n8628(n8628), .n37838(n37838), .\Tem_lower[3] (Tem_lower[3]), 
           .\Tem_high[0] (Tem_high[0]), .\ds18b20_data[5] (ds18b20_data[5]), 
           .\Tem_lower[1] (Tem_lower[1]), .\Tem_high[2] (Tem_high[2]), .\Tem_lower[2] (Tem_lower[2]), 
           .n40989(n40989)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(295[5] 301[3])
    LUT4 cnt_0__bdd_3_lut_32518 (.A(cnt_adj_2088[0]), .B(cnt_adj_2088[1]), 
         .C(cnt_adj_2088[2]), .Z(n39231)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam cnt_0__bdd_3_lut_32518.init = 16'h4040;
    FD1P3IX key_mode_2996__i1 (.D(n19), .SP(key1_pulse), .CD(n26543), 
            .CK(sys_clk_c), .Q(key_mode[1]));   // d:/new porject/top-xu/top.v(99[22:37])
    defparam key_mode_2996__i1.GSR = "ENABLED";
    LUT4 cnt_0__bdd_4_lut_32513 (.A(cnt_adj_2088[0]), .B(cnt_adj_2088[3]), 
         .C(cnt_adj_2088[1]), .D(cnt_adj_2088[2]), .Z(n39230)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_32513.init = 16'h0311;
    BCD_U5 bcd_hour_warning (.\hour_warning[7] (hour_warning[7]), .n39362(n39362), 
           .\hundres_0__N_349[1] (hundres_0__N_349_adj_2012[1]), .\hundres_0__N_352[3] (hundres_0__N_352_adj_2014[3]), 
           .hundres_0__N_357(hundres_0__N_357_adj_1911), .n9303(n9303), 
           .n4(n4_adj_1934), .\hour_warning[4] (hour_warning[4]), .\hour_warning[1] (hour_warning[1]), 
           .\hour_warning_ones[1] (hour_warning_ones[1]), .\hour_warning_tens[0] (hour_warning_tens[0]), 
           .\hour_warning[3] (hour_warning[3]), .\hour_warning_ones[3] (hour_warning_ones[3]), 
           .\hour_warning_ones[2] (hour_warning_ones[2]), .\hour_warning[2] (hour_warning[2]), 
           .\hour_warning[5] (hour_warning[5]), .\hour_warning[6] (hour_warning[6])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(272[7] 278[3])
    LUT4 i20687_3_lut_3_lut (.A(sw1_c), .B(n39351), .C(sec[1]), .Z(n8628)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i20687_3_lut_3_lut.init = 16'h1414;
    LUT4 i20689_4_lut_4_lut (.A(sw1_c), .B(n39364), .C(n9593), .D(hundres_0__N_349[0]), 
         .Z(n8621)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;
    defparam i20689_4_lut_4_lut.init = 16'h4510;
    LUT4 i20686_4_lut_4_lut (.A(sw1_c), .B(sec[1]), .C(n39351), .D(n39369), 
         .Z(n8627)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;
    defparam i20686_4_lut_4_lut.init = 16'h4510;
    BCD_U6 bcd_hour (.\hour[4] (hour[4]), .\hour[3] (hour[3]), .\hour[2] (hour[2]), 
           .\hour[1] (hour[1]), .\hundres_0__N_349[1] (hundres_0__N_349_adj_1986[1]), 
           .hundres_0__N_357(hundres_0__N_357_adj_1908), .\hundres_0__N_352[3] (hundres_0__N_352_adj_1988[3]), 
           .\hour[6] (hour[6]), .\hour[5] (hour[5]), .n39632(n39632), 
           .\hour[7] (hour[7]), .n9303(n9303), .n4(n4_adj_1919), .\hour_ones[1] (hour_ones[1]), 
           .\hour_tens[0] (hour_tens[0]), .\hour_ones[3] (hour_ones[3]), 
           .n39363(n39363), .\hour_ones[2] (hour_ones[2])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(264[6] 270[3])
    BCD_U3 bcd_min_warning (.\min_warning[1] (min_warning[1]), .\min_warning_ones[2] (min_warning_ones[2]), 
           .\hundres_0__N_352[3] (hundres_0__N_352_adj_2040[3]), .hundres_0__N_357(hundres_0__N_357_adj_1913), 
           .n9316(n9316), .n9602(n9602), .\min_warning[4] (min_warning[4]), 
           .\min_warning[3] (min_warning[3]), .\min_warning[2] (min_warning[2]), 
           .\min_warning_ones[1] (min_warning_ones[1]), .\min_warning_tens[0] (min_warning_tens[0]), 
           .\min_warning[7] (min_warning[7]), .\min_warning_ones[3] (min_warning_ones[3]), 
           .n4(n4_adj_1920), .\min_warning[5] (min_warning[5]), .\min_warning[6] (min_warning[6])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(280[7] 286[3])
    LUT4 i20690_3_lut_3_lut (.A(sw1_c), .B(n9593), .C(n39364), .Z(n8622)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i20690_3_lut_3_lut.init = 16'h1414;
    FD1P3IX hour_i4 (.D(hour_t[4]), .SP(clk_1s_enable_16), .CD(n26549), 
            .CK(clk_1s), .Q(hour[4]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i4.GSR = "ENABLED";
    LUT4 i20685_3_lut_4_lut_4_lut_4_lut (.A(sw1_c), .B(hundres_0__N_352[1]), 
         .C(hundres_0__N_352[2]), .D(n39359), .Z(n8626)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;
    defparam i20685_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_recv (.sys_clk_c(sys_clk_c), 
            .sys_clk_c_enable_106(sys_clk_c_enable_106), .n39537(n39537), 
            .n39471(n39471), .rx_flag(rx_flag), .uart_recv_done(uart_recv_done), 
            .uart_rxd_c(uart_rxd_c), .uart_recv_data({uart_recv_data}), 
            .GND_net(GND_net), .n31(n31)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(408[1] 415[6])
    LUT4 i20692_4_lut_4_lut_4_lut (.A(sw1_c), .B(hundres_0__N_352[1]), .C(hundres_0__N_352[2]), 
         .D(n39359), .Z(n8623)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i20692_4_lut_4_lut_4_lut.init = 16'h1450;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    Beeper m_beep (.GND_net(GND_net), .beep_c(beep_c), .sys_clk_c(sys_clk_c), 
           .\music_tone[4] (music_tone[4]), .\music_tone[3] (music_tone[3]), 
           .\music_tone[1] (music_tone[1]), .\music_tone[2] (music_tone[2]), 
           .\music_tone[0] (music_tone[0]), .sw2_c(sw2_c)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(417[9] 423[2])
    KEY key_3 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre_adj_1904), 
        .key_sec(key_sec_adj_1905), .key3_c(key3_c), .n39641(n39641), 
        .key_sec_adj_9(key_sec), .key_sec_pre_adj_10(key_sec_pre), .n39569(n39569), 
        .key1_pulse(key1_pulse), .n39642(n39642), .n39511(n39511), .\key_mode[2] (key_mode[2]), 
        .\key_mode[1] (key_mode[1]), .n39546(n39546), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(55[6] 60[3])
    PFUMX i31954 (.BLUT(n39302), .ALUT(n39301), .C0(cnt_adj_2088[4]), 
          .Z(n39303));
    LUT4 i20693_2_lut_2_lut (.A(sw1_c), .B(sec[0]), .Z(n8629)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i20693_2_lut_2_lut.init = 16'h4444;
    LUT4 i20666_4_lut (.A(min_warning[0]), .B(n9689), .C(n5497), .D(sys_clk_c_enable_119), 
         .Z(n24)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i20666_4_lut.init = 16'h3022;
    music_play m_music_play (.\state[0] (state_adj_2110[0]), .sys_clk_c(sys_clk_c), 
            .cnt_run({Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, 
            Open_6, cnt_run[0]}), .\music_tone[0] (music_tone[0]), .uart_recv_done(uart_recv_done), 
            .music_cnt({Open_7, Open_8, music_cnt[6:0]}), .GND_net(GND_net), 
            .warning_TEM(warning_TEM), .\music_tone[4] (music_tone[4]), 
            .\music_tone[3] (music_tone[3]), .\music_tone[2] (music_tone[2]), 
            .\music_tone[1] (music_tone[1]), .n41006(n41006), .uart_recv_data({uart_recv_data}), 
            .n5(n5), .warning(warning), .n123(n123), .n34888(n34888), 
            .n124(n124), .n125(n125), .sys_rst_n_c(sys_rst_n_c), .n126(n126)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(434[13] 447[6])
    OLED12832 oled1 (.sys_clk_c(sys_clk_c), .oled_cs_c(oled_cs_c), .oled_dc_c(oled_dc_c), 
            .\cnt[0] (cnt_adj_2088[0]), .n2507(n2507), .\ds18b20_data[4] (ds18b20_data[4]), 
            .\cnt_main[2] (cnt_main_adj_2083[2]), .n8602(n8602), .\cnt_main[1] (cnt_main_adj_2083[1]), 
            .\cnt_main[0] (cnt_main_adj_2083[0]), .GND_net(GND_net), .\cnt[4] (cnt_adj_2088[4]), 
            .\cnt[3] (cnt_adj_2088[3]), .\cnt[2] (cnt_adj_2088[2]), .\cnt[1] (cnt_adj_2088[1]), 
            .sw1_c(sw1_c), .n2678(n2678), .n3059(n3059), .n3437(n3437), 
            .n39303(n39303), .n2681(n2681), .n39482(n39482), .n2510(n2510), 
            .n39545(n39545), .n2508(n2508), .n3060(n3060), .n3438(n3438), 
            .n2682(n2682), .n4(n4_adj_1927), .\min_tens[0] (min_tens[0]), 
            .\min_warning_tens[0] (min_warning_tens[0]), .n8627(n8627), 
            .\Tem_high[2] (Tem_high[2]), .\min[0] (min[0]), .\min_warning[0] (min_warning[0]), 
            .\hour[0] (hour[0]), .\hour_warning[0] (hour_warning[0]), .n39512(n39512), 
            .time_set(time_set), .n39631(n39631), .n8622(n8622), .n9316(n9316), 
            .n12685(n12685), .n9303(n9303), .n12689(n12689), .n3810(n3810), 
            .n4188(n4188), .n8621(n8621), .n8609(n8609), .n3054(n3054), 
            .n3432(n3432), .n20729(n20729), .n20731(n20731), .n7(n7_adj_1925), 
            .n2676(n2676), .n2680(n2680), .n3058(n3058), .n3436(n3436), 
            .n3814(n3814), .n4192(n4192), .n2509(n2509), .n38480(n38480), 
            .n38528(n38528), .n39232(n39232), .n38817(n38817), .n27972(n27972), 
            .n39206(n39206), .\min_ones[3] (min_ones[3]), .\min_warning_ones[3] (min_warning_ones[3]), 
            .n9593(n9593), .n19147(n19147), .\hundres_0__N_349[1] (hundres_0__N_349[1]), 
            .n40989(n40989), .\hundres_1__N_341[0] (hundres_1__N_341_adj_2058[0]), 
            .\ds18b20_data[8] (ds18b20_data[8]), .\hundres_1__N_341[1] (hundres_1__N_341_adj_2058[1]), 
            .n3435(n3435), .n4191(n4191), .n3057(n3057), .n3813(n3813), 
            .key_mode({key_mode}), .n39643(n39643), .n2679(n2679), .n39562(n39562), 
            .n39362(n39362), .\hundres_0__N_352[3] (hundres_0__N_352_adj_2014[3]), 
            .\hundres_0__N_349[1]_adj_1 (hundres_0__N_349_adj_2012[1]), .n9611(n9611), 
            .n4_adj_2(n4_adj_1928), .n39363(n39363), .\hundres_0__N_352[3]_adj_3 (hundres_0__N_352_adj_1988[3]), 
            .\hundres_0__N_349[1]_adj_4 (hundres_0__N_349_adj_1986[1]), .n9607(n9607), 
            .warning_TEM(warning_TEM), .oled_mosi_c(oled_mosi_c), .oled_sck_c(oled_sck_c), 
            .oled_res_c(oled_res_c), .n8599(n8599), .n8626(n8626), .n3816(n3816), 
            .n4194(n4194), .n3815(n3815), .n4193(n4193), .n2677(n2677), 
            .n3812(n3812), .n4190(n4190), .n3056(n3056), .n3434(n3434), 
            .n3811(n3811), .n4189(n4189), .n3055(n3055), .n3433(n3433), 
            .\Tem_lower[2] (Tem_lower[2]), .\Tem_lower[3] (Tem_lower[3]), 
            .\Tem_lower[1] (Tem_lower[1]), .n37838(n37838), .n38554(n38554), 
            .n22(n22_adj_1915), .n22_adj_5(n22), .n15(n15_adj_1916), .n38562(n38562), 
            .n8623(n8623), .hundres_0__N_357(hundres_0__N_357_adj_1908), 
            .hundres_0__N_357_adj_6(hundres_0__N_357_adj_1911), .hundres_0__N_357_adj_7(hundres_0__N_357), 
            .hundres_0__N_357_adj_8(hundres_0__N_357_adj_1913), .\hour_ones[2] (hour_ones[2]), 
            .\hour_warning_ones[2] (hour_warning_ones[2]), .\hour_ones[3] (hour_ones[3]), 
            .\hour_warning_ones[3] (hour_warning_ones[3]), .\min_ones[2] (min_ones[2]), 
            .\min_warning_ones[2] (min_warning_ones[2]), .\hour_ones[1] (hour_ones[1]), 
            .\hour_warning_ones[1] (hour_warning_ones[1]), .\min_ones[1] (min_ones[1]), 
            .\min_warning_ones[1] (min_warning_ones[1]), .n8629(n8629), 
            .\Tem_high[0] (Tem_high[0]), .sys_rst_n_c(sys_rst_n_c)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(361[12] 391[3])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \divide(WIDTH=32,N=12000000)_U2 
//

module \divide(WIDTH=32,N=12000000)_U2  (clk_1s, sys_clk_c, GND_net, n20151) /* synthesis syn_module_defined=1 */ ;
    output clk_1s;
    input sys_clk_c;
    input GND_net;
    output n20151;
    
    wire clk_1s /* synthesis is_clock=1, SET_AS_NETWORK=clk_1s */ ;   // d:/new porject/top-xu/top.v(29[7:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire clkout_N_295;
    wire [31:0]cnt_p;   // d:/new porject/top-xu/clock.v(11[19:24])
    
    wire n18;
    wire [31:0]n200;
    
    wire n21811;
    wire [31:0]n101;
    
    wire n27, n34266, n34265, n34264, n34263, n34262, n34261, 
        n34260, n34259, n34258, n34257, n34256, n34255, n34254, 
        n34253, n34252, n34251, n37684, n24, n34431, n34430, n34429, 
        n34428, n34427, n34426, n34425, n34424, n34423, n34422, 
        n34421, n34420, n37692, n37981, n37696, n37694, n17, n30_adj_1902, 
        n26_adj_1903;
    
    FD1S3AX clk_p_29 (.D(clkout_N_295), .CK(sys_clk_c), .Q(clk_1s)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=37, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=36 */ ;   // d:/new porject/top-xu/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(cnt_p[25]), .B(cnt_p[26]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i2_2_lut.init = 16'heeee;
    FD1S3IX cnt_p_2997__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n21811), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i0.GSR = "ENABLED";
    LUT4 i11_4_lut (.A(cnt_p[19]), .B(cnt_p[10]), .C(cnt_p[22]), .D(cnt_p[15]), 
         .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i11_4_lut.init = 16'hfffe;
    CCU2D cnt_p_2997_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34266), .S0(n101[31]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_2997_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34265), .COUT(n34266), .S0(n101[29]), 
          .S1(n101[30]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34264), .COUT(n34265), .S0(n101[27]), 
          .S1(n101[28]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34263), .COUT(n34264), .S0(n101[25]), 
          .S1(n101[26]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34262), .COUT(n34263), .S0(n101[23]), 
          .S1(n101[24]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34261), .COUT(n34262), .S0(n101[21]), 
          .S1(n101[22]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34260), .COUT(n34261), .S0(n101[19]), 
          .S1(n101[20]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34259), .COUT(n34260), .S0(n101[17]), 
          .S1(n101[18]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34258), .COUT(n34259), .S0(n101[15]), 
          .S1(n101[16]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34257), .COUT(n34258), .S0(n101[13]), 
          .S1(n101[14]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_15.INJECT1_1 = "NO";
    FD1S3IX cnt_p_2997__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n21811), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n21811), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n21811), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n21811), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n21811), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n21811), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_2997__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n21811), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997__i1.GSR = "ENABLED";
    CCU2D cnt_p_2997_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34256), .COUT(n34257), .S0(n101[11]), 
          .S1(n101[12]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34255), .COUT(n34256), .S0(n101[9]), .S1(n101[10]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34254), .COUT(n34255), .S0(n101[7]), .S1(n101[8]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34253), .COUT(n34254), .S0(n101[5]), .S1(n101[6]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34252), .COUT(n34253), .S0(n101[3]), .S1(n101[4]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34251), .COUT(n34252), .S0(n101[1]), .S1(n101[2]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_2997_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_2997_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_2997_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n34251), .S1(n101[0]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_2997_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_2997_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_2997_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_2997_add_4_1.INJECT1_1 = "NO";
    LUT4 i13553_1_lut (.A(clk_1s), .Z(n20151)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/clock.v(30[9] 33[14])
    defparam i13553_1_lut.init = 16'h5555;
    LUT4 i8_4_lut (.A(cnt_p[31]), .B(n200[4]), .C(n37684), .D(cnt_p[20]), 
         .Z(n24)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i8_4_lut.init = 16'hbfff;
    CCU2D add_27539_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34431), 
          .S0(clkout_N_295));
    defparam add_27539_cout.INIT0 = 16'h0000;
    defparam add_27539_cout.INIT1 = 16'h0000;
    defparam add_27539_cout.INJECT1_0 = "NO";
    defparam add_27539_cout.INJECT1_1 = "NO";
    CCU2D add_27539_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34430), .COUT(n34431));
    defparam add_27539_24.INIT0 = 16'h5555;
    defparam add_27539_24.INIT1 = 16'h5555;
    defparam add_27539_24.INJECT1_0 = "NO";
    defparam add_27539_24.INJECT1_1 = "NO";
    CCU2D add_27539_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34429), .COUT(n34430));
    defparam add_27539_22.INIT0 = 16'h5555;
    defparam add_27539_22.INIT1 = 16'h5555;
    defparam add_27539_22.INJECT1_0 = "NO";
    defparam add_27539_22.INJECT1_1 = "NO";
    CCU2D add_27539_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34428), .COUT(n34429));
    defparam add_27539_20.INIT0 = 16'h5555;
    defparam add_27539_20.INIT1 = 16'h5555;
    defparam add_27539_20.INJECT1_0 = "NO";
    defparam add_27539_20.INJECT1_1 = "NO";
    CCU2D add_27539_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34427), .COUT(n34428));
    defparam add_27539_18.INIT0 = 16'h5555;
    defparam add_27539_18.INIT1 = 16'h5555;
    defparam add_27539_18.INJECT1_0 = "NO";
    defparam add_27539_18.INJECT1_1 = "NO";
    CCU2D add_27539_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34426), .COUT(n34427));
    defparam add_27539_16.INIT0 = 16'h5aaa;
    defparam add_27539_16.INIT1 = 16'h5555;
    defparam add_27539_16.INJECT1_0 = "NO";
    defparam add_27539_16.INJECT1_1 = "NO";
    CCU2D add_27539_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34425), .COUT(n34426));
    defparam add_27539_14.INIT0 = 16'h5aaa;
    defparam add_27539_14.INIT1 = 16'h5555;
    defparam add_27539_14.INJECT1_0 = "NO";
    defparam add_27539_14.INJECT1_1 = "NO";
    CCU2D add_27539_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34424), .COUT(n34425));
    defparam add_27539_12.INIT0 = 16'h5555;
    defparam add_27539_12.INIT1 = 16'h5aaa;
    defparam add_27539_12.INJECT1_0 = "NO";
    defparam add_27539_12.INJECT1_1 = "NO";
    CCU2D add_27539_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34423), .COUT(n34424));
    defparam add_27539_10.INIT0 = 16'h5aaa;
    defparam add_27539_10.INIT1 = 16'h5aaa;
    defparam add_27539_10.INJECT1_0 = "NO";
    defparam add_27539_10.INJECT1_1 = "NO";
    CCU2D add_27539_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34422), .COUT(n34423));
    defparam add_27539_8.INIT0 = 16'h5555;
    defparam add_27539_8.INIT1 = 16'h5aaa;
    defparam add_27539_8.INJECT1_0 = "NO";
    defparam add_27539_8.INJECT1_1 = "NO";
    CCU2D add_27539_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34421), .COUT(n34422));
    defparam add_27539_6.INIT0 = 16'h5555;
    defparam add_27539_6.INIT1 = 16'h5555;
    defparam add_27539_6.INJECT1_0 = "NO";
    defparam add_27539_6.INJECT1_1 = "NO";
    CCU2D add_27539_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34420), .COUT(n34421));
    defparam add_27539_4.INIT0 = 16'h5aaa;
    defparam add_27539_4.INIT1 = 16'h5aaa;
    defparam add_27539_4.INJECT1_0 = "NO";
    defparam add_27539_4.INJECT1_1 = "NO";
    CCU2D add_27539_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n34420));
    defparam add_27539_2.INIT0 = 16'h7000;
    defparam add_27539_2.INIT1 = 16'h5555;
    defparam add_27539_2.INJECT1_0 = "NO";
    defparam add_27539_2.INJECT1_1 = "NO";
    LUT4 i30879_3_lut (.A(cnt_p[23]), .B(cnt_p[21]), .C(cnt_p[12]), .Z(n37684)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i30879_3_lut.init = 16'h8080;
    LUT4 i31307_4_lut (.A(n37692), .B(n37981), .C(n37696), .D(n37694), 
         .Z(n21811)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i31307_4_lut.init = 16'h8000;
    LUT4 i30887_4_lut (.A(n200[3]), .B(cnt_p[17]), .C(cnt_p[7]), .D(n200[1]), 
         .Z(n37692)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30887_4_lut.init = 16'h8000;
    LUT4 i31306_4_lut (.A(n17), .B(n30_adj_1902), .C(n26_adj_1903), .D(n18), 
         .Z(n37981)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i31306_4_lut.init = 16'h0001;
    LUT4 i30891_4_lut (.A(n200[0]), .B(n200[2]), .C(cnt_p[18]), .D(cnt_p[11]), 
         .Z(n37696)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30891_4_lut.init = 16'h8000;
    LUT4 i30889_4_lut (.A(cnt_p[9]), .B(n200[5]), .C(cnt_p[16]), .D(n200[6]), 
         .Z(n37694)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30889_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(cnt_p[28]), .B(cnt_p[8]), .Z(n17)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i14_4_lut (.A(n27), .B(cnt_p[29]), .C(n24), .D(cnt_p[13]), 
         .Z(n30_adj_1902)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_p[24]), .B(cnt_p[30]), .C(cnt_p[27]), .D(cnt_p[14]), 
         .Z(n26_adj_1903)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i10_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module BCD
//

module BCD (\sec[4] , \sec[3] , n19147, n9593, \hundres_0__N_349[0] , 
            \sec[2] , \sec[1] , n39359, \sec[7] , \hundres_0__N_349[1] , 
            \hundres_0__N_352[2] , n39369, n39364, \hundres_0__N_352[1] , 
            n39351, \sec[6] , \sec[5] ) /* synthesis syn_module_defined=1 */ ;
    input \sec[4] ;
    input \sec[3] ;
    output n19147;
    output n9593;
    output \hundres_0__N_349[0] ;
    input \sec[2] ;
    input \sec[1] ;
    output n39359;
    input \sec[7] ;
    output \hundres_0__N_349[1] ;
    output \hundres_0__N_352[2] ;
    output n39369;
    output n39364;
    output \hundres_0__N_352[1] ;
    output n39351;
    input \sec[6] ;
    input \sec[5] ;
    
    
    wire n39474, n39420;
    wire [3:0]hundres_1__N_343;
    
    wire n39500;
    wire [3:0]hundres_1__N_341;
    
    wire n39674, n39673, n39540, n39398;
    wire [3:0]hundres_1__N_342;
    
    wire n39399, n39445, n39400, n39604, n39412, n39432;
    
    LUT4 i4882_3_lut_4_lut (.A(\sec[4] ), .B(n39474), .C(\sec[3] ), .D(n39420), 
         .Z(hundres_1__N_343[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4882_3_lut_4_lut.init = 16'h6966;
    LUT4 i4874_2_lut_rep_374_4_lut_4_lut_then_4_lut (.A(\sec[4] ), .B(n39500), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n39674)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (C)+!B !(C+(D))))) */ ;
    defparam i4874_2_lut_rep_374_4_lut_4_lut_then_4_lut.init = 16'h6063;
    LUT4 i4874_2_lut_rep_374_4_lut_4_lut_else_4_lut (.A(\sec[4] ), .B(n39500), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n39673)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4874_2_lut_rep_374_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 n19147_bdd_4_lut_32078 (.A(n19147), .B(n39540), .C(n39398), .D(hundres_1__N_342[3]), 
         .Z(n9593)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A !((C+(D))+!B)) */ ;
    defparam n19147_bdd_4_lut_32078.init = 16'ha20c;
    LUT4 i4817_2_lut_4_lut_4_lut (.A(n39399), .B(hundres_1__N_343[2]), .C(hundres_1__N_343[1]), 
         .D(\hundres_0__N_349[0] ), .Z(n19147)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i4817_2_lut_4_lut_4_lut.init = 16'hff6c;
    LUT4 i12605_2_lut_rep_407_3_lut_4_lut (.A(n39500), .B(\sec[4] ), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n39445)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i12605_2_lut_rep_407_3_lut_4_lut.init = 16'heee0;
    LUT4 i4924_3_lut_4_lut_3_lut_4_lut (.A(n39500), .B(\sec[4] ), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_1__N_342[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4924_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3382_3_lut_rep_436 (.A(n39500), .B(\sec[4] ), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n39474)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3382_3_lut_rep_436.init = 16'hffe0;
    LUT4 i4910_3_lut_4_lut (.A(n39500), .B(\sec[4] ), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_1__N_342[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4910_3_lut_4_lut.init = 16'h998a;
    LUT4 i4789_2_lut_rep_321_3_lut (.A(\sec[2] ), .B(n39400), .C(\sec[1] ), 
         .Z(n39359)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4789_2_lut_rep_321_3_lut.init = 16'hf6f6;
    LUT4 i4861_3_lut_4_lut_3_lut_4_lut (.A(n39604), .B(\sec[7] ), .C(hundres_1__N_342[3]), 
         .D(n39398), .Z(\hundres_0__N_349[1] )) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4861_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4840_2_lut_3_lut_3_lut_4_lut (.A(\sec[2] ), .B(n39412), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(\hundres_0__N_352[2] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4840_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4825_2_lut_rep_331_4_lut_4_lut (.A(\sec[2] ), .B(n39412), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(n39369)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4825_2_lut_rep_331_4_lut_4_lut.init = 16'h554a;
    LUT4 i4853_2_lut_3_lut_3_lut_4_lut (.A(n39604), .B(\sec[7] ), .C(hundres_1__N_342[3]), 
         .D(n39398), .Z(\hundres_0__N_349[0] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4853_2_lut_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4847_3_lut_rep_326_4_lut_3_lut_4_lut (.A(\sec[2] ), .B(n39412), 
         .C(hundres_1__N_343[1]), .D(hundres_1__N_343[2]), .Z(n39364)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4847_3_lut_rep_326_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3385_3_lut_rep_362 (.A(\sec[2] ), .B(n39412), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(n39400)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3385_3_lut_rep_362.init = 16'hffe0;
    LUT4 i4833_3_lut_4_lut (.A(\sec[2] ), .B(n39412), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(\hundres_0__N_352[1] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4833_3_lut_4_lut.init = 16'h998c;
    LUT4 i3522_2_lut_rep_361_3_lut (.A(\sec[3] ), .B(n39420), .C(\sec[2] ), 
         .Z(n39399)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3522_2_lut_rep_361_3_lut.init = 16'hf6f6;
    PFUMX i31984 (.BLUT(n39673), .ALUT(n39674), .C0(\sec[3] ), .Z(n39412));
    LUT4 i3389_3_lut_rep_313_4_lut (.A(n39369), .B(\sec[1] ), .C(\hundres_0__N_352[1] ), 
         .D(\hundres_0__N_352[2] ), .Z(n39351)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3389_3_lut_rep_313_4_lut.init = 16'hffe0;
    LUT4 i3383_3_lut_rep_382_4_lut (.A(hundres_1__N_341[1]), .B(n39445), 
         .C(hundres_1__N_342[1]), .D(n39432), .Z(n39420)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3383_3_lut_rep_382_4_lut.init = 16'hf666;
    LUT4 i4889_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n39445), 
         .C(hundres_1__N_342[1]), .D(n39432), .Z(hundres_1__N_343[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4889_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4896_3_lut_rep_360_4_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n39445), 
         .C(hundres_1__N_342[1]), .D(n39432), .Z(n39398)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4896_3_lut_rep_360_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4768_2_lut_rep_566 (.A(\sec[6] ), .B(\sec[5] ), .Z(n39604)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4768_2_lut_rep_566.init = 16'heeee;
    LUT4 i3549_2_lut_rep_502_3_lut (.A(\sec[6] ), .B(\sec[5] ), .C(\sec[7] ), 
         .Z(n39540)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3549_2_lut_rep_502_3_lut.init = 16'he0e0;
    LUT4 i4763_3_lut_4_lut_3_lut (.A(\sec[6] ), .B(\sec[5] ), .C(\sec[7] ), 
         .Z(hundres_1__N_341[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4763_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i14149_2_lut_3_lut (.A(\sec[6] ), .B(\sec[5] ), .C(\sec[7] ), 
         .Z(hundres_1__N_341[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i14149_2_lut_3_lut.init = 16'h1010;
    LUT4 i4755_2_lut_rep_462_3_lut_3_lut (.A(\sec[6] ), .B(\sec[5] ), .C(\sec[7] ), 
         .Z(n39500)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4755_2_lut_rep_462_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i3526_2_lut_rep_394_3_lut (.A(\sec[4] ), .B(n39474), .C(\sec[3] ), 
         .Z(n39432)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3526_2_lut_rep_394_3_lut.init = 16'hf6f6;
    
endmodule
//
// Verilog Description of module DS18B20Z
//

module DS18B20Z (sys_clk_c, \cnt_write[5] , GND_net, one_wire_N_667, 
            \hundres_1__N_341[1] , \hundres_1__N_341[0] , \ds18b20_data[8] , 
            \ds18b20_data[7] , \ds18b20_data[6] , \ds18b20_data[5] , \ds18b20_data[4] , 
            one_wire_out, n25720, n13261, n13249, n11472, n37866, 
            n37867, sys_rst_n_c, n29) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output \cnt_write[5] ;
    input GND_net;
    output one_wire_N_667;
    output \hundres_1__N_341[1] ;
    output \hundres_1__N_341[0] ;
    output \ds18b20_data[8] ;
    output \ds18b20_data[7] ;
    output \ds18b20_data[6] ;
    output \ds18b20_data[5] ;
    output \ds18b20_data[4] ;
    input one_wire_out;
    output n25720;
    output n13261;
    output n13249;
    output n11472;
    input n37866;
    input n37867;
    input sys_rst_n_c;
    output n29;
    
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=\u_DS18B20Z/clk_1mhz */ ;   // d:/new porject/top-xu/ds18b20.v(36[10:18])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire [5:0]cnt_write;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    
    wire n4, clk_1mhz_N_669, n39281, n39578, n39282, n34213;
    wire [19:0]cnt_delay;   // d:/new porject/top-xu/ds18b20.v(55[15:24])
    wire [19:0]n263;
    
    wire n34214, one_wire_N_670;
    wire [7:0]data_wr;   // d:/new porject/top-xu/ds18b20.v(52[14:21])
    
    wire sys_clk_c_enable_19, n7, n7_adj_1873, n39603, n37199, n6;
    wire [2:0]state_back_2__N_518;
    
    wire n15;
    wire [2:0]state_back;   // d:/new porject/top-xu/ds18b20.v(62[15:25])
    
    wire sys_clk_c_enable_20, sys_clk_c_enable_28;
    wire [15:0]temperature;   // d:/new porject/top-xu/ds18b20.v(59[15:26])
    wire [7:0]data_wr_buffer;   // d:/new porject/top-xu/ds18b20.v(53[14:28])
    
    wire sys_clk_c_enable_31, sys_clk_c_enable_178, n37168;
    wire [2:0]state;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    
    wire sys_clk_c_enable_47;
    wire [2:0]state_2__N_515;
    wire [5:0]cnt_read;   // d:/new porject/top-xu/ds18b20.v(58[14:22])
    
    wire sys_clk_c_enable_304, n21868, n39667;
    wire [7:0]temperature_buffer;   // d:/new porject/top-xu/ds18b20.v(60[14:32])
    
    wire sys_clk_c_enable_51, sys_clk_c_enable_56, n23, n21, n26;
    wire [2:0]cnt_1mhz;   // d:/new porject/top-xu/ds18b20.v(37[14:22])
    
    wire n39669;
    wire [2:0]n17;
    
    wire sys_clk_c_enable_73, sys_clk_c_enable_74, sys_clk_c_enable_75, 
        sys_clk_c_enable_76, n2, n3, n39644, one_wire_N_675, n5, 
        n15_adj_1874, n12;
    wire [2:0]state_2__N_554;
    wire [2:0]state_2__N_551;
    
    wire n2_adj_1875, n3_adj_1876, n4_adj_1877, n3_adj_1878, n4_adj_1879, 
        one_wire_N_668, one_wire_N_680, n39596, n39597, n39497, n15_adj_1880, 
        n35152, n31, n34365;
    wire [19:0]num_delay;   // d:/new porject/top-xu/ds18b20.v(56[15:24])
    
    wire n261, n11, n39085, n39086, n34364, n34363, n34362, n34361;
    wire [5:0]n208;
    
    wire sys_clk_c_enable_263, n3_adj_1881, n3_adj_1882, n3_adj_1883, 
        n34360, n3_adj_1884, n30, sys_clk_c_enable_124;
    wire [19:0]num_delay_19__N_607;
    
    wire sys_clk_c_enable_125, n37896, n19511, sys_clk_c_enable_131, 
        n39593, sys_clk_c_enable_134, sys_clk_c_enable_137, n80, n21555, 
        n5_adj_1885, n18032, n39345, n34359, n45, n22;
    wire [19:0]cnt_delay_19__N_439;
    
    wire sys_clk_c_enable_190, n37771, sys_clk_c_enable_191, n39601, 
        n39614, n34358, n34357, n34356, n39547;
    wire [3:0]cnt_main;   // d:/new porject/top-xu/ds18b20.v(51[14:22])
    
    wire n39599, n18087, n39712, n39722, n39721, n39725, n39724, 
        n37209, n39579;
    wire [2:0]cnt_init;   // d:/new porject/top-xu/ds18b20.v(54[14:22])
    
    wire n39618, n25739, n39463, n39499, n15_adj_1886, n39486, n101, 
        n39625, n39462, n21388, n39487, n38098, sys_clk_c_enable_340, 
        n39600, n10, n39465, n39655, n39664, n39723, n39533, n36971, 
        n39573, n34897, n34812, n6_adj_1887, sys_clk_c_enable_248, 
        n38669, n39595, n39518, n39638, n39558, n20262, n39508, 
        sys_clk_c_enable_251, n39464, n39656, n39449, n4_adj_1888, 
        n39473, n39480, n39576, n19391, n35150, n37648, n39652, 
        n37622, n8, n37171, n6_adj_1889, sys_clk_c_enable_332, n21841, 
        n39572, n26_adj_1890;
    wire [2:0]state_2__N_557;
    
    wire n39653;
    wire [2:0]n2380;
    
    wire n25, n39495, n10147, n39509, sys_clk_c_enable_257, sys_clk_c_enable_337, 
        n34724, n6_adj_1891, sys_clk_c_enable_342, n21833;
    wire [3:0]n1;
    
    wire n4_adj_1892, n84, n83, n4_adj_1893, n42, n39448, n34928, 
        n39539, n38, n21267, n21409, n24, sys_clk_c_enable_335, 
        n21661, n39571, n37011, n39524, n38694, n39665, n39570, 
        n39519, n39455, n35, n39666, n39574, n37356, n39536, n18_adj_1894, 
        n43, n34222, n34221, n34220, n39435, n34695, sys_clk_c_enable_334, 
        n77, n25724, n37332, n39520, n31271, n68, n34219, n37895, 
        n35036, sys_clk_c_enable_336, n39475, n7_adj_1895, n39726, 
        n39084, n39606, n34218;
    wire [2:0]n109;
    
    wire n39696, n2_adj_1897, n39605, n34217, n34216, n4_adj_1898, 
        n39538, n21434, n34, n40, n34215, n39695, n39694, n39602, 
        n16, n39525, n31245, n34661, n8_adj_1900, n37378, n21005;
    
    LUT4 i1_2_lut (.A(cnt_write[4]), .B(cnt_write[1]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3AX clk_1mhz_112 (.D(clk_1mhz_N_669), .CK(sys_clk_c), .Q(clk_1mhz)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(42[12] 47[6])
    defparam clk_1mhz_112.GSR = "ENABLED";
    PFUMX i31943 (.BLUT(n39281), .ALUT(n39578), .C0(\cnt_write[5] ), .Z(n39282));
    CCU2D add_48_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34213), .COUT(n34214), .S0(n263[1]), .S1(n263[2]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_3.INIT0 = 16'h5aaa;
    defparam add_48_3.INIT1 = 16'h5aaa;
    defparam add_48_3.INJECT1_0 = "NO";
    defparam add_48_3.INJECT1_1 = "NO";
    FD1S3AX one_wire_buffer_121 (.D(one_wire_N_670), .CK(clk_1mhz), .Q(one_wire_N_667)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam one_wire_buffer_121.GSR = "ENABLED";
    CCU2D add_48_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n34213), .S1(n263[0]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_1.INIT0 = 16'hF000;
    defparam add_48_1.INIT1 = 16'h5555;
    defparam add_48_1.INJECT1_0 = "NO";
    defparam add_48_1.INJECT1_1 = "NO";
    FD1P3AX data_wr_i0_i7 (.D(n7), .SP(sys_clk_c_enable_19), .CK(sys_clk_c), 
            .Q(data_wr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n7_adj_1873), .SP(sys_clk_c_enable_19), .CK(sys_clk_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i1 (.D(n39603), .SP(sys_clk_c_enable_19), .CK(sys_clk_c), 
            .Q(data_wr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i1.GSR = "DISABLED";
    PFUMX i32 (.BLUT(n37199), .ALUT(n6), .C0(state_back_2__N_518[2]), 
          .Z(n15));
    FD1P3AX state_back_i0_i0 (.D(state_back_2__N_518[0]), .SP(sys_clk_c_enable_20), 
            .CK(sys_clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    FD1P3AX data_out_i0_i10 (.D(temperature[10]), .SP(sys_clk_c_enable_28), 
            .CK(sys_clk_c), .Q(\hundres_1__N_341[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i10.GSR = "DISABLED";
    FD1P3AX data_out_i0_i9 (.D(temperature[9]), .SP(sys_clk_c_enable_28), 
            .CK(sys_clk_c), .Q(\hundres_1__N_341[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i9.GSR = "DISABLED";
    FD1P3AX data_out_i0_i8 (.D(temperature[8]), .SP(sys_clk_c_enable_28), 
            .CK(sys_clk_c), .Q(\ds18b20_data[8] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i8.GSR = "DISABLED";
    FD1P3AX data_out_i0_i7 (.D(temperature[7]), .SP(sys_clk_c_enable_28), 
            .CK(sys_clk_c), .Q(\ds18b20_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i7.GSR = "DISABLED";
    FD1P3AX data_out_i0_i6 (.D(temperature[6]), .SP(sys_clk_c_enable_28), 
            .CK(sys_clk_c), .Q(\ds18b20_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i5 (.D(temperature[5]), .SP(sys_clk_c_enable_28), 
            .CK(sys_clk_c), .Q(\ds18b20_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i5.GSR = "DISABLED";
    FD1P3AX data_out_i0_i4 (.D(temperature[4]), .SP(sys_clk_c_enable_28), 
            .CK(sys_clk_c), .Q(\ds18b20_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i4.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i7 (.D(data_wr[7]), .SP(sys_clk_c_enable_31), 
            .CK(sys_clk_c), .Q(data_wr_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i6 (.D(data_wr[6]), .SP(sys_clk_c_enable_31), 
            .CK(sys_clk_c), .Q(data_wr_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i4 (.D(data_wr[1]), .SP(sys_clk_c_enable_31), 
            .CK(sys_clk_c), .Q(data_wr_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i4.GSR = "DISABLED";
    FD1P3AX cnt_delay_i0_i0 (.D(n37168), .SP(sys_clk_c_enable_178), .CK(sys_clk_c), 
            .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    FD1P3AX state_i0_i0 (.D(state_2__N_515[0]), .SP(sys_clk_c_enable_47), 
            .CK(sys_clk_c), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i0 (.D(n39667), .SP(sys_clk_c_enable_304), .CD(n21868), 
            .CK(sys_clk_c), .Q(cnt_read[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i1 (.D(one_wire_out), .SP(sys_clk_c_enable_51), 
            .CK(sys_clk_c), .Q(temperature_buffer[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i1.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i2 (.D(one_wire_out), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(temperature_buffer[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i2.GSR = "DISABLED";
    PFUMX i41 (.BLUT(n23), .ALUT(n21), .C0(state[1]), .Z(n26));
    FD1S3IX cnt_1mhz_3001__i0 (.D(n17[0]), .CK(sys_clk_c), .CD(n39669), 
            .Q(cnt_1mhz[0]));   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam cnt_1mhz_3001__i0.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i4 (.D(one_wire_out), .SP(sys_clk_c_enable_73), 
            .CK(sys_clk_c), .Q(temperature_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i4.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i5 (.D(one_wire_out), .SP(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(temperature_buffer[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i5.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i6 (.D(one_wire_out), .SP(sys_clk_c_enable_75), 
            .CK(sys_clk_c), .Q(temperature_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i7 (.D(one_wire_out), .SP(sys_clk_c_enable_76), 
            .CK(sys_clk_c), .Q(temperature_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i7.GSR = "DISABLED";
    PFUMX state_2__I_0_144_i7 (.BLUT(n2), .ALUT(n3), .C0(n39644), .Z(one_wire_N_675)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;
    PFUMX i36 (.BLUT(n5), .ALUT(n15_adj_1874), .C0(state[1]), .Z(n12));
    PFUMX state_2__I_0_132_Mux_0_i2 (.BLUT(state_2__N_554[0]), .ALUT(state_2__N_551[0]), 
          .C0(state[0]), .Z(n2_adj_1875)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;
    PFUMX state_2__I_0_132_Mux_2_i7 (.BLUT(n3_adj_1876), .ALUT(n4_adj_1877), 
          .C0(state_back_2__N_518[2]), .Z(state_2__N_515[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;
    PFUMX state_2__I_0_132_Mux_0_i7 (.BLUT(n3_adj_1878), .ALUT(n4_adj_1879), 
          .C0(state_back_2__N_518[2]), .Z(state_2__N_515[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;
    FD1P3AX i107_128 (.D(one_wire_N_680), .SP(one_wire_N_675), .CK(clk_1mhz), 
            .Q(one_wire_N_668)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i107_128.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_459_4_lut (.A(cnt_read[0]), .B(n39596), .C(state_back_2__N_518[2]), 
         .D(n39597), .Z(n39497)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;
    defparam i1_3_lut_rep_459_4_lut.init = 16'h2f0f;
    PFUMX mux_887_Mux_2_i31 (.BLUT(n15_adj_1880), .ALUT(n35152), .C0(cnt_write[4]), 
          .Z(n31)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;
    CCU2D sub_2366_add_2_21 (.A0(cnt_delay[19]), .B0(num_delay[19]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34365), .S1(n261));
    defparam sub_2366_add_2_21.INIT0 = 16'h5999;
    defparam sub_2366_add_2_21.INIT1 = 16'h0000;
    defparam sub_2366_add_2_21.INJECT1_0 = "NO";
    defparam sub_2366_add_2_21.INJECT1_1 = "NO";
    PFUMX i31808 (.BLUT(n11), .ALUT(n39085), .C0(state[0]), .Z(n39086));
    CCU2D sub_2366_add_2_19 (.A0(cnt_delay[17]), .B0(num_delay[19]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34364), .COUT(n34365));
    defparam sub_2366_add_2_19.INIT0 = 16'h5999;
    defparam sub_2366_add_2_19.INIT1 = 16'h5555;
    defparam sub_2366_add_2_19.INJECT1_0 = "NO";
    defparam sub_2366_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_2366_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(num_delay[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34363), .COUT(n34364));
    defparam sub_2366_add_2_17.INIT0 = 16'h5555;
    defparam sub_2366_add_2_17.INIT1 = 16'h5999;
    defparam sub_2366_add_2_17.INJECT1_0 = "NO";
    defparam sub_2366_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_2366_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[19]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34362), .COUT(n34363));
    defparam sub_2366_add_2_15.INIT0 = 16'h5999;
    defparam sub_2366_add_2_15.INIT1 = 16'h5999;
    defparam sub_2366_add_2_15.INJECT1_0 = "NO";
    defparam sub_2366_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_2366_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34361), .COUT(n34362));
    defparam sub_2366_add_2_13.INIT0 = 16'h5555;
    defparam sub_2366_add_2_13.INIT1 = 16'h5999;
    defparam sub_2366_add_2_13.INJECT1_0 = "NO";
    defparam sub_2366_add_2_13.INJECT1_1 = "NO";
    LUT4 i3717_2_lut (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n208[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3717_2_lut.init = 16'h6666;
    FD1P3AX cnt_write_i0_i1 (.D(n3_adj_1881), .SP(sys_clk_c_enable_263), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i2 (.D(n3_adj_1882), .SP(sys_clk_c_enable_263), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i3 (.D(n3_adj_1883), .SP(sys_clk_c_enable_263), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    CCU2D sub_2366_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34360), .COUT(n34361));
    defparam sub_2366_add_2_11.INIT0 = 16'h5555;
    defparam sub_2366_add_2_11.INIT1 = 16'h5555;
    defparam sub_2366_add_2_11.INJECT1_0 = "NO";
    defparam sub_2366_add_2_11.INJECT1_1 = "NO";
    FD1P3AX cnt_write_i0_i4 (.D(n3_adj_1884), .SP(sys_clk_c_enable_263), 
            .CK(sys_clk_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i5 (.D(n30), .SP(sys_clk_c_enable_263), .CK(sys_clk_c), 
            .Q(\cnt_write[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i5.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i2 (.D(num_delay_19__N_607[2]), .SP(sys_clk_c_enable_124), 
            .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i2.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i5 (.D(num_delay_19__N_607[5]), .SP(sys_clk_c_enable_124), 
            .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i7 (.D(num_delay_19__N_607[7]), .SP(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i7.GSR = "DISABLED";
    LUT4 i31103_1_lut_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), 
         .C(cnt_read[3]), .D(cnt_read[4]), .Z(n37896)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i31103_1_lut_2_lut_4_lut_4_lut.init = 16'hffb6;
    LUT4 i12913_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n19511)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (D)+!B (C+(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i12913_2_lut_4_lut_4_lut.init = 16'h006d;
    FD1P3AX num_delay_i0_i19 (.D(n39593), .SP(sys_clk_c_enable_131), .CK(sys_clk_c), 
            .Q(num_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i19.GSR = "DISABLED";
    FD1P3AX state_i0_i1 (.D(state_2__N_515[1]), .SP(sys_clk_c_enable_134), 
            .CK(sys_clk_c), .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3AX state_i0_i2 (.D(state_2__N_515[2]), .SP(sys_clk_c_enable_137), 
            .CK(sys_clk_c), .Q(state_back_2__N_518[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_i0_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_4_lut (.A(state[1]), .B(state_back_2__N_518[2]), 
         .C(n80), .D(n21555), .Z(n5_adj_1885)) /* synthesis lut_function=((B+!(C+(D)))+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hdddf;
    LUT4 i11473_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n18032)) /* synthesis lut_function=(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i11473_3_lut_4_lut.init = 16'hb6db;
    LUT4 state_2__I_0_144_i3_4_lut_4_lut_4_lut (.A(state[0]), .B(n39345), 
         .C(state_back_2__N_518[2]), .D(state[1]), .Z(n3)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C)))) */ ;
    defparam state_2__I_0_144_i3_4_lut_4_lut_4_lut.init = 16'h0545;
    CCU2D sub_2366_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34359), .COUT(n34360));
    defparam sub_2366_add_2_9.INIT0 = 16'h5999;
    defparam sub_2366_add_2_9.INIT1 = 16'h5999;
    defparam sub_2366_add_2_9.INJECT1_0 = "NO";
    defparam sub_2366_add_2_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_4_lut_adj_229 (.A(cnt_write[0]), .B(cnt_write[3]), 
         .C(cnt_write[2]), .D(cnt_write[1]), .Z(n25720)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_4_lut_4_lut_adj_229.init = 16'h0410;
    LUT4 i1_3_lut (.A(state[1]), .B(n45), .C(n39282), .Z(n22)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hecec;
    FD1P3AX cnt_delay_i0_i19 (.D(cnt_delay_19__N_439[19]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    LUT4 i21338_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n13261)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i21338_4_lut_4_lut_4_lut.init = 16'h4014;
    LUT4 i21339_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[2]), 
         .D(cnt_write[1]), .Z(n13249)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i21339_4_lut_4_lut_4_lut.init = 16'h1041;
    FD1P3AX cnt_delay_i0_i18 (.D(cnt_delay_19__N_439[18]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i17 (.D(cnt_delay_19__N_439[17]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i16 (.D(cnt_delay_19__N_439[16]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i15 (.D(cnt_delay_19__N_439[15]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i14 (.D(cnt_delay_19__N_439[14]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i13 (.D(cnt_delay_19__N_439[13]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i12 (.D(cnt_delay_19__N_439[12]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i11 (.D(cnt_delay_19__N_439[11]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i10 (.D(cnt_delay_19__N_439[10]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i9 (.D(cnt_delay_19__N_439[9]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i8 (.D(cnt_delay_19__N_439[8]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i7 (.D(cnt_delay_19__N_439[7]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i6 (.D(cnt_delay_19__N_439[6]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i5 (.D(cnt_delay_19__N_439[5]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i4 (.D(cnt_delay_19__N_439[4]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i3 (.D(cnt_delay_19__N_439[3]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i2 (.D(cnt_delay_19__N_439[2]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i1 (.D(cnt_delay_19__N_439[1]), .SP(sys_clk_c_enable_178), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    FD1P3AX state_back_i0_i2 (.D(state_back_2__N_518[2]), .SP(sys_clk_c_enable_190), 
            .CK(sys_clk_c), .Q(state_back[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i2.GSR = "ENABLED";
    LUT4 i31438_2_lut (.A(cnt_write[0]), .B(cnt_write[3]), .Z(n37771)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i31438_2_lut.init = 16'hdddd;
    FD1P3AX state_back_i0_i1 (.D(n39601), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    LUT4 i3719_2_lut_rep_576 (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n39614)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3719_2_lut_rep_576.init = 16'h8888;
    CCU2D sub_2366_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34358), .COUT(n34359));
    defparam sub_2366_add_2_7.INIT0 = 16'h5999;
    defparam sub_2366_add_2_7.INIT1 = 16'h5999;
    defparam sub_2366_add_2_7.INJECT1_0 = "NO";
    defparam sub_2366_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_2366_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34357), .COUT(n34358));
    defparam sub_2366_add_2_5.INIT0 = 16'h5999;
    defparam sub_2366_add_2_5.INIT1 = 16'h5999;
    defparam sub_2366_add_2_5.INJECT1_0 = "NO";
    defparam sub_2366_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_2366_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34356), .COUT(n34357));
    defparam sub_2366_add_2_3.INIT0 = 16'h5999;
    defparam sub_2366_add_2_3.INIT1 = 16'h5999;
    defparam sub_2366_add_2_3.INJECT1_0 = "NO";
    defparam sub_2366_add_2_3.INJECT1_1 = "NO";
    LUT4 i3724_2_lut_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n208[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3724_2_lut_3_lut.init = 16'h7878;
    LUT4 i3726_2_lut_rep_509_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n39547)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3726_2_lut_rep_509_3_lut.init = 16'h8080;
    CCU2D sub_2366_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n34356));
    defparam sub_2366_add_2_1.INIT0 = 16'h0000;
    defparam sub_2366_add_2_1.INIT1 = 16'h5999;
    defparam sub_2366_add_2_1.INJECT1_0 = "NO";
    defparam sub_2366_add_2_1.INJECT1_1 = "NO";
    LUT4 i3731_2_lut_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n208[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3731_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i11524_3_lut_4_lut (.A(cnt_main[1]), .B(n39599), .C(state[0]), 
         .D(cnt_main[3]), .Z(n18087)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i11524_3_lut_4_lut.init = 16'h0f8f;
    LUT4 mux_1021_Mux_0_i31_3_lut_else_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), 
         .C(cnt_read[3]), .D(cnt_read[2]), .Z(n39712)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam mux_1021_Mux_0_i31_3_lut_else_4_lut.init = 16'h41a4;
    FD1S3IX cnt_1mhz_3001__i2 (.D(n17[2]), .CK(sys_clk_c), .CD(n39669), 
            .Q(cnt_1mhz[2]));   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam cnt_1mhz_3001__i2.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_3001__i1 (.D(n17[1]), .CK(sys_clk_c), .CD(n39669), 
            .Q(cnt_1mhz[1]));   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam cnt_1mhz_3001__i1.GSR = "ENABLED";
    LUT4 i24714_then_4_lut (.A(cnt_write[4]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(\cnt_write[5] ), .Z(n39722)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i24714_then_4_lut.init = 16'hbfd6;
    LUT4 i24714_else_4_lut (.A(cnt_write[4]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(\cnt_write[5] ), .Z(n39721)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C (D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i24714_else_4_lut.init = 16'hebb8;
    LUT4 n38691_bdd_3_lut_then_4_lut (.A(\cnt_write[5] ), .B(cnt_write[4]), 
         .C(cnt_write[1]), .D(cnt_write[3]), .Z(n39725)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D)))) */ ;
    defparam n38691_bdd_3_lut_then_4_lut.init = 16'hdbbe;
    LUT4 i1_2_lut_3_lut (.A(state_back_2__N_518[2]), .B(n261), .C(n263[0]), 
         .Z(n37168)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 n38691_bdd_3_lut_else_4_lut (.A(\cnt_write[5] ), .B(cnt_write[4]), 
         .C(cnt_write[1]), .D(cnt_write[3]), .Z(n39724)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))+!A (B (C+(D))+!B !(C (D)))) */ ;
    defparam n38691_bdd_3_lut_else_4_lut.init = 16'heddb;
    LUT4 i49_4_lut (.A(n37209), .B(n261), .C(state_back_2__N_518[2]), 
         .D(n39579), .Z(n45)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i49_4_lut.init = 16'h3a30;
    LUT4 i10_1_lut_rep_580 (.A(cnt_init[0]), .Z(n39618)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i10_1_lut_rep_580.init = 16'h5555;
    LUT4 i1_2_lut_2_lut (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n25739)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n39463), .B(n39499), .C(n15_adj_1886), 
         .D(n39497), .Z(sys_clk_c_enable_131)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_448_3_lut_4_lut (.A(cnt_main[1]), .B(n39599), .C(cnt_main[3]), 
         .D(state[0]), .Z(n39486)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i1_2_lut_rep_448_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_adj_230 (.A(cnt_write[2]), .B(cnt_write[1]), .C(data_wr_buffer[7]), 
         .Z(n101)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_adj_230.init = 16'h2020;
    LUT4 i1_2_lut_rep_587 (.A(cnt_write[3]), .B(cnt_write[2]), .Z(n39625)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_587.init = 16'heeee;
    LUT4 gnd_bdd_2_lut_31601_3_lut_4_lut (.A(n39462), .B(n21388), .C(n39487), 
         .D(n38098), .Z(sys_clk_c_enable_340)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_31601_3_lut_4_lut.init = 16'he000;
    LUT4 cnt_write_5__bdd_4_lut_32270 (.A(\cnt_write[5] ), .B(n39600), .C(cnt_write[4]), 
         .D(cnt_write[0]), .Z(n10)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C))) */ ;
    defparam cnt_write_5__bdd_4_lut_32270.init = 16'hdf81;
    LUT4 i31291_3_lut_4_lut (.A(cnt_read[2]), .B(n39465), .C(cnt_read[3]), 
         .D(n39655), .Z(sys_clk_c_enable_74)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i31291_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_4_lut (.A(cnt_write[0]), .B(n39664), .C(n39723), .D(n21388), 
         .Z(num_delay_19__N_607[1])) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_4_lut.init = 16'hff40;
    LUT4 i1_4_lut_4_lut_adj_231 (.A(cnt_write[0]), .B(n4), .C(n39625), 
         .D(n39533), .Z(n36971)) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_4_lut_adj_231.init = 16'hff54;
    LUT4 i2_3_lut_4_lut_4_lut (.A(cnt_write[0]), .B(state[1]), .C(n39573), 
         .D(\cnt_write[5] ), .Z(n34897)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0444;
    LUT4 i24735_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(n101), .C(n34812), 
         .D(n39625), .Z(n6_adj_1887)) /* synthesis lut_function=(A (B)+!A !((D)+!C)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i24735_4_lut_4_lut_4_lut.init = 16'h88d8;
    LUT4 i2_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(data_wr_buffer[4]), 
         .Z(n34812)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut.init = 16'h4040;
    FD1P3AX temperature_i0_i4 (.D(temperature_buffer[4]), .SP(sys_clk_c_enable_248), 
            .CK(sys_clk_c), .Q(temperature[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i4.GSR = "ENABLED";
    LUT4 state_0__bdd_4_lut_31745 (.A(cnt_main[3]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(cnt_main[2]), .Z(n38669)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C)))) */ ;
    defparam state_0__bdd_4_lut_31745.init = 16'h4060;
    LUT4 i24701_3_lut_rep_480_4_lut (.A(cnt_init[0]), .B(n39595), .C(state[0]), 
         .D(n10), .Z(n39518)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i24701_3_lut_rep_480_4_lut.init = 16'h02f2;
    LUT4 i1_2_lut_rep_600 (.A(cnt_write[2]), .B(cnt_write[1]), .Z(n39638)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_600.init = 16'h8888;
    LUT4 i1_2_lut_rep_520_3_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .Z(n39558)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_520_3_lut.init = 16'h8080;
    LUT4 i3_4_lut (.A(cnt_read[0]), .B(n39499), .C(state_back_2__N_518[2]), 
         .D(n39597), .Z(n20262)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i3_4_lut.init = 16'hbfff;
    LUT4 i1_2_lut_rep_470_3_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), 
         .C(cnt_write[3]), .D(cnt_write[0]), .Z(n39508)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_470_3_lut_4_lut.init = 16'h8000;
    FD1P3AX temperature_i0_i5 (.D(temperature_buffer[5]), .SP(sys_clk_c_enable_248), 
            .CK(sys_clk_c), .Q(temperature[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i5.GSR = "ENABLED";
    FD1P3AX temperature_i0_i6 (.D(temperature_buffer[6]), .SP(sys_clk_c_enable_248), 
            .CK(sys_clk_c), .Q(temperature[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_i0_i7 (.D(temperature_buffer[7]), .SP(sys_clk_c_enable_248), 
            .CK(sys_clk_c), .Q(temperature[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i7.GSR = "ENABLED";
    FD1P3AX temperature_i0_i8 (.D(temperature_buffer[0]), .SP(sys_clk_c_enable_251), 
            .CK(sys_clk_c), .Q(temperature[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i8.GSR = "ENABLED";
    FD1P3AX temperature_i0_i9 (.D(temperature_buffer[1]), .SP(sys_clk_c_enable_251), 
            .CK(sys_clk_c), .Q(temperature[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i9.GSR = "ENABLED";
    FD1P3AX temperature_i0_i10 (.D(temperature_buffer[2]), .SP(sys_clk_c_enable_251), 
            .CK(sys_clk_c), .Q(temperature[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i10.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_426 (.A(cnt_read[4]), .B(cnt_read[5]), .C(n20262), 
         .Z(n39464)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i2_3_lut_rep_426.init = 16'hfdfd;
    LUT4 i1_2_lut_rep_427 (.A(cnt_read[4]), .B(n20262), .Z(n39465)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_427.init = 16'heeee;
    LUT4 i31286_2_lut_3_lut_4_lut (.A(cnt_read[4]), .B(n20262), .C(n39656), 
         .D(n39655), .Z(sys_clk_c_enable_76)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i31286_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_411_3_lut (.A(cnt_read[4]), .B(n20262), .C(cnt_read[2]), 
         .Z(n39449)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_411_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_232 (.A(cnt_write[0]), .B(cnt_write[4]), .Z(n4_adj_1888)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_adj_232.init = 16'h8888;
    LUT4 i31448_2_lut_rep_606 (.A(state[1]), .B(state_back_2__N_518[2]), 
         .Z(n39644)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i31448_2_lut_rep_606.init = 16'hdddd;
    LUT4 i27600_1_lut (.A(cnt_1mhz[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam i27600_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_4_lut (.A(n39593), .B(n15_adj_1886), .C(n39473), 
         .D(n18087), .Z(sys_clk_c_enable_191)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'hc040;
    LUT4 i1_4_lut_4_lut_adj_233 (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(n39480), .Z(n3_adj_1882)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i1_4_lut_4_lut_adj_233.init = 16'h6c00;
    LUT4 i1_3_lut_4_lut (.A(n39576), .B(n39497), .C(state_back_2__N_518[2]), 
         .D(n19391), .Z(sys_clk_c_enable_190)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8880;
    LUT4 i1_2_lut_3_lut_adj_234 (.A(cnt_write[2]), .B(cnt_write[1]), .C(data_wr_buffer[4]), 
         .Z(n35150)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_adj_234.init = 16'h4040;
    LUT4 i30843_3_lut_3_lut (.A(cnt_init[2]), .B(one_wire_out), .C(cnt_init[1]), 
         .Z(n37648)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam i30843_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i3652_2_lut_rep_614 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n39652)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(111[24:39])
    defparam i3652_2_lut_rep_614.init = 16'h6666;
    LUT4 i30817_3_lut (.A(cnt_write[4]), .B(\cnt_write[5] ), .C(n39600), 
         .Z(n37622)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30817_3_lut.init = 16'hfefe;
    LUT4 i13_3_lut (.A(cnt_write[0]), .B(n39600), .C(cnt_write[4]), .Z(n8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i13_3_lut.init = 16'hcaca;
    LUT4 i20910_2_lut_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(state_2__N_554[0])) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(111[24:39])
    defparam i20910_2_lut_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i3_4_lut_4_lut (.A(state[0]), .B(n39644), .C(n25739), .D(cnt_init[2]), 
         .Z(n37171)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_4_lut.init = 16'h1000;
    LUT4 i15219_4_lut_4_lut (.A(state[0]), .B(cnt_main[3]), .C(n6_adj_1889), 
         .D(sys_clk_c_enable_332), .Z(n21841)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;
    defparam i15219_4_lut_4_lut.init = 16'hd500;
    LUT4 i42_4_lut_4_lut (.A(state[0]), .B(n39572), .C(state[1]), .D(n39486), 
         .Z(n26_adj_1890)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i42_4_lut_4_lut.init = 16'h404f;
    LUT4 state_2__I_0_132_Mux_0_i3_4_lut_4_lut (.A(state[0]), .B(state[1]), 
         .C(n2_adj_1875), .D(state_2__N_557[0]), .Z(n3_adj_1878)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;
    defparam state_2__I_0_132_Mux_0_i3_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i1_2_lut_rep_615 (.A(cnt_init[2]), .B(cnt_init[0]), .Z(n39653)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_615.init = 16'heeee;
    LUT4 state_2__I_0_144_i2_3_lut_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[0]), 
         .C(n2380[1]), .D(state[0]), .Z(n2)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam state_2__I_0_144_i2_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i1_2_lut_3_lut_4_lut_adj_235 (.A(cnt_init[2]), .B(cnt_init[0]), 
         .C(state_back_2__N_518[2]), .D(state[0]), .Z(n25)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_235.init = 16'hf0f1;
    LUT4 i2_3_lut_4_lut (.A(state_back_2__N_518[2]), .B(n39499), .C(n37209), 
         .D(n39495), .Z(sys_clk_c_enable_28)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_3_lut_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(state[1]), 
         .D(cnt_init[1]), .Z(n11)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i4986_1_lut (.A(one_wire_N_668), .Z(n11472)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(63[2] 264[5])
    defparam i4986_1_lut.init = 16'h5555;
    LUT4 i21133_2_lut_rep_617 (.A(cnt_read[1]), .B(cnt_read[5]), .Z(n39655)) /* synthesis lut_function=(A (B)) */ ;
    defparam i21133_2_lut_rep_617.init = 16'h8888;
    LUT4 i30685_2_lut_rep_618 (.A(cnt_read[2]), .B(cnt_read[3]), .Z(n39656)) /* synthesis lut_function=(A (B)) */ ;
    defparam i30685_2_lut_rep_618.init = 16'h8888;
    LUT4 i31293_3_lut_4_lut (.A(cnt_read[2]), .B(cnt_read[3]), .C(n39464), 
         .D(cnt_read[1]), .Z(sys_clk_c_enable_73)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i31293_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_adj_236 (.A(cnt_write[0]), .B(cnt_write[1]), .Z(n10147)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_adj_236.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_237 (.A(state[1]), .B(n39509), .C(cnt_write[0]), 
         .D(cnt_write[1]), .Z(n3_adj_1881)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_adj_237.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_adj_238 (.A(state[1]), .B(n39509), .C(cnt_write[4]), 
         .D(n39508), .Z(n3_adj_1884)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_adj_238.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_adj_239 (.A(state[1]), .B(n39509), .C(cnt_write[3]), 
         .D(n39558), .Z(n3_adj_1883)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_adj_239.init = 16'h0220;
    FD1P3AX temperature_buffer_i0_i0 (.D(one_wire_out), .SP(sys_clk_c_enable_257), 
            .CK(sys_clk_c), .Q(temperature_buffer[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i0.GSR = "DISABLED";
    FD1P3IX num_delay_i0_i0 (.D(n6_adj_1891), .SP(sys_clk_c_enable_337), 
            .CD(n34724), .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i0.GSR = "DISABLED";
    FD1P3IX cnt_init_i0_i0 (.D(n39618), .SP(sys_clk_c_enable_342), .CD(n21833), 
            .CK(sys_clk_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i0 (.D(n34897), .SP(sys_clk_c_enable_263), .CK(sys_clk_c), 
            .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i0 (.D(n1[0]), .SP(sys_clk_c_enable_332), .CD(n21841), 
            .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 one_wire_I_0_4_lut (.A(one_wire_out), .B(n39644), .C(one_wire_N_675), 
         .D(n4_adj_1892), .Z(one_wire_N_670)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam one_wire_I_0_4_lut.init = 16'h3a0a;
    LUT4 i1_4_lut (.A(n31), .B(state[0]), .C(n84), .D(\cnt_write[5] ), 
         .Z(n4_adj_1892)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_adj_240 (.A(cnt_write[4]), .B(n83), .Z(n84)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_adj_240.init = 16'h4444;
    LUT4 i2_4_lut_4_lut (.A(state_back_2__N_518[2]), .B(state[0]), .C(state[1]), 
         .D(n39576), .Z(sys_clk_c_enable_263)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h4100;
    LUT4 i21278_2_lut_2_lut (.A(state_back_2__N_518[2]), .B(n4_adj_1893), 
         .Z(num_delay_19__N_607[7])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i21278_2_lut_2_lut.init = 16'h4444;
    LUT4 i2_4_lut_4_lut_adj_241 (.A(state_back_2__N_518[2]), .B(n42), .C(n39448), 
         .D(n34928), .Z(sys_clk_c_enable_124)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_4_lut_adj_241.init = 16'hf040;
    LUT4 i1_2_lut_4_lut_4_lut_adj_242 (.A(state_back_2__N_518[2]), .B(state[0]), 
         .C(n10), .D(n39539), .Z(n21)) /* synthesis lut_function=(!(A+(B (C)+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut_adj_242.init = 16'h1504;
    LUT4 i2_4_lut_4_lut_adj_243 (.A(state_back_2__N_518[2]), .B(n38), .C(n39448), 
         .D(n34928), .Z(n21267)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_4_lut_adj_243.init = 16'hf040;
    LUT4 i14789_3_lut_4_lut_4_lut (.A(state_back_2__N_518[2]), .B(state[1]), 
         .C(n39653), .D(state[0]), .Z(n21409)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i14789_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i31344_4_lut_4_lut (.A(state_back_2__N_518[2]), .B(n26_adj_1890), 
         .C(n39487), .D(n24), .Z(sys_clk_c_enable_335)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i31344_4_lut_4_lut.init = 16'h00b0;
    LUT4 i31310_3_lut_4_lut_4_lut (.A(state_back_2__N_518[2]), .B(n12), 
         .C(clk_1mhz), .D(n39669), .Z(sys_clk_c_enable_134)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i31310_3_lut_4_lut_4_lut.init = 16'h0b00;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(state[1]), .B(state[0]), .C(n39596), 
         .D(cnt_read[0]), .Z(n34928)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 mux_54_Mux_2_i7_4_lut_4_lut (.A(state[1]), .B(state_back_2__N_518[2]), 
         .C(n6_adj_1891), .D(n21661), .Z(num_delay_19__N_607[2])) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam mux_54_Mux_2_i7_4_lut_4_lut.init = 16'hc0e2;
    LUT4 i15210_3_lut_4_lut_4_lut (.A(state[1]), .B(sys_clk_c_enable_342), 
         .C(cnt_init[2]), .D(cnt_init[1]), .Z(n21833)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i15210_3_lut_4_lut_4_lut.init = 16'hc444;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(state[1]), .B(cnt_init[1]), .C(cnt_init[2]), 
         .D(state[0]), .Z(n4_adj_1893)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h55f7;
    LUT4 i1_2_lut_4_lut_4_lut_adj_244 (.A(state[1]), .B(state[0]), .C(n10), 
         .D(n39539), .Z(n42)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_4_lut_4_lut_adj_244.init = 16'h7f5d;
    LUT4 i1_2_lut_rep_626 (.A(state[1]), .B(state[0]), .Z(n39664)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_626.init = 16'h8888;
    LUT4 i1_2_lut_rep_533_3_lut (.A(state[1]), .B(state[0]), .C(\cnt_write[5] ), 
         .Z(n39571)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_533_3_lut.init = 16'h0808;
    LUT4 n94_bdd_4_lut_4_lut_4_lut (.A(state[1]), .B(state[0]), .C(n37011), 
         .D(n39524), .Z(n38694)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam n94_bdd_4_lut_4_lut_4_lut.init = 16'h557f;
    LUT4 i30690_2_lut_rep_627 (.A(\cnt_write[5] ), .B(cnt_write[4]), .Z(n39665)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30690_2_lut_rep_627.init = 16'heeee;
    LUT4 i1_2_lut_rep_532_3_lut (.A(\cnt_write[5] ), .B(cnt_write[4]), .C(cnt_write[0]), 
         .Z(n39570)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_532_3_lut.init = 16'h1010;
    LUT4 i42_3_lut_4_lut (.A(cnt_main[3]), .B(n39495), .C(state_back_2__N_518[2]), 
         .D(n39519), .Z(n23)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i42_3_lut_4_lut.init = 16'hf404;
    LUT4 i1_3_lut_rep_417_4_lut_4_lut (.A(n39593), .B(n18087), .C(n39497), 
         .D(n39576), .Z(n39455)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_3_lut_rep_417_4_lut_4_lut.init = 16'hd000;
    LUT4 i1_4_lut_adj_245 (.A(state[1]), .B(n35), .C(n39573), .D(\cnt_write[5] ), 
         .Z(n30)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_adj_245.init = 16'h0a88;
    LUT4 i1_2_lut_rep_628 (.A(cnt_read[3]), .B(cnt_read[1]), .Z(n39666)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i1_2_lut_rep_628.init = 16'heeee;
    LUT4 i1_2_lut_rep_536_3_lut (.A(cnt_read[3]), .B(cnt_read[1]), .C(cnt_read[2]), 
         .Z(n39574)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i1_2_lut_rep_536_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_246 (.A(cnt_read[3]), .B(cnt_read[1]), 
         .C(cnt_read[0]), .D(cnt_read[2]), .Z(n37356)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i1_2_lut_3_lut_4_lut_adj_246.init = 16'hfffe;
    LUT4 i1_2_lut_rep_435_4_lut (.A(n39597), .B(state_back_2__N_518[2]), 
         .C(n39536), .D(n39576), .Z(n39473)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_rep_435_4_lut.init = 16'hb300;
    LUT4 i1_2_lut_rep_449_4_lut (.A(n39597), .B(state_back_2__N_518[2]), 
         .C(n39536), .D(n39499), .Z(n39487)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_rep_449_4_lut.init = 16'hb300;
    LUT4 i15039_2_lut (.A(cnt_init[2]), .B(state[0]), .Z(n21661)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i15039_2_lut.init = 16'heeee;
    LUT4 i5118_1_lut_rep_629 (.A(cnt_read[0]), .Z(n39667)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i5118_1_lut_rep_629.init = 16'h5555;
    LUT4 n18032_bdd_4_lut_4_lut (.A(cnt_read[0]), .B(cnt_read[5]), .C(n19511), 
         .D(n18032), .Z(n39345)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam n18032_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 mux_54_Mux_5_i7_4_lut (.A(n21661), .B(n6_adj_1891), .C(state_back_2__N_518[2]), 
         .D(state[1]), .Z(num_delay_19__N_607[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_5_i7_4_lut.init = 16'hc5cf;
    LUT4 i3745_3_lut_4_lut (.A(cnt_read[3]), .B(n39547), .C(cnt_read[4]), 
         .D(cnt_read[5]), .Z(n208[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3745_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3570_3_lut_rep_631 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .Z(n39669)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i3570_3_lut_rep_631.init = 16'hc8c8;
    LUT4 i1_3_lut_2_lut_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(clk_1mhz_N_669)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1_3_lut_2_lut_4_lut.init = 16'h37c8;
    LUT4 i1_2_lut_rep_538_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n39576)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_538_4_lut.init = 16'h00c8;
    LUT4 i1_4_lut_adj_247 (.A(state[0]), .B(state[1]), .C(n15), .D(n18_adj_1894), 
         .Z(state_2__N_515[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i1_4_lut_adj_247.init = 16'heca0;
    LUT4 i1_4_lut_adj_248 (.A(state_back_2__N_518[2]), .B(state[0]), .C(n37648), 
         .D(cnt_init[0]), .Z(n18_adj_1894)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i1_4_lut_adj_248.init = 16'haaab;
    LUT4 i31305_4_lut (.A(n39576), .B(state[1]), .C(n43), .D(n25), .Z(sys_clk_c_enable_137)) /* synthesis lut_function=(!((B (C+(D))+!B (C))+!A)) */ ;
    defparam i31305_4_lut.init = 16'h020a;
    CCU2D add_48_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34222), 
          .S0(n263[19]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_21.INIT0 = 16'h5aaa;
    defparam add_48_21.INIT1 = 16'h0000;
    defparam add_48_21.INJECT1_0 = "NO";
    defparam add_48_21.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_249 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[19]), 
         .Z(cnt_delay_19__N_439[19])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_249.init = 16'h2020;
    CCU2D add_48_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34221), .COUT(n34222), .S0(n263[17]), .S1(n263[18]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_19.INIT0 = 16'h5aaa;
    defparam add_48_19.INIT1 = 16'h5aaa;
    defparam add_48_19.INJECT1_0 = "NO";
    defparam add_48_19.INJECT1_1 = "NO";
    LUT4 i24801_3_lut (.A(n18087), .B(n39518), .C(state[1]), .Z(n19391)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    defparam i24801_3_lut.init = 16'hcaca;
    CCU2D add_48_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34220), .COUT(n34221), .S0(n263[15]), .S1(n263[16]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_17.INIT0 = 16'h5aaa;
    defparam add_48_17.INIT1 = 16'h5aaa;
    defparam add_48_17.INJECT1_0 = "NO";
    defparam add_48_17.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n39435), .B(n34695), .C(n21409), .D(n37171), .Z(sys_clk_c_enable_334)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0008;
    LUT4 i31441_4_lut (.A(state[0]), .B(state_back_2__N_518[2]), .C(state[1]), 
         .D(n25739), .Z(num_delay_19__N_607[8])) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i31441_4_lut.init = 16'h0313;
    LUT4 i1_4_lut_adj_250 (.A(n39601), .B(n21555), .C(n80), .D(n77), 
         .Z(n24)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_250.init = 16'haaa8;
    LUT4 n38694_bdd_2_lut_rep_424_4_lut (.A(n39570), .B(n39664), .C(cnt_write[3]), 
         .D(n38694), .Z(n39462)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam n38694_bdd_2_lut_rep_424_4_lut.init = 16'h7f00;
    LUT4 i31296_2_lut_4_lut_4_lut (.A(n39574), .B(n20262), .C(cnt_read[5]), 
         .D(cnt_read[4]), .Z(sys_clk_c_enable_56)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i31296_2_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i15248_3_lut_4_lut (.A(n39576), .B(n39597), .C(state_back_2__N_518[2]), 
         .D(n39596), .Z(n21868)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i15248_3_lut_4_lut.init = 16'h8808;
    LUT4 i1_4_lut_adj_251 (.A(state[0]), .B(n37866), .C(n37867), .D(cnt_write[4]), 
         .Z(n25724)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_adj_251.init = 16'ha088;
    LUT4 i27609_3_lut (.A(cnt_1mhz[2]), .B(cnt_1mhz[1]), .C(cnt_1mhz[0]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam i27609_3_lut.init = 16'h6a6a;
    LUT4 i27602_2_lut (.A(cnt_1mhz[1]), .B(cnt_1mhz[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam i27602_2_lut.init = 16'h6666;
    LUT4 i31407_2_lut (.A(cnt_main[1]), .B(n37332), .Z(sys_clk_c_enable_248)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i31407_2_lut.init = 16'h1111;
    LUT4 i2_4_lut_adj_252 (.A(n39520), .B(n39571), .C(n31271), .D(n4_adj_1888), 
         .Z(n77)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i2_4_lut_adj_252.init = 16'heeea;
    LUT4 i2_4_lut_adj_253 (.A(cnt_main[3]), .B(n39579), .C(state[0]), 
         .D(sys_clk_c_enable_332), .Z(n37332)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i2_4_lut_adj_253.init = 16'h7fff;
    LUT4 i1_3_lut_4_lut_adj_254 (.A(\cnt_write[5] ), .B(n39578), .C(state[0]), 
         .D(n37011), .Z(n80)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_adj_254.init = 16'hf080;
    LUT4 i31404_2_lut (.A(cnt_main[1]), .B(n37332), .Z(sys_clk_c_enable_251)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i31404_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_4_lut_adj_255 (.A(n39601), .B(state[0]), .C(n39578), 
         .D(\cnt_write[5] ), .Z(n68)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_4_lut_adj_255.init = 16'h7fff;
    CCU2D add_48_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34219), .COUT(n34220), .S0(n263[13]), .S1(n263[14]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_15.INIT0 = 16'h5aaa;
    defparam add_48_15.INIT1 = 16'h5aaa;
    defparam add_48_15.INJECT1_0 = "NO";
    defparam add_48_15.INJECT1_1 = "NO";
    PFUMX i12906 (.BLUT(n37895), .ALUT(n37896), .C0(cnt_read[5]), .Z(n35036));
    LUT4 i3_4_lut_adj_256 (.A(n5_adj_1885), .B(state_back_2__N_518[2]), 
         .C(n21267), .D(n77), .Z(sys_clk_c_enable_336)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;
    defparam i3_4_lut_adj_256.init = 16'h80a0;
    FD1P3IX cnt_read_i0_i1 (.D(n208[1]), .SP(sys_clk_c_enable_304), .CD(n21868), 
            .CK(sys_clk_c), .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    LUT4 i31281_4_lut (.A(n39666), .B(cnt_read[2]), .C(cnt_read[5]), .D(n39465), 
         .Z(sys_clk_c_enable_257)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i31281_4_lut.init = 16'h0004;
    FD1P3IX cnt_read_i0_i2 (.D(n208[2]), .SP(sys_clk_c_enable_304), .CD(n21868), 
            .CK(sys_clk_c), .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_257 (.A(n39486), .B(n39475), .C(n39518), .D(state[1]), 
         .Z(n34724)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_257.init = 16'hc088;
    FD1P3IX cnt_read_i0_i3 (.D(n208[3]), .SP(sys_clk_c_enable_304), .CD(n21868), 
            .CK(sys_clk_c), .Q(cnt_read[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i3.GSR = "ENABLED";
    LUT4 cnt_write_1__bdd_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[4]), 
         .D(n39625), .Z(n39281)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam cnt_write_1__bdd_4_lut.init = 16'hcccd;
    FD1P3IX cnt_read_i0_i4 (.D(n208[4]), .SP(sys_clk_c_enable_304), .CD(n21868), 
            .CK(sys_clk_c), .Q(cnt_read[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i4.GSR = "ENABLED";
    LUT4 i3621_1_lut (.A(cnt_main[0]), .Z(n1[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(88[24:39])
    defparam i3621_1_lut.init = 16'h5555;
    LUT4 mux_54_Mux_4_i7_4_lut (.A(n25724), .B(n6_adj_1891), .C(state_back_2__N_518[2]), 
         .D(n4_adj_1893), .Z(num_delay_19__N_607[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_4_i7_4_lut.init = 16'hcfca;
    LUT4 i1_2_lut_3_lut_adj_258 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[18]), 
         .Z(cnt_delay_19__N_439[18])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_258.init = 16'h2020;
    FD1P3IX cnt_read_i0_i5 (.D(n208[5]), .SP(sys_clk_c_enable_304), .CD(n21868), 
            .CK(sys_clk_c), .Q(cnt_read[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_259 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[17]), 
         .Z(cnt_delay_19__N_439[17])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_259.init = 16'h2020;
    LUT4 i3738_2_lut_3_lut_4_lut (.A(cnt_read[2]), .B(n39614), .C(cnt_read[4]), 
         .D(cnt_read[3]), .Z(n208[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3738_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_3_lut_adj_260 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[16]), 
         .Z(cnt_delay_19__N_439[16])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_260.init = 16'h2020;
    LUT4 i2_2_lut_4_lut (.A(n39601), .B(state[0]), .C(\cnt_write[5] ), 
         .D(n39600), .Z(n7_adj_1895)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i2_2_lut_4_lut.init = 16'hfff7;
    LUT4 i1_2_lut_3_lut_adj_261 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[15]), 
         .Z(cnt_delay_19__N_439[15])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_261.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_262 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[14]), 
         .Z(cnt_delay_19__N_439[14])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_262.init = 16'h2020;
    LUT4 n38692_bdd_3_lut (.A(n39726), .B(state[1]), .C(cnt_write[0]), 
         .Z(n39085)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam n38692_bdd_3_lut.init = 16'hbfbf;
    LUT4 n38692_bdd_4_lut (.A(n35036), .B(cnt_read[0]), .C(state[0]), 
         .D(state[1]), .Z(n39084)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n38692_bdd_4_lut.init = 16'hfffe;
    FD1P3IX cnt_main_i0_i1 (.D(n39606), .SP(sys_clk_c_enable_332), .CD(n21841), 
            .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(n1[2]), .SP(sys_clk_c_enable_332), .CD(n21841), 
            .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n1[3]), .SP(sys_clk_c_enable_332), .CD(n21841), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    LUT4 n39086_bdd_3_lut (.A(n39086), .B(n39084), .C(state_back_2__N_518[2]), 
         .Z(one_wire_N_680)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n39086_bdd_3_lut.init = 16'hcaca;
    FD1P3AX num_delay_i0_i8 (.D(num_delay_19__N_607[8]), .SP(sys_clk_c_enable_334), 
            .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i8.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_adj_263 (.A(n39625), .B(n39664), .C(state_back_2__N_518[2]), 
         .D(n39665), .Z(n21388)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_263.init = 16'hf0f4;
    FD1P3AX num_delay_i0_i6 (.D(num_delay_19__N_607[6]), .SP(sys_clk_c_enable_335), 
            .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i6.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_264 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[13]), 
         .Z(cnt_delay_19__N_439[13])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_264.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_265 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[12]), 
         .Z(cnt_delay_19__N_439[12])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_265.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_266 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[11]), 
         .Z(cnt_delay_19__N_439[11])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_266.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_267 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[10]), 
         .Z(cnt_delay_19__N_439[10])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_267.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_268 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[9]), 
         .Z(cnt_delay_19__N_439[9])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_268.init = 16'h2020;
    FD1P3AX num_delay_i0_i4 (.D(num_delay_19__N_607[4]), .SP(sys_clk_c_enable_336), 
            .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i4.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_269 (.A(cnt_write[0]), .B(n101), .C(n35150), .D(cnt_write[3]), 
         .Z(n35152)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_269.init = 16'ha088;
    LUT4 i1_2_lut_3_lut_adj_270 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[8]), 
         .Z(cnt_delay_19__N_439[8])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_270.init = 16'h2020;
    CCU2D add_48_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34218), .COUT(n34219), .S0(n263[11]), .S1(n263[12]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_13.INIT0 = 16'h5aaa;
    defparam add_48_13.INIT1 = 16'h5aaa;
    defparam add_48_13.INJECT1_0 = "NO";
    defparam add_48_13.INJECT1_1 = "NO";
    LUT4 i3659_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n109[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(111[24:39])
    defparam i3659_3_lut.init = 16'h6a6a;
    LUT4 i21368_4_lut (.A(n34812), .B(cnt_write[3]), .C(n10147), .D(cnt_write[2]), 
         .Z(n15_adj_1880)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i21368_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_3_lut_adj_271 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[7]), 
         .Z(cnt_delay_19__N_439[7])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_271.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_272 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[6]), 
         .Z(cnt_delay_19__N_439[6])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_272.init = 16'h2020;
    FD1P3IX num_delay_i0_i3 (.D(n39696), .SP(sys_clk_c_enable_337), .CD(n34724), 
            .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i3.GSR = "DISABLED";
    LUT4 state_2__I_0_132_Mux_2_i2_4_lut (.A(n39539), .B(\cnt_write[5] ), 
         .C(state[0]), .D(n8), .Z(n2_adj_1897)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam state_2__I_0_132_Mux_2_i2_4_lut.init = 16'h3afa;
    LUT4 i1_2_lut_3_lut_adj_273 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[5]), 
         .Z(cnt_delay_19__N_439[5])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_273.init = 16'h2020;
    LUT4 i3_4_lut_adj_274 (.A(n39606), .B(n39605), .C(state[0]), .D(n39475), 
         .Z(sys_clk_c_enable_19)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_274.init = 16'h2000;
    LUT4 i2_2_lut_4_lut_4_lut (.A(n39601), .B(state[0]), .C(n10), .D(n39539), 
         .Z(n15_adj_1886)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;
    defparam i2_2_lut_4_lut_4_lut.init = 16'h7f5d;
    LUT4 state_2__I_0_132_Mux_0_i4_4_lut (.A(n37356), .B(state_back[0]), 
         .C(state[0]), .D(n39596), .Z(n4_adj_1879)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam state_2__I_0_132_Mux_0_i4_4_lut.init = 16'hc5cf;
    LUT4 i1_2_lut_3_lut_adj_275 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[4]), 
         .Z(cnt_delay_19__N_439[4])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_275.init = 16'h2020;
    LUT4 i21345_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i21345_2_lut.init = 16'hdddd;
    LUT4 i30755_4_lut (.A(n8), .B(cnt_write[0]), .C(\cnt_write[5] ), .D(n39625), 
         .Z(state_2__N_551[0])) /* synthesis lut_function=(!(A (B (C)+!B (C (D))))) */ ;
    defparam i30755_4_lut.init = 16'h5f7f;
    LUT4 i1_2_lut_3_lut_4_lut_adj_276 (.A(cnt_write[0]), .B(n39638), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n35)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_4_lut_adj_276.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_adj_277 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[3]), 
         .Z(cnt_delay_19__N_439[3])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_277.init = 16'h2020;
    CCU2D add_48_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34217), .COUT(n34218), .S0(n263[9]), .S1(n263[10]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_11.INIT0 = 16'h5aaa;
    defparam add_48_11.INIT1 = 16'h5aaa;
    defparam add_48_11.INJECT1_0 = "NO";
    defparam add_48_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_278 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[2]), 
         .Z(cnt_delay_19__N_439[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_278.init = 16'h2020;
    CCU2D add_48_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34216), .COUT(n34217), .S0(n263[7]), .S1(n263[8]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_9.INIT0 = 16'h5aaa;
    defparam add_48_9.INIT1 = 16'h5aaa;
    defparam add_48_9.INJECT1_0 = "NO";
    defparam add_48_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_279 (.A(state_back_2__N_518[2]), .B(n261), .C(n263[1]), 
         .Z(cnt_delay_19__N_439[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_279.init = 16'h2020;
    LUT4 i2_4_lut_adj_280 (.A(n39455), .B(n39539), .C(n34695), .D(n4_adj_1898), 
         .Z(sys_clk_c_enable_20)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_280.init = 16'ha080;
    LUT4 i37_4_lut_4_lut (.A(n39653), .B(n2380[1]), .C(state[0]), .D(n37622), 
         .Z(n15_adj_1874)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B+!(C (D)))) */ ;
    defparam i37_4_lut_4_lut.init = 16'hc5f5;
    LUT4 i2_3_lut_rep_482_4_lut (.A(cnt_write[0]), .B(n39665), .C(cnt_write[3]), 
         .D(n39664), .Z(n39520)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_rep_482_4_lut.init = 16'h2000;
    LUT4 i2_3_lut_4_lut_adj_281 (.A(cnt_write[0]), .B(n39665), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n37011)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_adj_281.init = 16'h0200;
    LUT4 i2_2_lut_rep_410_3_lut_4_lut_4_lut (.A(n39593), .B(n39499), .C(n39495), 
         .D(cnt_main[3]), .Z(n39448)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B))) */ ;
    defparam i2_2_lut_rep_410_3_lut_4_lut_4_lut.init = 16'h44c4;
    LUT4 i1_2_lut_rep_397_3_lut_4_lut_4_lut (.A(n39593), .B(n39499), .C(n39497), 
         .D(n39486), .Z(n39435)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam i1_2_lut_rep_397_3_lut_4_lut_4_lut.init = 16'hc040;
    LUT4 i3_3_lut_4_lut_4_lut (.A(n39593), .B(n39487), .C(n15_adj_1886), 
         .D(n39486), .Z(sys_clk_c_enable_125)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam i3_3_lut_4_lut_4_lut.init = 16'hc040;
    LUT4 i1_2_lut_rep_425_3_lut_4_lut_4_lut (.A(n39593), .B(cnt_main[3]), 
         .C(n39538), .D(state[0]), .Z(n39463)) /* synthesis lut_function=(!(A (B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_425_3_lut_4_lut_4_lut.init = 16'h7555;
    LUT4 i1_3_lut_4_lut_adj_282 (.A(\cnt_write[5] ), .B(n39664), .C(n4_adj_1888), 
         .D(n21388), .Z(n21434)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_adj_282.init = 16'h0040;
    LUT4 i18774_3_lut_4_lut (.A(n39595), .B(cnt_init[0]), .C(state[0]), 
         .D(n34), .Z(n40)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/new porject/top-xu/ds18b20.v(54[14:22])
    defparam i18774_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i1_3_lut_adj_283 (.A(cnt_write[0]), .B(cnt_write[4]), .C(\cnt_write[5] ), 
         .Z(n2380[1])) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i1_3_lut_adj_283.init = 16'h2a2a;
    LUT4 i1_3_lut_4_lut_adj_284 (.A(cnt_write[4]), .B(n39625), .C(cnt_write[1]), 
         .D(cnt_write[0]), .Z(n31271)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_284.init = 16'h1101;
    LUT4 i1_2_lut_rep_471_3_lut (.A(cnt_write[4]), .B(n39600), .C(\cnt_write[5] ), 
         .Z(n39509)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_471_3_lut.init = 16'h8080;
    CCU2D add_48_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34215), .COUT(n34216), .S0(n263[5]), .S1(n263[6]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_7.INIT0 = 16'h5aaa;
    defparam add_48_7.INIT1 = 16'h5aaa;
    defparam add_48_7.INJECT1_0 = "NO";
    defparam add_48_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_442_3_lut_4_lut (.A(cnt_write[4]), .B(n39600), .C(state[1]), 
         .D(\cnt_write[5] ), .Z(n39480)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_442_3_lut_4_lut.init = 16'h70f0;
    CCU2D add_48_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34214), .COUT(n34215), .S0(n263[3]), .S1(n263[4]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_5.INIT0 = 16'h5aaa;
    defparam add_48_5.INIT1 = 16'h5aaa;
    defparam add_48_5.INJECT1_0 = "NO";
    defparam add_48_5.INJECT1_1 = "NO";
    LUT4 i24778_3_lut_4_lut (.A(cnt_write[4]), .B(n39600), .C(\cnt_write[5] ), 
         .D(n31271), .Z(n34)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i24778_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_3_lut_4_lut_adj_285 (.A(cnt_write[4]), .B(n39600), .C(state[0]), 
         .D(\cnt_write[5] ), .Z(n21555)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_285.init = 16'h8000;
    LUT4 i31147_3_lut_4_lut (.A(n38669), .B(state[0]), .C(state[1]), .D(n2_adj_1897), 
         .Z(n3_adj_1876)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i31147_3_lut_4_lut.init = 16'hf808;
    LUT4 i31423_4_lut_4_lut (.A(n39644), .B(n40), .C(n21434), .D(n39463), 
         .Z(n38098)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i31423_4_lut_4_lut.init = 16'h0b00;
    LUT4 i1_2_lut_adj_286 (.A(state[1]), .B(cnt_main[3]), .Z(n37209)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_286.init = 16'h4444;
    LUT4 i31364_4_lut (.A(n7_adj_1895), .B(n39499), .C(cnt_write[0]), 
         .D(cnt_write[4]), .Z(sys_clk_c_enable_31)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i31364_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_4_lut_adj_287 (.A(n39669), .B(clk_1mhz), .C(n26), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_337)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_287.init = 16'h2000;
    LUT4 i1217_2_lut_rep_461_3_lut (.A(n39669), .B(clk_1mhz), .C(sys_rst_n_c), 
         .Z(n39499)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1217_2_lut_rep_461_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_437_3_lut_4_lut (.A(n39669), .B(clk_1mhz), .C(state_back_2__N_518[2]), 
         .D(sys_rst_n_c), .Z(n39475)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_437_3_lut_4_lut.init = 16'h0200;
    LUT4 i31333_3_lut_4_lut (.A(n39669), .B(clk_1mhz), .C(state_back_2__N_518[2]), 
         .D(state[0]), .Z(sys_clk_c_enable_342)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i31333_3_lut_4_lut.init = 16'h0002;
    LUT4 i14926_2_lut_rep_540 (.A(cnt_write[0]), .B(cnt_write[4]), .Z(n39578)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i14926_2_lut_rep_540.init = 16'h2222;
    LUT4 i2_3_lut_rep_486_4_lut (.A(cnt_write[0]), .B(cnt_write[4]), .C(state[0]), 
         .D(\cnt_write[5] ), .Z(n39524)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_rep_486_4_lut.init = 16'h2000;
    LUT4 i31315_2_lut_rep_541 (.A(cnt_main[0]), .B(cnt_main[2]), .Z(n39579)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i31315_2_lut_rep_541.init = 16'h1111;
    LUT4 i2_3_lut_4_lut_adj_288 (.A(cnt_main[0]), .B(cnt_main[2]), .C(state[0]), 
         .D(cnt_main[3]), .Z(n5)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i2_3_lut_4_lut_adj_288.init = 16'h1000;
    FD1P3AX num_delay_i0_i1 (.D(num_delay_19__N_607[1]), .SP(sys_clk_c_enable_340), 
            .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i1.GSR = "DISABLED";
    FD1P3IX cnt_init_i0_i2 (.D(n109[2]), .SP(sys_clk_c_enable_342), .CD(n21833), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    LUT4 i14975_3_lut_then_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n39695)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i14975_3_lut_then_4_lut.init = 16'h1a41;
    LUT4 i31432_2_lut_rep_555 (.A(state_back_2__N_518[2]), .B(state[1]), 
         .Z(n39593)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i31432_2_lut_rep_555.init = 16'h1111;
    LUT4 i31357_2_lut_3_lut_4_lut (.A(state_back_2__N_518[2]), .B(state[1]), 
         .C(clk_1mhz), .D(n39669), .Z(sys_clk_c_enable_332)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i31357_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i14975_3_lut_else_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n39694)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B (C+!(D))+!B ((D)+!C))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i14975_3_lut_else_4_lut.init = 16'ha41a;
    LUT4 i31289_3_lut_4_lut (.A(cnt_read[3]), .B(n39449), .C(cnt_read[1]), 
         .D(cnt_read[5]), .Z(sys_clk_c_enable_75)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i31289_3_lut_4_lut.init = 16'h0200;
    FD1P3IX cnt_init_i0_i1 (.D(n39652), .SP(sys_clk_c_enable_342), .CD(n21833), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_557 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n39595)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_557.init = 16'h8888;
    LUT4 i31299_3_lut_4_lut (.A(cnt_read[3]), .B(n39449), .C(cnt_read[1]), 
         .D(cnt_read[5]), .Z(sys_clk_c_enable_51)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i31299_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_rep_501_3_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(cnt_init[0]), 
         .Z(n39539)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_501_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_3_lut_4_lut_adj_289 (.A(cnt_init[1]), .B(cnt_init[2]), 
         .C(n39602), .D(cnt_init[0]), .Z(n38)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_289.init = 16'hf7f0;
    LUT4 i2_4_lut_adj_290 (.A(state_back_2__N_518[2]), .B(state[1]), .C(state[0]), 
         .D(n39576), .Z(sys_clk_c_enable_178)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_290.init = 16'h2100;
    LUT4 i1_2_lut_rep_534_3_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(cnt_init[0]), 
         .Z(n39572)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;
    defparam i1_2_lut_rep_534_3_lut.init = 16'h8f8f;
    LUT4 i3561_2_lut_rep_558 (.A(cnt_read[4]), .B(cnt_read[5]), .Z(n39596)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3561_2_lut_rep_558.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_291 (.A(cnt_read[4]), .B(cnt_read[5]), 
         .C(state_back_2__N_518[2]), .D(cnt_read[0]), .Z(n16)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_291.init = 16'h0070;
    LUT4 i1_2_lut_rep_498_3_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(cnt_read[0]), 
         .Z(n39536)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_498_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_rep_487_3_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(cnt_read[0]), 
         .Z(n39525)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_487_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_rep_481_3_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), 
         .C(state[0]), .D(cnt_read[0]), .Z(n39519)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_2_lut_rep_481_3_lut_4_lut.init = 16'h0700;
    LUT4 state_2__I_0_132_Mux_2_i4_3_lut_3_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), 
         .C(state_back[2]), .D(state[0]), .Z(n4_adj_1877)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam state_2__I_0_132_Mux_2_i4_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 i31419_2_lut_rep_559 (.A(state[0]), .B(state[1]), .Z(n39597)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i31419_2_lut_rep_559.init = 16'h1111;
    LUT4 i31361_2_lut_rep_483_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(clk_1mhz), 
         .D(n39669), .Z(sys_clk_c_enable_304)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i31361_2_lut_rep_483_3_lut_4_lut.init = 16'h0100;
    LUT4 i24728_4_lut (.A(n34812), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(data_wr_buffer[6]), .Z(n31245)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i24728_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_561 (.A(cnt_main[0]), .B(cnt_main[2]), .Z(n39599)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i1_2_lut_rep_561.init = 16'h2222;
    LUT4 i1_2_lut_rep_457_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[2]), 
         .C(state[0]), .D(cnt_main[1]), .Z(n39495)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i1_2_lut_rep_457_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_500_3_lut (.A(cnt_main[0]), .B(cnt_main[2]), .C(cnt_main[1]), 
         .Z(n39538)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i1_2_lut_rep_500_3_lut.init = 16'h2020;
    LUT4 i31102_1_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n37895)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;
    defparam i31102_1_lut_4_lut.init = 16'hdb6d;
    LUT4 i2_3_lut_rep_562 (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .Z(n39600)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_562.init = 16'hfefe;
    LUT4 i1_2_lut_rep_535_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[4]), .Z(n39573)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_rep_535_4_lut.init = 16'hfe00;
    LUT4 i1_2_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[0]), .Z(n29)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    LUT4 i31352_2_lut_rep_563 (.A(state_back_2__N_518[2]), .B(state[1]), 
         .Z(n39601)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i31352_2_lut_rep_563.init = 16'h4444;
    LUT4 i2_3_lut_rep_495_4_lut (.A(state_back_2__N_518[2]), .B(state[1]), 
         .C(\cnt_write[5] ), .D(state[0]), .Z(n39533)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_3_lut_rep_495_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_3_lut_adj_292 (.A(state_back_2__N_518[2]), .B(state[1]), 
         .C(state[0]), .Z(n4_adj_1898)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_292.init = 16'hfbfb;
    LUT4 i2_3_lut_4_lut_adj_293 (.A(state_back_2__N_518[2]), .B(state[1]), 
         .C(n10), .D(state[0]), .Z(n34695)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_293.init = 16'hbfff;
    LUT4 i1_3_lut_4_lut_adj_294 (.A(state_back_2__N_518[2]), .B(state[1]), 
         .C(n25724), .D(n21661), .Z(num_delay_19__N_607[6])) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_294.init = 16'h4044;
    LUT4 i20715_2_lut_rep_564 (.A(state[0]), .B(state[1]), .Z(n39602)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i20715_2_lut_rep_564.init = 16'hbbbb;
    LUT4 i20714_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(state_back_2__N_518[2]), 
         .Z(state_back_2__N_518[0])) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i20714_2_lut_3_lut.init = 16'h0b0b;
    LUT4 i3440_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n6_adj_1889)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i3440_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i3630_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n1[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i3630_2_lut_3_lut.init = 16'h7878;
    LUT4 i3637_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n1[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i3637_3_lut_4_lut.init = 16'h7f80;
    LUT4 i20939_2_lut_rep_565 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n39603)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20939_2_lut_rep_565.init = 16'h8888;
    LUT4 i21517_1_lut_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7_adj_1873)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i21517_1_lut_2_lut.init = 16'h7777;
    LUT4 i30724_2_lut_rep_567 (.A(state[1]), .B(cnt_main[3]), .Z(n39605)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30724_2_lut_rep_567.init = 16'heeee;
    LUT4 i30872_2_lut_3_lut_4_lut (.A(state[1]), .B(cnt_main[3]), .C(cnt_main[1]), 
         .D(cnt_main[0]), .Z(n37199)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i30872_2_lut_3_lut_4_lut.init = 16'h0111;
    LUT4 i5_2_lut_rep_568 (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n39606)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(51[14:22])
    defparam i5_2_lut_rep_568.init = 16'h6666;
    LUT4 i20975_3_lut_4_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(state_2__N_557[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A ((C)+!B))) */ ;   // d:/new porject/top-xu/ds18b20.v(51[14:22])
    defparam i20975_3_lut_4_lut_4_lut.init = 16'h060e;
    PFUMX i87 (.BLUT(n31245), .ALUT(n6_adj_1887), .C0(n37771), .Z(n83));
    LUT4 i1_4_lut_adj_295 (.A(n39576), .B(n34661), .C(n8_adj_1900), .D(n36971), 
         .Z(sys_clk_c_enable_47)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_295.init = 16'h8000;
    PFUMX i32018 (.BLUT(n39724), .ALUT(n39725), .C0(cnt_write[2]), .Z(n39726));
    PFUMX i32016 (.BLUT(n39721), .ALUT(n39722), .C0(cnt_write[2]), .Z(n39723));
    LUT4 i1_2_lut_adj_296 (.A(state_back[1]), .B(n261), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_adj_296.init = 16'h8888;
    LUT4 i3_4_lut_adj_297 (.A(state[0]), .B(cnt_main[3]), .C(n39579), 
         .D(n39593), .Z(n34661)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i3_4_lut_adj_297.init = 16'h7fff;
    PFUMX i32010 (.BLUT(n39712), .ALUT(n39694), .C0(cnt_read[1]), .Z(n6_adj_1891));
    LUT4 i3_4_lut_adj_298 (.A(state_back_2__N_518[2]), .B(n68), .C(n37378), 
         .D(n21005), .Z(n8_adj_1900)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D))) */ ;
    defparam i3_4_lut_adj_298.init = 16'hc400;
    PFUMX i47 (.BLUT(n16), .ALUT(n22), .C0(state[0]), .Z(n43));
    PFUMX i31998 (.BLUT(n39694), .ALUT(n39695), .C0(cnt_read[1]), .Z(n39696));
    LUT4 i5_4_lut (.A(state[1]), .B(n39525), .C(n261), .D(state[0]), 
         .Z(n37378)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i5_4_lut.init = 16'h5044;
    LUT4 i3_4_lut_adj_299 (.A(state_back_2__N_518[2]), .B(cnt_init[0]), 
         .C(cnt_init[2]), .D(n39602), .Z(n21005)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i3_4_lut_adj_299.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module KEY_U0
//

module KEY_U0 (sys_clk_c, key_sec_pre, key_sec, key2_c, key_mode, 
            n39483, n39643, n39485, sys_clk_c_enable_159, n39657, 
            sys_clk_c_enable_79, n39642, n15, key_sec_adj_11, key_sec_pre_adj_12, 
            n39561, GND_net, n39641, n39562, key1_pulse, sw1_c, 
            n36995, n27351) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key2_c;
    input [2:0]key_mode;
    input n39483;
    input n39643;
    output n39485;
    output sys_clk_c_enable_159;
    input n39657;
    output sys_clk_c_enable_79;
    output n39642;
    output n15;
    input key_sec_adj_11;
    input key_sec_pre_adj_12;
    output n39561;
    input GND_net;
    input n39641;
    input n39562;
    input key1_pulse;
    input sw1_c;
    output n36995;
    output n27351;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire key_rst_pre, key_rst, sys_clk_c_enable_41;
    wire [17:0]cnt;   // d:/new porject/top-xu/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire n34284, n34283, n34282, n34281, n34280, n34279, n34278, 
        n34277, n34276, n21, n34, n30, n22, n31, n28;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key2_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1P3AY key_sec_29 (.D(key2_c), .SP(sys_clk_c_enable_41), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    FD1S3IX cnt_2999__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i0.GSR = "ENABLED";
    FD1S3IX cnt_2999__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i17.GSR = "ENABLED";
    FD1S3IX cnt_2999__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i16.GSR = "ENABLED";
    FD1S3IX cnt_2999__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i15.GSR = "ENABLED";
    FD1S3IX cnt_2999__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i14.GSR = "ENABLED";
    FD1S3IX cnt_2999__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i13.GSR = "ENABLED";
    FD1S3IX cnt_2999__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i12.GSR = "ENABLED";
    FD1S3IX cnt_2999__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i11.GSR = "ENABLED";
    FD1S3IX cnt_2999__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i10.GSR = "ENABLED";
    FD1S3IX cnt_2999__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i9.GSR = "ENABLED";
    FD1S3IX cnt_2999__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i8.GSR = "ENABLED";
    FD1S3IX cnt_2999__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i7.GSR = "ENABLED";
    FD1S3IX cnt_2999__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i6.GSR = "ENABLED";
    FD1S3IX cnt_2999__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i5.GSR = "ENABLED";
    FD1S3IX cnt_2999__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i4.GSR = "ENABLED";
    FD1S3IX cnt_2999__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i3.GSR = "ENABLED";
    FD1S3IX cnt_2999__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i2.GSR = "ENABLED";
    FD1S3IX cnt_2999__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999__i1.GSR = "ENABLED";
    LUT4 i31396_3_lut_3_lut_4_lut (.A(key_mode[0]), .B(n39483), .C(n39643), 
         .D(n39485), .Z(sys_clk_c_enable_159)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (D))) */ ;
    defparam i31396_3_lut_3_lut_4_lut.init = 16'h02ff;
    LUT4 i31399_3_lut_4_lut_4_lut (.A(n39485), .B(n39657), .C(n39483), 
         .D(key_mode[0]), .Z(sys_clk_c_enable_79)) /* synthesis lut_function=(!(A (B+(C+!(D))))) */ ;
    defparam i31399_3_lut_4_lut_4_lut.init = 16'h5755;
    LUT4 key_sec_pre_I_0_2_lut_rep_604 (.A(key_sec_pre), .B(key_sec), .Z(n39642)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_604.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(key_mode[2]), 
         .D(key_mode[1]), .Z(n15)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i120_2_lut_rep_523_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(key_sec_adj_11), 
         .D(key_sec_pre_adj_12), .Z(n39561)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i120_2_lut_rep_523_3_lut_4_lut.init = 16'h2f22;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    CCU2D cnt_2999_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34284), .S0(n77[17]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2999_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2999_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2999_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2999_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34283), .COUT(n34284), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2999_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2999_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2999_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2999_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34282), .COUT(n34283), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2999_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2999_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2999_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_2999_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34281), .COUT(n34282), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2999_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2999_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2999_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_2999_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34280), .COUT(n34281), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2999_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2999_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2999_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2999_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34279), 
          .COUT(n34280), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2999_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2999_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2999_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2999_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34278), 
          .COUT(n34279), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2999_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2999_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2999_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_2999_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34277), 
          .COUT(n34278), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2999_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2999_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2999_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_2999_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34276), 
          .COUT(n34277), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2999_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2999_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2999_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_447_3_lut_4_lut (.A(n39642), .B(n39641), .C(n39562), 
         .D(key1_pulse), .Z(n39485)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/top.v(46[7:17])
    defparam i1_2_lut_rep_447_3_lut_4_lut.init = 16'hfffe;
    CCU2D cnt_2999_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n34276), .S1(n77[0]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2999_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2999_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2999_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2999_add_4_1.INJECT1_1 = "NO";
    LUT4 i3_3_lut_4_lut (.A(n39642), .B(n39641), .C(sw1_c), .D(key1_pulse), 
         .Z(n36995)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/top.v(46[7:17])
    defparam i3_3_lut_4_lut.init = 16'h00e0;
    LUT4 i20783_2_lut_3_lut_4_lut (.A(n39642), .B(n39641), .C(key1_pulse), 
         .D(n39562), .Z(n27351)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/top.v(46[7:17])
    defparam i20783_2_lut_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_41)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(cnt[13]), .B(cnt[8]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i16_4_lut (.A(n31), .B(cnt[9]), .C(n28), .D(cnt[2]), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    LUT4 i12_4_lut (.A(cnt[3]), .B(cnt[10]), .C(cnt[5]), .D(cnt[0]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(cnt[7]), .B(cnt[12]), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i13_4_lut (.A(cnt[17]), .B(cnt[15]), .C(cnt[16]), .D(cnt[4]), 
         .Z(n31)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    LUT4 i10_4_lut (.A(cnt[1]), .B(cnt[6]), .C(cnt[14]), .D(cnt[11]), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    
endmodule
//
// Verilog Description of module KEY_U1
//

module KEY_U1 (sys_clk_c, key1_c, GND_net, key1_pulse) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input key1_c;
    input GND_net;
    output key1_pulse;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire key_rst_pre, key_rst, key_sec_pre, key_sec, n34272;
    wire [17:0]cnt;   // d:/new porject/top-xu/key.v(37[16:19])
    wire [17:0]n77;
    
    wire n34273, n34271, n34270, n34269, n34268, sys_clk_c_enable_49, 
        n34267, key_edge, n21, n34, n30, n22, n31, n28, n34275, 
        n34274;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key1_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    CCU2D cnt_2998_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34272), .COUT(n34273), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2998_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2998_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2998_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_2998_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34271), .COUT(n34272), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2998_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2998_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2998_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2998_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34270), 
          .COUT(n34271), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2998_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2998_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2998_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2998_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34269), 
          .COUT(n34270), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2998_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2998_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2998_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_2998_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34268), 
          .COUT(n34269), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2998_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2998_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2998_add_4_5.INJECT1_1 = "NO";
    FD1P3AY key_sec_29 (.D(key1_c), .SP(sys_clk_c_enable_49), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    CCU2D cnt_2998_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34267), 
          .COUT(n34268), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2998_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2998_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2998_add_4_3.INJECT1_1 = "NO";
    FD1S3IX cnt_2998__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i0.GSR = "ENABLED";
    CCU2D cnt_2998_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n34267), .S1(n77[0]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2998_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2998_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2998_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_2998__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i17.GSR = "ENABLED";
    FD1S3IX cnt_2998__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i16.GSR = "ENABLED";
    FD1S3IX cnt_2998__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i15.GSR = "ENABLED";
    FD1S3IX cnt_2998__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i14.GSR = "ENABLED";
    FD1S3IX cnt_2998__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i13.GSR = "ENABLED";
    FD1S3IX cnt_2998__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i12.GSR = "ENABLED";
    FD1S3IX cnt_2998__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i11.GSR = "ENABLED";
    FD1S3IX cnt_2998__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i10.GSR = "ENABLED";
    FD1S3IX cnt_2998__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i9.GSR = "ENABLED";
    FD1S3IX cnt_2998__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i8.GSR = "ENABLED";
    FD1S3IX cnt_2998__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i7.GSR = "ENABLED";
    FD1S3IX cnt_2998__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i6.GSR = "ENABLED";
    FD1S3IX cnt_2998__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i5.GSR = "ENABLED";
    FD1S3IX cnt_2998__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i4.GSR = "ENABLED";
    FD1S3IX cnt_2998__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i3.GSR = "ENABLED";
    FD1S3IX cnt_2998__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i2.GSR = "ENABLED";
    FD1S3IX cnt_2998__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998__i1.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_49)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(cnt[13]), .B(cnt[8]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i16_4_lut (.A(n31), .B(cnt[9]), .C(n28), .D(cnt[2]), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    LUT4 i12_4_lut (.A(cnt[3]), .B(cnt[10]), .C(cnt[5]), .D(cnt[0]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(cnt[7]), .B(cnt[12]), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i13_4_lut (.A(cnt[17]), .B(cnt[15]), .C(cnt[16]), .D(cnt[4]), 
         .Z(n31)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    LUT4 i10_4_lut (.A(cnt[1]), .B(cnt[6]), .C(cnt[14]), .D(cnt[11]), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    LUT4 key_sec_pre_I_0_2_lut (.A(key_sec_pre), .B(key_sec), .Z(key1_pulse)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut.init = 16'h2222;
    CCU2D cnt_2998_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34275), .S0(n77[17]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2998_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2998_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2998_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2998_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34274), .COUT(n34275), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2998_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2998_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2998_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2998_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34273), .COUT(n34274), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_2998_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2998_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2998_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2998_add_4_15.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module uart_send
//

module uart_send (sys_clk_c, uart_en, uart_send_data, GND_net, uart_txd_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input uart_en;
    input [7:0]uart_send_data;
    input GND_net;
    output uart_txd_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire uart_en_d1, uart_en_d0, uart_tx_busy, n21760;
    wire [15:0]clk_cnt;   // d:/new porject/top-xu/uart.v(19[12:19])
    
    wire n21812;
    wire [15:0]n69;
    wire [15:0]n2100;
    
    wire sys_clk_c_enable_221, n21771, n12380, n19222, n37801;
    wire [0:0]n5318;
    
    wire n37283, n30427, uart_tx_busy_N_745, n19518;
    wire [7:0]tx_data;   // d:/new porject/top-xu/uart.v(22[12:19])
    
    wire n19519, n39629;
    wire [0:0]n5289;
    
    wire n37658, n39630, n36975, n37630, sys_clk_c_enable_344, n37271, 
        n37229, n37712, n37660, n37798, n12379, n37790, n34301, 
        n34300, n34299, n34298, n34297, n34296, n34295, n34294, 
        n16, n12, n4, n12357, n34637, uart_txd_N_748, n10;
    
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n21760), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i0.GSR = "ENABLED";
    FD1P3JX tx_cnt_FSM_i0 (.D(n2100[15]), .SP(sys_clk_c_enable_221), .PD(n21771), 
            .CK(sys_clk_c), .Q(n2100[0]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    PFUMX i11521 (.BLUT(n12380), .ALUT(n19222), .C0(n37801), .Z(n5318[0]));
    LUT4 i1_3_lut (.A(uart_en_d0), .B(n37283), .C(uart_en_d1), .Z(n30427)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i1_3_lut.init = 16'hc4c4;
    FD1P3IX tx_cnt_FSM_i15 (.D(n2100[14]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[15]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n2100[13]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[14]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n2100[12]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[13]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n2100[11]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[12]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n2100[10]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[11]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_745), .SP(sys_clk_c_enable_221), 
            .CD(n21771), .CK(sys_clk_c), .Q(n2100[10]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n2100[8]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_745));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n2100[7]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[8]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n2100[6]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[7]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n2100[5]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[6]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n2100[4]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[5]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n2100[3]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[4]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n2100[2]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[3]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i2 (.D(n2100[1]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[2]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i1 (.D(n2100[0]), .SP(sys_clk_c_enable_221), .CD(n21771), 
            .CK(sys_clk_c), .Q(n2100[1]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_3003__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n21812), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003__i1.GSR = "ENABLED";
    LUT4 i12921_3_lut (.A(n19518), .B(tx_data[7]), .C(n2100[8]), .Z(n19519)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i12921_3_lut.init = 16'hcaca;
    LUT4 i30655_2_lut_rep_591 (.A(clk_cnt[11]), .B(clk_cnt[14]), .Z(n39629)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30655_2_lut_rep_591.init = 16'heeee;
    LUT4 mux_1788_i1_3_lut (.A(tx_data[0]), .B(tx_data[1]), .C(n2100[2]), 
         .Z(n5289[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam mux_1788_i1_3_lut.init = 16'hcaca;
    LUT4 i30853_3_lut_4_lut (.A(clk_cnt[11]), .B(clk_cnt[14]), .C(clk_cnt[7]), 
         .D(clk_cnt[10]), .Z(n37658)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30853_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_592 (.A(clk_cnt[4]), .B(clk_cnt[3]), .Z(n39630)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i1_2_lut_rep_592.init = 16'heeee;
    LUT4 i30825_3_lut_4_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(clk_cnt[0]), 
         .D(n36975), .Z(n37630)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i30825_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(uart_en_d0), .B(uart_en_d1), .C(uart_tx_busy), 
         .D(n37283), .Z(n21760)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam i1_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1_2_lut_3_lut (.A(uart_en_d0), .B(uart_en_d1), .C(n37283), .Z(sys_clk_c_enable_344)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i2_4_lut (.A(n37271), .B(n37658), .C(n37229), .D(n37712), .Z(sys_clk_c_enable_221)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_4_lut.init = 16'h0020;
    LUT4 i30907_4_lut (.A(clk_cnt[13]), .B(n37660), .C(clk_cnt[12]), .D(clk_cnt[15]), 
         .Z(n37712)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30907_4_lut.init = 16'hfffe;
    LUT4 i30855_4_lut (.A(clk_cnt[3]), .B(clk_cnt[4]), .C(clk_cnt[9]), 
         .D(clk_cnt[8]), .Z(n37660)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30855_4_lut.init = 16'hfffe;
    LUT4 i15148_1_lut (.A(uart_tx_busy), .Z(n21771)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam i15148_1_lut.init = 16'h5555;
    LUT4 i31143_4_lut_4_lut (.A(n2100[8]), .B(n37798), .C(n19519), .D(n5289[0]), 
         .Z(n19222)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam i31143_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i5835_3_lut (.A(tx_data[2]), .B(tx_data[3]), .C(n2100[4]), .Z(n12379)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i5835_3_lut.init = 16'hcaca;
    LUT4 i30993_2_lut (.A(n2100[7]), .B(n2100[6]), .Z(n37798)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i30993_2_lut.init = 16'h1111;
    LUT4 i31421_4_lut (.A(n2100[8]), .B(n2100[7]), .C(n2100[6]), .D(n37790), 
         .Z(n37801)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i31421_4_lut.init = 16'hfffe;
    LUT4 i30985_3_lut (.A(n2100[5]), .B(n2100[4]), .C(n2100[3]), .Z(n37790)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i30985_3_lut.init = 16'h0101;
    FD1P3IX tx_data_i1 (.D(uart_send_data[1]), .SP(sys_clk_c_enable_344), 
            .CD(n30427), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i1.GSR = "ENABLED";
    CCU2D clk_cnt_3003_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34301), .S0(n69[15]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_3003_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_3003_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_3003_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34300), .COUT(n34301), .S0(n69[13]), .S1(n69[14]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_3003_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_3003_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34299), .COUT(n34300), .S0(n69[11]), .S1(n69[12]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_3003_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_3003_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34298), .COUT(n34299), .S0(n69[9]), .S1(n69[10]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_3003_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_3003_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34297), .COUT(n34298), .S0(n69[7]), .S1(n69[8]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_3003_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_3003_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34296), .COUT(n34297), .S0(n69[5]), .S1(n69[6]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_3003_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_3003_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34295), .COUT(n34296), .S0(n69[3]), .S1(n69[4]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_3003_add_4_5.INJECT1_1 = "NO";
    FD1P3IX tx_data_i2 (.D(uart_send_data[2]), .SP(sys_clk_c_enable_344), 
            .CD(n30427), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1P3IX tx_data_i3 (.D(uart_send_data[3]), .SP(sys_clk_c_enable_344), 
            .CD(n30427), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1P3IX tx_data_i4 (.D(uart_send_data[4]), .SP(sys_clk_c_enable_344), 
            .CD(n30427), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i4.GSR = "ENABLED";
    CCU2D clk_cnt_3003_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34294), .COUT(n34295), .S0(n69[1]), .S1(n69[2]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_3003_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_3003_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_3003_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n34294), .S1(n69[0]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3003_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_3003_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_3003_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_3003_add_4_1.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(n37630), .B(n37229), .C(uart_tx_busy_N_745), .D(clk_cnt[2]), 
         .Z(n37283)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i4_4_lut.init = 16'h0040;
    LUT4 i8_4_lut (.A(clk_cnt[13]), .B(n16), .C(n12), .D(clk_cnt[12]), 
         .Z(n36975)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(clk_cnt[10]), .B(clk_cnt[15]), .C(clk_cnt[9]), .D(n39629), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i7_4_lut.init = 16'hfffe;
    FD1P3IX tx_data_i5 (.D(uart_send_data[5]), .SP(sys_clk_c_enable_344), 
            .CD(n30427), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i5.GSR = "ENABLED";
    LUT4 i3_2_lut (.A(clk_cnt[8]), .B(clk_cnt[7]), .Z(n12)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_adj_226 (.A(clk_cnt[6]), .B(clk_cnt[5]), .C(clk_cnt[1]), 
         .Z(n37229)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_226.init = 16'h8080;
    FD1P3IX tx_data_i6 (.D(uart_send_data[6]), .SP(sys_clk_c_enable_344), 
            .CD(n30427), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1P3IX tx_data_i7 (.D(uart_send_data[7]), .SP(sys_clk_c_enable_344), 
            .CD(n30427), .CK(sys_clk_c), .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i7.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(uart_tx_busy), .B(clk_cnt[6]), .C(n36975), .D(n4), 
         .Z(n21812)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i1_4_lut.init = 16'hfdf5;
    LUT4 i1_4_lut_adj_227 (.A(clk_cnt[1]), .B(clk_cnt[5]), .C(n39630), 
         .D(n37271), .Z(n4)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i1_4_lut_adj_227.init = 16'hc8c0;
    LUT4 i5836_3_lut (.A(n12379), .B(tx_data[4]), .C(n2100[5]), .Z(n12380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i5836_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .Z(n37271)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i20908_4_lut (.A(n12357), .B(n2100[0]), .C(uart_txd_c), .D(n34637), 
         .Z(uart_txd_N_748)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i20908_4_lut.init = 16'h3022;
    LUT4 i21004_2_lut (.A(n5318[0]), .B(uart_tx_busy_N_745), .Z(n12357)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i21004_2_lut.init = 16'heeee;
    LUT4 i5_3_lut (.A(n2100[15]), .B(n10), .C(n2100[13]), .Z(n34637)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_adj_228 (.A(n2100[14]), .B(n2100[12]), .C(n2100[11]), 
         .D(n2100[10]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i4_4_lut_adj_228.init = 16'hfffe;
    FD1S3JX uart_txd_47 (.D(uart_txd_N_748), .CK(sys_clk_c), .PD(n21771), 
            .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(101[10] 116[26])
    defparam uart_txd_47.GSR = "ENABLED";
    LUT4 i12920_3_lut (.A(tx_data[5]), .B(tx_data[6]), .C(n2100[7]), .Z(n19518)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i12920_3_lut.init = 16'hcaca;
    FD1P3IX tx_data_i0 (.D(uart_send_data[0]), .SP(sys_clk_c_enable_344), 
            .CD(n30427), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=344, LSE_RLINE=353 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module BCD_U4
//

module BCD_U4 (\min[1] , \min_ones[1] , \min[4] , \hundres_0__N_352[3] , 
            hundres_0__N_357, n9316, n9598, \min[2] , \min[3] , \min_tens[0] , 
            \min[7] , \min_ones[3] , \min_ones[2] , \min[6] , \min[5] , 
            n4) /* synthesis syn_module_defined=1 */ ;
    input \min[1] ;
    output \min_ones[1] ;
    input \min[4] ;
    output \hundres_0__N_352[3] ;
    output hundres_0__N_357;
    input n9316;
    output n9598;
    input \min[2] ;
    input \min[3] ;
    output \min_tens[0] ;
    input \min[7] ;
    output \min_ones[3] ;
    output \min_ones[2] ;
    input \min[6] ;
    input \min[5] ;
    output n4;
    
    
    wire n39367;
    wire [3:0]hundres_0__N_352;
    
    wire n39688, n39689, n39404;
    wire [3:0]hundres_1__N_342;
    
    wire n39391, n39527, n39353, n41001;
    wire [3:0]hundres_0__N_349;
    
    wire n39361, n39490;
    wire [3:0]hundres_1__N_341;
    
    wire n39437, n39467;
    wire [3:0]hundres_1__N_343;
    
    wire n39585, n39371, n39424, n39416, n41000, n40999;
    
    LUT4 i4622_2_lut_4_lut_4_lut (.A(n39367), .B(\min[1] ), .C(hundres_0__N_352[1]), 
         .D(hundres_0__N_352[2]), .Z(\min_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4622_2_lut_4_lut_4_lut.init = 16'h332c;
    PFUMX i31994 (.BLUT(n39688), .ALUT(n39689), .C0(\min[4] ), .Z(n39404));
    LUT4 i3506_2_lut_rep_315_3_lut_4_lut_4_lut (.A(hundres_1__N_342[3]), .B(n39391), 
         .C(\hundres_0__N_352[3] ), .D(n39527), .Z(n39353)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i3506_2_lut_rep_315_3_lut_4_lut_4_lut.init = 16'hf2fc;
    LUT4 i3505_4_lut (.A(n39353), .B(n41001), .C(hundres_0__N_349[1]), 
         .D(n39527), .Z(hundres_0__N_357)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3505_4_lut.init = 16'hb3a0;
    LUT4 i4000_3_lut_4_lut (.A(\hundres_0__N_352[3] ), .B(n39361), .C(n9316), 
         .D(hundres_0__N_349[1]), .Z(n9598)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4000_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4749_3_lut_4_lut_3_lut_4_lut (.A(\min[4] ), .B(n39490), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_1__N_342[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4749_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i11533_2_lut_rep_399_3_lut_4_lut (.A(\min[4] ), .B(n39490), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n39437)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i11533_2_lut_rep_399_3_lut_4_lut.init = 16'heee0;
    LUT4 i3391_3_lut_rep_429 (.A(\min[4] ), .B(n39490), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n39467)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3391_3_lut_rep_429.init = 16'hffe0;
    LUT4 i4735_3_lut_4_lut (.A(\min[4] ), .B(n39490), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_1__N_342[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4735_3_lut_4_lut.init = 16'h998c;
    LUT4 i4650_2_lut_rep_329_4_lut_4_lut (.A(n39404), .B(\min[2] ), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(n39367)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4650_2_lut_rep_329_4_lut_4_lut.init = 16'h332c;
    LUT4 i4665_2_lut_3_lut_3_lut_4_lut (.A(n39404), .B(\min[2] ), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(hundres_0__N_352[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4665_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4672_3_lut_4_lut_3_lut_4_lut (.A(n39404), .B(\min[2] ), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(\hundres_0__N_352[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4672_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4658_3_lut_4_lut (.A(n39404), .B(\min[2] ), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(hundres_0__N_352[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4658_3_lut_4_lut.init = 16'h998a;
    LUT4 i4699_2_lut_rep_366_4_lut_4_lut_then_4_lut (.A(\min[3] ), .B(n39490), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n39689)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4699_2_lut_rep_366_4_lut_4_lut_then_4_lut.init = 16'h2526;
    LUT4 i4644_3_lut_4_lut_3_lut_4_lut (.A(n39367), .B(\min[1] ), .C(hundres_0__N_352[1]), 
         .D(hundres_0__N_352[2]), .Z(\min_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4644_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4699_2_lut_rep_366_4_lut_4_lut_else_4_lut (.A(\min[3] ), .B(n39490), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n39688)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4699_2_lut_rep_366_4_lut_4_lut_else_4_lut.init = 16'h9592;
    LUT4 i4686_3_lut_4_lut_3_lut_4_lut (.A(n39585), .B(\min[7] ), .C(n39391), 
         .D(hundres_1__N_342[3]), .Z(hundres_0__N_349[1])) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4686_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i3554_2_lut_rep_333_3_lut_4_lut (.A(n39585), .B(\min[7] ), .C(n39391), 
         .D(hundres_1__N_342[3]), .Z(n39371)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3554_2_lut_rep_333_3_lut_4_lut.init = 16'h8880;
    LUT4 i4678_2_lut_rep_323_3_lut_3_lut_4_lut (.A(n39585), .B(\min[7] ), 
         .C(n39391), .D(hundres_1__N_342[3]), .Z(n39361)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i4678_2_lut_rep_323_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i4721_3_lut_rep_353_4_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n39437), 
         .C(hundres_1__N_342[1]), .D(n39424), .Z(n39391)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4721_3_lut_rep_353_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4714_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n39437), 
         .C(hundres_1__N_342[1]), .D(n39424), .Z(hundres_1__N_343[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4714_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4637_2_lut_3_lut_3_lut_4_lut (.A(n39367), .B(\min[1] ), .C(hundres_0__N_352[1]), 
         .D(hundres_0__N_352[2]), .Z(\min_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4637_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4630_3_lut_4_lut (.A(n39367), .B(\min[1] ), .C(hundres_0__N_352[1]), 
         .D(hundres_0__N_352[2]), .Z(\min_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4630_3_lut_4_lut.init = 16'h998a;
    LUT4 i3405_3_lut_rep_378_4_lut (.A(hundres_1__N_341[1]), .B(n39437), 
         .C(hundres_1__N_342[1]), .D(n39424), .Z(n39416)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3405_3_lut_rep_378_4_lut.init = 16'hf666;
    LUT4 i4691_2_lut_rep_342_4_lut_4_lut_then_4_lut (.A(n39490), .B(\min[4] ), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n41000)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i4691_2_lut_rep_342_4_lut_4_lut_then_4_lut.init = 16'h9ffa;
    LUT4 i4614_2_lut_rep_547 (.A(\min[6] ), .B(\min[5] ), .Z(n39585)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4614_2_lut_rep_547.init = 16'heeee;
    LUT4 i3555_2_lut_rep_489_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(n39527)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3555_2_lut_rep_489_3_lut.init = 16'he0e0;
    LUT4 i14089_2_lut_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(hundres_1__N_341[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i14089_2_lut_3_lut.init = 16'h1010;
    LUT4 i4609_3_lut_4_lut_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(hundres_1__N_341[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4609_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i4601_2_lut_rep_452_3_lut_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(n39490)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4601_2_lut_rep_452_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i4691_2_lut_rep_342_4_lut_4_lut_else_4_lut (.A(n39490), .B(\min[4] ), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n40999)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4691_2_lut_rep_342_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i4712_2_lut_rep_386_3_lut (.A(\min[4] ), .B(n39467), .C(\min[3] ), 
         .Z(n39424)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4712_2_lut_rep_386_3_lut.init = 16'hf6f6;
    LUT4 i4707_3_lut_4_lut (.A(\min[4] ), .B(n39467), .C(\min[3] ), .D(n39416), 
         .Z(hundres_1__N_343[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4707_3_lut_4_lut.init = 16'h6966;
    LUT4 i1_3_lut_4_lut (.A(n39391), .B(n39371), .C(n9316), .D(\hundres_0__N_352[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    PFUMX i32696 (.BLUT(n40999), .ALUT(n41000), .C0(n39424), .Z(n41001));
    
endmodule
//
// Verilog Description of module BCD_U7
//

module BCD_U7 (\ds18b20_data[8] , \hundres_1__N_341[0] , \hundres_1__N_341[1] , 
            \ds18b20_data[7] , \ds18b20_data[6] , \cnt_main[0] , n8628, 
            n37838, \Tem_lower[3] , \Tem_high[0] , \ds18b20_data[5] , 
            \Tem_lower[1] , \Tem_high[2] , \Tem_lower[2] , n40989) /* synthesis syn_module_defined=1 */ ;
    input \ds18b20_data[8] ;
    input \hundres_1__N_341[0] ;
    input \hundres_1__N_341[1] ;
    input \ds18b20_data[7] ;
    input \ds18b20_data[6] ;
    input \cnt_main[0] ;
    input n8628;
    output n37838;
    output \Tem_lower[3] ;
    output \Tem_high[0] ;
    input \ds18b20_data[5] ;
    output \Tem_lower[1] ;
    output \Tem_high[2] ;
    output \Tem_lower[2] ;
    output n40989;
    
    
    wire n39501;
    wire [3:0]hundres_1__N_342;
    
    wire n39671, n39670, n39476, n39434, n39421;
    wire [3:0]hundres_0__N_352;
    
    wire n40988, n40987, n39389, n39368;
    wire [3:0]hundres_0__N_349;
    
    wire n39446;
    wire [3:0]hundres_1__N_343;
    
    wire n39422, n39402, n39388, n39672, n39401, n39608;
    
    LUT4 i4132_2_lut_rep_463_3_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_341[0] ), 
         .C(\hundres_1__N_341[1] ), .Z(n39501)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4132_2_lut_rep_463_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4055_2_lut_rep_376_4_lut_4_lut_then_4_lut (.A(n39501), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_342[1]), .D(hundres_1__N_342[2]), .Z(n39671)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4055_2_lut_rep_376_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i4055_2_lut_rep_376_4_lut_4_lut_else_4_lut (.A(n39501), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_342[1]), .D(hundres_1__N_342[2]), .Z(n39670)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4055_2_lut_rep_376_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i3448_2_lut_rep_396_3_lut (.A(\ds18b20_data[7] ), .B(n39476), .C(\ds18b20_data[6] ), 
         .Z(n39434)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3448_2_lut_rep_396_3_lut.init = 16'hf6f6;
    LUT4 i4063_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n39476), .C(\ds18b20_data[6] ), 
         .D(n39421), .Z(hundres_0__N_352[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4063_3_lut_4_lut.init = 16'h6966;
    LUT4 i4047_2_lut_rep_340_4_lut_4_lut_then_4_lut (.A(n39501), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_342[1]), .D(hundres_1__N_342[2]), .Z(n40988)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i4047_2_lut_rep_340_4_lut_4_lut_then_4_lut.init = 16'h9ffa;
    LUT4 i4047_2_lut_rep_340_4_lut_4_lut_else_4_lut (.A(n39501), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_342[1]), .D(hundres_1__N_342[2]), .Z(n40987)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4047_2_lut_rep_340_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i31238_3_lut_4_lut (.A(n39389), .B(n39368), .C(\cnt_main[0] ), 
         .D(n8628), .Z(n37838)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i31238_3_lut_4_lut.init = 16'h6f60;
    LUT4 i4126_3_lut_4_lut_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n39501), 
         .C(hundres_1__N_342[1]), .D(hundres_1__N_342[2]), .Z(hundres_0__N_349[0])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4126_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12603_2_lut_rep_408_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n39501), 
         .C(hundres_1__N_342[1]), .D(hundres_1__N_342[2]), .Z(n39446)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i12603_2_lut_rep_408_3_lut_4_lut.init = 16'heee0;
    LUT4 i3400_3_lut_rep_438 (.A(\ds18b20_data[7] ), .B(n39501), .C(hundres_1__N_342[1]), 
         .D(hundres_1__N_342[2]), .Z(n39476)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3400_3_lut_rep_438.init = 16'hffe0;
    LUT4 i4112_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n39501), .C(hundres_1__N_342[1]), 
         .D(hundres_1__N_342[2]), .Z(hundres_1__N_343[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4112_3_lut_4_lut.init = 16'h998c;
    LUT4 i4021_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_343[1]), .B(n39422), 
         .C(hundres_0__N_352[1]), .D(n39402), .Z(\Tem_lower[3] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4021_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3403_3_lut_rep_350_4_lut (.A(hundres_1__N_343[1]), .B(n39422), 
         .C(hundres_0__N_352[1]), .D(n39402), .Z(n39388)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3403_3_lut_rep_350_4_lut.init = 16'hf666;
    LUT4 i4028_3_lut_4_lut_3_lut_4_lut (.A(hundres_1__N_343[1]), .B(n39422), 
         .C(hundres_0__N_352[1]), .D(n39402), .Z(\Tem_high[0] )) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4028_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4006_2_lut_4_lut_4_lut (.A(n39672), .B(\ds18b20_data[5] ), .C(hundres_0__N_352[1]), 
         .D(n39401), .Z(\Tem_lower[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4006_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4042_3_lut_4_lut_3_lut_4_lut (.A(n39608), .B(\hundres_1__N_341[1] ), 
         .C(n39389), .D(hundres_0__N_349[0]), .Z(\Tem_high[2] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4042_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i3572_2_lut_rep_330_3_lut_4_lut (.A(n39608), .B(\hundres_1__N_341[1] ), 
         .C(n39389), .D(hundres_0__N_349[0]), .Z(n39368)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3572_2_lut_rep_330_3_lut_4_lut.init = 16'h8880;
    LUT4 i4014_3_lut_4_lut (.A(\ds18b20_data[6] ), .B(n39421), .C(\ds18b20_data[5] ), 
         .D(n39388), .Z(\Tem_lower[2] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4014_3_lut_4_lut.init = 16'h6966;
    LUT4 i4019_2_lut_rep_364_3_lut (.A(\ds18b20_data[6] ), .B(n39421), .C(\ds18b20_data[5] ), 
         .Z(n39402)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4019_2_lut_rep_364_3_lut.init = 16'hf6f6;
    LUT4 i4070_2_lut_rep_363_3_lut_3_lut_4_lut (.A(hundres_1__N_342[1]), .B(n39446), 
         .C(hundres_1__N_343[1]), .D(n39434), .Z(n39401)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4070_2_lut_rep_363_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3401_3_lut_rep_383_4_lut (.A(hundres_1__N_342[1]), .B(n39446), 
         .C(hundres_1__N_343[1]), .D(n39434), .Z(n39421)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3401_3_lut_rep_383_4_lut.init = 16'hf666;
    PFUMX i32688 (.BLUT(n40987), .ALUT(n40988), .C0(n39434), .Z(n40989));
    LUT4 i4077_3_lut_rep_351_4_lut_3_lut_4_lut (.A(hundres_1__N_342[1]), .B(n39446), 
         .C(hundres_1__N_343[1]), .D(n39434), .Z(n39389)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4077_3_lut_rep_351_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i11490_2_lut_rep_384_4_lut (.A(hundres_1__N_342[1]), .B(n39446), 
         .C(hundres_1__N_343[1]), .D(n39434), .Z(n39422)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i11490_2_lut_rep_384_4_lut.init = 16'hf600;
    PFUMX i31982 (.BLUT(n39670), .ALUT(n39671), .C0(\ds18b20_data[6] ), 
          .Z(n39672));
    LUT4 i3454_2_lut_rep_570 (.A(\ds18b20_data[8] ), .B(\hundres_1__N_341[0] ), 
         .Z(n39608)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3454_2_lut_rep_570.init = 16'heeee;
    LUT4 i4140_3_lut_4_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_341[0] ), 
         .C(\hundres_1__N_341[1] ), .Z(hundres_1__N_342[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4140_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i14145_2_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_341[0] ), 
         .C(\hundres_1__N_341[1] ), .Z(hundres_1__N_342[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i14145_2_lut_3_lut.init = 16'h1010;
    
endmodule
//
// Verilog Description of module BCD_U5
//

module BCD_U5 (\hour_warning[7] , n39362, \hundres_0__N_349[1] , \hundres_0__N_352[3] , 
            hundres_0__N_357, n9303, n4, \hour_warning[4] , \hour_warning[1] , 
            \hour_warning_ones[1] , \hour_warning_tens[0] , \hour_warning[3] , 
            \hour_warning_ones[3] , \hour_warning_ones[2] , \hour_warning[2] , 
            \hour_warning[5] , \hour_warning[6] ) /* synthesis syn_module_defined=1 */ ;
    input \hour_warning[7] ;
    output n39362;
    output \hundres_0__N_349[1] ;
    output \hundres_0__N_352[3] ;
    output hundres_0__N_357;
    input n9303;
    output n4;
    input \hour_warning[4] ;
    input \hour_warning[1] ;
    output \hour_warning_ones[1] ;
    output \hour_warning_tens[0] ;
    input \hour_warning[3] ;
    output \hour_warning_ones[3] ;
    output \hour_warning_ones[2] ;
    input \hour_warning[2] ;
    input \hour_warning[5] ;
    input \hour_warning[6] ;
    
    
    wire n39594, n39392;
    wire [3:0]hundres_1__N_342;
    
    wire n39372, n39676, n39677, n39496, n39410, n39535, n39354, 
        n40992;
    wire [3:0]hundres_1__N_341;
    
    wire n40991, n40990, n39376;
    wire [3:0]hundres_0__N_352;
    
    wire n39442, n39472;
    wire [3:0]hundres_1__N_343;
    
    wire n39430, n39419;
    
    LUT4 i4370_2_lut_rep_324_3_lut_3_lut_4_lut (.A(n39594), .B(\hour_warning[7] ), 
         .C(n39392), .D(hundres_1__N_342[3]), .Z(n39362)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i4370_2_lut_rep_324_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i4378_3_lut_4_lut_3_lut_4_lut (.A(n39594), .B(\hour_warning[7] ), 
         .C(n39392), .D(hundres_1__N_342[3]), .Z(\hundres_0__N_349[1] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4378_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i3546_2_lut_rep_334_3_lut_4_lut (.A(n39594), .B(\hour_warning[7] ), 
         .C(n39392), .D(hundres_1__N_342[3]), .Z(n39372)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3546_2_lut_rep_334_3_lut_4_lut.init = 16'h8880;
    PFUMX i31986 (.BLUT(n39676), .ALUT(n39677), .C0(n39496), .Z(n39410));
    LUT4 i3914_2_lut_rep_316_3_lut_4_lut_4_lut (.A(hundres_1__N_342[3]), .B(n39392), 
         .C(\hundres_0__N_352[3] ), .D(n39535), .Z(n39354)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i3914_2_lut_rep_316_3_lut_4_lut_4_lut.init = 16'hf2fc;
    LUT4 i3475_4_lut (.A(n39354), .B(n40992), .C(\hundres_0__N_349[1] ), 
         .D(n39535), .Z(hundres_0__N_357)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3475_4_lut.init = 16'hb3a0;
    LUT4 i1_3_lut_4_lut (.A(n39392), .B(n39372), .C(n9303), .D(\hundres_0__N_352[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i4383_2_lut_rep_343_4_lut_4_lut_then_4_lut (.A(\hour_warning[4] ), 
         .B(n39496), .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), 
         .Z(n40991)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i4383_2_lut_rep_343_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    LUT4 i4383_2_lut_rep_343_4_lut_4_lut_else_4_lut (.A(\hour_warning[4] ), 
         .B(n39496), .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), 
         .Z(n40990)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4383_2_lut_rep_343_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i4314_2_lut_4_lut_4_lut (.A(\hour_warning[1] ), .B(n39376), .C(hundres_0__N_352[1]), 
         .D(hundres_0__N_352[2]), .Z(\hour_warning_ones[1] )) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4314_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 i4336_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[1] ), .B(n39376), 
         .C(hundres_0__N_352[1]), .D(hundres_0__N_352[2]), .Z(\hour_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4336_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12596_2_lut_rep_404_3_lut_4_lut (.A(n39496), .B(\hour_warning[4] ), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n39442)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i12596_2_lut_rep_404_3_lut_4_lut.init = 16'heee0;
    LUT4 i4441_3_lut_4_lut_3_lut_4_lut (.A(n39496), .B(\hour_warning[4] ), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(hundres_1__N_342[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4441_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3381_3_lut_rep_434 (.A(n39496), .B(\hour_warning[4] ), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n39472)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3381_3_lut_rep_434.init = 16'hffe0;
    LUT4 i4427_3_lut_4_lut (.A(n39496), .B(\hour_warning[4] ), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_1__N_342[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4427_3_lut_4_lut.init = 16'h998a;
    LUT4 i4391_2_lut_rep_372_4_lut_4_lut_then_4_lut (.A(\hour_warning[3] ), 
         .B(\hour_warning[4] ), .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), 
         .Z(n39677)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4391_2_lut_rep_372_4_lut_4_lut_then_4_lut.init = 16'h2524;
    LUT4 i4329_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[1] ), .B(n39376), 
         .C(hundres_0__N_352[1]), .D(hundres_0__N_352[2]), .Z(\hour_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4329_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4322_3_lut_4_lut (.A(\hour_warning[1] ), .B(n39376), .C(hundres_0__N_352[1]), 
         .D(hundres_0__N_352[2]), .Z(\hour_warning_ones[2] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4322_3_lut_4_lut.init = 16'h998c;
    LUT4 i4391_2_lut_rep_372_4_lut_4_lut_else_4_lut (.A(\hour_warning[3] ), 
         .B(\hour_warning[4] ), .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), 
         .Z(n39676)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4391_2_lut_rep_372_4_lut_4_lut_else_4_lut.init = 16'h959a;
    LUT4 i4342_2_lut_rep_338_4_lut_4_lut (.A(\hour_warning[2] ), .B(n39410), 
         .C(hundres_1__N_343[1]), .D(hundres_1__N_343[2]), .Z(n39376)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4342_2_lut_rep_338_4_lut_4_lut.init = 16'h554a;
    LUT4 i4364_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n39410), 
         .C(hundres_1__N_343[1]), .D(hundres_1__N_343[2]), .Z(\hundres_0__N_352[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4364_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4357_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n39410), 
         .C(hundres_1__N_343[1]), .D(hundres_1__N_343[2]), .Z(hundres_0__N_352[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4357_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4350_3_lut_4_lut (.A(\hour_warning[2] ), .B(n39410), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(hundres_0__N_352[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4350_3_lut_4_lut.init = 16'h998c;
    LUT4 i4404_2_lut_rep_392_3_lut (.A(\hour_warning[4] ), .B(n39472), .C(\hour_warning[3] ), 
         .Z(n39430)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4404_2_lut_rep_392_3_lut.init = 16'hf6f6;
    LUT4 i4399_3_lut_4_lut (.A(\hour_warning[4] ), .B(n39472), .C(\hour_warning[3] ), 
         .D(n39419), .Z(hundres_1__N_343[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4399_3_lut_4_lut.init = 16'h6966;
    LUT4 i3384_3_lut_rep_381_4_lut (.A(hundres_1__N_341[1]), .B(n39442), 
         .C(hundres_1__N_342[1]), .D(n39430), .Z(n39419)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3384_3_lut_rep_381_4_lut.init = 16'hf666;
    LUT4 i4413_3_lut_rep_354_4_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n39442), 
         .C(hundres_1__N_342[1]), .D(n39430), .Z(n39392)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4413_3_lut_rep_354_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4406_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n39442), 
         .C(hundres_1__N_342[1]), .D(n39430), .Z(hundres_1__N_343[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4406_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3486_2_lut_rep_556 (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .Z(n39594)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3486_2_lut_rep_556.init = 16'heeee;
    LUT4 i3548_2_lut_rep_497_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n39535)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3548_2_lut_rep_497_3_lut.init = 16'he0e0;
    LUT4 i14151_2_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_341[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i14151_2_lut_3_lut.init = 16'h1010;
    LUT4 i4293_2_lut_rep_458_3_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n39496)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4293_2_lut_rep_458_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4301_3_lut_4_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_341[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4301_3_lut_4_lut_3_lut.init = 16'h8c8c;
    PFUMX i32690 (.BLUT(n40990), .ALUT(n40991), .C0(n39430), .Z(n40992));
    
endmodule
//
// Verilog Description of module BCD_U6
//

module BCD_U6 (\hour[4] , \hour[3] , \hour[2] , \hour[1] , \hundres_0__N_349[1] , 
            hundres_0__N_357, \hundres_0__N_352[3] , \hour[6] , \hour[5] , 
            n39632, \hour[7] , n9303, n4, \hour_ones[1] , \hour_tens[0] , 
            \hour_ones[3] , n39363, \hour_ones[2] ) /* synthesis syn_module_defined=1 */ ;
    input \hour[4] ;
    input \hour[3] ;
    input \hour[2] ;
    input \hour[1] ;
    output \hundres_0__N_349[1] ;
    output hundres_0__N_357;
    output \hundres_0__N_352[3] ;
    input \hour[6] ;
    input \hour[5] ;
    output n39632;
    input \hour[7] ;
    input n9303;
    output n4;
    output \hour_ones[1] ;
    output \hour_tens[0] ;
    output \hour_ones[3] ;
    output n39363;
    output \hour_ones[2] ;
    
    
    wire n39470, n39418;
    wire [3:0]hundres_1__N_343;
    
    wire n39428, n39396, n39365, n39493;
    wire [3:0]hundres_1__N_341;
    
    wire n40994, n39355, n40995, n39532;
    wire [3:0]hundres_1__N_342;
    
    wire n39393, n39683, n39682, n39373, n40993, n39440, n39407, 
        n39358, n39377;
    wire [3:0]hundres_0__N_352;
    
    wire n39374, n39357;
    
    LUT4 i4553_3_lut_4_lut (.A(\hour[4] ), .B(n39470), .C(\hour[3] ), 
         .D(n39418), .Z(hundres_1__N_343[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4553_3_lut_4_lut.init = 16'h6966;
    LUT4 i4558_2_lut_rep_390_3_lut (.A(\hour[4] ), .B(n39470), .C(\hour[3] ), 
         .Z(n39428)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4558_2_lut_rep_390_3_lut.init = 16'hf6f6;
    LUT4 i4481_2_lut_rep_327_3_lut (.A(\hour[2] ), .B(n39396), .C(\hour[1] ), 
         .Z(n39365)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4481_2_lut_rep_327_3_lut.init = 16'hf6f6;
    LUT4 i4537_2_lut_rep_344_4_lut_4_lut_then_4_lut (.A(n39493), .B(\hour[4] ), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n40994)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i4537_2_lut_rep_344_4_lut_4_lut_then_4_lut.init = 16'h9ffa;
    LUT4 i3490_4_lut (.A(n39355), .B(n40995), .C(\hundres_0__N_349[1] ), 
         .D(n39532), .Z(hundres_0__N_357)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3490_4_lut.init = 16'hb3a0;
    LUT4 i3942_2_lut_rep_317_3_lut_4_lut_4_lut (.A(hundres_1__N_342[3]), .B(n39393), 
         .C(\hundres_0__N_352[3] ), .D(n39532), .Z(n39355)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i3942_2_lut_rep_317_3_lut_4_lut_4_lut.init = 16'hf2fc;
    LUT4 i4545_2_lut_rep_369_4_lut_4_lut_then_4_lut (.A(\hour[3] ), .B(n39493), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n39683)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4545_2_lut_rep_369_4_lut_4_lut_then_4_lut.init = 16'h2526;
    LUT4 i4545_2_lut_rep_369_4_lut_4_lut_else_4_lut (.A(\hour[3] ), .B(n39493), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n39682)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4545_2_lut_rep_369_4_lut_4_lut_else_4_lut.init = 16'h9592;
    LUT4 i4460_2_lut_rep_594 (.A(\hour[6] ), .B(\hour[5] ), .Z(n39632)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4460_2_lut_rep_594.init = 16'heeee;
    LUT4 i4455_3_lut_4_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(hundres_1__N_341[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4455_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i3545_2_lut_rep_494_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(n39532)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3545_2_lut_rep_494_3_lut.init = 16'he0e0;
    LUT4 i14098_2_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(hundres_1__N_341[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i14098_2_lut_3_lut.init = 16'h1010;
    LUT4 i4447_2_lut_rep_455_3_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), 
         .C(\hour[7] ), .Z(n39493)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4447_2_lut_rep_455_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i1_3_lut_4_lut (.A(n39393), .B(n39373), .C(n9303), .D(\hundres_0__N_352[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i4537_2_lut_rep_344_4_lut_4_lut_else_4_lut (.A(n39493), .B(\hour[4] ), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n40993)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4537_2_lut_rep_344_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i11529_2_lut_rep_402_3_lut_4_lut (.A(\hour[4] ), .B(n39493), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n39440)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i11529_2_lut_rep_402_3_lut_4_lut.init = 16'heee0;
    LUT4 i4595_3_lut_4_lut_3_lut_4_lut (.A(\hour[4] ), .B(n39493), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_1__N_342[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4595_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3408_3_lut_rep_432 (.A(\hour[4] ), .B(n39493), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n39470)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3408_3_lut_rep_432.init = 16'hffe0;
    LUT4 i4581_3_lut_4_lut (.A(\hour[4] ), .B(n39493), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_1__N_342[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4581_3_lut_4_lut.init = 16'h998c;
    LUT4 i4511_2_lut_rep_320_3_lut_3_lut_4_lut (.A(n39407), .B(\hour[2] ), 
         .C(hundres_1__N_343[1]), .D(hundres_1__N_343[2]), .Z(n39358)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4511_2_lut_rep_320_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4518_3_lut_4_lut_3_lut_4_lut (.A(n39407), .B(\hour[2] ), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(\hundres_0__N_352[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4518_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4496_2_lut_rep_339_4_lut_4_lut (.A(n39407), .B(\hour[2] ), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(n39377)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4496_2_lut_rep_339_4_lut_4_lut.init = 16'h332c;
    LUT4 i4468_2_lut_4_lut_4_lut (.A(n39377), .B(\hour[1] ), .C(hundres_0__N_352[1]), 
         .D(n39358), .Z(\hour_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4468_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i12588_2_lut_rep_336_3_lut_4_lut (.A(n39407), .B(\hour[2] ), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(n39374)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i12588_2_lut_rep_336_3_lut_4_lut.init = 16'heee0;
    LUT4 i3411_3_lut_rep_358 (.A(n39407), .B(\hour[2] ), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(n39396)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3411_3_lut_rep_358.init = 16'hffe0;
    LUT4 i4504_3_lut_4_lut (.A(n39407), .B(\hour[2] ), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(hundres_0__N_352[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4504_3_lut_4_lut.init = 16'h998a;
    LUT4 i4490_3_lut_4_lut_3_lut_4_lut (.A(hundres_1__N_343[1]), .B(n39374), 
         .C(hundres_0__N_352[1]), .D(n39365), .Z(\hour_tens[0] )) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4490_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3412_3_lut_rep_319_4_lut (.A(hundres_1__N_343[1]), .B(n39374), 
         .C(hundres_0__N_352[1]), .D(n39365), .Z(n39357)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3412_3_lut_rep_319_4_lut.init = 16'hf666;
    LUT4 i4483_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_343[1]), .B(n39374), 
         .C(hundres_0__N_352[1]), .D(n39365), .Z(\hour_ones[3] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4483_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    PFUMX i31990 (.BLUT(n39682), .ALUT(n39683), .C0(\hour[4] ), .Z(n39407));
    LUT4 i4524_2_lut_rep_325_3_lut_3_lut_4_lut (.A(n39632), .B(\hour[7] ), 
         .C(n39393), .D(hundres_1__N_342[3]), .Z(n39363)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i4524_2_lut_rep_325_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i3556_2_lut_rep_335_3_lut_4_lut (.A(n39632), .B(\hour[7] ), .C(n39393), 
         .D(hundres_1__N_342[3]), .Z(n39373)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3556_2_lut_rep_335_3_lut_4_lut.init = 16'h8880;
    LUT4 i4532_3_lut_4_lut_3_lut_4_lut (.A(n39632), .B(\hour[7] ), .C(n39393), 
         .D(hundres_1__N_342[3]), .Z(\hundres_0__N_349[1] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4532_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    PFUMX i32692 (.BLUT(n40993), .ALUT(n40994), .C0(n39428), .Z(n40995));
    LUT4 i3409_3_lut_rep_380_4_lut (.A(hundres_1__N_341[1]), .B(n39440), 
         .C(hundres_1__N_342[1]), .D(n39428), .Z(n39418)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3409_3_lut_rep_380_4_lut.init = 16'hf666;
    LUT4 i4567_3_lut_rep_355_4_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n39440), 
         .C(hundres_1__N_342[1]), .D(n39428), .Z(n39393)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4567_3_lut_rep_355_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4560_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n39440), 
         .C(hundres_1__N_342[1]), .D(n39428), .Z(hundres_1__N_343[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4560_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4476_3_lut_4_lut (.A(\hour[2] ), .B(n39396), .C(\hour[1] ), 
         .D(n39357), .Z(\hour_ones[2] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4476_3_lut_4_lut.init = 16'h6966;
    
endmodule
//
// Verilog Description of module BCD_U3
//

module BCD_U3 (\min_warning[1] , \min_warning_ones[2] , \hundres_0__N_352[3] , 
            hundres_0__N_357, n9316, n9602, \min_warning[4] , \min_warning[3] , 
            \min_warning[2] , \min_warning_ones[1] , \min_warning_tens[0] , 
            \min_warning[7] , \min_warning_ones[3] , n4, \min_warning[5] , 
            \min_warning[6] ) /* synthesis syn_module_defined=1 */ ;
    input \min_warning[1] ;
    output \min_warning_ones[2] ;
    output \hundres_0__N_352[3] ;
    output hundres_0__N_357;
    input n9316;
    output n9602;
    input \min_warning[4] ;
    input \min_warning[3] ;
    input \min_warning[2] ;
    output \min_warning_ones[1] ;
    output \min_warning_tens[0] ;
    input \min_warning[7] ;
    output \min_warning_ones[3] ;
    output n4;
    input \min_warning[5] ;
    input \min_warning[6] ;
    
    
    wire n39366;
    wire [3:0]hundres_0__N_352;
    
    wire n40996, n40997, n39426, n40998, n39390;
    wire [3:0]hundres_1__N_342;
    
    wire n39529, n39352;
    wire [3:0]hundres_0__N_349;
    
    wire n39360, n39492;
    wire [3:0]hundres_1__N_341;
    
    wire n39439, n39468, n39686, n39685, n39406;
    wire [3:0]hundres_1__N_343;
    
    wire n39589, n39370, n39417;
    
    LUT4 i4168_3_lut_4_lut (.A(n39366), .B(\min_warning[1] ), .C(hundres_0__N_352[1]), 
         .D(hundres_0__N_352[2]), .Z(\min_warning_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4168_3_lut_4_lut.init = 16'h998a;
    PFUMX i32694 (.BLUT(n40996), .ALUT(n40997), .C0(n39426), .Z(n40998));
    LUT4 i3461_2_lut_rep_314_3_lut_4_lut_4_lut (.A(n39390), .B(hundres_1__N_342[3]), 
         .C(\hundres_0__N_352[3] ), .D(n39529), .Z(n39352)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i3461_2_lut_rep_314_3_lut_4_lut_4_lut.init = 16'hf4fa;
    LUT4 i3460_4_lut (.A(n39352), .B(n40998), .C(hundres_0__N_349[1]), 
         .D(n39529), .Z(hundres_0__N_357)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3460_4_lut.init = 16'hb3a0;
    LUT4 i3972_3_lut_4_lut (.A(\hundres_0__N_352[3] ), .B(n39360), .C(n9316), 
         .D(hundres_0__N_349[1]), .Z(n9602)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i3972_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4287_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[4] ), .B(n39492), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(hundres_1__N_342[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4287_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12613_2_lut_rep_401_3_lut_4_lut (.A(\min_warning[4] ), .B(n39492), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n39439)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i12613_2_lut_rep_401_3_lut_4_lut.init = 16'heee0;
    LUT4 i3390_3_lut_rep_430 (.A(\min_warning[4] ), .B(n39492), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n39468)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3390_3_lut_rep_430.init = 16'hffe0;
    LUT4 i4273_3_lut_4_lut (.A(\min_warning[4] ), .B(n39492), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_1__N_342[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4273_3_lut_4_lut.init = 16'h998c;
    LUT4 i3465_2_lut_rep_341_4_lut_4_lut_then_4_lut (.A(n39492), .B(\min_warning[4] ), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n40997)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i3465_2_lut_rep_341_4_lut_4_lut_then_4_lut.init = 16'h9ffa;
    LUT4 i3465_2_lut_rep_341_4_lut_4_lut_else_4_lut (.A(n39492), .B(\min_warning[4] ), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n40996)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i3465_2_lut_rep_341_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i4237_2_lut_rep_368_4_lut_4_lut_then_4_lut (.A(n39492), .B(\min_warning[4] ), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n39686)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4237_2_lut_rep_368_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i4237_2_lut_rep_368_4_lut_4_lut_else_4_lut (.A(n39492), .B(\min_warning[4] ), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n39685)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4237_2_lut_rep_368_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    PFUMX i31992 (.BLUT(n39685), .ALUT(n39686), .C0(\min_warning[3] ), 
          .Z(n39406));
    LUT4 i4188_2_lut_rep_328_4_lut_4_lut (.A(\min_warning[2] ), .B(n39406), 
         .C(hundres_1__N_343[1]), .D(hundres_1__N_343[2]), .Z(n39366)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4188_2_lut_rep_328_4_lut_4_lut.init = 16'h554a;
    LUT4 i4203_2_lut_3_lut_3_lut_4_lut (.A(\min_warning[2] ), .B(n39406), 
         .C(hundres_1__N_343[1]), .D(hundres_1__N_343[2]), .Z(hundres_0__N_352[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4203_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4210_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[2] ), .B(n39406), 
         .C(hundres_1__N_343[1]), .D(hundres_1__N_343[2]), .Z(\hundres_0__N_352[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4210_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4196_3_lut_4_lut (.A(\min_warning[2] ), .B(n39406), .C(hundres_1__N_343[1]), 
         .D(hundres_1__N_343[2]), .Z(hundres_0__N_352[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4196_3_lut_4_lut.init = 16'h998c;
    LUT4 i4160_2_lut_4_lut_4_lut (.A(n39366), .B(\min_warning[1] ), .C(hundres_0__N_352[1]), 
         .D(hundres_0__N_352[2]), .Z(\min_warning_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4160_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4182_3_lut_4_lut_3_lut_4_lut (.A(n39366), .B(\min_warning[1] ), 
         .C(hundres_0__N_352[1]), .D(hundres_0__N_352[2]), .Z(\min_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4182_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4216_2_lut_rep_322_3_lut_3_lut_4_lut (.A(n39589), .B(\min_warning[7] ), 
         .C(hundres_1__N_342[3]), .D(n39390), .Z(n39360)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4216_2_lut_rep_322_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4224_3_lut_4_lut_3_lut_4_lut (.A(n39589), .B(\min_warning[7] ), 
         .C(hundres_1__N_342[3]), .D(n39390), .Z(hundres_0__N_349[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4224_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i3550_2_lut_rep_332_3_lut_4_lut (.A(n39589), .B(\min_warning[7] ), 
         .C(hundres_1__N_342[3]), .D(n39390), .Z(n39370)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3550_2_lut_rep_332_3_lut_4_lut.init = 16'h8880;
    LUT4 i4175_2_lut_3_lut_3_lut_4_lut (.A(n39366), .B(\min_warning[1] ), 
         .C(hundres_0__N_352[1]), .D(hundres_0__N_352[2]), .Z(\min_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4175_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i3392_3_lut_rep_379_4_lut (.A(hundres_1__N_341[1]), .B(n39439), 
         .C(hundres_1__N_342[1]), .D(n39426), .Z(n39417)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3392_3_lut_rep_379_4_lut.init = 16'hf666;
    LUT4 i4252_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n39439), 
         .C(hundres_1__N_342[1]), .D(n39426), .Z(hundres_1__N_343[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4252_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4259_3_lut_rep_352_4_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n39439), 
         .C(hundres_1__N_342[1]), .D(n39426), .Z(n39390)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4259_3_lut_rep_352_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1_3_lut_4_lut (.A(n39390), .B(n39370), .C(n9316), .D(\hundres_0__N_352[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i3471_2_lut_rep_551 (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .Z(n39589)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3471_2_lut_rep_551.init = 16'heeee;
    LUT4 i3553_2_lut_rep_491_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(n39529)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3553_2_lut_rep_491_3_lut.init = 16'he0e0;
    LUT4 i14153_2_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_341[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i14153_2_lut_3_lut.init = 16'h1010;
    LUT4 i4091_3_lut_4_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_341[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4091_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4083_2_lut_rep_454_3_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(n39492)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4083_2_lut_rep_454_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i3467_2_lut_rep_388_3_lut (.A(\min_warning[4] ), .B(n39468), .C(\min_warning[3] ), 
         .Z(n39426)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3467_2_lut_rep_388_3_lut.init = 16'hf6f6;
    LUT4 i4245_3_lut_4_lut (.A(\min_warning[4] ), .B(n39468), .C(\min_warning[3] ), 
         .D(n39417), .Z(hundres_1__N_343[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4245_3_lut_4_lut.init = 16'h6966;
    
endmodule
//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  (sys_clk_c, sys_clk_c_enable_106, 
            n39537, n39471, rx_flag, uart_recv_done, uart_rxd_c, uart_recv_data, 
            GND_net, n31) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_clk_c_enable_106;
    output n39537;
    output n39471;
    output rx_flag;
    output uart_recv_done;
    input uart_rxd_c;
    output [7:0]uart_recv_data;
    input GND_net;
    output n31;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire [7:0]rxdata;   // d:/new porject/top-xu/uart_recv.v(43[12:18])
    
    wire n9697, n20685;
    wire [15:0]n2010;
    
    wire n39591, n37301, n37292, uart_rxd_d1, uart_rxd_d0, n21586, 
        uart_data_7__N_1492;
    wire [15:0]clk_cnt;   // d:/new porject/top-xu/uart_recv.v(40[12:19])
    
    wire n21813;
    wire [15:0]n69;
    
    wire n21809, sys_clk_c_enable_206, n20563, n4, n20659, n20662, 
        n20665, n20668, n20679, n20673, n20676, n39577, n36972, 
        n39494, n37322, n37321, n39498, n37309, n37310, n34309, 
        n34308, n37289, n34307, n37304, n34306, n34305, n34304, 
        n34303, n34302, n39534, n39598, n34532, rx_flag_N_1493, 
        n6, n15, n14;
    
    FD1P3IX rxdata__i0 (.D(n20685), .SP(sys_clk_c_enable_106), .CD(n9697), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2010[2]), .B(n39591), .C(n39537), .D(n2010[5]), 
         .Z(n37301)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_433_3_lut_4_lut (.A(n2010[2]), .B(n39591), .C(n2010[4]), 
         .D(n2010[5]), .Z(n39471)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_433_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_211 (.A(n2010[2]), .B(n39591), .C(n39537), 
         .D(n2010[4]), .Z(n37292)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_211.init = 16'hfffe;
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n21586), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_1492), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i0.GSR = "ENABLED";
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n21809), 
            .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    FD1P3JX rx_cnt_FSM_i0 (.D(n2010[15]), .SP(sys_clk_c_enable_206), .PD(n9697), 
            .CK(sys_clk_c), .Q(n2010[0]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i31319_4_lut (.A(rx_flag), .B(clk_cnt[6]), .C(n20563), .D(n4), 
         .Z(n21813)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/new porject/top-xu/uart_recv.v(92[9:26])
    defparam i31319_4_lut.init = 16'hfdf5;
    FD1P3IX rxdata__i1 (.D(n20659), .SP(sys_clk_c_enable_106), .CD(n9697), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n20662), .SP(sys_clk_c_enable_106), .CD(n9697), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n20665), .SP(sys_clk_c_enable_106), .CD(n9697), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n20668), .SP(sys_clk_c_enable_106), .CD(n9697), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n20679), .SP(sys_clk_c_enable_106), .CD(n9697), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i6 (.D(n20673), .SP(sys_clk_c_enable_106), .CD(n9697), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i7 (.D(n20676), .SP(sys_clk_c_enable_106), .CD(n9697), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n21809), 
            .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n21809), 
            .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n21809), 
            .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n21809), 
            .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n21809), 
            .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n21809), 
            .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n21809), 
            .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=408, LSE_RLINE=415 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i15 (.D(n2010[14]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[15]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i14 (.D(n2010[13]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[14]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n2010[12]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[13]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n2010[11]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[12]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n2010[10]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[11]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_1492), .SP(sys_clk_c_enable_206), 
            .CD(n9697), .CK(sys_clk_c), .Q(n2010[10]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n2010[8]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(uart_data_7__N_1492));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n2010[7]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[8]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n2010[6]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[7]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n2010[5]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[6]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n2010[4]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[5]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n2010[3]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[4]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n2010[2]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[3]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n2010[1]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[2]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n2010[0]), .SP(sys_clk_c_enable_206), .CD(n9697), 
            .CK(sys_clk_c), .Q(n2010[1]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_3005__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n21813), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005__i1.GSR = "ENABLED";
    LUT4 i15186_1_lut (.A(uart_data_7__N_1492), .Z(n21809)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam i15186_1_lut.init = 16'h5555;
    LUT4 i31413_4_lut (.A(clk_cnt[6]), .B(clk_cnt[4]), .C(n39577), .D(n36972), 
         .Z(sys_clk_c_enable_206)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i31413_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_212 (.A(n2010[4]), .B(n39494), .C(n2010[6]), 
         .D(n2010[8]), .Z(n37322)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_212.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_213 (.A(n2010[4]), .B(n39494), .C(n2010[7]), 
         .D(n2010[8]), .Z(n37321)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_213.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_214 (.A(n2010[5]), .B(n39498), .C(n2010[3]), 
         .D(n2010[2]), .Z(n37309)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_214.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_215 (.A(n2010[5]), .B(n39498), .C(n2010[1]), 
         .D(n2010[2]), .Z(n37310)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_215.init = 16'hfffe;
    CCU2D clk_cnt_3005_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34309), .S0(n69[15]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_3005_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_3005_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_3005_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34308), .COUT(n34309), .S0(n69[13]), .S1(n69[14]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_3005_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[1]), .C(n2010[2]), .D(n37289), 
         .Z(n20659)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_216 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n2010[3]), 
         .D(n37310), .Z(n20662)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_216.init = 16'heca0;
    LUT4 i1_4_lut_adj_217 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n2010[4]), 
         .D(n37301), .Z(n20665)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_217.init = 16'heca0;
    LUT4 i1_4_lut_adj_218 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n2010[5]), 
         .D(n37292), .Z(n20668)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_218.init = 16'heca0;
    LUT4 i1_4_lut_adj_219 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n2010[6]), 
         .D(n37321), .Z(n20679)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_219.init = 16'heca0;
    CCU2D clk_cnt_3005_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34307), .COUT(n34308), .S0(n69[11]), .S1(n69[12]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_3005_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_220 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n2010[7]), 
         .D(n37322), .Z(n20673)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_220.init = 16'heca0;
    LUT4 i1_4_lut_adj_221 (.A(uart_rxd_d1), .B(rxdata[7]), .C(n2010[8]), 
         .D(n37304), .Z(n20676)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_221.init = 16'heca0;
    CCU2D clk_cnt_3005_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34306), .COUT(n34307), .S0(n69[9]), .S1(n69[10]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_3005_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_3005_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34305), .COUT(n34306), .S0(n69[7]), .S1(n69[8]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_3005_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_3005_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34304), .COUT(n34305), .S0(n69[5]), .S1(n69[6]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_3005_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_3005_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34303), .COUT(n34304), .S0(n69[3]), .S1(n69[4]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_3005_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_3005_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34302), .COUT(n34303), .S0(n69[1]), .S1(n69[2]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_3005_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_3005_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_3005_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n34302), .S1(n69[0]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3005_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_3005_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_3005_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_3005_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_222 (.A(n2010[5]), .B(n39534), .C(n39598), 
         .D(n2010[4]), .Z(n37304)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_222.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_223 (.A(n2010[4]), .B(n39537), .C(n39591), 
         .D(n2010[5]), .Z(n37289)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_223.init = 16'hfffe;
    LUT4 i1_4_lut_adj_224 (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n34532), 
         .D(clk_cnt[3]), .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_224.init = 16'hccc8;
    LUT4 i14966_4_lut (.A(uart_data_7__N_1492), .B(rx_flag_N_1493), .C(rx_flag), 
         .D(n31), .Z(n21586)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(70[10] 78[8])
    defparam i14966_4_lut.init = 16'hfcdc;
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_1493)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    LUT4 i3233_1_lut (.A(rx_flag), .Z(n9697)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/uart_recv.v(70[10] 78[8])
    defparam i3233_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_225 (.A(uart_rxd_d1), .B(rxdata[0]), .C(n2010[1]), 
         .D(n37309), .Z(n20685)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_225.init = 16'heca0;
    LUT4 i4_4_lut (.A(clk_cnt[0]), .B(n36972), .C(clk_cnt[4]), .D(n6), 
         .Z(n31)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i4_4_lut.init = 16'hffef;
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(clk_cnt[2]), .B(n20563), .C(clk_cnt[5]), .D(clk_cnt[3]), 
         .Z(n36972)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i30748_2_lut_rep_539 (.A(clk_cnt[0]), .B(clk_cnt[1]), .Z(n39577)) /* synthesis lut_function=(A (B)) */ ;
    defparam i30748_2_lut_rep_539.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(clk_cnt[0]), .B(clk_cnt[1]), .C(clk_cnt[2]), 
         .Z(n34532)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[15]), .C(n14), .D(clk_cnt[14]), 
         .Z(n20563)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[8]), .B(clk_cnt[9]), .C(clk_cnt[10]), .D(clk_cnt[11]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_553 (.A(n2010[1]), .B(n2010[3]), .Z(n39591)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_553.init = 16'heeee;
    LUT4 i1_2_lut_rep_496_3_lut (.A(n2010[1]), .B(n2010[3]), .C(n2010[2]), 
         .Z(n39534)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_496_3_lut.init = 16'hfefe;
    LUT4 i5_3_lut (.A(clk_cnt[7]), .B(clk_cnt[12]), .C(clk_cnt[13]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_456_3_lut_4_lut (.A(n2010[1]), .B(n2010[3]), .C(n2010[5]), 
         .D(n2010[2]), .Z(n39494)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_456_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_560 (.A(n2010[6]), .B(n2010[7]), .Z(n39598)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_560.init = 16'heeee;
    LUT4 i1_2_lut_rep_499_3_lut (.A(n2010[6]), .B(n2010[7]), .C(n2010[8]), 
         .Z(n39537)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_499_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_460_3_lut_4_lut (.A(n2010[6]), .B(n2010[7]), .C(n2010[4]), 
         .D(n2010[8]), .Z(n39498)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_460_3_lut_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Beeper
//

module Beeper (GND_net, beep_c, sys_clk_c, \music_tone[4] , \music_tone[3] , 
            \music_tone[1] , \music_tone[2] , \music_tone[0] , sw2_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output beep_c;
    input sys_clk_c;
    input \music_tone[4] ;
    input \music_tone[3] ;
    input \music_tone[1] ;
    input \music_tone[2] ;
    input \music_tone[0] ;
    input sw2_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire n34200;
    wire [17:0]time_cnt;   // d:/new porject/top-xu/beep.v(65[12:20])
    wire [17:0]n5568;
    
    wire n5587, n34199;
    wire [15:0]time_end;   // d:/new porject/top-xu/beep.v(31[12:20])
    
    wire n34198, n34197, piano_out_N_1539, n39215, n39214, n34196, 
        n34192, n3648;
    wire [17:0]n77;
    
    wire n34195, n34194, n34193, n39089, n39088, n39704, n39703, 
        n39707, n39706, n39710, n39709, n39716, n39715, n39719, 
        n39718, n39728, n39727, n39734, n39733, n39737, n39736, 
        n39740, n39739, n41003, n38995, n41002, n38994, n34318, 
        n34317, n34316, n34315, n34314, n34313, n38716, n38717, 
        n38827, n38826, n34312, n34311, n34310, n39680, n29, n34, 
        n30, n31, n28, n39679;
    
    CCU2D add_1891_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34200), .S0(n5568[17]), .S1(n5587));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1891_19.INIT0 = 16'h5555;
    defparam add_1891_19.INIT1 = 16'h0000;
    defparam add_1891_19.INJECT1_0 = "NO";
    defparam add_1891_19.INJECT1_1 = "NO";
    CCU2D add_1891_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34199), .COUT(n34200), .S0(n5568[15]), 
          .S1(n5568[16]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1891_17.INIT0 = 16'h5999;
    defparam add_1891_17.INIT1 = 16'h5555;
    defparam add_1891_17.INJECT1_0 = "NO";
    defparam add_1891_17.INJECT1_1 = "NO";
    CCU2D add_1891_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34198), .COUT(n34199), .S0(n5568[13]), 
          .S1(n5568[14]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1891_15.INIT0 = 16'h5999;
    defparam add_1891_15.INIT1 = 16'h5999;
    defparam add_1891_15.INJECT1_0 = "NO";
    defparam add_1891_15.INJECT1_1 = "NO";
    CCU2D add_1891_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34197), .COUT(n34198), .S0(n5568[11]), 
          .S1(n5568[12]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1891_13.INIT0 = 16'h5999;
    defparam add_1891_13.INIT1 = 16'h5999;
    defparam add_1891_13.INJECT1_0 = "NO";
    defparam add_1891_13.INJECT1_1 = "NO";
    FD1S3AX piano_out_20 (.D(piano_out_N_1539), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=423 */ ;   // d:/new porject/top-xu/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    PFUMX i31900 (.BLUT(n39215), .ALUT(n39214), .C0(\music_tone[4] ), 
          .Z(time_end[10]));
    CCU2D add_1891_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34196), .COUT(n34197), .S0(n5568[9]), 
          .S1(n5568[10]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1891_11.INIT0 = 16'h5999;
    defparam add_1891_11.INIT1 = 16'h5999;
    defparam add_1891_11.INJECT1_0 = "NO";
    defparam add_1891_11.INJECT1_1 = "NO";
    CCU2D add_1891_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n34192), .S1(n5568[0]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1891_1.INIT0 = 16'h0000;
    defparam add_1891_1.INIT1 = 16'h5999;
    defparam add_1891_1.INJECT1_0 = "NO";
    defparam add_1891_1.INJECT1_1 = "NO";
    FD1S3IX time_cnt_3006__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i0.GSR = "ENABLED";
    CCU2D add_1891_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34195), .COUT(n34196), .S0(n5568[7]), 
          .S1(n5568[8]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1891_9.INIT0 = 16'h5999;
    defparam add_1891_9.INIT1 = 16'h5999;
    defparam add_1891_9.INJECT1_0 = "NO";
    defparam add_1891_9.INJECT1_1 = "NO";
    CCU2D add_1891_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34194), .COUT(n34195), .S0(n5568[5]), 
          .S1(n5568[6]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1891_7.INIT0 = 16'h5999;
    defparam add_1891_7.INIT1 = 16'h5999;
    defparam add_1891_7.INJECT1_0 = "NO";
    defparam add_1891_7.INJECT1_1 = "NO";
    CCU2D add_1891_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34193), .COUT(n34194), .S0(n5568[3]), 
          .S1(n5568[4]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1891_5.INIT0 = 16'h5999;
    defparam add_1891_5.INIT1 = 16'h5999;
    defparam add_1891_5.INJECT1_0 = "NO";
    defparam add_1891_5.INJECT1_1 = "NO";
    PFUMX i31810 (.BLUT(n39089), .ALUT(n39088), .C0(\music_tone[4] ), 
          .Z(time_end[3]));
    CCU2D add_1891_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34192), .COUT(n34193), .S0(n5568[1]), 
          .S1(n5568[2]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1891_3.INIT0 = 16'h5999;
    defparam add_1891_3.INIT1 = 16'h5999;
    defparam add_1891_3.INJECT1_0 = "NO";
    defparam add_1891_3.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n39704)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+(D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_then_4_lut.init = 16'ha899;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n39703)) /* synthesis lut_function=(A (B)+!A !(B+(C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_else_4_lut.init = 16'h8999;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n39707)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(C (D)+!C !(D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_then_4_lut.init = 16'hadf0;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n39706)) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_else_4_lut.init = 16'ha4f1;
    LUT4 tone_4__I_0_Mux_11_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n39710)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_then_4_lut.init = 16'hfe71;
    LUT4 tone_4__I_0_Mux_11_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n39709)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_else_4_lut.init = 16'hba27;
    FD1S3IX time_cnt_3006__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i17.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_3006__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n3648), 
            .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006__i1.GSR = "ENABLED";
    LUT4 tone_4__I_0_Mux_6_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[1] ), .D(\music_tone[4] ), .Z(n39716)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B+(D))) */ ;
    defparam tone_4__I_0_Mux_6_i31_then_4_lut.init = 16'hffc6;
    LUT4 tone_4__I_0_Mux_6_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[1] ), .D(\music_tone[4] ), .Z(n39715)) /* synthesis lut_function=(A ((D)+!C)+!A !(B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_6_i31_else_4_lut.init = 16'hbf5b;
    LUT4 tone_4__I_0_Mux_12_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[2] ), 
         .C(\music_tone[0] ), .D(\music_tone[3] ), .Z(n39719)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B ((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_12_i31_then_4_lut.init = 16'hee86;
    LUT4 tone_4__I_0_Mux_12_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[2] ), 
         .C(\music_tone[0] ), .D(\music_tone[3] ), .Z(n39718)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C+(D))+!B !(D))) */ ;
    defparam tone_4__I_0_Mux_12_i31_else_4_lut.init = 16'hee73;
    LUT4 i31379_4_lut_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n39728)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i31379_4_lut_then_4_lut.init = 16'hfcaa;
    LUT4 i31379_4_lut_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n39727)) /* synthesis lut_function=(A (B+(C))+!A !(B+(D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i31379_4_lut_else_4_lut.init = 16'ha8b9;
    LUT4 i31377_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n39734)) /* synthesis lut_function=(A (B+(D))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i31377_4_lut_then_4_lut.init = 16'hafcc;
    LUT4 i31377_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n39733)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i31377_4_lut_else_4_lut.init = 16'hefff;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n39737)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_then_4_lut.init = 16'hffbc;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n39736)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C)+!B !(C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_else_4_lut.init = 16'hc9db;
    LUT4 n38453_bdd_3_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n39740)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C+(D)))) */ ;
    defparam n38453_bdd_3_lut_then_4_lut.init = 16'hee62;
    LUT4 n38453_bdd_3_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n39739)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A ((D)+!B)) */ ;
    defparam n38453_bdd_3_lut_else_4_lut.init = 16'hfd13;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n41003)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_then_4_lut.init = 16'he0c0;
    LUT4 music_tone_1__bdd_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38995)) /* synthesis lut_function=(!(A (C (D))+!A !(B+(C+!(D))))) */ ;
    defparam music_tone_1__bdd_4_lut_4_lut.init = 16'h5eff;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n41002)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_else_4_lut.init = 16'hc0c1;
    PFUMX i31757 (.BLUT(n38995), .ALUT(n38994), .C0(\music_tone[4] ), 
          .Z(time_end[8]));
    LUT4 i1193_2_lut (.A(n5587), .B(sw2_c), .Z(n3648)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/beep.v(72[11] 76[5])
    defparam i1193_2_lut.init = 16'hbbbb;
    CCU2D time_cnt_3006_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34318), .S0(n77[17]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_3006_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_3006_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_3006_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_3006_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34317), .COUT(n34318), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_3006_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_3006_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_3006_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_3006_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34316), .COUT(n34317), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_3006_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_3006_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_3006_add_4_15.INJECT1_1 = "NO";
    CCU2D time_cnt_3006_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34315), .COUT(n34316), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_3006_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_3006_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_3006_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_3006_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34314), .COUT(n34315), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_3006_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_3006_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_3006_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_3006_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34313), .COUT(n34314), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_3006_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_3006_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_3006_add_4_9.INJECT1_1 = "NO";
    LUT4 music_tone_0__bdd_4_lut_31609_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38716)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+!(D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam music_tone_0__bdd_4_lut_31609_4_lut.init = 16'hf8f5;
    LUT4 music_tone_0__bdd_4_lut_31764 (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38717)) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;
    defparam music_tone_0__bdd_4_lut_31764.init = 16'h02cb;
    PFUMX i31672 (.BLUT(n38827), .ALUT(n38826), .C0(\music_tone[3] ), 
          .Z(time_end[0]));
    CCU2D time_cnt_3006_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34312), .COUT(n34313), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_3006_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_3006_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_3006_add_4_7.INJECT1_1 = "NO";
    CCU2D time_cnt_3006_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34311), .COUT(n34312), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_3006_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_3006_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_3006_add_4_5.INJECT1_1 = "NO";
    CCU2D time_cnt_3006_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34310), .COUT(n34311), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_3006_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_3006_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_3006_add_4_3.INJECT1_1 = "NO";
    CCU2D time_cnt_3006_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n34310), .S1(n77[0]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3006_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_3006_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_3006_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_3006_add_4_1.INJECT1_1 = "NO";
    LUT4 n6_bdd_4_lut_31899_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n39214)) /* synthesis lut_function=(A (B+(D))+!A (B (D)+!B (C+(D)))) */ ;
    defparam n6_bdd_4_lut_31899_4_lut.init = 16'hff98;
    LUT4 n6_bdd_4_lut_31898 (.A(\music_tone[0] ), .B(\music_tone[1] ), .C(\music_tone[4] ), 
         .D(\music_tone[2] ), .Z(n38827)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C+!(D))+!B (C (D)))) */ ;
    defparam n6_bdd_4_lut_31898.init = 16'h8fbb;
    PFUMX i31610 (.BLUT(n38717), .ALUT(n38716), .C0(\music_tone[4] ), 
          .Z(time_end[1]));
    LUT4 music_tone_1__bdd_4_lut_31756 (.A(\music_tone[1] ), .B(\music_tone[0] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38994)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam music_tone_1__bdd_4_lut_31756.init = 16'hfdf5;
    LUT4 music_tone_4__bdd_3_lut (.A(\music_tone[2] ), .B(\music_tone[3] ), 
         .C(\music_tone[0] ), .Z(n39088)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam music_tone_4__bdd_3_lut.init = 16'hecec;
    LUT4 music_tone_4__bdd_4_lut_31818 (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[3] ), .D(\music_tone[0] ), .Z(n39089)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C)+!B (D))) */ ;
    defparam music_tone_4__bdd_4_lut_31818.init = 16'ha6b7;
    LUT4 tone_4__I_0_Mux_2_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n39680)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_2_i31_then_4_lut.init = 16'hfb8b;
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_1539)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n5568[1]), .B(n5568[6]), .C(n5568[16]), .D(n5568[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n5568[5]), .C(n28), .D(n5568[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n5568[10]), .B(n5568[4]), .C(n5568[8]), .D(n5568[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n5568[14]), .B(n5568[17]), .C(n5568[15]), .D(n5568[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n5568[12]), .B(n5568[7]), .C(n5568[0]), .D(n5568[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    PFUMX i32698 (.BLUT(n41002), .ALUT(n41003), .C0(\music_tone[1] ), 
          .Z(time_end[15]));
    LUT4 n6_bdd_4_lut_31671_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38826)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam n6_bdd_4_lut_31671_4_lut.init = 16'hff6a;
    LUT4 tone_4__I_0_Mux_2_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n39679)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C)+!B (D))) */ ;
    defparam tone_4__I_0_Mux_2_i31_else_4_lut.init = 16'hae3d;
    LUT4 n6_bdd_4_lut_31916 (.A(\music_tone[1] ), .B(\music_tone[2] ), .C(\music_tone[0] ), 
         .D(\music_tone[3] ), .Z(n39215)) /* synthesis lut_function=(A (B+!(D))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;
    defparam n6_bdd_4_lut_31916.init = 16'h9dab;
    PFUMX i31988 (.BLUT(n39679), .ALUT(n39680), .C0(\music_tone[0] ), 
          .Z(time_end[2]));
    PFUMX i32028 (.BLUT(n39739), .ALUT(n39740), .C0(\music_tone[1] ), 
          .Z(time_end[4]));
    PFUMX i32026 (.BLUT(n39736), .ALUT(n39737), .C0(\music_tone[0] ), 
          .Z(time_end[9]));
    PFUMX i32024 (.BLUT(n39733), .ALUT(n39734), .C0(\music_tone[2] ), 
          .Z(time_end[7]));
    PFUMX i32020 (.BLUT(n39727), .ALUT(n39728), .C0(\music_tone[0] ), 
          .Z(time_end[5]));
    PFUMX i32014 (.BLUT(n39718), .ALUT(n39719), .C0(\music_tone[1] ), 
          .Z(time_end[12]));
    PFUMX i32012 (.BLUT(n39715), .ALUT(n39716), .C0(\music_tone[0] ), 
          .Z(time_end[6]));
    PFUMX i32008 (.BLUT(n39709), .ALUT(n39710), .C0(\music_tone[0] ), 
          .Z(time_end[11]));
    PFUMX i32006 (.BLUT(n39706), .ALUT(n39707), .C0(\music_tone[0] ), 
          .Z(time_end[13]));
    PFUMX i32004 (.BLUT(n39703), .ALUT(n39704), .C0(\music_tone[0] ), 
          .Z(time_end[14]));
    
endmodule
//
// Verilog Description of module KEY
//

module KEY (sys_clk_c, key_sec_pre, key_sec, key3_c, n39641, key_sec_adj_9, 
            key_sec_pre_adj_10, n39569, key1_pulse, n39642, n39511, 
            \key_mode[2] , \key_mode[1] , n39546, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key3_c;
    output n39641;
    input key_sec_adj_9;
    input key_sec_pre_adj_10;
    output n39569;
    input key1_pulse;
    input n39642;
    output n39511;
    input \key_mode[2] ;
    input \key_mode[1] ;
    output n39546;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire key_rst_pre, key_rst, sys_clk_c_enable_48;
    wire [17:0]cnt;   // d:/new porject/top-xu/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire n31, n28, n34293, n34292, n34291, n34290, n34289, n34288, 
        n34287, n34286, n34285, n21, n34, n30, n22;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key3_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1P3AY key_sec_29 (.D(key3_c), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    FD1S3IX cnt_3000__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i0.GSR = "ENABLED";
    FD1S3IX cnt_3000__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i17.GSR = "ENABLED";
    FD1S3IX cnt_3000__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i16.GSR = "ENABLED";
    FD1S3IX cnt_3000__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i15.GSR = "ENABLED";
    FD1S3IX cnt_3000__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i14.GSR = "ENABLED";
    FD1S3IX cnt_3000__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i13.GSR = "ENABLED";
    FD1S3IX cnt_3000__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i12.GSR = "ENABLED";
    FD1S3IX cnt_3000__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i11.GSR = "ENABLED";
    FD1S3IX cnt_3000__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i10.GSR = "ENABLED";
    FD1S3IX cnt_3000__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i9.GSR = "ENABLED";
    FD1S3IX cnt_3000__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i8.GSR = "ENABLED";
    FD1S3IX cnt_3000__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i7.GSR = "ENABLED";
    FD1S3IX cnt_3000__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i6.GSR = "ENABLED";
    FD1S3IX cnt_3000__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i5.GSR = "ENABLED";
    FD1S3IX cnt_3000__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i4.GSR = "ENABLED";
    FD1S3IX cnt_3000__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i3.GSR = "ENABLED";
    FD1S3IX cnt_3000__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i2.GSR = "ENABLED";
    FD1S3IX cnt_3000__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000__i1.GSR = "ENABLED";
    LUT4 i13_4_lut (.A(cnt[17]), .B(cnt[15]), .C(cnt[16]), .D(cnt[4]), 
         .Z(n31)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    LUT4 i10_4_lut (.A(cnt[1]), .B(cnt[6]), .C(cnt[14]), .D(cnt[11]), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    LUT4 key_sec_pre_I_0_2_lut_rep_603 (.A(key_sec_pre), .B(key_sec), .Z(n39641)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_603.init = 16'h2222;
    LUT4 i1_2_lut_rep_531_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(key_sec_adj_9), 
         .D(key_sec_pre_adj_10), .Z(n39569)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_rep_531_3_lut_4_lut.init = 16'h2022;
    LUT4 i1_2_lut_rep_473_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(key1_pulse), 
         .D(n39642), .Z(n39511)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_rep_473_3_lut_4_lut.init = 16'hfff2;
    LUT4 i1_2_lut_rep_508_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(\key_mode[2] ), 
         .D(\key_mode[1] ), .Z(n39546)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_rep_508_3_lut_4_lut.init = 16'h0200;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    CCU2D cnt_3000_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34293), .S0(n77[17]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_3000_add_4_19.INIT1 = 16'h0000;
    defparam cnt_3000_add_4_19.INJECT1_0 = "NO";
    defparam cnt_3000_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_3000_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34292), .COUT(n34293), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_3000_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_3000_add_4_17.INJECT1_0 = "NO";
    defparam cnt_3000_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_3000_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34291), .COUT(n34292), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_3000_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_3000_add_4_15.INJECT1_0 = "NO";
    defparam cnt_3000_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_3000_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34290), .COUT(n34291), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_3000_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_3000_add_4_13.INJECT1_0 = "NO";
    defparam cnt_3000_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_3000_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34289), .COUT(n34290), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_3000_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_3000_add_4_11.INJECT1_0 = "NO";
    defparam cnt_3000_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_3000_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34288), 
          .COUT(n34289), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_3000_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_3000_add_4_9.INJECT1_0 = "NO";
    defparam cnt_3000_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_3000_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34287), 
          .COUT(n34288), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_3000_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_3000_add_4_7.INJECT1_0 = "NO";
    defparam cnt_3000_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_3000_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34286), 
          .COUT(n34287), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_3000_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_3000_add_4_5.INJECT1_0 = "NO";
    defparam cnt_3000_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_3000_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34285), 
          .COUT(n34286), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_3000_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_3000_add_4_3.INJECT1_0 = "NO";
    defparam cnt_3000_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_3000_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n34285), .S1(n77[0]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3000_add_4_1.INIT0 = 16'hF000;
    defparam cnt_3000_add_4_1.INIT1 = 16'h0555;
    defparam cnt_3000_add_4_1.INJECT1_0 = "NO";
    defparam cnt_3000_add_4_1.INJECT1_1 = "NO";
    LUT4 i3_2_lut (.A(cnt[13]), .B(cnt[8]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_48)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i12_4_lut (.A(cnt[3]), .B(cnt[10]), .C(cnt[5]), .D(cnt[0]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i16_4_lut (.A(n31), .B(cnt[9]), .C(n28), .D(cnt[2]), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(cnt[7]), .B(cnt[12]), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module music_play
//

module music_play (\state[0] , sys_clk_c, cnt_run, \music_tone[0] , 
            uart_recv_done, music_cnt, GND_net, warning_TEM, \music_tone[4] , 
            \music_tone[3] , \music_tone[2] , \music_tone[1] , n41006, 
            uart_recv_data, n5, warning, n123, n34888, n124, n125, 
            sys_rst_n_c, n126) /* synthesis syn_module_defined=1 */ ;
    output \state[0] ;
    input sys_clk_c;
    output [7:0]cnt_run;
    output \music_tone[0] ;
    input uart_recv_done;
    output [8:0]music_cnt;
    input GND_net;
    output warning_TEM;
    output \music_tone[4] ;
    output \music_tone[3] ;
    output \music_tone[2] ;
    output \music_tone[1] ;
    input n41006;
    input [7:0]uart_recv_data;
    output n5;
    input warning;
    input n123;
    input n34888;
    input n124;
    input n125;
    input sys_rst_n_c;
    input n126;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire sys_clk_c_enable_112, n23, recv_done_d1, recv_done_d0, sys_clk_c_enable_189, 
        n37504, sys_clk_c_enable_182;
    wire [7:0]music_tone_7__N_1637;
    wire [2:0]state_back;   // d:/new porject/top-xu/music_player.v(42[12:22])
    
    wire sys_clk_c_enable_34;
    wire [15:0]clk_cnt;   // d:/new porject/top-xu/music_player.v(49[13:20])
    
    wire sys_clk_c_enable_298, sys_clk_c_enable_273;
    wire [15:0]n69;
    wire [15:0]n121;
    
    wire n21888;
    wire [15:0]n69_adj_1868;
    
    wire sys_clk_c_enable_231, n21903;
    wire [8:0]n41;
    
    wire n34383;
    wire [15:0]cnt_delay;   // d:/new porject/top-xu/music_player.v(44[12:21])
    
    wire n381, n34382, n34381, n34380, n34379, n34378, n38597, 
        n38596, n38598, n17, n18, n35113, sys_clk_c_enable_85, uart_data_busy_N_1706, 
        uart_music_mode, n39566;
    wire [4:0]state;   // d:/new porject/top-xu/music_player.v(41[11:16])
    wire [7:0]cnt_run_c;   // d:/new porject/top-xu/music_player.v(36[11:18])
    
    wire sys_clk_c_enable_183, sys_clk_c_enable_184, sys_clk_c_enable_185, 
        sys_clk_c_enable_186, sys_clk_c_enable_187, sys_clk_c_enable_188, 
        n36343, n16_adj_1839, n37572, n37686;
    wire [8:0]music_cnt_c;   // d:/new porject/top-xu/music_player.v(47[11:20])
    
    wire n39626, n37612, n39627, n39628, n39553, n34339, n34338, 
        n34337, n34336, n34335, n34334, n34333, n117, n39459, 
        n37184, n34332, n34331, n34330, n34329, n34328, n34327, 
        n34326, n34325, n34324, n34242;
    wire [7:0]n131;
    
    wire n34322, n34321, n34320, n34241, n34319, n34240, n34239, 
        n4, n10, n39530, n45_adj_1855, n39588, n60, n8, n8_adj_1856, 
        n14_adj_1857, n11;
    wire [7:0]n670;
    
    wire n37646, n23_adj_1858, n21, n9, n23_adj_1859, n4_adj_1860, 
        n39581, n34920, n5_adj_1861, n37237, n39491, n18_adj_1862, 
        n37526, n39584, n15_adj_1863, n39552, n4_adj_1864, n39415, 
        n10_adj_1865, n39583, n42_adj_1866, n39526, n39582, n146, 
        n120, n39531, n37217, n16_adj_1867, n37554;
    
    FD1P3AX state__i0 (.D(n23), .SP(sys_clk_c_enable_112), .CK(sys_clk_c), 
            .Q(\state[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam state__i0.GSR = "ENABLED";
    FD1S3AX recv_done_d1_586 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam recv_done_d1_586.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i0 (.D(n37504), .SP(sys_clk_c_enable_189), .CK(sys_clk_c), 
            .Q(cnt_run[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    FD1P3AX music_tone__i1 (.D(music_tone_7__N_1637[0]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(\music_tone[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone__i1.GSR = "DISABLED";
    FD1P3AX state_back_i0_i0 (.D(\state[0] ), .SP(sys_clk_c_enable_34), 
            .CK(sys_clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    FD1S3AX recv_done_d0_585 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam recv_done_d0_585.GSR = "ENABLED";
    FD1P3IX clk_cnt_3009__i0 (.D(n69[0]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i0.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i0 (.D(n69_adj_1868[0]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i0.GSR = "DISABLED";
    FD1P3IX music_cnt_3007__i0 (.D(n41[0]), .SP(sys_clk_c_enable_231), .CD(n21903), 
            .CK(sys_clk_c), .Q(music_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007__i0.GSR = "DISABLED";
    CCU2D sub_2368_add_2_14 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34383), .S1(n381));
    defparam sub_2368_add_2_14.INIT0 = 16'h5555;
    defparam sub_2368_add_2_14.INIT1 = 16'h0000;
    defparam sub_2368_add_2_14.INJECT1_0 = "NO";
    defparam sub_2368_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_2368_add_2_12 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34382), .COUT(n34383));
    defparam sub_2368_add_2_12.INIT0 = 16'h5555;
    defparam sub_2368_add_2_12.INIT1 = 16'h5555;
    defparam sub_2368_add_2_12.INJECT1_0 = "NO";
    defparam sub_2368_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_2368_add_2_10 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34381), .COUT(n34382));
    defparam sub_2368_add_2_10.INIT0 = 16'h5555;
    defparam sub_2368_add_2_10.INIT1 = 16'h5555;
    defparam sub_2368_add_2_10.INJECT1_0 = "NO";
    defparam sub_2368_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_2368_add_2_8 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34380), .COUT(n34381));
    defparam sub_2368_add_2_8.INIT0 = 16'h5555;
    defparam sub_2368_add_2_8.INIT1 = 16'h5555;
    defparam sub_2368_add_2_8.INJECT1_0 = "NO";
    defparam sub_2368_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_2368_add_2_6 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34379), .COUT(n34380));
    defparam sub_2368_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_2368_add_2_6.INIT1 = 16'h5555;
    defparam sub_2368_add_2_6.INJECT1_0 = "NO";
    defparam sub_2368_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_2368_add_2_4 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34378), .COUT(n34379));
    defparam sub_2368_add_2_4.INIT0 = 16'h5555;
    defparam sub_2368_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_2368_add_2_4.INJECT1_0 = "NO";
    defparam sub_2368_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_2368_add_2_2 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n34378));
    defparam sub_2368_add_2_2.INIT0 = 16'h5000;
    defparam sub_2368_add_2_2.INIT1 = 16'h5555;
    defparam sub_2368_add_2_2.INJECT1_0 = "NO";
    defparam sub_2368_add_2_2.INJECT1_1 = "NO";
    PFUMX i31539 (.BLUT(n38597), .ALUT(n38596), .C0(\state[0] ), .Z(n38598));
    LUT4 i2_4_lut (.A(clk_cnt[9]), .B(n17), .C(clk_cnt[5]), .D(n18), 
         .Z(n35113)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    FD1P3AY uart_data_busy_591 (.D(uart_data_busy_N_1706), .SP(sys_clk_c_enable_85), 
            .CK(sys_clk_c), .Q(warning_TEM)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam uart_data_busy_591.GSR = "ENABLED";
    FD1P3AX uart_music_mode_589 (.D(n39566), .SP(sys_clk_c_enable_85), .CK(sys_clk_c), 
            .Q(uart_music_mode)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam uart_music_mode_589.GSR = "ENABLED";
    FD1P3AX state__i1 (.D(\state[0] ), .SP(sys_clk_c_enable_112), .CK(sys_clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam state__i1.GSR = "ENABLED";
    FD1P3AX music_tone__i5 (.D(music_tone_7__N_1637[4]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(\music_tone[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone__i5.GSR = "DISABLED";
    FD1P3AX music_tone__i4 (.D(music_tone_7__N_1637[3]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(\music_tone[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone__i4.GSR = "DISABLED";
    FD1P3AX music_tone__i3 (.D(music_tone_7__N_1637[2]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(\music_tone[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone__i3.GSR = "DISABLED";
    FD1P3AX music_tone__i2 (.D(music_tone_7__N_1637[1]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(\music_tone[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone__i2.GSR = "DISABLED";
    FD1P3AX cnt_run_i0_i7 (.D(n41006), .SP(sys_clk_c_enable_183), .CK(sys_clk_c), 
            .Q(cnt_run_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i6 (.D(n41006), .SP(sys_clk_c_enable_184), .CK(sys_clk_c), 
            .Q(cnt_run_c[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n41006), .SP(sys_clk_c_enable_185), .CK(sys_clk_c), 
            .Q(cnt_run_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i4 (.D(n41006), .SP(sys_clk_c_enable_186), .CK(sys_clk_c), 
            .Q(cnt_run_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n41006), .SP(sys_clk_c_enable_187), .CK(sys_clk_c), 
            .Q(cnt_run_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i2 (.D(n41006), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .Q(cnt_run_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i1 (.D(n36343), .SP(sys_clk_c_enable_189), .CK(sys_clk_c), 
            .Q(cnt_run_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=434, LSE_RLINE=447 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    FD1P3IX music_cnt_3007__i1 (.D(n41[1]), .SP(sys_clk_c_enable_231), .CD(n21903), 
            .CK(sys_clk_c), .Q(music_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007__i1.GSR = "DISABLED";
    FD1P3IX music_cnt_3007__i2 (.D(n41[2]), .SP(sys_clk_c_enable_231), .CD(n21903), 
            .CK(sys_clk_c), .Q(music_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007__i2.GSR = "DISABLED";
    FD1P3IX music_cnt_3007__i3 (.D(n41[3]), .SP(sys_clk_c_enable_231), .CD(n21903), 
            .CK(sys_clk_c), .Q(music_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007__i3.GSR = "DISABLED";
    LUT4 i8_4_lut (.A(clk_cnt[1]), .B(n16_adj_1839), .C(n37572), .D(n37686), 
         .Z(n18)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i8_4_lut.init = 16'hefff;
    FD1P3IX music_cnt_3007__i4 (.D(n41[4]), .SP(sys_clk_c_enable_231), .CD(n21903), 
            .CK(sys_clk_c), .Q(music_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007__i4.GSR = "DISABLED";
    FD1P3IX music_cnt_3007__i5 (.D(n41[5]), .SP(sys_clk_c_enable_231), .CD(n21903), 
            .CK(sys_clk_c), .Q(music_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007__i5.GSR = "DISABLED";
    FD1P3IX music_cnt_3007__i6 (.D(n41[6]), .SP(sys_clk_c_enable_231), .CD(n21903), 
            .CK(sys_clk_c), .Q(music_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007__i6.GSR = "DISABLED";
    FD1P3IX music_cnt_3007__i7 (.D(n41[7]), .SP(sys_clk_c_enable_231), .CD(n21903), 
            .CK(sys_clk_c), .Q(music_cnt_c[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007__i7.GSR = "DISABLED";
    FD1P3IX music_cnt_3007__i8 (.D(n41[8]), .SP(sys_clk_c_enable_231), .CD(n21903), 
            .CK(sys_clk_c), .Q(music_cnt_c[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007__i8.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i1 (.D(n69_adj_1868[1]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i1.GSR = "DISABLED";
    LUT4 i20900_2_lut_rep_588 (.A(cnt_run_c[5]), .B(cnt_run[0]), .Z(n39626)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20900_2_lut_rep_588.init = 16'heeee;
    LUT4 i30807_2_lut_3_lut (.A(cnt_run_c[5]), .B(cnt_run[0]), .C(cnt_run_c[2]), 
         .Z(n37612)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30807_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_589 (.A(music_cnt[0]), .B(music_cnt[2]), .Z(n39627)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_589.init = 16'h8888;
    LUT4 i1_2_lut_rep_590 (.A(music_cnt[6]), .B(music_cnt[3]), .Z(n39628)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_590.init = 16'h8888;
    LUT4 i2_2_lut_rep_515_3_lut (.A(music_cnt[6]), .B(music_cnt[3]), .C(music_cnt[4]), 
         .Z(n39553)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_rep_515_3_lut.init = 16'h8080;
    FD1P3IX cnt_delay_3008__i2 (.D(n69_adj_1868[2]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i2.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i3 (.D(n69_adj_1868[3]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i3.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i4 (.D(n69_adj_1868[4]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i4.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i5 (.D(n69_adj_1868[5]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i5.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i6 (.D(n69_adj_1868[6]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i6.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i7 (.D(n69_adj_1868[7]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i7.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i8 (.D(n69_adj_1868[8]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i8.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i9 (.D(n69_adj_1868[9]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i9.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i10 (.D(n69_adj_1868[10]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i10.GSR = "DISABLED";
    LUT4 i30768_2_lut (.A(clk_cnt[11]), .B(clk_cnt[10]), .Z(n37572)) /* synthesis lut_function=(A (B)) */ ;
    defparam i30768_2_lut.init = 16'h8888;
    LUT4 i6_4_lut (.A(clk_cnt[15]), .B(clk_cnt[0]), .C(clk_cnt[3]), .D(clk_cnt[14]), 
         .Z(n16_adj_1839)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    CCU2D clk_cnt_3009_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34339), .S0(n69[15]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_3009_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_3009_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_3009_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34338), .COUT(n34339), .S0(n69[13]), .S1(n69[14]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_3009_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_3009_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34337), .COUT(n34338), .S0(n69[11]), .S1(n69[12]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_3009_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_3009_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34336), .COUT(n34337), .S0(n69[9]), .S1(n69[10]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_3009_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_3009_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34335), .COUT(n34336), .S0(n69[7]), .S1(n69[8]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_3009_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_3009_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34334), .COUT(n34335), .S0(n69[5]), .S1(n69[6]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_3009_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_3009_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34333), .COUT(n34334), .S0(n69[3]), .S1(n69[4]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_3009_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_421 (.A(cnt_run_c[4]), .B(n117), .Z(n39459)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_421.init = 16'h4444;
    LUT4 i2_3_lut_4_lut (.A(cnt_run_c[4]), .B(n117), .C(n39626), .D(cnt_run_c[2]), 
         .Z(n37184)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_428 (.A(n35113), .B(sys_clk_c_enable_298), .Z(sys_clk_c_enable_273)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_428.init = 16'h4444;
    LUT4 i15278_2_lut_3_lut (.A(n35113), .B(sys_clk_c_enable_298), .C(n381), 
         .Z(n21888)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i15278_2_lut_3_lut.init = 16'h4040;
    CCU2D clk_cnt_3009_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34332), .COUT(n34333), .S0(n69[1]), .S1(n69[2]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_3009_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_3009_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_3009_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n34332), .S1(n69[0]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_3009_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_3009_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_3009_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_delay_3008_add_4_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34331), .S0(n69_adj_1868[15]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_17.INIT1 = 16'h0000;
    defparam cnt_delay_3008_add_4_17.INJECT1_0 = "NO";
    defparam cnt_delay_3008_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_delay_3008_add_4_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34330), .COUT(n34331), .S0(n69_adj_1868[13]), 
          .S1(n69_adj_1868[14]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_15.INJECT1_0 = "NO";
    defparam cnt_delay_3008_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_delay_3008_add_4_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34329), .COUT(n34330), .S0(n69_adj_1868[11]), 
          .S1(n69_adj_1868[12]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_13.INJECT1_0 = "NO";
    defparam cnt_delay_3008_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_delay_3008_add_4_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34328), .COUT(n34329), .S0(n69_adj_1868[9]), 
          .S1(n69_adj_1868[10]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_11.INJECT1_0 = "NO";
    defparam cnt_delay_3008_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_delay_3008_add_4_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34327), .COUT(n34328), .S0(n69_adj_1868[7]), 
          .S1(n69_adj_1868[8]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_9.INJECT1_0 = "NO";
    defparam cnt_delay_3008_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_delay_3008_add_4_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34326), .COUT(n34327), .S0(n69_adj_1868[5]), 
          .S1(n69_adj_1868[6]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_7.INJECT1_0 = "NO";
    defparam cnt_delay_3008_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_delay_3008_add_4_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34325), .COUT(n34326), .S0(n69_adj_1868[3]), 
          .S1(n69_adj_1868[4]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_5.INJECT1_0 = "NO";
    defparam cnt_delay_3008_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_delay_3008_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34324), .COUT(n34325), .S0(n69_adj_1868[1]), .S1(n69_adj_1868[2]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_delay_3008_add_4_3.INJECT1_0 = "NO";
    defparam cnt_delay_3008_add_4_3.INJECT1_1 = "NO";
    CCU2D add_114_9 (.A0(cnt_run_c[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34242), 
          .S0(n131[7]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_9.INIT0 = 16'h5aaa;
    defparam add_114_9.INIT1 = 16'h0000;
    defparam add_114_9.INJECT1_0 = "NO";
    defparam add_114_9.INJECT1_1 = "NO";
    CCU2D cnt_delay_3008_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n34324), .S1(n69_adj_1868[0]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008_add_4_1.INIT0 = 16'hF000;
    defparam cnt_delay_3008_add_4_1.INIT1 = 16'h0555;
    defparam cnt_delay_3008_add_4_1.INJECT1_0 = "NO";
    defparam cnt_delay_3008_add_4_1.INJECT1_1 = "NO";
    CCU2D music_cnt_3007_add_4_9 (.A0(music_cnt_c[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt_c[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34322), .S0(n41[7]), .S1(n41[8]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007_add_4_9.INIT0 = 16'hfaaa;
    defparam music_cnt_3007_add_4_9.INIT1 = 16'hfaaa;
    defparam music_cnt_3007_add_4_9.INJECT1_0 = "NO";
    defparam music_cnt_3007_add_4_9.INJECT1_1 = "NO";
    CCU2D music_cnt_3007_add_4_7 (.A0(music_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34321), .COUT(n34322), .S0(n41[5]), .S1(n41[6]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007_add_4_7.INIT0 = 16'hfaaa;
    defparam music_cnt_3007_add_4_7.INIT1 = 16'hfaaa;
    defparam music_cnt_3007_add_4_7.INJECT1_0 = "NO";
    defparam music_cnt_3007_add_4_7.INJECT1_1 = "NO";
    CCU2D music_cnt_3007_add_4_5 (.A0(music_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34320), .COUT(n34321), .S0(n41[3]), .S1(n41[4]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007_add_4_5.INIT0 = 16'hfaaa;
    defparam music_cnt_3007_add_4_5.INIT1 = 16'hfaaa;
    defparam music_cnt_3007_add_4_5.INJECT1_0 = "NO";
    defparam music_cnt_3007_add_4_5.INJECT1_1 = "NO";
    CCU2D add_114_7 (.A0(cnt_run_c[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run_c[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34241), .COUT(n34242), .S0(n131[5]), .S1(n131[6]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_7.INIT0 = 16'h5aaa;
    defparam add_114_7.INIT1 = 16'h5aaa;
    defparam add_114_7.INJECT1_0 = "NO";
    defparam add_114_7.INJECT1_1 = "NO";
    CCU2D music_cnt_3007_add_4_3 (.A0(music_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34319), .COUT(n34320), .S0(n41[1]), .S1(n41[2]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007_add_4_3.INIT0 = 16'hfaaa;
    defparam music_cnt_3007_add_4_3.INIT1 = 16'hfaaa;
    defparam music_cnt_3007_add_4_3.INJECT1_0 = "NO";
    defparam music_cnt_3007_add_4_3.INJECT1_1 = "NO";
    CCU2D music_cnt_3007_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n34319), .S1(n41[0]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3007_add_4_1.INIT0 = 16'hF000;
    defparam music_cnt_3007_add_4_1.INIT1 = 16'h0555;
    defparam music_cnt_3007_add_4_1.INJECT1_0 = "NO";
    defparam music_cnt_3007_add_4_1.INJECT1_1 = "NO";
    CCU2D add_114_5 (.A0(cnt_run_c[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run_c[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34240), .COUT(n34241), .S0(n131[3]), .S1(n131[4]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_5.INIT0 = 16'h5aaa;
    defparam add_114_5.INIT1 = 16'h5aaa;
    defparam add_114_5.INJECT1_0 = "NO";
    defparam add_114_5.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_3008__i11 (.D(n69_adj_1868[11]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i11.GSR = "DISABLED";
    CCU2D add_114_3 (.A0(cnt_run_c[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run_c[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34239), .COUT(n34240), .S0(n131[1]), .S1(n131[2]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_3.INIT0 = 16'h5aaa;
    defparam add_114_3.INIT1 = 16'h5aaa;
    defparam add_114_3.INJECT1_0 = "NO";
    defparam add_114_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(uart_recv_data[0]), .B(uart_recv_data[3]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4_4_lut (.A(uart_recv_data[5]), .B(uart_recv_data[7]), .C(uart_recv_data[4]), 
         .D(uart_recv_data[1]), .Z(n10)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i4_4_lut.init = 16'hefff;
    CCU2D add_114_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n34239), .S1(n131[0]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_1.INIT0 = 16'hF000;
    defparam add_114_1.INIT1 = 16'h5555;
    defparam add_114_1.INJECT1_0 = "NO";
    defparam add_114_1.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_3008__i12 (.D(n69_adj_1868[12]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i12.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i13 (.D(n69_adj_1868[13]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i13.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i14 (.D(n69_adj_1868[14]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i14.GSR = "DISABLED";
    FD1P3IX cnt_delay_3008__i15 (.D(n69_adj_1868[15]), .SP(sys_clk_c_enable_273), 
            .CD(n21888), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3008__i15.GSR = "DISABLED";
    FD1P3IX clk_cnt_3009__i1 (.D(n69[1]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i1.GSR = "DISABLED";
    LUT4 i31089_3_lut_4_lut (.A(cnt_run_c[1]), .B(n39530), .C(cnt_run[0]), 
         .D(n131[0]), .Z(n37504)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i31089_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i96_3_lut_4_lut (.A(cnt_run_c[1]), .B(n39530), .C(\state[0] ), 
         .D(cnt_run[0]), .Z(n45_adj_1855)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i96_3_lut_4_lut.init = 16'h1f0f;
    FD1P3IX clk_cnt_3009__i2 (.D(n69[2]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i2.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(cnt_run_c[1]), .B(n39530), .C(state[1]), .Z(n5)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut (.A(cnt_run_c[1]), .B(n39530), .C(cnt_run[0]), 
         .D(n39588), .Z(n60)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0100;
    FD1P3IX clk_cnt_3009__i3 (.D(n69[3]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i3.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_193 (.A(cnt_run_c[1]), .B(n39530), .C(n131[5]), 
         .Z(n8)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_193.init = 16'h1010;
    FD1P3IX clk_cnt_3009__i4 (.D(n69[4]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i4.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_194 (.A(cnt_run_c[1]), .B(n39530), .C(n131[4]), 
         .Z(n8_adj_1856)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_194.init = 16'h1010;
    LUT4 n3656_bdd_3_lut_4_lut (.A(cnt_run_c[1]), .B(n39530), .C(cnt_run[0]), 
         .D(state[1]), .Z(n38596)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n3656_bdd_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_4_lut (.A(cnt_run_c[1]), .B(n39530), .C(n14_adj_1857), 
         .D(n131[1]), .Z(n36343)) /* synthesis lut_function=(A (C)+!A !(B+!(D))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hb1a0;
    FD1P3IX clk_cnt_3009__i5 (.D(n69[5]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i5.GSR = "DISABLED";
    FD1P3IX clk_cnt_3009__i6 (.D(n69[6]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i6.GSR = "DISABLED";
    FD1P3IX clk_cnt_3009__i7 (.D(n69[7]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i7.GSR = "DISABLED";
    FD1P3IX clk_cnt_3009__i8 (.D(n69[8]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i8.GSR = "DISABLED";
    FD1P3IX clk_cnt_3009__i9 (.D(n69[9]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i9.GSR = "DISABLED";
    FD1P3IX clk_cnt_3009__i10 (.D(n69[10]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i10.GSR = "DISABLED";
    FD1P3IX clk_cnt_3009__i11 (.D(n69[11]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i11.GSR = "DISABLED";
    FD1P3IX clk_cnt_3009__i12 (.D(n69[12]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i12.GSR = "DISABLED";
    LUT4 i13_4_lut (.A(uart_music_mode), .B(uart_recv_data[4]), .C(sys_clk_c_enable_85), 
         .D(warning), .Z(music_tone_7__N_1637[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hc0c5;
    LUT4 mux_3296_i4_4_lut (.A(n123), .B(uart_recv_data[3]), .C(sys_clk_c_enable_85), 
         .D(n34888), .Z(music_tone_7__N_1637[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/music_player.v(102[7] 324[5])
    defparam mux_3296_i4_4_lut.init = 16'hc0ca;
    FD1P3IX clk_cnt_3009__i13 (.D(n69[13]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i13.GSR = "DISABLED";
    LUT4 i25_4_lut (.A(uart_music_mode), .B(n124), .C(warning), .D(n60), 
         .Z(n11)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i25_4_lut.init = 16'hc505;
    LUT4 i17148_4_lut (.A(uart_music_mode), .B(n60), .C(warning), .D(n125), 
         .Z(n670[1])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/new porject/top-xu/top.v(72[10:17])
    defparam i17148_4_lut.init = 16'hc505;
    LUT4 i14125_4_lut (.A(sys_clk_c_enable_189), .B(n37646), .C(cnt_run_c[6]), 
         .D(n23_adj_1858), .Z(sys_clk_c_enable_183)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i14125_4_lut.init = 16'h0200;
    LUT4 i34_4_lut (.A(n131[7]), .B(n21), .C(cnt_run_c[7]), .D(cnt_run_c[1]), 
         .Z(n23_adj_1858)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i34_4_lut.init = 16'hc0ca;
    LUT4 i5_4_lut (.A(n9), .B(n39627), .C(music_cnt[1]), .D(cnt_run[0]), 
         .Z(n21)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i5_4_lut.init = 16'h0080;
    LUT4 i30841_4_lut (.A(cnt_run_c[4]), .B(cnt_run_c[5]), .C(cnt_run_c[3]), 
         .D(cnt_run_c[2]), .Z(n37646)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30841_4_lut.init = 16'hfffe;
    LUT4 i14123_4_lut (.A(sys_clk_c_enable_189), .B(n37646), .C(cnt_run_c[7]), 
         .D(n23_adj_1859), .Z(sys_clk_c_enable_184)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i14123_4_lut.init = 16'h0200;
    LUT4 i34_4_lut_adj_195 (.A(n131[6]), .B(n21), .C(cnt_run_c[6]), .D(cnt_run_c[1]), 
         .Z(n23_adj_1859)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i34_4_lut_adj_195.init = 16'hc0ca;
    LUT4 i14121_4_lut (.A(sys_clk_c_enable_189), .B(n39459), .C(n8), .D(n4_adj_1860), 
         .Z(sys_clk_c_enable_185)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i14121_4_lut.init = 16'ha8a0;
    LUT4 i3_4_lut (.A(n39581), .B(cnt_run_c[1]), .C(cnt_run_c[6]), .D(n34920), 
         .Z(n117)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/new porject/top-xu/music_player.v(280[12:30])
    defparam i3_4_lut.init = 16'h0004;
    LUT4 i14119_4_lut (.A(sys_clk_c_enable_189), .B(n5_adj_1861), .C(n8_adj_1856), 
         .D(n37612), .Z(sys_clk_c_enable_186)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i14119_4_lut.init = 16'ha0a8;
    LUT4 i1_2_lut_adj_196 (.A(n117), .B(cnt_run_c[4]), .Z(n5_adj_1861)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/music_player.v(280[12:30])
    defparam i1_2_lut_adj_196.init = 16'h8888;
    LUT4 i1_4_lut (.A(sys_clk_c_enable_189), .B(n37237), .C(n39491), .D(n131[3]), 
         .Z(sys_clk_c_enable_187)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'h8a88;
    LUT4 i9_4_lut (.A(cnt_run_c[3]), .B(n18_adj_1862), .C(n37526), .D(n39584), 
         .Z(n37237)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i9_4_lut.init = 16'h0008;
    LUT4 i8_4_lut_adj_197 (.A(n15_adj_1863), .B(n39628), .C(music_cnt[4]), 
         .D(cnt_run_c[7]), .Z(n18_adj_1862)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i8_4_lut_adj_197.init = 16'h0080;
    LUT4 i1_4_lut_adj_198 (.A(n39491), .B(sys_clk_c_enable_189), .C(n37184), 
         .D(n131[2]), .Z(sys_clk_c_enable_188)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam i1_4_lut_adj_198.init = 16'hc4c0;
    LUT4 i2_4_lut_adj_199 (.A(cnt_run[0]), .B(n39552), .C(n39530), .D(n4_adj_1864), 
         .Z(n14_adj_1857)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i2_4_lut_adj_199.init = 16'hfbfa;
    FD1P3IX clk_cnt_3009__i14 (.D(n69[14]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i14.GSR = "DISABLED";
    LUT4 i1201_2_lut_rep_377 (.A(n381), .B(n35113), .Z(n39415)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/music_player.v(314[26] 317[24])
    defparam i1201_2_lut_rep_377.init = 16'h2222;
    LUT4 n3656_bdd_2_lut_3_lut (.A(n381), .B(n35113), .C(state[1]), .Z(n38597)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/new porject/top-xu/music_player.v(314[26] 317[24])
    defparam n3656_bdd_2_lut_3_lut.init = 16'h2f2f;
    FD1P3IX clk_cnt_3009__i15 (.D(n69[15]), .SP(sys_clk_c_enable_298), .CD(sys_clk_c_enable_273), 
            .CK(sys_clk_c), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3009__i15.GSR = "DISABLED";
    LUT4 i5_3_lut_rep_492 (.A(cnt_run_c[6]), .B(n10_adj_1865), .C(cnt_run_c[2]), 
         .Z(n39530)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i5_3_lut_rep_492.init = 16'hfefe;
    LUT4 i30696_2_lut_rep_453_4_lut (.A(cnt_run_c[6]), .B(n10_adj_1865), 
         .C(cnt_run_c[2]), .D(cnt_run_c[1]), .Z(n39491)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i30696_2_lut_rep_453_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut_3_lut_4_lut (.A(music_cnt[1]), .B(n39627), .C(n39552), 
         .D(cnt_run_c[1]), .Z(n15_adj_1863)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i5_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i3_2_lut_3_lut_4_lut (.A(music_cnt_c[7]), .B(n39583), .C(n39553), 
         .D(cnt_run_c[1]), .Z(n9)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut (.A(music_cnt[4]), .B(n39628), .C(n39627), 
         .D(music_cnt[1]), .Z(n4_adj_1864)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_4_lut_rep_528 (.A(uart_recv_data[6]), .B(n4), .C(n10), .D(uart_recv_data[2]), 
         .Z(n39566)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_4_lut_rep_528.init = 16'hfeff;
    LUT4 uart_recv_data_7__I_0_i16_1_lut_4_lut (.A(uart_recv_data[6]), .B(n4), 
         .C(n10), .D(uart_recv_data[2]), .Z(uart_data_busy_N_1706)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam uart_recv_data_7__I_0_i16_1_lut_4_lut.init = 16'h0100;
    LUT4 recv_done_flag_I_0_2_lut_rep_542 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_85)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_542.init = 16'h4444;
    LUT4 i24_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[2]), 
         .D(n11), .Z(music_tone_7__N_1637[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam i24_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_3_lut_4_lut_adj_200 (.A(recv_done_d1), .B(recv_done_d0), 
         .C(n39588), .D(warning), .Z(sys_clk_c_enable_189)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam i1_2_lut_3_lut_4_lut_adj_200.init = 16'hb000;
    LUT4 i102_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(n42_adj_1866), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_182)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam i102_3_lut_4_lut.init = 16'hf400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_201 (.A(recv_done_d1), .B(recv_done_d0), 
         .C(n38598), .D(warning), .Z(sys_clk_c_enable_112)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam i1_2_lut_3_lut_4_lut_adj_201.init = 16'hb000;
    LUT4 i1_2_lut_rep_488_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(warning), 
         .Z(n39526)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam i1_2_lut_rep_488_3_lut.init = 16'hb0b0;
    LUT4 mux_3296_i2_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[1]), 
         .D(n670[1]), .Z(music_tone_7__N_1637[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam mux_3296_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 i159_2_lut_rep_543 (.A(cnt_run_c[7]), .B(cnt_run_c[3]), .Z(n39581)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i159_2_lut_rep_543.init = 16'heeee;
    LUT4 i165_3_lut_4_lut (.A(cnt_run_c[7]), .B(cnt_run_c[3]), .C(n39582), 
         .D(cnt_run_c[6]), .Z(n146)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i165_3_lut_4_lut.init = 16'hfffe;
    LUT4 i161_2_lut_rep_544 (.A(cnt_run_c[4]), .B(cnt_run_c[5]), .Z(n39582)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i161_2_lut_rep_544.init = 16'heeee;
    LUT4 i30722_2_lut_3_lut (.A(cnt_run_c[4]), .B(cnt_run_c[5]), .C(cnt_run_c[6]), 
         .Z(n37526)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30722_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_545 (.A(music_cnt[5]), .B(music_cnt_c[8]), .Z(n39583)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_545.init = 16'heeee;
    LUT4 i30873_2_lut_rep_514_3_lut (.A(music_cnt[5]), .B(music_cnt_c[8]), 
         .C(music_cnt_c[7]), .Z(n39552)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30873_2_lut_rep_514_3_lut.init = 16'hfefe;
    LUT4 i20892_2_lut_rep_546 (.A(cnt_run_c[2]), .B(cnt_run[0]), .Z(n39584)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20892_2_lut_rep_546.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_202 (.A(cnt_run_c[2]), .B(cnt_run[0]), .C(cnt_run_c[1]), 
         .Z(n120)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_202.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_203 (.A(cnt_run_c[2]), .B(cnt_run[0]), .C(cnt_run_c[5]), 
         .Z(n4_adj_1860)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_203.init = 16'h1010;
    LUT4 i1_2_lut_rep_550 (.A(state[1]), .B(\state[0] ), .Z(n39588)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_550.init = 16'h4444;
    LUT4 i1_2_lut_rep_493_3_lut (.A(state[1]), .B(\state[0] ), .C(warning), 
         .Z(n39531)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_rep_493_3_lut.init = 16'h4040;
    LUT4 i7_4_lut (.A(clk_cnt[12]), .B(clk_cnt[2]), .C(clk_cnt[8]), .D(clk_cnt[4]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_204 (.A(cnt_run_c[3]), .B(cnt_run_c[7]), .C(cnt_run_c[5]), 
         .D(cnt_run_c[4]), .Z(n10_adj_1865)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i4_4_lut_adj_204.init = 16'hfffe;
    LUT4 i50_3_lut (.A(uart_music_mode), .B(n60), .C(warning), .Z(n42_adj_1866)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/new porject/top-xu/top.v(72[10:17])
    defparam i50_3_lut.init = 16'hc5c5;
    LUT4 mux_3296_i1_4_lut (.A(n126), .B(uart_recv_data[0]), .C(sys_clk_c_enable_85), 
         .D(n34888), .Z(music_tone_7__N_1637[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/music_player.v(102[7] 324[5])
    defparam mux_3296_i1_4_lut.init = 16'hc0ca;
    LUT4 i3_4_lut_adj_205 (.A(n45_adj_1855), .B(sys_rst_n_c), .C(state[1]), 
         .D(n39526), .Z(sys_clk_c_enable_34)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam i3_4_lut_adj_205.init = 16'h0800;
    LUT4 i3_4_lut_adj_206 (.A(warning), .B(state[1]), .C(\state[0] ), 
         .D(n37217), .Z(sys_clk_c_enable_298)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i3_4_lut_adj_206.init = 16'h0800;
    LUT4 i1_3_lut (.A(sys_rst_n_c), .B(recv_done_d0), .C(recv_done_d1), 
         .Z(n37217)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i1_3_lut.init = 16'ha2a2;
    LUT4 i2_4_lut_adj_207 (.A(n37217), .B(n39531), .C(n146), .D(n120), 
         .Z(sys_clk_c_enable_231)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i2_4_lut_adj_207.init = 16'h0800;
    LUT4 i15286_2_lut (.A(sys_clk_c_enable_231), .B(n34920), .Z(n21903)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam i15286_2_lut.init = 16'h2222;
    LUT4 i8_4_lut_adj_208 (.A(music_cnt_c[7]), .B(n16_adj_1867), .C(n37554), 
         .D(music_cnt[6]), .Z(n34920)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i8_4_lut_adj_208.init = 16'hefff;
    LUT4 i7_4_lut_adj_209 (.A(music_cnt[2]), .B(music_cnt[1]), .C(music_cnt[4]), 
         .D(n39583), .Z(n16_adj_1867)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i7_4_lut_adj_209.init = 16'hff7f;
    LUT4 i30750_2_lut (.A(music_cnt[0]), .B(music_cnt[3]), .Z(n37554)) /* synthesis lut_function=(A (B)) */ ;
    defparam i30750_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_210 (.A(\state[0] ), .B(state[1]), .C(n39415), .D(state_back[0]), 
         .Z(n23)) /* synthesis lut_function=(!(A+!(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i1_4_lut_adj_210.init = 16'h5515;
    LUT4 i30881_3_lut (.A(clk_cnt[7]), .B(clk_cnt[13]), .C(clk_cnt[6]), 
         .Z(n37686)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i30881_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module OLED12832
//

module OLED12832 (sys_clk_c, oled_cs_c, oled_dc_c, \cnt[0] , n2507, 
            \ds18b20_data[4] , \cnt_main[2] , n8602, \cnt_main[1] , 
            \cnt_main[0] , GND_net, \cnt[4] , \cnt[3] , \cnt[2] , 
            \cnt[1] , sw1_c, n2678, n3059, n3437, n39303, n2681, 
            n39482, n2510, n39545, n2508, n3060, n3438, n2682, 
            n4, \min_tens[0] , \min_warning_tens[0] , n8627, \Tem_high[2] , 
            \min[0] , \min_warning[0] , \hour[0] , \hour_warning[0] , 
            n39512, time_set, n39631, n8622, n9316, n12685, n9303, 
            n12689, n3810, n4188, n8621, n8609, n3054, n3432, 
            n20729, n20731, n7, n2676, n2680, n3058, n3436, n3814, 
            n4192, n2509, n38480, n38528, n39232, n38817, n27972, 
            n39206, \min_ones[3] , \min_warning_ones[3] , n9593, n19147, 
            \hundres_0__N_349[1] , n40989, \hundres_1__N_341[0] , \ds18b20_data[8] , 
            \hundres_1__N_341[1] , n3435, n4191, n3057, n3813, key_mode, 
            n39643, n2679, n39562, n39362, \hundres_0__N_352[3] , 
            \hundres_0__N_349[1]_adj_1 , n9611, n4_adj_2, n39363, \hundres_0__N_352[3]_adj_3 , 
            \hundres_0__N_349[1]_adj_4 , n9607, warning_TEM, oled_mosi_c, 
            oled_sck_c, oled_res_c, n8599, n8626, n3816, n4194, 
            n3815, n4193, n2677, n3812, n4190, n3056, n3434, n3811, 
            n4189, n3055, n3433, \Tem_lower[2] , \Tem_lower[3] , \Tem_lower[1] , 
            n37838, n38554, n22, n22_adj_5, n15, n38562, n8623, 
            hundres_0__N_357, hundres_0__N_357_adj_6, hundres_0__N_357_adj_7, 
            hundres_0__N_357_adj_8, \hour_ones[2] , \hour_warning_ones[2] , 
            \hour_ones[3] , \hour_warning_ones[3] , \min_ones[2] , \min_warning_ones[2] , 
            \hour_ones[1] , \hour_warning_ones[1] , \min_ones[1] , \min_warning_ones[1] , 
            n8629, \Tem_high[0] , sys_rst_n_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output oled_cs_c;
    output oled_dc_c;
    output \cnt[0] ;
    output n2507;
    input \ds18b20_data[4] ;
    output \cnt_main[2] ;
    input n8602;
    output \cnt_main[1] ;
    output \cnt_main[0] ;
    input GND_net;
    output \cnt[4] ;
    output \cnt[3] ;
    output \cnt[2] ;
    output \cnt[1] ;
    input sw1_c;
    input n2678;
    input n3059;
    input n3437;
    input n39303;
    input n2681;
    output n39482;
    output n2510;
    output n39545;
    output n2508;
    input n3060;
    input n3438;
    input n2682;
    input n4;
    input \min_tens[0] ;
    input \min_warning_tens[0] ;
    input n8627;
    input \Tem_high[2] ;
    input \min[0] ;
    input \min_warning[0] ;
    input \hour[0] ;
    input \hour_warning[0] ;
    output n39512;
    input time_set;
    output n39631;
    input n8622;
    output n9316;
    input n12685;
    output n9303;
    input n12689;
    input n3810;
    input n4188;
    input n8621;
    input n8609;
    input n3054;
    input n3432;
    input n20729;
    input n20731;
    input n7;
    input n2676;
    input n2680;
    input n3058;
    input n3436;
    input n3814;
    input n4192;
    output n2509;
    input n38480;
    input n38528;
    input n39232;
    input n38817;
    input n27972;
    input n39206;
    input \min_ones[3] ;
    input \min_warning_ones[3] ;
    input n9593;
    input n19147;
    input \hundres_0__N_349[1] ;
    input n40989;
    input \hundres_1__N_341[0] ;
    input \ds18b20_data[8] ;
    input \hundres_1__N_341[1] ;
    input n3435;
    input n4191;
    input n3057;
    input n3813;
    input [2:0]key_mode;
    output n39643;
    input n2679;
    output n39562;
    input n39362;
    input \hundres_0__N_352[3] ;
    input \hundres_0__N_349[1]_adj_1 ;
    output n9611;
    output n4_adj_2;
    input n39363;
    input \hundres_0__N_352[3]_adj_3 ;
    input \hundres_0__N_349[1]_adj_4 ;
    output n9607;
    input warning_TEM;
    output oled_mosi_c;
    output oled_sck_c;
    output oled_res_c;
    input n8599;
    input n8626;
    input n3816;
    input n4194;
    input n3815;
    input n4193;
    input n2677;
    input n3812;
    input n4190;
    input n3056;
    input n3434;
    input n3811;
    input n4189;
    input n3055;
    input n3433;
    input \Tem_lower[2] ;
    input \Tem_lower[3] ;
    input \Tem_lower[1] ;
    input n37838;
    input n38554;
    input n22;
    input n22_adj_5;
    input n15;
    input n38562;
    input n8623;
    input hundres_0__N_357;
    input hundres_0__N_357_adj_6;
    input hundres_0__N_357_adj_7;
    input hundres_0__N_357_adj_8;
    input \hour_ones[2] ;
    input \hour_warning_ones[2] ;
    input \hour_ones[3] ;
    input \hour_warning_ones[3] ;
    input \min_ones[2] ;
    input \min_warning_ones[2] ;
    input \hour_ones[1] ;
    input \hour_warning_ones[1] ;
    input \min_ones[1] ;
    input \min_warning_ones[1] ;
    input n8629;
    input \Tem_high[0] ;
    input sys_rst_n_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // d:/new porject/top-xu/oled.v(52[9:19])
    wire [5:0]state;   // d:/new porject/top-xu/oled.v(47[13:18])
    
    wire n39612, n6, n12, n24, sys_clk_c_enable_329, n11, n4269, 
        n21844, n5, n18, n14;
    wire [4:0]cnt_init;   // d:/new porject/top-xu/oled.v(45[22:30])
    
    wire sys_clk_c_enable_259, n36265, n37005, n10, n39548, sys_clk_c_enable_14, 
        n6_adj_1721, n12_adj_1722, n24_adj_1723;
    wire [7:0]char_reg;   // d:/new porject/top-xu/oled.v(44[17:25])
    wire [7:0]char_reg_7__N_953;
    wire [5:0]state_back;   // d:/new porject/top-xu/oled.v(47[20:30])
    wire [5:0]state_back_5__N_1035;
    wire [0:0]n6262;
    
    wire sys_clk_c_enable_15, n36393;
    wire [15:0]num_delay;   // d:/new porject/top-xu/oled.v(46[13:22])
    wire [15:0]num_delay_15__N_981;
    
    wire n6_adj_1724, n37127, n24_adj_1725;
    wire [4:0]cnt_write;   // d:/new porject/top-xu/oled.v(45[42:51])
    
    wire n37889;
    wire [15:0]cnt;   // d:/new porject/top-xu/oled.v(46[35:38])
    
    wire sys_clk_c_enable_89, n21924;
    wire [15:0]n2170;
    
    wire n6_adj_1726, n37128, n12_adj_1727, n37087, n27, n47, n6_adj_1728, 
        n12_adj_1729, n24_adj_1730, n11802, n126, n11803, n37834;
    wire [4:0]cnt_main;   // d:/new porject/top-xu/oled.v(45[12:20])
    wire [167:0]char_167__N_1108;
    
    wire n37851, n37852;
    wire [4:0]cnt_scan;   // d:/new porject/top-xu/oled.v(45[32:40])
    
    wire n37853, n37832, n37833, n37844, n45, n57, n37815, n19, 
        n39616, n57_adj_1731, n61, n25;
    wire [7:0]num;   // d:/new porject/top-xu/oled.v(44[12:15])
    
    wire sys_clk_c_enable_222;
    wire [7:0]n1;
    
    wire sys_clk_c_enable_223, n42, n39691, n39692, n39693, n37890, 
        n37892, sys_clk_c_enable_254, n34726;
    wire [4:0]cnt_main_4__N_1048;
    
    wire n34369, n20295;
    wire [7:0]n2;
    
    wire flash_bit, rst_n_in_N_1518, flash_bit_N_1425, n34368, n34367, 
        n34366, n39517, n12_adj_1734, sys_clk_c_enable_279, n38779;
    wire [7:0]n8202;
    
    wire n6_adj_1735, n12_adj_1736, n26, n4_c, n39543, n21922, n36153, 
        n39645, n36998, n32, n21918, n40483, n39649, n40986, n39503, 
        n37888, n39_adj_1737, sys_clk_c_enable_133, n31502, n37887, 
        sys_clk_c_enable_132, n47_adj_1738, n39461, n36651, n39507, 
        n39015;
    wire [167:0]char;   // d:/new porject/top-xu/oled.v(43[19:23])
    
    wire sys_clk_c_enable_314, n36993, n37250, n36992, n36994, sys_clk_c_enable_313, 
        n36653, n23, n37258;
    wire [5:0]state_5__N_1340;
    
    wire n21;
    wire [7:0]x_ph;   // d:/new porject/top-xu/oled.v(42[17:21])
    
    wire n38880;
    wire [7:0]y_p;   // d:/new porject/top-xu/oled.v(42[12:15])
    
    wire sys_clk_c_enable_145, n39343, n39341, n39633, n39698, n39697, 
        n39613, n39635, n39701, n39700, n37422, n34440, n5_adj_1739, 
        n6_adj_1740, n57_adj_1741, n39304, n39458, n6_adj_1742, n39307, 
        n7_c, n11958, n20643, n39308, n39557, n19388, n37192, 
        n37277, n30700, n40263, n39283, n40043, n40040, n40042, 
        n39311, n39504, n27_adj_1743, n39731, n39730, n39619, n39314;
    wire [4:0]n2108;
    
    wire n40261, n39315, n19_adj_1744, n20, oled_dcn_N_1400, n39560, 
        n40256, n40255, n39003, n38998, n40257, n40258, n37843, 
        n40259, n40260, n12_adj_1746;
    wire [3:0]n8613;
    
    wire n37842, n38622, n34250;
    wire [15:0]cnt_delay;   // d:/new porject/top-xu/oled.v(46[24:33])
    
    wire n39001, n39000, n39002, n18_adj_1747, n34249, n34248, n39554, 
        n37837;
    wire [3:0]n8603;
    
    wire n37836, n37835, n38635, n11_adj_1748, n37826, n38636, n39634, 
        n39555, n9, n8, n39559, n40479, n37841, n15_c, n41_adj_1750, 
        n37831, n15_adj_1751, n39556, n40478, n37824, n15_adj_1752, 
        n38777, n7_adj_1753, n2309;
    wire [4:0]n2318;
    
    wire n39502;
    wire [4:0]cnt_scan_4__N_1058;
    
    wire n38639, n39636, n4_adj_1754, n39646, n11_adj_1755, n39481, 
        n37178, n30743;
    wire [15:0]n2144;
    
    wire n40637, n40638, n4_adj_1756, n37628, n40635, n40636, n40634, 
        n40633, n39523, n39522, n39564, n39639, n39477, n37769, 
        n8_adj_1757, n34772, n39510, n38481, n34247, n34246, n37755;
    wire [7:0]n1666;
    
    wire n58, oled_dcn_N_1409, n39478, n40777, n40776, n40774, n40858, 
        n40859, n40860, n40861;
    wire [7:0]x_pl;   // d:/new porject/top-xu/oled.v(42[23:27])
    
    wire n40862, n40863, n39668, n27269, n40864, n64, n40044, 
        n39563, n34245, n12_adj_1760, n39647, n37203, n12340, n39515, 
        n3, n47_adj_1761, n34244, n27247, n28165, n39567, n15_adj_1762, 
        n34243, n23917;
    wire [4:0]n17;
    
    wire n39550, n39659, n39658, n50, n38016, n27883, n45_adj_1763, 
        n39513, n26_adj_1764, n39549, n10246, n23899, n39654, n7_adj_1767, 
        n38714, n37656, n39541, n39516, n39450, n39660, n34238;
    wire [15:0]n4271;
    
    wire n23_adj_1768, n38879, n61_adj_1769, n39312, n39313, n39305, 
        n39306, n37849, n37848, n38637, n38638, n34237, n39662, 
        n34236, n10318, n39488, n37193, sys_clk_c_enable_262, n37121, 
        n39342, sys_clk_c_enable_264;
    wire [0:0]n6361;
    
    wire sys_clk_c_enable_265;
    wire [0:0]n6298;
    
    wire n34235, n34234, n34233, n37478, n34232, n1477, n3744, 
        n64_adj_1770, n12_adj_1771, n39317, n12_adj_1772, n44_adj_1773, 
        n39565, n64_adj_1774, n64_adj_1775, n12_adj_1776, n39611;
    wire [4:0]n4247;
    
    wire n64_adj_1777, n12_adj_1778, n39310, n12_adj_1779, n31, n35, 
        n20431, n39607, n37491, n12_adj_1780, n34231, n77, n8_adj_1781, 
        n37;
    wire [7:0]x_ph_7__N_1076;
    
    wire n19_adj_1782, n16, n16_adj_1783, n16_adj_1784, n34230, n16_adj_1785, 
        n38775, n38774, n38776, n34229, n34228, n16_adj_1786, n38766, 
        n16_adj_1787, n34227, sys_clk_c_enable_338, n21864, n16_adj_1788, 
        sys_clk_c_enable_343, n34226, n34225, n34224, n34223, n16_adj_1789, 
        n39544, n16_adj_1790, n12_adj_1791, n16_adj_1792, n16_adj_1793, 
        n16_adj_1794;
    wire [7:0]num_7__N_1092;
    
    wire n16_adj_1795, n16_adj_1796, n16_adj_1797, n39489;
    wire [15:0]num_delay_15__N_1292;
    
    wire n16_adj_1798, n16_adj_1799, n4_adj_1800, n16_adj_1801, n15_adj_1802, 
        n37048, n16_adj_1803, n11_adj_1804, n16_adj_1805, n16_adj_1806, 
        n19_adj_1807, n38767, n38781, n4_adj_1808, n38518, n39575, 
        n38787, n39505, oled_dat_N_1422, n27291, n37690, n6373, 
        n9129, n24_adj_1809, n24_adj_1810, n24_adj_1811, n24_adj_1812, 
        n24_adj_1813, n24_adj_1814, n38048, n35032, n28076, n37259, 
        n4_adj_1815, n34502, n27754, n28109, n40985, n6_adj_1816, 
        n38999, n38640, n24_adj_1817, n39610, n14_adj_1818, n4_adj_1819, 
        n19_adj_1820, n9_adj_1821, n21774, n24_adj_1822, n37104, n15_adj_1823, 
        n37825, n37093;
    wire [5:0]n2220;
    
    wire n6_adj_1824, n40775, n40778, n37830, n37861, n37858, n37374, 
        n40639, n37891, n20440, n16_adj_1825, n63, n39309, n39316, 
        n37822, n37823, n37829, n37839, n37840, n11_adj_1826, n12_adj_1827, 
        n6_adj_1828, n6_adj_1829, n34497, n6_adj_1831, n6_adj_1833, 
        n6_adj_1834;
    
    LUT4 i73_2_lut_rep_574 (.A(state[2]), .B(state[3]), .Z(n39612)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i73_2_lut_rep_574.init = 16'h6666;
    PFUMX i47 (.BLUT(n6), .ALUT(n12), .C0(state[3]), .Z(n24));
    LUT4 i15234_3_lut (.A(sys_clk_c_enable_329), .B(n11), .C(n4269), .Z(n21844)) /* synthesis lut_function=(A (B+(C))) */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam i15234_3_lut.init = 16'ha8a8;
    PFUMX i31 (.BLUT(n5), .ALUT(n18), .C0(state[2]), .Z(n14));
    FD1P3AX cnt_init_i0_i0 (.D(n36265), .SP(sys_clk_c_enable_259), .CK(sys_clk_c), 
            .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n37005), .B(n10), .C(state[0]), .D(n39548), .Z(sys_clk_c_enable_14)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha088;
    PFUMX i47_adj_16 (.BLUT(n6_adj_1721), .ALUT(n12_adj_1722), .C0(state[3]), 
          .Z(n24_adj_1723));
    FD1S3AX char_reg_i0 (.D(char_reg_7__N_953[0]), .CK(sys_clk_c), .Q(char_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_reg_i0.GSR = "ENABLED";
    FD1S3AY state_back_i0 (.D(state_back_5__N_1035[0]), .CK(sys_clk_c), 
            .Q(state_back[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_back_i0.GSR = "ENABLED";
    FD1P3AY oled_csn_322 (.D(n6262[0]), .SP(sys_clk_c_enable_14), .CK(sys_clk_c), 
            .Q(oled_cs_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam oled_csn_322.GSR = "ENABLED";
    FD1P3AX oled_dcn_324 (.D(n36393), .SP(sys_clk_c_enable_15), .CK(sys_clk_c), 
            .Q(oled_dc_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam oled_dcn_324.GSR = "ENABLED";
    FD1S3AY num_delay_i0 (.D(num_delay_15__N_981[0]), .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i0.GSR = "ENABLED";
    PFUMX i47_adj_17 (.BLUT(n6_adj_1724), .ALUT(n37127), .C0(state[3]), 
          .Z(n24_adj_1725));
    LUT4 i31084_3_lut (.A(char_reg[3]), .B(char_reg[2]), .C(cnt_write[1]), 
         .Z(n37889)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31084_3_lut.init = 16'hcaca;
    FD1P3IX cnt_i0_i15 (.D(n2170[15]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i15.GSR = "ENABLED";
    FD1P3IX cnt_i0_i14 (.D(n2170[14]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i14.GSR = "ENABLED";
    FD1P3IX cnt_i0_i0 (.D(n2170[0]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(\cnt[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    PFUMX i24204 (.BLUT(n6_adj_1726), .ALUT(n37128), .C0(state[3]), .Z(n12_adj_1727));
    FD1P3IX cnt_i0_i13 (.D(n2170[13]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i13.GSR = "ENABLED";
    FD1P3IX cnt_i0_i12 (.D(n2170[12]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i12.GSR = "ENABLED";
    PFUMX i73 (.BLUT(n37087), .ALUT(n27), .C0(state[3]), .Z(n47));
    PFUMX i47_adj_18 (.BLUT(n6_adj_1728), .ALUT(n12_adj_1729), .C0(state[3]), 
          .Z(n24_adj_1730));
    PFUMX i5310 (.BLUT(n11802), .ALUT(n126), .C0(n2507), .Z(n11803));
    LUT4 mux_36_Mux_0_i31_4_lut (.A(n37834), .B(\ds18b20_data[4] ), .C(cnt_main[4]), 
         .D(cnt_main[3]), .Z(char_167__N_1108[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam mux_36_Mux_0_i31_4_lut.init = 16'hcac0;
    PFUMX i31048 (.BLUT(n37851), .ALUT(n37852), .C0(cnt_scan[1]), .Z(n37853));
    LUT4 i31029_3_lut (.A(n37832), .B(n37833), .C(\cnt_main[2] ), .Z(n37834)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31029_3_lut.init = 16'hcaca;
    LUT4 i31027_4_lut (.A(n8602), .B(n37844), .C(\cnt_main[1] ), .D(\cnt_main[0] ), 
         .Z(n37832)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i31027_4_lut.init = 16'hcac0;
    FD1P3IX cnt_i0_i11 (.D(n2170[11]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i11.GSR = "ENABLED";
    FD1P3IX cnt_i0_i10 (.D(n2170[10]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i10.GSR = "ENABLED";
    PFUMX i24634 (.BLUT(n45), .ALUT(n57), .C0(n37815), .Z(n19));
    LUT4 i4_4_lut (.A(cnt_write[4]), .B(n39616), .C(state[4]), .D(cnt_write[0]), 
         .Z(n10)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i4_4_lut.init = 16'h2010;
    PFUMX i24649 (.BLUT(n57_adj_1731), .ALUT(n61), .C0(cnt_scan[3]), .Z(n25));
    FD1P3AX num_3011__i0 (.D(n1[0]), .SP(sys_clk_c_enable_222), .CK(sys_clk_c), 
            .Q(num[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011__i0.GSR = "ENABLED";
    FD1P3AY state_i0_i0 (.D(n42), .SP(sys_clk_c_enable_223), .CK(sys_clk_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_i0_i9 (.D(n2170[9]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i9.GSR = "ENABLED";
    PFUMX i31996 (.BLUT(n39691), .ALUT(n39692), .C0(\cnt[0] ), .Z(n39693));
    PFUMX i31087 (.BLUT(n37889), .ALUT(n37890), .C0(cnt_write[2]), .Z(n37892));
    FD1P3IX cnt_main_i0_i1 (.D(cnt_main_4__N_1048[1]), .SP(sys_clk_c_enable_254), 
            .CD(n34726), .CK(sys_clk_c), .Q(\cnt_main[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    LUT4 mux_2126_i1_4_lut (.A(cnt_write[4]), .B(state[0]), .C(n39548), 
         .D(state[4]), .Z(n6262[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam mux_2126_i1_4_lut.init = 16'hcac0;
    FD1P3IX cnt_i0_i8 (.D(n2170[8]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_i0_i7 (.D(n2170[7]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i7.GSR = "ENABLED";
    FD1P3IX cnt_i0_i6 (.D(n2170[6]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i6.GSR = "ENABLED";
    FD1P3IX cnt_i0_i5 (.D(n2170[5]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i5.GSR = "ENABLED";
    CCU2D num_3011_add_4_9 (.A0(cnt_scan[3]), .B0(n20295), .C0(num[7]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34369), .S0(n2[7]));   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011_add_4_9.INIT0 = 16'he1e1;
    defparam num_3011_add_4_9.INIT1 = 16'h0000;
    defparam num_3011_add_4_9.INJECT1_0 = "NO";
    defparam num_3011_add_4_9.INJECT1_1 = "NO";
    FD1S3IX flash_bit_307 (.D(flash_bit_N_1425), .CK(clk_in_1Hz), .CD(rst_n_in_N_1518), 
            .Q(flash_bit)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(60[8] 65[5])
    defparam flash_bit_307.GSR = "DISABLED";
    FD1P3IX cnt_i0_i4 (.D(n2170[4]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(\cnt[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i4.GSR = "ENABLED";
    CCU2D num_3011_add_4_7 (.A0(cnt_scan[3]), .B0(n20295), .C0(num[5]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20295), .C1(num[6]), 
          .D1(GND_net), .CIN(n34368), .COUT(n34369), .S0(n2[5]), .S1(n2[6]));   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011_add_4_7.INIT0 = 16'he1e1;
    defparam num_3011_add_4_7.INIT1 = 16'he1e1;
    defparam num_3011_add_4_7.INJECT1_0 = "NO";
    defparam num_3011_add_4_7.INJECT1_1 = "NO";
    FD1P3IX cnt_i0_i3 (.D(n2170[3]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(\cnt[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i3.GSR = "ENABLED";
    CCU2D num_3011_add_4_5 (.A0(cnt_scan[3]), .B0(n20295), .C0(num[3]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20295), .C1(num[4]), 
          .D1(GND_net), .CIN(n34367), .COUT(n34368), .S0(n2[3]), .S1(n2[4]));   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011_add_4_5.INIT0 = 16'he1e1;
    defparam num_3011_add_4_5.INIT1 = 16'he1e1;
    defparam num_3011_add_4_5.INJECT1_0 = "NO";
    defparam num_3011_add_4_5.INJECT1_1 = "NO";
    CCU2D num_3011_add_4_3 (.A0(cnt_scan[3]), .B0(n20295), .C0(num[1]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20295), .C1(num[2]), 
          .D1(GND_net), .CIN(n34366), .COUT(n34367), .S0(n2[1]), .S1(n2[2]));   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011_add_4_3.INIT0 = 16'he1e1;
    defparam num_3011_add_4_3.INIT1 = 16'he1e1;
    defparam num_3011_add_4_3.INJECT1_0 = "NO";
    defparam num_3011_add_4_3.INJECT1_1 = "NO";
    CCU2D num_3011_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20295), .C1(num[0]), 
          .D1(GND_net), .COUT(n34366), .S1(n2[0]));   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011_add_4_1.INIT0 = 16'hF000;
    defparam num_3011_add_4_1.INIT1 = 16'he1e1;
    defparam num_3011_add_4_1.INJECT1_0 = "NO";
    defparam num_3011_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(sys_clk_c_enable_254), .B(n39517), .C(n12_adj_1734), 
         .Z(sys_clk_c_enable_279)) /* synthesis lut_function=(!((B (C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2a2a;
    LUT4 i20853_3_lut (.A(n38779), .B(n39517), .C(cnt_main[4]), .Z(n8202[0])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i20853_3_lut.init = 16'hc8c8;
    PFUMX i47_adj_19 (.BLUT(n6_adj_1735), .ALUT(n12_adj_1736), .C0(state[3]), 
          .Z(n26));
    FD1P3IX cnt_i0_i2 (.D(n2170[2]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(\cnt[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    LUT4 i5130_1_lut (.A(cnt_write[0]), .Z(n4_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/oled.v(168[7] 188[14])
    defparam i5130_1_lut.init = 16'h5555;
    FD1P3IX cnt_i0_i1 (.D(n2170[1]), .SP(sys_clk_c_enable_89), .CD(n21924), 
            .CK(sys_clk_c), .Q(\cnt[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_505_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), .C(cnt_init[2]), 
         .D(cnt_init[1]), .Z(n39543)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_rep_505_4_lut.init = 16'h0010;
    FD1P3IX state_i0_i5 (.D(n36153), .SP(sys_clk_c_enable_223), .CD(n21922), 
            .CK(sys_clk_c), .Q(state[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_i0_i5.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), .C(n39645), 
         .D(state[2]), .Z(n36998)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    FD1P3IX state_i0_i4 (.D(n32), .SP(sys_clk_c_enable_223), .CD(n21922), 
            .CK(sys_clk_c), .Q(state[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_i0_i4.GSR = "ENABLED";
    FD1P3IX state_i0_i3 (.D(n40483), .SP(sys_clk_c_enable_223), .CD(n21918), 
            .CK(sys_clk_c), .Q(state[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_465_3_lut_4_lut (.A(state[2]), .B(state[3]), .C(n39649), 
         .D(n40986), .Z(n39503)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_465_3_lut_4_lut.init = 16'h0006;
    LUT4 i31083_3_lut (.A(char_reg[5]), .B(char_reg[4]), .C(cnt_write[1]), 
         .Z(n37888)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31083_3_lut.init = 16'hcaca;
    FD1P3IX state_i0_i2 (.D(n39_adj_1737), .SP(sys_clk_c_enable_223), .CD(n21918), 
            .CK(sys_clk_c), .Q(state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1P3IX num_3011__i6 (.D(n2[6]), .SP(sys_clk_c_enable_133), .CD(n31502), 
            .CK(sys_clk_c), .Q(num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011__i6.GSR = "ENABLED";
    LUT4 i31082_3_lut (.A(char_reg[7]), .B(char_reg[6]), .C(cnt_write[1]), 
         .Z(n37887)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31082_3_lut.init = 16'hcaca;
    FD1P3IX num_3011__i5 (.D(n2[5]), .SP(sys_clk_c_enable_133), .CD(n31502), 
            .CK(sys_clk_c), .Q(num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011__i5.GSR = "ENABLED";
    FD1P3IX num_3011__i4 (.D(n2[4]), .SP(sys_clk_c_enable_133), .CD(n31502), 
            .CK(sys_clk_c), .Q(num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011__i4.GSR = "ENABLED";
    FD1P3IX num_3011__i3 (.D(n2[3]), .SP(sys_clk_c_enable_133), .CD(n31502), 
            .CK(sys_clk_c), .Q(num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011__i3.GSR = "ENABLED";
    FD1P3AX num_3011__i2 (.D(n1[2]), .SP(sys_clk_c_enable_132), .CK(sys_clk_c), 
            .Q(num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011__i2.GSR = "ENABLED";
    FD1P3IX num_3011__i1 (.D(n2[1]), .SP(sys_clk_c_enable_133), .CD(n31502), 
            .CK(sys_clk_c), .Q(num[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011__i1.GSR = "ENABLED";
    FD1S3AX state_back_i5 (.D(state_back_5__N_1035[5]), .CK(sys_clk_c), 
            .Q(state_back[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_back_i5.GSR = "ENABLED";
    FD1S3AX state_back_i4 (.D(state_back_5__N_1035[4]), .CK(sys_clk_c), 
            .Q(state_back[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_back_i4.GSR = "ENABLED";
    FD1S3AX state_back_i3 (.D(state_back_5__N_1035[3]), .CK(sys_clk_c), 
            .Q(state_back[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_back_i3.GSR = "ENABLED";
    FD1S3AX state_back_i2 (.D(state_back_5__N_1035[2]), .CK(sys_clk_c), 
            .Q(state_back[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_back_i2.GSR = "ENABLED";
    FD1S3AX state_back_i1 (.D(state_back_5__N_1035[1]), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_back_i1.GSR = "ENABLED";
    FD1S3AX char_reg_i7 (.D(char_reg_7__N_953[7]), .CK(sys_clk_c), .Q(char_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_reg_i7.GSR = "ENABLED";
    FD1S3AX char_reg_i6 (.D(char_reg_7__N_953[6]), .CK(sys_clk_c), .Q(char_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_reg_i6.GSR = "ENABLED";
    FD1S3AX char_reg_i5 (.D(char_reg_7__N_953[5]), .CK(sys_clk_c), .Q(char_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_reg_i5.GSR = "ENABLED";
    FD1S3AX char_reg_i4 (.D(char_reg_7__N_953[4]), .CK(sys_clk_c), .Q(char_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_reg_i4.GSR = "ENABLED";
    FD1S3AX char_reg_i3 (.D(char_reg_7__N_953[3]), .CK(sys_clk_c), .Q(char_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_reg_i3.GSR = "ENABLED";
    FD1S3AX char_reg_i2 (.D(char_reg_7__N_953[2]), .CK(sys_clk_c), .Q(char_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_reg_i2.GSR = "ENABLED";
    FD1S3AX char_reg_i1 (.D(char_reg_7__N_953[1]), .CK(sys_clk_c), .Q(char_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_reg_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(state[2]), .B(state[3]), .C(state[0]), .D(state[4]), 
         .Z(n47_adj_1738)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0116;
    LUT4 i2_4_lut_4_lut (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .C(n39461), 
         .D(\cnt_main[2] ), .Z(n36651)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(45[12:20])
    defparam i2_4_lut_4_lut.init = 16'h0108;
    LUT4 state_4__bdd_4_lut_32239 (.A(state[4]), .B(state_back[4]), .C(state[5]), 
         .D(n39507), .Z(n39015)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C)))) */ ;
    defparam state_4__bdd_4_lut_32239.init = 16'h404a;
    FD1P3AX char_i0_i19 (.D(n36993), .SP(sys_clk_c_enable_314), .CK(sys_clk_c), 
            .Q(char[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_i0_i19.GSR = "ENABLED";
    FD1P3AX char_i0_i13 (.D(n37250), .SP(sys_clk_c_enable_314), .CK(sys_clk_c), 
            .Q(char[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_i0_i13.GSR = "ENABLED";
    FD1P3AX char_i0_i11 (.D(n36992), .SP(sys_clk_c_enable_314), .CK(sys_clk_c), 
            .Q(char[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_i0_i11.GSR = "ENABLED";
    FD1P3AX char_i0_i8 (.D(n36994), .SP(sys_clk_c_enable_314), .CK(sys_clk_c), 
            .Q(char[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_i0_i8.GSR = "ENABLED";
    FD1P3AX char_i0_i5 (.D(n36653), .SP(sys_clk_c_enable_313), .CK(sys_clk_c), 
            .Q(char[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_i0_i5.GSR = "ENABLED";
    LUT4 i29_4_lut_4_lut (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .C(sw1_c), 
         .D(\cnt_main[2] ), .Z(n23)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !(D)))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i29_4_lut_4_lut.init = 16'h6011;
    FD1P3AX char_i0_i4 (.D(n37258), .SP(sys_clk_c_enable_314), .CK(sys_clk_c), 
            .Q(char[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_i0_i4.GSR = "ENABLED";
    LUT4 i34_4_lut_4_lut (.A(state[3]), .B(state[0]), .C(state_5__N_1340[0]), 
         .D(state[1]), .Z(n21)) /* synthesis lut_function=(!(A (B+(D))+!A (B (D)+!B (C+!(D))))) */ ;
    defparam i34_4_lut_4_lut.init = 16'h0166;
    FD1P3AX x_ph_i0_i2 (.D(n38880), .SP(sys_clk_c_enable_314), .CK(sys_clk_c), 
            .Q(x_ph[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam x_ph_i0_i2.GSR = "ENABLED";
    FD1P3AX y_p_i0_i4 (.D(n39517), .SP(sys_clk_c_enable_145), .CK(sys_clk_c), 
            .Q(y_p[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam y_p_i0_i4.GSR = "ENABLED";
    LUT4 n15_bdd_4_lut_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(y_p[1]), 
         .D(x_ph[1]), .Z(n39343)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(146[24:39])
    defparam n15_bdd_4_lut_4_lut_4_lut.init = 16'h5410;
    LUT4 n15_bdd_4_lut_31981_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), 
         .C(y_p[0]), .D(x_ph[0]), .Z(n39341)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(146[24:39])
    defparam n15_bdd_4_lut_31981_4_lut_4_lut.init = 16'h5410;
    LUT4 i97_4_lut_4_lut_4_lut (.A(cnt_scan[0]), .B(y_p[4]), .C(cnt_scan[2]), 
         .D(n2678), .Z(n45)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;   // d:/new porject/top-xu/oled.v(146[24:39])
    defparam i97_4_lut_4_lut_4_lut.init = 16'ha404;
    LUT4 n37472_bdd_4_lut_rep_507_then_4_lut (.A(char[19]), .B(n39633), 
         .C(char[8]), .D(num[0]), .Z(n39698)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam n37472_bdd_4_lut_rep_507_then_4_lut.init = 16'h2230;
    LUT4 n37472_bdd_4_lut_rep_507_else_4_lut (.A(char[0]), .B(n39633), .C(char[8]), 
         .D(num[0]), .Z(n39697)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n37472_bdd_4_lut_rep_507_else_4_lut.init = 16'h3022;
    FD1S3AX num_delay_i15 (.D(num_delay_15__N_981[15]), .CK(sys_clk_c), 
            .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i15.GSR = "ENABLED";
    LUT4 i20734_2_lut_rep_575 (.A(state[3]), .B(state[2]), .Z(n39613)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20734_2_lut_rep_575.init = 16'heeee;
    FD1S3AX num_delay_i14 (.D(num_delay_15__N_981[14]), .CK(sys_clk_c), 
            .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i14.GSR = "ENABLED";
    LUT4 n38985_bdd_4_lut_then_4_lut (.A(num[0]), .B(n39635), .C(num[1]), 
         .D(char[19]), .Z(n39701)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n38985_bdd_4_lut_then_4_lut.init = 16'h0100;
    LUT4 n38985_bdd_4_lut_else_4_lut (.A(char[8]), .B(num[0]), .C(n39635), 
         .D(num[1]), .Z(n39700)) /* synthesis lut_function=(!((B (C)+!B (C+!(D)))+!A)) */ ;
    defparam n38985_bdd_4_lut_else_4_lut.init = 16'h0a08;
    FD1S3AX num_delay_i13 (.D(num_delay_15__N_981[13]), .CK(sys_clk_c), 
            .Q(num_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i13.GSR = "ENABLED";
    FD1S3AX num_delay_i12 (.D(num_delay_15__N_981[12]), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i12.GSR = "ENABLED";
    FD1S3AX num_delay_i11 (.D(num_delay_15__N_981[11]), .CK(sys_clk_c), 
            .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i11.GSR = "ENABLED";
    FD1S3AX num_delay_i10 (.D(num_delay_15__N_981[10]), .CK(sys_clk_c), 
            .Q(num_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i10.GSR = "ENABLED";
    FD1S3AX num_delay_i9 (.D(num_delay_15__N_981[9]), .CK(sys_clk_c), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i9.GSR = "ENABLED";
    FD1S3AX num_delay_i8 (.D(num_delay_15__N_981[8]), .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i8.GSR = "ENABLED";
    FD1S3AX num_delay_i7 (.D(num_delay_15__N_981[7]), .CK(sys_clk_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i7.GSR = "ENABLED";
    FD1S3AX num_delay_i6 (.D(num_delay_15__N_981[6]), .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i6.GSR = "ENABLED";
    FD1S3AX num_delay_i5 (.D(num_delay_15__N_981[5]), .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i5.GSR = "ENABLED";
    FD1S3AX num_delay_i4 (.D(num_delay_15__N_981[4]), .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i4.GSR = "ENABLED";
    FD1S3AX num_delay_i3 (.D(num_delay_15__N_981[3]), .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i3.GSR = "ENABLED";
    FD1S3AY num_delay_i2 (.D(num_delay_15__N_981[2]), .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i2.GSR = "ENABLED";
    FD1S3AX num_delay_i1 (.D(num_delay_15__N_981[1]), .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam num_delay_i1.GSR = "ENABLED";
    LUT4 i30628_2_lut_3_lut (.A(state[3]), .B(state[2]), .C(state[5]), 
         .Z(n37422)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30628_2_lut_3_lut.init = 16'hfefe;
    LUT4 i92_4_lut (.A(n34440), .B(n5_adj_1739), .C(cnt_scan[1]), .D(n6_adj_1740), 
         .Z(n57_adj_1741)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i92_4_lut.init = 16'hca0a;
    LUT4 n37858_bdd_3_lut (.A(n3059), .B(n3437), .C(cnt_scan[0]), .Z(n39304)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37858_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_20 (.A(state[2]), .B(n39303), .C(char_reg[4]), .D(n39458), 
         .Z(n6_adj_1742)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_20.init = 16'ha088;
    LUT4 i30877_3_lut_rep_578 (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[3]), 
         .Z(n39616)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30877_3_lut_rep_578.init = 16'hfefe;
    LUT4 n38578_bdd_3_lut_31958 (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(n2681), 
         .Z(n39307)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n38578_bdd_3_lut_31958.init = 16'h8080;
    LUT4 i4_4_lut_adj_21 (.A(n7_c), .B(n11958), .C(n39482), .D(n2510), 
         .Z(n20643)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_21.init = 16'hfffe;
    LUT4 n38578_bdd_3_lut (.A(n39343), .B(n39307), .C(cnt_scan[2]), .Z(n39308)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38578_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_519_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[3]), 
         .D(cnt_write[0]), .Z(n39557)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_519_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(n39545), .B(n2507), .C(n19388), .Z(n37192)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[3]), 
         .D(cnt_write[4]), .Z(n37277)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    LUT4 i15_2_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[3]), 
         .D(cnt_write[4]), .Z(n30700)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i15_2_lut_4_lut.init = 16'h01fe;
    FD1P3AX num_3011__i7 (.D(n1[7]), .SP(sys_clk_c_enable_222), .CK(sys_clk_c), 
            .Q(num[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011__i7.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(n40263), .SP(sys_clk_c_enable_223), .CK(sys_clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 i12790_4_lut (.A(n39283), .B(n20643), .C(cnt_scan[0]), .D(n2508), 
         .Z(n19388)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i12790_4_lut.init = 16'h3a30;
    LUT4 n4269_bdd_3_lut_32503 (.A(n4269), .B(state[4]), .C(state[5]), 
         .Z(n40043)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam n4269_bdd_3_lut_32503.init = 16'hefef;
    LUT4 n40041_bdd_2_lut_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(cnt_scan[2]), 
         .D(n40040), .Z(n40042)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n40041_bdd_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 n37861_bdd_3_lut (.A(n3060), .B(n3438), .C(cnt_scan[0]), .Z(n39311)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37861_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut (.A(state[2]), .B(state[0]), .C(state[3]), .D(n39504), 
         .Z(n27_adj_1743)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hffe1;
    LUT4 mux_35_Mux_0_i31_4_lut_then_3_lut (.A(cnt_main[4]), .B(cnt_main[3]), 
         .C(\cnt_main[2] ), .Z(n39731)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam mux_35_Mux_0_i31_4_lut_then_3_lut.init = 16'h5454;
    LUT4 mux_35_Mux_0_i31_4_lut_else_3_lut (.A(cnt_main[4]), .B(cnt_main[3]), 
         .C(\cnt_main[2] ), .D(\cnt_main[1] ), .Z(n39730)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam mux_35_Mux_0_i31_4_lut_else_3_lut.init = 16'h4446;
    LUT4 i3797_2_lut_rep_581 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n39619)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i3797_2_lut_rep_581.init = 16'h8888;
    LUT4 n38587_bdd_3_lut_31965 (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(n2682), 
         .Z(n39314)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n38587_bdd_3_lut_31965.init = 16'h8080;
    LUT4 i3802_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(n2108[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i3802_2_lut_3_lut.init = 16'h7878;
    LUT4 n40262_bdd_2_lut_3_lut (.A(n40261), .B(state[4]), .C(state[1]), 
         .Z(n40263)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n40262_bdd_2_lut_3_lut.init = 16'h0202;
    LUT4 n38587_bdd_3_lut (.A(n39341), .B(n39314), .C(cnt_scan[2]), .Z(n39315)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38587_bdd_3_lut.init = 16'hcaca;
    LUT4 i3809_2_lut_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[3]), 
         .D(cnt_init[2]), .Z(n2108[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i3809_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_4_lut_adj_22 (.A(n19_adj_1744), .B(\cnt[4] ), .C(n20), .D(n4), 
         .Z(oled_dcn_N_1400)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_22.init = 16'hfefa;
    LUT4 cnt_scan_2__bdd_4_lut (.A(cnt_scan[4]), .B(cnt_scan[3]), .C(cnt_scan[1]), 
         .D(cnt_scan[0]), .Z(n40040)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam cnt_scan_2__bdd_4_lut.init = 16'hefff;
    LUT4 n39543_bdd_3_lut_32265 (.A(state[5]), .B(state[2]), .C(n39560), 
         .Z(n40256)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam n39543_bdd_3_lut_32265.init = 16'h0101;
    LUT4 n39543_bdd_3_lut_32264 (.A(state[3]), .B(state[5]), .C(state[2]), 
         .Z(n40255)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam n39543_bdd_3_lut_32264.init = 16'h0101;
    PFUMX i31762 (.BLUT(n39003), .ALUT(n38998), .C0(num[3]), .Z(n2508));
    LUT4 n39543_bdd_2_lut (.A(state[2]), .B(state_back[1]), .Z(n40257)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n39543_bdd_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_4_lut_adj_23 (.A(\cnt_main[2] ), .B(n39461), .C(\cnt_main[1] ), 
         .D(\cnt_main[0] ), .Z(n36993)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_23.init = 16'h0200;
    LUT4 n39543_bdd_3_lut (.A(n39543), .B(state[2]), .C(cnt_init[0]), 
         .Z(n40258)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n39543_bdd_3_lut.init = 16'h8080;
    LUT4 i31232_3_lut (.A(\min_tens[0] ), .B(\min_warning_tens[0] ), .C(sw1_c), 
         .Z(n37843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31232_3_lut.init = 16'hcaca;
    LUT4 n40259_bdd_3_lut (.A(n40259), .B(n40256), .C(state[3]), .Z(n40260)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n40259_bdd_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut (.A(cnt[5]), .B(cnt[11]), .C(cnt[10]), .D(cnt[13]), 
         .Z(n19_adj_1744)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i31245_3_lut (.A(n8627), .B(\Tem_high[2] ), .C(\cnt_main[0] ), 
         .Z(n12_adj_1746)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31245_3_lut.init = 16'hcaca;
    LUT4 mux_2399_i1_3_lut (.A(\min[0] ), .B(\min_warning[0] ), .C(sw1_c), 
         .Z(n8613[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(112[120:150])
    defparam mux_2399_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_24 (.A(n39693), .B(char_reg[5]), .C(n39458), 
         .D(state[2]), .Z(n6)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_24.init = 16'hca00;
    LUT4 i31037_3_lut (.A(\hour[0] ), .B(\hour_warning[0] ), .C(sw1_c), 
         .Z(n37842)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31037_3_lut.init = 16'hcaca;
    LUT4 n2511_bdd_4_lut_31945 (.A(n39482), .B(n2510), .C(n39545), .D(n39512), 
         .Z(n38622)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((C+!(D))+!B))) */ ;
    defparam n2511_bdd_4_lut_31945.init = 16'h2400;
    CCU2D sub_2367_add_2_17 (.A0(cnt_delay[15]), .B0(num_delay[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34250), .S1(n4269));
    defparam sub_2367_add_2_17.INIT0 = 16'h5999;
    defparam sub_2367_add_2_17.INIT1 = 16'h0000;
    defparam sub_2367_add_2_17.INJECT1_0 = "NO";
    defparam sub_2367_add_2_17.INJECT1_1 = "NO";
    PFUMX i31760 (.BLUT(n39001), .ALUT(n39000), .C0(num[2]), .Z(n39002));
    LUT4 i9_4_lut (.A(cnt[9]), .B(n18_adj_1747), .C(cnt[8]), .D(cnt[6]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(cnt[7]), .B(cnt[14]), .C(cnt[12]), .D(cnt[15]), 
         .Z(n18_adj_1747)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_593 (.A(flash_bit), .B(time_set), .Z(n39631)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/oled.v(60[8] 65[5])
    defparam i1_2_lut_rep_593.init = 16'hbbbb;
    CCU2D sub_2367_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34249), .COUT(n34250));
    defparam sub_2367_add_2_15.INIT0 = 16'h5999;
    defparam sub_2367_add_2_15.INIT1 = 16'h5999;
    defparam sub_2367_add_2_15.INJECT1_0 = "NO";
    defparam sub_2367_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_2367_add_2_13 (.A0(cnt_delay[11]), .B0(num_delay[11]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34248), .COUT(n34249));
    defparam sub_2367_add_2_13.INIT0 = 16'h5999;
    defparam sub_2367_add_2_13.INIT1 = 16'h5999;
    defparam sub_2367_add_2_13.INJECT1_0 = "NO";
    defparam sub_2367_add_2_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_516_3_lut (.A(flash_bit), .B(time_set), .C(sw1_c), 
         .Z(n39554)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // d:/new porject/top-xu/oled.v(60[8] 65[5])
    defparam i1_2_lut_rep_516_3_lut.init = 16'h0b0b;
    LUT4 i31032_3_lut (.A(n8613[1]), .B(n8622), .C(\cnt_main[0] ), .Z(n37837)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31032_3_lut.init = 16'hcaca;
    LUT4 i31031_4_lut (.A(n8603[1]), .B(n9316), .C(\cnt_main[0] ), .D(n12685), 
         .Z(n37836)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i31031_4_lut.init = 16'h3aca;
    LUT4 i31030_4_lut (.A(n39554), .B(n9303), .C(\cnt_main[0] ), .D(n12689), 
         .Z(n37835)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i31030_4_lut.init = 16'h3aca;
    LUT4 n3054_bdd_3_lut_31568 (.A(n3810), .B(n4188), .C(cnt_scan[0]), 
         .Z(n38635)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3054_bdd_3_lut_31568.init = 16'hcaca;
    LUT4 mux_36_Mux_2_i11_3_lut (.A(n8613[2]), .B(n8621), .C(\cnt_main[0] ), 
         .Z(n11_adj_1748)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam mux_36_Mux_2_i11_3_lut.init = 16'hcaca;
    LUT4 i31021_3_lut (.A(n8603[3]), .B(n8609), .C(\cnt_main[0] ), .Z(n37826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31021_3_lut.init = 16'hcaca;
    LUT4 n3054_bdd_3_lut_32258 (.A(n3054), .B(n3432), .C(cnt_scan[0]), 
         .Z(n38636)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3054_bdd_3_lut_32258.init = 16'hcaca;
    LUT4 i2_3_lut_rep_595 (.A(num[4]), .B(num[3]), .C(num[2]), .Z(n39633)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i2_3_lut_rep_595.init = 16'hfefe;
    LUT4 i2_2_lut_rep_517_4_lut (.A(num[4]), .B(num[3]), .C(num[2]), .D(n39634), 
         .Z(n39555)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i2_2_lut_rep_517_4_lut.init = 16'hfffe;
    LUT4 mux_36_Mux_2_i9_4_lut (.A(n8603[2]), .B(n9316), .C(\cnt_main[0] ), 
         .D(n20729), .Z(n9)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam mux_36_Mux_2_i9_4_lut.init = 16'h3aca;
    LUT4 i21212_3_lut (.A(n9303), .B(\cnt_main[0] ), .C(n20731), .Z(n8)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i21212_3_lut.init = 16'h4848;
    LUT4 i12935_2_lut_rep_596 (.A(num[0]), .B(num[1]), .Z(n39634)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i12935_2_lut_rep_596.init = 16'heeee;
    LUT4 n39559_bdd_4_lut_32545 (.A(n39559), .B(\cnt_main[0] ), .C(state[1]), 
         .D(cnt_main[4]), .Z(n40479)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam n39559_bdd_4_lut_32545.init = 16'h10e0;
    LUT4 mux_36_Mux_1_i15_3_lut (.A(n7), .B(n37841), .C(cnt_main[3]), 
         .Z(n15_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam mux_36_Mux_1_i15_3_lut.init = 16'hcaca;
    LUT4 i21018_2_lut_rep_474_3_lut_4_lut (.A(num[0]), .B(num[1]), .C(char[1]), 
         .D(n39633), .Z(n39512)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i21018_2_lut_rep_474_3_lut_4_lut.init = 16'h0010;
    LUT4 i72_2_lut (.A(state[0]), .B(state[4]), .Z(n41_adj_1750)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i72_2_lut.init = 16'h6666;
    LUT4 mux_36_Mux_3_i15_3_lut (.A(n7), .B(n37831), .C(cnt_main[3]), 
         .Z(n15_adj_1751)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam mux_36_Mux_3_i15_3_lut.init = 16'hcaca;
    LUT4 i20978_2_lut_rep_518_3_lut (.A(num[0]), .B(num[1]), .C(char[19]), 
         .Z(n39556)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i20978_2_lut_rep_518_3_lut.init = 16'h1010;
    LUT4 i12955_2_lut_rep_597 (.A(num[3]), .B(num[4]), .Z(n39635)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i12955_2_lut_rep_597.init = 16'heeee;
    LUT4 n39559_bdd_2_lut_32544 (.A(state_back[3]), .B(state[1]), .Z(n40478)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n39559_bdd_2_lut_32544.init = 16'h2222;
    LUT4 i21213_2_lut (.A(n37824), .B(cnt_main[3]), .Z(n15_adj_1752)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i21213_2_lut.init = 16'h8888;
    LUT4 i20661_2_lut_rep_632 (.A(state[5]), .B(state[4]), .Z(n40986)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20661_2_lut_rep_632.init = 16'heeee;
    LUT4 i21016_2_lut_rep_444_3_lut (.A(num[3]), .B(num[4]), .C(n38777), 
         .Z(n39482)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i21016_2_lut_rep_444_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut (.A(num[3]), .B(num[4]), .C(n39545), .D(n38777), 
         .Z(n7_adj_1753)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 mux_75_i2_4_lut (.A(n2309), .B(n2318[1]), .C(n39502), .D(n39560), 
         .Z(cnt_scan_4__N_1058[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(145[16] 146[40])
    defparam mux_75_i2_4_lut.init = 16'hca0a;
    LUT4 i3831_2_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n2318[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(146[24:39])
    defparam i3831_2_lut.init = 16'h6666;
    LUT4 n3054_bdd_4_lut (.A(n2676), .B(cnt_scan[1]), .C(cnt_scan[0]), 
         .D(cnt_scan[2]), .Z(n38639)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n3054_bdd_4_lut.init = 16'h8000;
    LUT4 i35_2_lut_rep_598 (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .Z(n39636)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i35_2_lut_rep_598.init = 16'h6666;
    LUT4 i3_4_lut (.A(num[6]), .B(num[5]), .C(n39555), .D(num[7]), .Z(n2309)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(143[11:14])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .C(\cnt_main[2] ), 
         .Z(n4_adj_1754)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i1_2_lut_3_lut.init = 16'h6060;
    FD1P3IX cnt_main_i0_i0 (.D(cnt_main_4__N_1048[0]), .SP(sys_clk_c_enable_254), 
            .CD(n34726), .CK(sys_clk_c), .Q(\cnt_main[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_4_lut (.A(state[3]), .B(n40986), .C(n39646), .D(state[0]), 
         .Z(n11_adj_1755)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i2_4_lut_4_lut_adj_25 (.A(state[3]), .B(state[0]), .C(n39481), 
         .D(n37178), .Z(n31502)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i2_4_lut_4_lut_adj_25.init = 16'h5400;
    FD1P3IX cnt_main_i0_i2 (.D(cnt_main_4__N_1048[2]), .SP(sys_clk_c_enable_254), 
            .CD(n34726), .CK(sys_clk_c), .Q(\cnt_main[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    LUT4 i24221_3_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .Z(n30743)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(45[42:51])
    defparam i24221_3_lut.init = 16'h6a6a;
    LUT4 i20990_2_lut (.A(n2144[13]), .B(oled_dcn_N_1400), .Z(n2170[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20990_2_lut.init = 16'h2222;
    LUT4 i20991_2_lut (.A(n2144[12]), .B(oled_dcn_N_1400), .Z(n2170[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20991_2_lut.init = 16'h2222;
    LUT4 gnd_bdd_2_lut_32491 (.A(n40637), .B(cnt_scan[1]), .Z(n40638)) /* synthesis lut_function=(A (B)) */ ;
    defparam gnd_bdd_2_lut_32491.init = 16'h8888;
    LUT4 n2680_bdd_4_lut_32525 (.A(n2680), .B(x_ph[2]), .C(cnt_scan[2]), 
         .D(cnt_scan[0]), .Z(n40637)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n2680_bdd_4_lut_32525.init = 16'ha00c;
    LUT4 i30823_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(oled_dcn_N_1400), 
         .D(n4_adj_1756), .Z(n37628)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i30823_4_lut.init = 16'ha888;
    LUT4 n40635_bdd_2_lut_32676 (.A(n40635), .B(cnt_scan[2]), .Z(n40636)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n40635_bdd_2_lut_32676.init = 16'h2222;
    LUT4 i4_4_lut_4_lut (.A(state[1]), .B(n41_adj_1750), .C(n39503), .D(n37422), 
         .Z(n37005)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i4_4_lut_4_lut.init = 16'h0004;
    LUT4 n3058_bdd_3_lut_32521 (.A(n3058), .B(n3436), .C(cnt_scan[0]), 
         .Z(n40634)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3058_bdd_3_lut_32521.init = 16'hcaca;
    LUT4 i5443_1_lut (.A(n2508), .Z(n11958)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i5443_1_lut.init = 16'h5555;
    LUT4 n3058_bdd_3_lut_32486 (.A(n3814), .B(n4192), .C(cnt_scan[0]), 
         .Z(n40633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3058_bdd_3_lut_32486.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_4_lut (.A(state[1]), .B(oled_dcn_N_1400), .C(n39523), 
         .D(n39522), .Z(n18)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h4055;
    LUT4 i31390_4_lut_rep_479_4_lut (.A(state[1]), .B(n39564), .C(state[0]), 
         .D(state[2]), .Z(n39517)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i31390_4_lut_rep_479_4_lut.init = 16'h0002;
    LUT4 i14085_2_lut_rep_601 (.A(\cnt_main[1] ), .B(\cnt_main[2] ), .Z(n39639)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i14085_2_lut_rep_601.init = 16'heeee;
    LUT4 i30964_3_lut_4_lut (.A(cnt_init[0]), .B(n39477), .C(\cnt[3] ), 
         .D(\cnt[4] ), .Z(n37769)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam i30964_3_lut_4_lut.init = 16'h0100;
    LUT4 i2_2_lut (.A(cnt_scan[0]), .B(n2509), .Z(n8_adj_1757)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2_2_lut.init = 16'hdddd;
    LUT4 i2_3_lut_4_lut_adj_26 (.A(\cnt_main[1] ), .B(\cnt_main[2] ), .C(cnt_main[3]), 
         .D(\cnt_main[0] ), .Z(n34772)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i2_3_lut_4_lut_adj_26.init = 16'hfffe;
    LUT4 i1_2_lut_rep_521_3_lut (.A(\cnt_main[1] ), .B(\cnt_main[2] ), .C(cnt_main[3]), 
         .Z(n39559)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i1_2_lut_rep_521_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_472_3_lut_4_lut (.A(\cnt_main[1] ), .B(\cnt_main[2] ), 
         .C(\cnt_main[0] ), .D(cnt_main[3]), .Z(n39510)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i1_2_lut_rep_472_3_lut_4_lut.init = 16'hfffe;
    LUT4 n38480_bdd_3_lut_4_lut (.A(cnt_init[0]), .B(n39477), .C(char_reg[0]), 
         .D(n38480), .Z(n38481)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam n38480_bdd_3_lut_4_lut.init = 16'hf1e0;
    CCU2D sub_2367_add_2_11 (.A0(cnt_delay[9]), .B0(num_delay[9]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(num_delay[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34247), .COUT(n34248));
    defparam sub_2367_add_2_11.INIT0 = 16'h5999;
    defparam sub_2367_add_2_11.INIT1 = 16'h5999;
    defparam sub_2367_add_2_11.INJECT1_0 = "NO";
    defparam sub_2367_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_2367_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34246), .COUT(n34247));
    defparam sub_2367_add_2_9.INIT0 = 16'h5999;
    defparam sub_2367_add_2_9.INIT1 = 16'h5999;
    defparam sub_2367_add_2_9.INJECT1_0 = "NO";
    defparam sub_2367_add_2_9.INJECT1_1 = "NO";
    LUT4 i30950_3_lut_4_lut (.A(cnt_init[0]), .B(n39477), .C(\cnt[3] ), 
         .D(\cnt[4] ), .Z(n37755)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam i30950_3_lut_4_lut.init = 16'h0010;
    LUT4 mux_282_Mux_1_i31_3_lut_4_lut (.A(cnt_init[0]), .B(n39477), .C(char_reg[1]), 
         .D(n38528), .Z(n1666[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam mux_282_Mux_1_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_282_Mux_6_i31_3_lut_4_lut (.A(cnt_init[0]), .B(n39477), .C(char_reg[6]), 
         .D(n39232), .Z(n1666[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam mux_282_Mux_6_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_282_Mux_7_i31_3_lut_4_lut (.A(cnt_init[0]), .B(n39477), .C(char_reg[7]), 
         .D(n38817), .Z(n1666[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam mux_282_Mux_7_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_282_Mux_3_i31_3_lut_4_lut (.A(cnt_init[0]), .B(n39477), .C(char_reg[3]), 
         .D(n27972), .Z(n1666[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam mux_282_Mux_3_i31_3_lut_4_lut.init = 16'he0f1;
    LUT4 i1_3_lut_4_lut_adj_27 (.A(cnt_scan[3]), .B(cnt_scan[2]), .C(n58), 
         .D(cnt_scan[4]), .Z(oled_dcn_N_1409)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i1_3_lut_4_lut_adj_27.init = 16'hff80;
    LUT4 i2_3_lut_rep_522_4_lut (.A(cnt_scan[3]), .B(cnt_scan[2]), .C(cnt_scan[4]), 
         .D(n58), .Z(n39560)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_rep_522_4_lut.init = 16'hfff7;
    LUT4 mux_282_Mux_2_i31_3_lut_4_lut (.A(cnt_init[0]), .B(n39477), .C(char_reg[2]), 
         .D(n39206), .Z(n1666[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam mux_282_Mux_2_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_28 (.A(cnt_main[3]), .B(n39478), .C(n39636), 
         .D(\cnt_main[2] ), .Z(n36994)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_28.init = 16'h1000;
    LUT4 min_ones_3__bdd_3_lut (.A(\min_ones[3] ), .B(\min_warning_ones[3] ), 
         .C(sw1_c), .Z(n40777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam min_ones_3__bdd_3_lut.init = 16'hcaca;
    LUT4 min_ones_3__bdd_4_lut (.A(n9593), .B(n19147), .C(\hundres_0__N_349[1] ), 
         .D(sw1_c), .Z(n40776)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam min_ones_3__bdd_4_lut.init = 16'h0078;
    LUT4 n8626_bdd_4_lut (.A(n40989), .B(\hundres_1__N_341[0] ), .C(\ds18b20_data[8] ), 
         .D(\hundres_1__N_341[1] ), .Z(n40774)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam n8626_bdd_4_lut.init = 16'h5400;
    LUT4 n3057_bdd_3_lut_32616 (.A(n3435), .B(n4191), .C(cnt_scan[1]), 
         .Z(n40858)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3057_bdd_3_lut_32616.init = 16'hcaca;
    LUT4 n3057_bdd_3_lut (.A(n3057), .B(n3813), .C(cnt_scan[1]), .Z(n40859)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3057_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_605 (.A(key_mode[2]), .B(key_mode[1]), .Z(n39643)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_605.init = 16'heeee;
    LUT4 n40860_bdd_2_lut_32682 (.A(n40860), .B(cnt_scan[2]), .Z(n40861)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n40860_bdd_2_lut_32682.init = 16'h2222;
    LUT4 n2679_bdd_4_lut (.A(n2679), .B(x_pl[3]), .C(cnt_scan[2]), .D(cnt_scan[1]), 
         .Z(n40862)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n2679_bdd_4_lut.init = 16'ha00c;
    LUT4 i1_2_lut_rep_524_3_lut (.A(key_mode[2]), .B(key_mode[1]), .C(key_mode[0]), 
         .Z(n39562)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_524_3_lut.init = 16'hfefe;
    LUT4 i31409_2_lut (.A(cnt_scan[3]), .B(cnt_scan[1]), .Z(n37815)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/oled.v(45[32:40])
    defparam i31409_2_lut.init = 16'hbbbb;
    LUT4 i3916_3_lut_4_lut (.A(n39362), .B(\hundres_0__N_352[3] ), .C(n9303), 
         .D(\hundres_0__N_349[1]_adj_1 ), .Z(n9611)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/oled.v(109[119:149])
    defparam i3916_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1_2_lut_3_lut_adj_29 (.A(key_mode[2]), .B(key_mode[1]), .C(sw1_c), 
         .Z(n4_adj_2)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_29.init = 16'hefef;
    LUT4 i20992_2_lut (.A(n2144[11]), .B(oled_dcn_N_1400), .Z(n2170[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20992_2_lut.init = 16'h2222;
    LUT4 gnd_bdd_2_lut_32648 (.A(n40862), .B(cnt_scan[0]), .Z(n40863)) /* synthesis lut_function=(A (B)) */ ;
    defparam gnd_bdd_2_lut_32648.init = 16'h8888;
    LUT4 i1_2_lut_rep_607 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n39645)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_607.init = 16'h8888;
    LUT4 i20701_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(n39668), 
         .D(cnt_init[0]), .Z(n27269)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i20701_3_lut_4_lut.init = 16'hfff8;
    LUT4 equal_2354_i7_2_lut_rep_608 (.A(state[1]), .B(state[2]), .Z(n39646)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(80[5:9])
    defparam equal_2354_i7_2_lut_rep_608.init = 16'heeee;
    LUT4 i1_2_lut (.A(cnt_scan[4]), .B(n40864), .Z(n64)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(45[32:40])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i20993_2_lut (.A(n2144[10]), .B(oled_dcn_N_1400), .Z(n2170[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20993_2_lut.init = 16'h2222;
    LUT4 i31369_2_lut_3_lut_4_lut (.A(state[1]), .B(state[2]), .C(n40044), 
         .D(state[0]), .Z(sys_clk_c_enable_223)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(80[5:9])
    defparam i31369_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 equal_2354_i8_2_lut_rep_525_3_lut (.A(state[1]), .B(state[2]), 
         .C(state[0]), .Z(n39563)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/oled.v(80[5:9])
    defparam equal_2354_i8_2_lut_rep_525_3_lut.init = 16'hfefe;
    CCU2D sub_2367_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34245), .COUT(n34246));
    defparam sub_2367_add_2_7.INIT0 = 16'h5999;
    defparam sub_2367_add_2_7.INIT1 = 16'h5999;
    defparam sub_2367_add_2_7.INJECT1_0 = "NO";
    defparam sub_2367_add_2_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_30 (.A(state[1]), .B(state[2]), .C(state_back[2]), 
         .Z(n12_adj_1760)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/oled.v(80[5:9])
    defparam i1_2_lut_3_lut_adj_30.init = 16'h1010;
    LUT4 i2_3_lut_4_lut_4_lut_adj_31 (.A(state[5]), .B(state[4]), .C(n39563), 
         .D(state[3]), .Z(n11)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_31.init = 16'hfffd;
    LUT4 i1_2_lut_rep_609 (.A(state[4]), .B(cnt_write[0]), .Z(n39647)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i1_2_lut_rep_609.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_32 (.A(state[4]), .B(cnt_write[0]), .C(cnt_write[4]), 
         .Z(n37203)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i1_2_lut_3_lut_adj_32.init = 16'h0808;
    LUT4 i1_4_lut_adj_33 (.A(n12340), .B(n39515), .C(n3), .D(n47_adj_1761), 
         .Z(sys_clk_c_enable_259)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_33.init = 16'h4044;
    CCU2D sub_2367_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34244), .COUT(n34245));
    defparam sub_2367_add_2_5.INIT0 = 16'h5999;
    defparam sub_2367_add_2_5.INIT1 = 16'h5999;
    defparam sub_2367_add_2_5.INJECT1_0 = "NO";
    defparam sub_2367_add_2_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n37178), .B(n27247), .C(n28165), .D(state_5__N_1340[0]), 
         .Z(sys_clk_c_enable_222)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;
    defparam i2_4_lut.init = 16'h80a0;
    LUT4 i1_2_lut_rep_611 (.A(state[0]), .B(state[1]), .Z(n39649)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_2_lut_rep_611.init = 16'heeee;
    LUT4 i1_4_lut_adj_34 (.A(n39567), .B(n15_adj_1762), .C(n27247), .D(state[1]), 
         .Z(n37178)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_34.init = 16'h0544;
    CCU2D sub_2367_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n34243), .COUT(n34244));
    defparam sub_2367_add_2_3.INIT0 = 16'h5999;
    defparam sub_2367_add_2_3.INIT1 = 16'h5999;
    defparam sub_2367_add_2_3.INJECT1_0 = "NO";
    defparam sub_2367_add_2_3.INJECT1_1 = "NO";
    LUT4 i20680_2_lut (.A(state[0]), .B(state[3]), .Z(n27247)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20680_2_lut.init = 16'heeee;
    LUT4 i15299_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(sys_clk_c_enable_223), 
         .Z(n21922)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i15299_2_lut_3_lut.init = 16'he0e0;
    CCU2D sub_2367_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n34243));
    defparam sub_2367_add_2_1.INIT0 = 16'h0000;
    defparam sub_2367_add_2_1.INIT1 = 16'h5999;
    defparam sub_2367_add_2_1.INJECT1_0 = "NO";
    defparam sub_2367_add_2_1.INJECT1_1 = "NO";
    FD1P3IX cnt_main_i0_i3 (.D(n17[3]), .SP(sys_clk_c_enable_254), .CD(n23917), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    LUT4 i21317_2_lut_rep_512_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[1]), 
         .D(state[0]), .Z(n39550)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21317_2_lut_rep_512_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_35 (.A(n39659), .B(n27247), .C(n39658), .D(cnt_main[4]), 
         .Z(n28165)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_35.init = 16'hfffe;
    LUT4 i39_2_lut (.A(state[3]), .B(state[0]), .Z(n15_adj_1762)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i39_2_lut.init = 16'h6666;
    LUT4 i31342_4_lut (.A(n50), .B(n38016), .C(n39613), .D(n39649), 
         .Z(n42)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i31342_4_lut.init = 16'hccc4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_36 (.A(state[5]), .B(state[4]), .C(state[3]), 
         .D(state[1]), .Z(n27883)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_36.init = 16'hfffe;
    LUT4 i31341_4_lut (.A(n45_adj_1763), .B(n40986), .C(n47), .D(n39649), 
         .Z(n38016)) /* synthesis lut_function=(A (B)+!A (B+((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i31341_4_lut.init = 16'hddcd;
    LUT4 i2_4_lut_adj_37 (.A(state[0]), .B(n39613), .C(state_5__N_1340[0]), 
         .D(state[1]), .Z(n45_adj_1763)) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i2_4_lut_adj_37.init = 16'h0122;
    LUT4 i20994_2_lut (.A(n2144[9]), .B(oled_dcn_N_1400), .Z(n2170[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20994_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_3_lut (.A(state[5]), .B(state[4]), .C(n39513), .Z(n26_adj_1764)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_4_lut_3_lut.init = 16'h1010;
    LUT4 equal_2354_i10_2_lut_rep_526_3_lut (.A(state[5]), .B(state[4]), 
         .C(state[3]), .Z(n39564)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam equal_2354_i10_2_lut_rep_526_3_lut.init = 16'hfefe;
    LUT4 i3944_3_lut_4_lut (.A(n39363), .B(\hundres_0__N_352[3]_adj_3 ), 
         .C(n9303), .D(\hundres_0__N_349[1]_adj_4 ), .Z(n9607)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/oled.v(109[119:149])
    defparam i3944_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i20683_2_lut_rep_529_3_lut (.A(state[5]), .B(state[4]), .C(state[2]), 
         .Z(n39567)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i20683_2_lut_rep_529_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_511_3_lut (.A(state[5]), .B(state[4]), .C(state[1]), 
         .Z(n39549)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_511_3_lut.init = 16'hfefe;
    LUT4 i20995_2_lut (.A(n2144[8]), .B(oled_dcn_N_1400), .Z(n2170[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20995_2_lut.init = 16'h2222;
    LUT4 i20996_2_lut (.A(n2144[7]), .B(oled_dcn_N_1400), .Z(n2170[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20996_2_lut.init = 16'h2222;
    LUT4 i20997_2_lut (.A(n2144[6]), .B(oled_dcn_N_1400), .Z(n2170[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20997_2_lut.init = 16'h2222;
    LUT4 i20998_2_lut (.A(n2144[5]), .B(oled_dcn_N_1400), .Z(n2170[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20998_2_lut.init = 16'h2222;
    FD1P3IX cnt_main_i0_i4 (.D(n10246), .SP(sys_clk_c_enable_254), .CD(n23917), 
            .CK(sys_clk_c), .Q(cnt_main[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_main_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i1 (.D(n2108[1]), .SP(sys_clk_c_enable_259), .CD(n23899), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    LUT4 flash_bit_I_0_1_lut (.A(flash_bit), .Z(flash_bit_N_1425)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/oled.v(64[17:28])
    defparam flash_bit_I_0_1_lut.init = 16'h5555;
    LUT4 i3753_2_lut_rep_616 (.A(\cnt_main[0] ), .B(warning_TEM), .Z(n39654)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(91[40:55])
    defparam i3753_2_lut_rep_616.init = 16'h8888;
    LUT4 i20999_2_lut (.A(n2144[4]), .B(oled_dcn_N_1400), .Z(n2170[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20999_2_lut.init = 16'h2222;
    LUT4 i21000_2_lut (.A(n2144[3]), .B(oled_dcn_N_1400), .Z(n2170[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i21000_2_lut.init = 16'h2222;
    LUT4 i20698_3_lut_4_lut (.A(\cnt_main[0] ), .B(warning_TEM), .C(cnt_main[4]), 
         .D(\cnt_main[1] ), .Z(cnt_main_4__N_1048[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // d:/new porject/top-xu/oled.v(91[40:55])
    defparam i20698_3_lut_4_lut.init = 16'hf7f8;
    LUT4 i30630_2_lut_rep_620 (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .Z(n39658)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30630_2_lut_rep_620.init = 16'heeee;
    LUT4 i15_2_lut_3_lut (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .C(\cnt_main[2] ), 
         .Z(n7_adj_1767)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i15_2_lut_3_lut.init = 16'h1e1e;
    LUT4 state_5__bdd_4_lut_32215 (.A(state[0]), .B(n39616), .C(cnt_write[0]), 
         .D(cnt_write[4]), .Z(n38714)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (D)))) */ ;
    defparam state_5__bdd_4_lut_32215.init = 16'h3155;
    LUT4 i2_2_lut_rep_621 (.A(cnt_main[3]), .B(\cnt_main[2] ), .Z(n39659)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_621.init = 16'heeee;
    LUT4 i30851_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(\cnt_main[2] ), .C(\cnt_main[1] ), 
         .D(\cnt_main[0] ), .Z(n37656)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30851_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_3_lut_4_lut (.A(oled_dcn_N_1400), .B(n39541), .C(n39516), 
         .D(n27269), .Z(n36265)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam i3_3_lut_4_lut.init = 16'h000e;
    LUT4 i31000_2_lut_rep_412_3_lut_4_lut (.A(oled_dcn_N_1400), .B(n39541), 
         .C(\cnt[4] ), .D(cnt_init[0]), .Z(n39450)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam i31000_2_lut_rep_412_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_622 (.A(cnt_scan[0]), .B(cnt_scan[2]), .Z(n39660)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_622.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(n20643), 
         .Z(n6_adj_1740)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_2_lut_3_lut.init = 16'h0808;
    CCU2D add_117_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34238), .S0(n4271[15]));   // d:/new porject/top-xu/oled.v(193[29:45])
    defparam add_117_17.INIT0 = 16'h5aaa;
    defparam add_117_17.INIT1 = 16'h0000;
    defparam add_117_17.INJECT1_0 = "NO";
    defparam add_117_17.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_422_3_lut (.A(n39517), .B(n23_adj_1768), .C(sys_clk_c_enable_254), 
         .Z(sys_clk_c_enable_313)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i2_3_lut_rep_422_3_lut.init = 16'hd0d0;
    LUT4 i30799_2_lut_rep_440 (.A(n39517), .B(cnt_main[4]), .Z(n39478)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i30799_2_lut_rep_440.init = 16'hdddd;
    LUT4 n38879_bdd_2_lut_3_lut (.A(n39517), .B(cnt_main[4]), .C(n38879), 
         .Z(n38880)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n38879_bdd_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_38 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[4]), 
         .Z(n34440)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_38.init = 16'h1010;
    LUT4 i1_4_lut_4_lut_adj_39 (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(n37192), 
         .D(n11803), .Z(n61_adj_1769)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam i1_4_lut_4_lut_adj_39.init = 16'h5140;
    LUT4 gnd_bdd_2_lut_31968_2_lut (.A(cnt_scan[2]), .B(n39312), .Z(n39313)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam gnd_bdd_2_lut_31968_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_40 (.A(n39517), .B(cnt_main[4]), .C(n23), 
         .D(cnt_main[3]), .Z(n36653)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_40.init = 16'h2022;
    LUT4 gnd_bdd_2_lut_31961_2_lut (.A(cnt_scan[2]), .B(n39305), .Z(n39306)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam gnd_bdd_2_lut_31961_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(n39517), .B(cnt_main[4]), .C(n7_adj_1767), 
         .D(cnt_main[3]), .Z(n37250)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'h0020;
    LUT4 i30897_2_lut_rep_423_3_lut (.A(n39517), .B(cnt_main[4]), .C(cnt_main[3]), 
         .Z(n39461)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i30897_2_lut_rep_423_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_4_lut_4_lut_adj_42 (.A(cnt_scan[2]), .B(cnt_scan[1]), 
         .C(n37849), .D(n37848), .Z(n61)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam i1_2_lut_4_lut_4_lut_adj_42.init = 16'h5140;
    LUT4 i1_2_lut_3_lut_adj_43 (.A(n39517), .B(cnt_main[4]), .C(sys_clk_c_enable_254), 
         .Z(n23917)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_adj_43.init = 16'hd0d0;
    LUT4 gnd_bdd_2_lut_31575_2_lut (.A(cnt_scan[2]), .B(n38637), .Z(n38638)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam gnd_bdd_2_lut_31575_2_lut.init = 16'h4444;
    CCU2D add_117_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34237), .COUT(n34238), .S0(n4271[13]), 
          .S1(n4271[14]));   // d:/new porject/top-xu/oled.v(193[29:45])
    defparam add_117_15.INIT0 = 16'h5aaa;
    defparam add_117_15.INIT1 = 16'h5aaa;
    defparam add_117_15.INJECT1_0 = "NO";
    defparam add_117_15.INJECT1_1 = "NO";
    LUT4 i92_4_lut_4_lut (.A(cnt_scan[2]), .B(n37853), .C(cnt_scan[3]), 
         .D(n34440), .Z(n57)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam i92_4_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_rep_624 (.A(cnt_scan[0]), .B(cnt_scan[1]), .Z(n39662)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_624.init = 16'h8888;
    LUT4 i3845_2_lut_3_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n2318[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i3845_2_lut_3_lut_4_lut.init = 16'h78f0;
    CCU2D add_117_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34236), .COUT(n34237), .S0(n4271[11]), 
          .S1(n4271[12]));   // d:/new porject/top-xu/oled.v(193[29:45])
    defparam add_117_13.INIT0 = 16'h5aaa;
    defparam add_117_13.INIT1 = 16'h5aaa;
    defparam add_117_13.INJECT1_0 = "NO";
    defparam add_117_13.INJECT1_1 = "NO";
    LUT4 i21001_2_lut (.A(n2144[2]), .B(oled_dcn_N_1400), .Z(n2170[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i21001_2_lut.init = 16'h2222;
    FD1P3IX cnt_init_i0_i2 (.D(n2108[2]), .SP(sys_clk_c_enable_259), .CD(n23899), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i3 (.D(n2108[3]), .SP(sys_clk_c_enable_259), .CD(n23899), 
            .CK(sys_clk_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_init_i0_i3.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_44 (.A(n39510), .B(cnt_main[4]), .C(n27247), 
         .D(n37178), .Z(sys_clk_c_enable_133)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i1_3_lut_4_lut_adj_44.init = 16'hf600;
    LUT4 i1_3_lut_3_lut_4_lut (.A(n39510), .B(cnt_main[4]), .C(sys_clk_c_enable_254), 
         .D(n39517), .Z(sys_clk_c_enable_145)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B !((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h60f0;
    FD1P3IX cnt_init_i0_i4 (.D(n2108[4]), .SP(sys_clk_c_enable_259), .CD(n23899), 
            .CK(sys_clk_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_init_i0_i4.GSR = "ENABLED";
    LUT4 i21002_2_lut (.A(n2144[1]), .B(oled_dcn_N_1400), .Z(n2170[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i21002_2_lut.init = 16'h2222;
    LUT4 i3847_2_lut_3_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n10318)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3847_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_45 (.A(n38777), .B(n39635), .C(n39545), 
         .D(n39488), .Z(n37193)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i1_2_lut_3_lut_4_lut_adj_45.init = 16'h00d0;
    FD1P3AX oled_dat_326 (.D(n37121), .SP(sys_clk_c_enable_262), .CK(sys_clk_c), 
            .Q(oled_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam oled_dat_326.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_46 (.A(state[3]), .B(n39342), .C(n26_adj_1764), 
         .D(state[2]), .Z(n36153)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i1_4_lut_adj_46.init = 16'h5044;
    FD1P3AY oled_clk_325 (.D(n6361[0]), .SP(sys_clk_c_enable_264), .CK(sys_clk_c), 
            .Q(oled_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam oled_clk_325.GSR = "ENABLED";
    FD1P3AY oled_rst_323 (.D(n6298[0]), .SP(sys_clk_c_enable_265), .CK(sys_clk_c), 
            .Q(oled_res_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam oled_rst_323.GSR = "ENABLED";
    LUT4 mux_75_i1_4_lut_4_lut (.A(cnt_scan[0]), .B(n39560), .C(n39502), 
         .D(n2309), .Z(cnt_scan_4__N_1058[0])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(146[24:39])
    defparam mux_75_i1_4_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_2_lut (.A(n39517), .B(sys_clk_c_enable_254), .Z(n34726)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i3_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(cnt_scan[4]), 
         .D(cnt_scan[2]), .Z(n20295)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/new porject/top-xu/oled.v(146[24:39])
    defparam i3_4_lut_4_lut.init = 16'hfff7;
    CCU2D add_117_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34235), .COUT(n34236), .S0(n4271[9]), .S1(n4271[10]));   // d:/new porject/top-xu/oled.v(193[29:45])
    defparam add_117_11.INIT0 = 16'h5aaa;
    defparam add_117_11.INIT1 = 16'h5aaa;
    defparam add_117_11.INJECT1_0 = "NO";
    defparam add_117_11.INJECT1_1 = "NO";
    CCU2D add_117_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34234), .COUT(n34235), .S0(n4271[7]), .S1(n4271[8]));   // d:/new porject/top-xu/oled.v(193[29:45])
    defparam add_117_9.INIT0 = 16'h5aaa;
    defparam add_117_9.INIT1 = 16'h5aaa;
    defparam add_117_9.INJECT1_0 = "NO";
    defparam add_117_9.INJECT1_1 = "NO";
    CCU2D add_117_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34233), .COUT(n34234), .S0(n4271[5]), .S1(n4271[6]));   // d:/new porject/top-xu/oled.v(193[29:45])
    defparam add_117_7.INIT0 = 16'h5aaa;
    defparam add_117_7.INIT1 = 16'h5aaa;
    defparam add_117_7.INJECT1_0 = "NO";
    defparam add_117_7.INJECT1_1 = "NO";
    LUT4 i21013_4_lut (.A(n37478), .B(n39633), .C(char[19]), .D(num[1]), 
         .Z(n2510)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i21013_4_lut.init = 16'h3022;
    LUT4 i30675_3_lut (.A(char[3]), .B(char[11]), .C(num[0]), .Z(n37478)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30675_3_lut.init = 16'hcaca;
    CCU2D add_117_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34232), .COUT(n34233), .S0(n4271[3]), .S1(n4271[4]));   // d:/new porject/top-xu/oled.v(193[29:45])
    defparam add_117_5.INIT0 = 16'h5aaa;
    defparam add_117_5.INIT1 = 16'h5aaa;
    defparam add_117_5.INJECT1_0 = "NO";
    defparam add_117_5.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i0 (.D(n4271[0]), .SP(sys_clk_c_enable_329), .CD(n21844), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    LUT4 i21011_4_lut (.A(n1477), .B(n39635), .C(n39556), .D(num[2]), 
         .Z(n2509)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam i21011_4_lut.init = 16'h3022;
    LUT4 shift_right_77_i1477_4_lut (.A(char[4]), .B(char[11]), .C(num[1]), 
         .D(num[0]), .Z(n1477)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam shift_right_77_i1477_4_lut.init = 16'hc00a;
    LUT4 i1_4_lut_4_lut_adj_47 (.A(state[2]), .B(n3744), .C(n64_adj_1770), 
         .D(char_reg[4]), .Z(n12_adj_1771)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_4_lut_4_lut_adj_47.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_48 (.A(state[2]), .B(n3744), .C(n39317), .D(char_reg[0]), 
         .Z(n12_adj_1772)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_4_lut_4_lut_adj_48.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_49 (.A(state[2]), .B(n3744), .C(n44_adj_1773), 
         .D(char_reg[6]), .Z(n12_adj_1722)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_4_lut_4_lut_adj_49.init = 16'h5450;
    LUT4 i1_2_lut_rep_527_3_lut_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n39565)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_2_lut_rep_527_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_4_lut_4_lut_adj_50 (.A(state[2]), .B(n3744), .C(n64_adj_1774), 
         .D(char_reg[5]), .Z(n12)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_4_lut_4_lut_adj_50.init = 16'h5450;
    FD1P3IX char_i0_i0 (.D(char_167__N_1108[0]), .SP(sys_clk_c_enable_313), 
            .CD(n34726), .CK(sys_clk_c), .Q(char[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_51 (.A(state[2]), .B(n3744), .C(n64_adj_1775), 
         .D(char_reg[7]), .Z(n12_adj_1776)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_4_lut_4_lut_adj_51.init = 16'h5450;
    LUT4 i24209_4_lut (.A(cnt_write[4]), .B(cnt_write[3]), .C(cnt_write[0]), 
         .D(n39611), .Z(n4247[4])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;   // d:/new porject/top-xu/oled.v(45[42:51])
    defparam i24209_4_lut.init = 16'h6aaa;
    LUT4 i1_4_lut_4_lut_adj_52 (.A(state[2]), .B(n3744), .C(n64_adj_1777), 
         .D(char_reg[2]), .Z(n12_adj_1778)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_4_lut_4_lut_adj_52.init = 16'h5450;
    LUT4 i1_2_lut_3_lut_3_lut (.A(state[2]), .B(state_back[0]), .C(n3744), 
         .Z(n37128)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_adj_53 (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n58)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam i1_2_lut_adj_53.init = 16'heeee;
    LUT4 i2_4_lut_4_lut_adj_54 (.A(state[2]), .B(n39515), .C(state[0]), 
         .D(state[1]), .Z(sys_clk_c_enable_254)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i2_4_lut_4_lut_adj_54.init = 16'h0444;
    LUT4 i1_2_lut_3_lut_3_lut_adj_55 (.A(state[2]), .B(state_back[2]), .C(n3744), 
         .Z(n37127)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_2_lut_3_lut_3_lut_adj_55.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_56 (.A(state[2]), .B(n3744), .C(n39310), .D(char_reg[1]), 
         .Z(n12_adj_1779)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_4_lut_4_lut_adj_56.init = 16'h5450;
    LUT4 state_5__I_0_332_i11_2_lut_rep_478_3_lut_4_lut_4_lut (.A(state[2]), 
         .B(state[3]), .C(n40986), .D(n39649), .Z(n39516)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam state_5__I_0_332_i11_2_lut_rep_478_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i2_4_lut_4_lut_adj_57 (.A(state[2]), .B(n31), .C(n35), .D(n20431), 
         .Z(state_back_5__N_1035[1])) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i2_4_lut_4_lut_adj_57.init = 16'hfff4;
    LUT4 i30687_2_lut_4_lut (.A(oled_dcn_N_1400), .B(n39607), .C(n39543), 
         .D(state_back[0]), .Z(n37491)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;   // d:/new porject/top-xu/oled.v(10[15:23])
    defparam i30687_2_lut_4_lut.init = 16'hec00;
    LUT4 i1_4_lut_4_lut_adj_58 (.A(state[2]), .B(n3744), .C(n64), .D(char_reg[3]), 
         .Z(n12_adj_1780)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_4_lut_4_lut_adj_58.init = 16'h5450;
    CCU2D add_117_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34231), .COUT(n34232), .S0(n4271[1]), .S1(n4271[2]));   // d:/new porject/top-xu/oled.v(193[29:45])
    defparam add_117_3.INIT0 = 16'h5aaa;
    defparam add_117_3.INIT1 = 16'h5aaa;
    defparam add_117_3.INJECT1_0 = "NO";
    defparam add_117_3.INJECT1_1 = "NO";
    LUT4 i2894_2_lut_3_lut_4_lut_4_lut_3_lut (.A(state[2]), .B(state[1]), 
         .C(state[0]), .Z(n12340)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i2894_2_lut_3_lut_4_lut_4_lut_3_lut.init = 16'hecec;
    CCU2D add_117_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n34231), .S1(n4271[0]));   // d:/new porject/top-xu/oled.v(193[29:45])
    defparam add_117_1.INIT0 = 16'hF000;
    defparam add_117_1.INIT1 = 16'h5555;
    defparam add_117_1.INJECT1_0 = "NO";
    defparam add_117_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut_3_lut (.A(state[2]), .B(n3744), .C(state_back[3]), .Z(n12_adj_1729)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_3_lut_3_lut.init = 16'h5151;
    LUT4 i20_4_lut_4_lut (.A(state[2]), .B(n3744), .C(n77), .D(state[3]), 
         .Z(n8_adj_1781)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i20_4_lut_4_lut.init = 16'h44a0;
    LUT4 i1_3_lut_adj_59 (.A(cnt_main[4]), .B(cnt_main[3]), .C(n37), .Z(x_ph_7__N_1076[1])) /* synthesis lut_function=(A+(B (C))) */ ;   // d:/new porject/top-xu/oled.v(45[12:20])
    defparam i1_3_lut_adj_59.init = 16'heaea;
    LUT4 i1_4_lut_4_lut_adj_60 (.A(state[0]), .B(n19_adj_1782), .C(n16), 
         .D(num_delay[8]), .Z(num_delay_15__N_981[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_60.init = 16'hdc50;
    FD1P3IX x_ph_i0_i0 (.D(x_ph_7__N_1076[0]), .SP(sys_clk_c_enable_313), 
            .CD(n34726), .CK(sys_clk_c), .Q(x_ph[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam x_ph_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_61 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1783), 
         .D(num_delay[6]), .Z(num_delay_15__N_981[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_61.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_62 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1784), 
         .D(num_delay[9]), .Z(num_delay_15__N_981[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_62.init = 16'hdc50;
    CCU2D add_43_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34230), 
          .S0(n2144[15]));   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam add_43_17.INIT0 = 16'h5aaa;
    defparam add_43_17.INIT1 = 16'h0000;
    defparam add_43_17.INJECT1_0 = "NO";
    defparam add_43_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_63 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1785), 
         .D(num_delay[10]), .Z(num_delay_15__N_981[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_63.init = 16'hdc50;
    PFUMX i31644 (.BLUT(n38775), .ALUT(n38774), .C0(num[1]), .Z(n38776));
    CCU2D add_43_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34229), 
          .COUT(n34230), .S0(n2144[13]), .S1(n2144[14]));   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam add_43_15.INIT0 = 16'h5aaa;
    defparam add_43_15.INIT1 = 16'h5aaa;
    defparam add_43_15.INJECT1_0 = "NO";
    defparam add_43_15.INJECT1_1 = "NO";
    CCU2D add_43_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34228), 
          .COUT(n34229), .S0(n2144[11]), .S1(n2144[12]));   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam add_43_13.INIT0 = 16'h5aaa;
    defparam add_43_13.INIT1 = 16'h5aaa;
    defparam add_43_13.INJECT1_0 = "NO";
    defparam add_43_13.INJECT1_1 = "NO";
    FD1P3AX y_p_i0_i0 (.D(n8202[0]), .SP(sys_clk_c_enable_279), .CK(sys_clk_c), 
            .Q(y_p[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam y_p_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_64 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1786), 
         .D(num_delay[12]), .Z(num_delay_15__N_981[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_64.init = 16'hdc50;
    LUT4 cnt_scan_4__bdd_4_lut_32194 (.A(cnt_scan[4]), .B(n39662), .C(cnt_scan[2]), 
         .D(cnt_scan[3]), .Z(n38766)) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B (C (D)))) */ ;
    defparam cnt_scan_4__bdd_4_lut_32194.init = 16'hfaae;
    LUT4 i1_4_lut_4_lut_adj_65 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1787), 
         .D(num_delay[1]), .Z(num_delay_15__N_981[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_65.init = 16'hdc50;
    CCU2D add_43_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34227), 
          .COUT(n34228), .S0(n2144[9]), .S1(n2144[10]));   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam add_43_11.INIT0 = 16'h5aaa;
    defparam add_43_11.INIT1 = 16'h5aaa;
    defparam add_43_11.INJECT1_0 = "NO";
    defparam add_43_11.INJECT1_1 = "NO";
    FD1P3IX cnt_write_i0_i0 (.D(n4_c), .SP(sys_clk_c_enable_338), .CD(n21864), 
            .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_66 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1788), 
         .D(num_delay[4]), .Z(num_delay_15__N_981[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_66.init = 16'hdc50;
    LUT4 state_0__bdd_4_lut_32613 (.A(state[0]), .B(n11_adj_1755), .C(n39646), 
         .D(n39564), .Z(sys_clk_c_enable_343)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B+!(C+(D))))) */ ;
    defparam state_0__bdd_4_lut_32613.init = 16'h333a;
    CCU2D add_43_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34226), 
          .COUT(n34227), .S0(n2144[7]), .S1(n2144[8]));   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam add_43_9.INIT0 = 16'h5aaa;
    defparam add_43_9.INIT1 = 16'h5aaa;
    defparam add_43_9.INJECT1_0 = "NO";
    defparam add_43_9.INJECT1_1 = "NO";
    CCU2D add_43_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34225), 
          .COUT(n34226), .S0(n2144[5]), .S1(n2144[6]));   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam add_43_7.INIT0 = 16'h5aaa;
    defparam add_43_7.INIT1 = 16'h5aaa;
    defparam add_43_7.INJECT1_0 = "NO";
    defparam add_43_7.INJECT1_1 = "NO";
    CCU2D add_43_5 (.A0(\cnt[3] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[4] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34224), 
          .COUT(n34225), .S0(n2144[3]), .S1(n2144[4]));   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam add_43_5.INIT0 = 16'h5aaa;
    defparam add_43_5.INIT1 = 16'h5aaa;
    defparam add_43_5.INJECT1_0 = "NO";
    defparam add_43_5.INJECT1_1 = "NO";
    CCU2D add_43_3 (.A0(\cnt[1] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[2] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34223), 
          .COUT(n34224), .S0(n2144[1]), .S1(n2144[2]));   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam add_43_3.INIT0 = 16'h5aaa;
    defparam add_43_3.INIT1 = 16'h5aaa;
    defparam add_43_3.INJECT1_0 = "NO";
    defparam add_43_3.INJECT1_1 = "NO";
    CCU2D add_43_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n34223), 
          .S1(n2144[0]));   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam add_43_1.INIT0 = 16'hF000;
    defparam add_43_1.INIT1 = 16'h5555;
    defparam add_43_1.INJECT1_0 = "NO";
    defparam add_43_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_67 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1789), 
         .D(num_delay[15]), .Z(num_delay_15__N_981[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_67.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_68 (.A(state[0]), .B(n39544), .C(state_back[1]), 
         .D(n16_adj_1790), .Z(n12_adj_1791)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_68.init = 16'h5540;
    LUT4 i1_4_lut_4_lut_adj_69 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1792), 
         .D(num_delay[11]), .Z(num_delay_15__N_981[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_69.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_70 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1793), 
         .D(num_delay[14]), .Z(num_delay_15__N_981[14])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_70.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_71 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1794), 
         .D(num_delay[3]), .Z(num_delay_15__N_981[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_71.init = 16'hdc50;
    LUT4 i1_4_lut_adj_72 (.A(n26), .B(n39015), .C(n40986), .D(n39613), 
         .Z(n32)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i1_4_lut_adj_72.init = 16'h0ace;
    LUT4 num_3011_mux_6_i1_4_lut_4_lut (.A(state[0]), .B(state[3]), .C(n2[0]), 
         .D(num_7__N_1092[0]), .Z(n1[0])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam num_3011_mux_6_i1_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_4_lut_4_lut_adj_73 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1795), 
         .D(num_delay[7]), .Z(num_delay_15__N_981[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_73.init = 16'hdc50;
    LUT4 char_11__bdd_3_lut (.A(char[2]), .B(char[8]), .C(num[0]), .Z(n38775)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam char_11__bdd_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_adj_74 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1796), 
         .D(num_delay[13]), .Z(num_delay_15__N_981[13])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_74.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_75 (.A(state[0]), .B(n19_adj_1782), .C(n16_adj_1797), 
         .D(num_delay[5]), .Z(num_delay_15__N_981[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_75.init = 16'hdc50;
    LUT4 char_11__bdd_3_lut_31643 (.A(char[11]), .B(char[8]), .C(num[0]), 
         .Z(n38774)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam char_11__bdd_3_lut_31643.init = 16'hacac;
    LUT4 i15295_2_lut (.A(sys_clk_c_enable_223), .B(state[0]), .Z(n21918)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam i15295_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_76 (.A(cnt_init[0]), .B(n39544), .C(n39489), 
         .D(num_delay[4]), .Z(num_delay_15__N_1292[4])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_4_lut_4_lut_adj_76.init = 16'hdc00;
    LUT4 i1_3_lut_3_lut_adj_77 (.A(cnt_init[0]), .B(n39489), .C(num_delay[14]), 
         .Z(n16_adj_1798)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_3_lut_3_lut_adj_77.init = 16'h4040;
    LUT4 i1_2_lut_2_lut_adj_78 (.A(cnt_init[0]), .B(state[0]), .Z(n4_adj_1756)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_2_lut_2_lut_adj_78.init = 16'h4444;
    LUT4 i74_3_lut_3_lut (.A(cnt_init[0]), .B(n39489), .C(n39544), .Z(n77)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i74_3_lut_3_lut.init = 16'hf4f4;
    LUT4 i1_4_lut_4_lut_adj_79 (.A(cnt_init[0]), .B(n39544), .C(n39489), 
         .D(num_delay[1]), .Z(num_delay_15__N_1292[1])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_4_lut_4_lut_adj_79.init = 16'hdc00;
    LUT4 i1_3_lut_3_lut_adj_80 (.A(cnt_init[0]), .B(n39489), .C(state_back[1]), 
         .Z(n16_adj_1790)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_3_lut_3_lut_adj_80.init = 16'h4040;
    LUT4 i1_3_lut_3_lut_adj_81 (.A(cnt_init[0]), .B(n39489), .C(num_delay[13]), 
         .Z(n16_adj_1799)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_3_lut_3_lut_adj_81.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_82 (.A(cnt_init[0]), .B(n39544), .C(n39489), 
         .D(num_delay[15]), .Z(num_delay_15__N_1292[15])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_4_lut_4_lut_adj_82.init = 16'hdc00;
    LUT4 i1_2_lut_2_lut_adj_83 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n4_adj_1800)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_2_lut_2_lut_adj_83.init = 16'h4444;
    LUT4 i1_3_lut_3_lut_adj_84 (.A(cnt_init[0]), .B(n39489), .C(num_delay[3]), 
         .Z(n16_adj_1801)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_3_lut_3_lut_adj_84.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_85 (.A(cnt_init[0]), .B(n39544), .C(n15_adj_1802), 
         .D(num_delay[2]), .Z(n37048)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_4_lut_4_lut_adj_85.init = 16'hdc50;
    LUT4 i19242_3_lut (.A(\cnt_main[1] ), .B(\cnt_main[0] ), .C(\cnt_main[2] ), 
         .Z(n37)) /* synthesis lut_function=(A ((C)+!B)+!A (B)) */ ;   // d:/new porject/top-xu/oled.v(45[12:20])
    defparam i19242_3_lut.init = 16'he6e6;
    LUT4 i1_4_lut_4_lut_adj_86 (.A(cnt_init[0]), .B(n39544), .C(n39489), 
         .D(num_delay[10]), .Z(num_delay_15__N_1292[10])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_4_lut_4_lut_adj_86.init = 16'hdc00;
    LUT4 i1_4_lut_4_lut_adj_87 (.A(cnt_init[0]), .B(n39544), .C(n39489), 
         .D(num_delay[9]), .Z(num_delay_15__N_1292[9])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_4_lut_4_lut_adj_87.init = 16'hdc00;
    LUT4 i1_3_lut_3_lut_adj_88 (.A(cnt_init[0]), .B(n39489), .C(num_delay[8]), 
         .Z(n16_adj_1803)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_3_lut_3_lut_adj_88.init = 16'h4040;
    LUT4 n11_bdd_4_lut (.A(n11_adj_1804), .B(n39646), .C(state[0]), .D(n39564), 
         .Z(sys_clk_c_enable_338)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+(C+(D))))) */ ;
    defparam n11_bdd_4_lut.init = 16'h5574;
    LUT4 i1_3_lut_3_lut_adj_89 (.A(cnt_init[0]), .B(n39489), .C(num_delay[7]), 
         .Z(n16_adj_1805)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_3_lut_3_lut_adj_89.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_90 (.A(cnt_init[0]), .B(n39544), .C(n39489), 
         .D(num_delay[6]), .Z(num_delay_15__N_1292[6])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_4_lut_4_lut_adj_90.init = 16'hdc00;
    LUT4 i1_3_lut_3_lut_adj_91 (.A(cnt_init[0]), .B(n39489), .C(num_delay[5]), 
         .Z(n16_adj_1806)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_3_lut_3_lut_adj_91.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_92 (.A(cnt_init[0]), .B(n39544), .C(n39489), 
         .D(num_delay[12]), .Z(num_delay_15__N_1292[12])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_4_lut_4_lut_adj_92.init = 16'hdc00;
    LUT4 i1_4_lut_4_lut_adj_93 (.A(cnt_init[0]), .B(n39544), .C(n39489), 
         .D(num_delay[11]), .Z(num_delay_15__N_1292[11])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_4_lut_4_lut_adj_93.init = 16'hdc00;
    LUT4 i1_4_lut_4_lut_adj_94 (.A(cnt_init[0]), .B(n37491), .C(n19_adj_1807), 
         .D(state[2]), .Z(n6_adj_1726)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i1_4_lut_4_lut_adj_94.init = 16'hf400;
    LUT4 cnt_init_4__I_0_i7_2_lut_rep_630 (.A(cnt_init[3]), .B(cnt_init[4]), 
         .Z(n39668)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam cnt_init_4__I_0_i7_2_lut_rep_630.init = 16'heeee;
    PFUMX i31641 (.BLUT(n38766), .ALUT(n39458), .C0(state[2]), .Z(n38767));
    LUT4 cnt_main_1__bdd_4_lut (.A(\cnt_main[1] ), .B(\cnt_main[0] ), .C(cnt_main[3]), 
         .D(\cnt_main[2] ), .Z(n38779)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !(B+(C+!(D)))) */ ;
    defparam cnt_main_1__bdd_4_lut.init = 16'h8302;
    LUT4 cnt_main_4__bdd_4_lut_32401 (.A(cnt_main[3]), .B(\cnt_main[2] ), 
         .C(\cnt_main[0] ), .D(\cnt_main[1] ), .Z(n38781)) /* synthesis lut_function=(!((B (C+(D))+!B (C (D)))+!A)) */ ;
    defparam cnt_main_4__bdd_4_lut_32401.init = 16'h022a;
    LUT4 n38781_bdd_2_lut (.A(n38781), .B(cnt_main[4]), .Z(x_ph_7__N_1076[0])) /* synthesis lut_function=(A+(B)) */ ;
    defparam n38781_bdd_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_464 (.A(cnt_scan[3]), .B(n20295), .Z(n39502)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_464.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_adj_95 (.A(cnt_scan[3]), .B(n20295), .C(n39560), 
         .Z(n4_adj_1808)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_adj_95.init = 16'hd0d0;
    LUT4 cnt_3__bdd_4_lut (.A(\cnt[3] ), .B(\cnt[0] ), .C(\cnt[2] ), .D(\cnt[1] ), 
         .Z(n38518)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam cnt_3__bdd_4_lut.init = 16'h1a09;
    LUT4 i2_3_lut_rep_506_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n39544)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam i2_3_lut_rep_506_4_lut.init = 16'hfeee;
    LUT4 cnt_init_4__I_0_353_i8_2_lut_rep_537_3_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[2]), .Z(n39575)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam cnt_init_4__I_0_353_i8_2_lut_rep_537_3_lut.init = 16'hfefe;
    LUT4 i31284_2_lut_rep_475_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[0]), .D(cnt_init[2]), .Z(n39513)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam i31284_2_lut_rep_475_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_484_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[0]), .D(cnt_init[2]), .Z(n39522)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam i1_2_lut_rep_484_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_rep_503_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[1]), .D(cnt_init[2]), .Z(n39541)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam i2_2_lut_rep_503_3_lut_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_4_lut_adj_96 (.A(\cnt_main[0] ), .B(\cnt_main[1] ), 
         .C(n39461), .D(\cnt_main[2] ), .Z(n36992)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i2_3_lut_4_lut_4_lut_adj_96.init = 16'h0400;
    LUT4 i3_4_lut_4_lut_adj_97 (.A(\cnt_main[0] ), .B(n39559), .C(cnt_main[4]), 
         .D(state[1]), .Z(n5)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i3_4_lut_4_lut_adj_97.init = 16'h0100;
    LUT4 n36998_bdd_4_lut (.A(n36998), .B(cnt_init[0]), .C(cnt_init[2]), 
         .D(cnt_init[1]), .Z(n38787)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam n36998_bdd_4_lut.init = 16'h2202;
    LUT4 i1_2_lut_4_lut_adj_98 (.A(state[2]), .B(n39549), .C(state[0]), 
         .D(state[3]), .Z(n19_adj_1782)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i1_2_lut_4_lut_adj_98.init = 16'hffec;
    LUT4 i1_2_lut_rep_467 (.A(state[4]), .B(n39548), .Z(n39505)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_467.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_99 (.A(state[4]), .B(n39548), .C(oled_dat_N_1422), 
         .Z(n37121)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_99.init = 16'h2020;
    LUT4 n11_bdd_4_lut_adj_100 (.A(n11), .B(n39646), .C(state[0]), .D(n39564), 
         .Z(sys_clk_c_enable_329)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+(C+(D))))) */ ;
    defparam n11_bdd_4_lut_adj_100.init = 16'h5574;
    LUT4 i2_4_lut_adj_101 (.A(n14), .B(n27291), .C(n12_adj_1760), .D(state[5]), 
         .Z(n39_adj_1737)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i2_4_lut_adj_101.init = 16'h3022;
    LUT4 i10_4_lut (.A(n37690), .B(n2[2]), .C(state[3]), .D(n4_adj_1754), 
         .Z(n1[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(45[12:20])
    defparam i10_4_lut.init = 16'hc5c0;
    LUT4 i30885_3_lut (.A(cnt_main[3]), .B(state[0]), .C(cnt_main[4]), 
         .Z(n37690)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30885_3_lut.init = 16'hfefe;
    LUT4 i21477_4_lut_4_lut (.A(n2508), .B(n7_adj_1753), .C(n39488), .D(n8_adj_1757), 
         .Z(n11802)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i21477_4_lut_4_lut.init = 16'h0002;
    LUT4 i15243_3_lut_4_lut (.A(n39557), .B(cnt_write[4]), .C(n11_adj_1804), 
         .D(sys_clk_c_enable_338), .Z(n21864)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // d:/new porject/top-xu/oled.v(45[42:51])
    defparam i15243_3_lut_4_lut.init = 16'hf800;
    LUT4 i1_4_lut_adj_102 (.A(state_back[5]), .B(n27_adj_1743), .C(n39550), 
         .D(n8_adj_1781), .Z(state_back_5__N_1035[5])) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(47[13:18])
    defparam i1_4_lut_adj_102.init = 16'h8a88;
    LUT4 i1_4_lut_adj_103 (.A(state_back[4]), .B(n27_adj_1743), .C(n39550), 
         .D(n8_adj_1781), .Z(state_back_5__N_1035[4])) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(47[13:18])
    defparam i1_4_lut_adj_103.init = 16'h8a88;
    LUT4 i1_4_lut_adj_104 (.A(n24_adj_1730), .B(state_back[3]), .C(n39550), 
         .D(n27_adj_1743), .Z(state_back_5__N_1035[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_104.init = 16'hce0a;
    LUT4 i1_4_lut_adj_105 (.A(n6373), .B(n9129), .C(n38767), .D(n39503), 
         .Z(sys_clk_c_enable_15)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_105.init = 16'h0a88;
    LUT4 i1_4_lut_adj_106 (.A(n24_adj_1725), .B(state_back[2]), .C(n39550), 
         .D(n27_adj_1743), .Z(state_back_5__N_1035[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_106.init = 16'hce0a;
    LUT4 i1_4_lut_adj_107 (.A(state[0]), .B(n27883), .C(n12_adj_1791), 
         .D(state[2]), .Z(n20431)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_107.init = 16'h3022;
    LUT4 i1_4_lut_adj_108 (.A(state_back[1]), .B(n39649), .C(n24_adj_1809), 
         .D(n40986), .Z(n35)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_108.init = 16'haaa8;
    LUT4 i29_3_lut_4_lut (.A(\cnt_main[0] ), .B(n39559), .C(cnt_main[4]), 
         .D(n34772), .Z(n23_adj_1768)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i29_3_lut_4_lut.init = 16'h1f10;
    LUT4 i50_4_lut (.A(state_back[1]), .B(n3744), .C(state[3]), .D(n39550), 
         .Z(n31)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;
    defparam i50_4_lut.init = 16'h0a8a;
    LUT4 i1_2_lut_adj_109 (.A(state[3]), .B(state[2]), .Z(n24_adj_1809)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_109.init = 16'h8888;
    LUT4 i1_4_lut_adj_110 (.A(n24_adj_1810), .B(char_reg[7]), .C(n39550), 
         .D(n27_adj_1743), .Z(char_reg_7__N_953[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_110.init = 16'hce0a;
    LUT4 i1_4_lut_adj_111 (.A(n24_adj_1723), .B(char_reg[6]), .C(n39550), 
         .D(n27_adj_1743), .Z(char_reg_7__N_953[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_111.init = 16'hce0a;
    LUT4 i1_4_lut_adj_112 (.A(n24), .B(char_reg[5]), .C(n39550), .D(n27_adj_1743), 
         .Z(char_reg_7__N_953[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_112.init = 16'hce0a;
    LUT4 i1_4_lut_adj_113 (.A(n24_adj_1811), .B(char_reg[4]), .C(n39550), 
         .D(n27_adj_1743), .Z(char_reg_7__N_953[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_113.init = 16'hce0a;
    LUT4 i25_3_lut_4_lut (.A(\cnt_main[0] ), .B(n39559), .C(cnt_main[4]), 
         .D(n34772), .Z(n12_adj_1734)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i25_3_lut_4_lut.init = 16'he0ef;
    LUT4 mux_75_i3_4_lut (.A(n2309), .B(n2318[2]), .C(n39502), .D(n39560), 
         .Z(cnt_scan_4__N_1058[2])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/new porject/top-xu/oled.v(145[16] 146[40])
    defparam mux_75_i3_4_lut.init = 16'hc505;
    LUT4 i1_4_lut_adj_114 (.A(n24_adj_1812), .B(char_reg[3]), .C(n39550), 
         .D(n27_adj_1743), .Z(char_reg_7__N_953[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_114.init = 16'hce0a;
    LUT4 i1_4_lut_adj_115 (.A(n24_adj_1813), .B(char_reg[2]), .C(n39550), 
         .D(n27_adj_1743), .Z(char_reg_7__N_953[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_115.init = 16'hce0a;
    LUT4 i1_4_lut_adj_116 (.A(n24_adj_1814), .B(char_reg[1]), .C(n39550), 
         .D(n27_adj_1743), .Z(char_reg_7__N_953[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_116.init = 16'hce0a;
    LUT4 i31374_2_lut (.A(sys_clk_c_enable_254), .B(n38048), .Z(sys_clk_c_enable_314)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i31374_2_lut.init = 16'h8888;
    LUT4 i31373_4_lut (.A(n39517), .B(n37656), .C(n39510), .D(cnt_main[4]), 
         .Z(n38048)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i31373_4_lut.init = 16'h5fdd;
    LUT4 i24657_3_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(cnt_scan[0]), 
         .Z(n2318[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(45[32:40])
    defparam i24657_3_lut.init = 16'h6a6a;
    LUT4 cnt_main_0__bdd_4_lut (.A(\cnt_main[0] ), .B(\cnt_main[2] ), .C(cnt_main[3]), 
         .D(\cnt_main[1] ), .Z(n38879)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C)+!B !((D)+!C)))) */ ;
    defparam cnt_main_0__bdd_4_lut.init = 16'h68d0;
    LUT4 n2509_bdd_4_lut_31949 (.A(n2509), .B(n2510), .C(n39512), .D(n39482), 
         .Z(n39283)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;
    defparam n2509_bdd_4_lut_31949.init = 16'h1008;
    LUT4 i1_4_lut_adj_117 (.A(n7), .B(n39478), .C(n35032), .D(cnt_main[3]), 
         .Z(n37258)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_117.init = 16'h3022;
    LUT4 i2_4_lut_adj_118 (.A(n39478), .B(n28076), .C(cnt_main[3]), .D(\cnt_main[1] ), 
         .Z(n37259)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C)))) */ ;
    defparam i2_4_lut_adj_118.init = 16'h5010;
    LUT4 i21499_2_lut (.A(\cnt_main[2] ), .B(\cnt_main[0] ), .Z(n28076)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21499_2_lut.init = 16'heeee;
    LUT4 mux_75_i4_4_lut (.A(n2309), .B(n2318[3]), .C(n39502), .D(n39560), 
         .Z(cnt_scan_4__N_1058[3])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/new porject/top-xu/oled.v(145[16] 146[40])
    defparam mux_75_i4_4_lut.init = 16'hc505;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(cnt_init[0]), .B(n39575), .C(n39477), 
         .D(n27269), .Z(n3)) /* synthesis lut_function=(!(A (B (D))+!A ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h22fa;
    LUT4 i1_4_lut_adj_119 (.A(n39503), .B(cnt_scan[2]), .C(n4_adj_1815), 
         .D(cnt_scan[3]), .Z(n36393)) /* synthesis lut_function=(!((B (C+(D))+!B (C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/oled.v(45[32:40])
    defparam i1_4_lut_adj_119.init = 16'h0208;
    LUT4 i1_3_lut_4_lut_adj_120 (.A(n39564), .B(n39563), .C(n12340), .D(n47_adj_1761), 
         .Z(n23899)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam i1_3_lut_4_lut_adj_120.init = 16'h0004;
    LUT4 i14_4_lut_4_lut (.A(n38714), .B(state[5]), .C(state_back[0]), 
         .D(state[4]), .Z(n50)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A ((C+(D))+!B))) */ ;
    defparam i14_4_lut_4_lut.init = 16'h220c;
    LUT4 i1_2_lut_rep_573 (.A(cnt_write[1]), .B(cnt_write[2]), .Z(n39611)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam i1_2_lut_rep_573.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_121 (.A(n39565), .B(n39564), .C(n39541), .D(cnt_init[0]), 
         .Z(n47_adj_1761)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_3_lut_4_lut_adj_121.init = 16'h1011;
    LUT4 i1_2_lut_rep_420_3_lut_4_lut (.A(n39668), .B(n39607), .C(cnt_init[0]), 
         .D(oled_dcn_N_1400), .Z(n39458)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(124[8:12])
    defparam i1_2_lut_rep_420_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_2_lut_adj_122 (.A(n39545), .B(n2507), .Z(n5_adj_1739)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(156[51:79])
    defparam i1_2_lut_2_lut_adj_122.init = 16'h4444;
    LUT4 i33_4_lut (.A(num_delay[15]), .B(num_delay_15__N_1292[15]), .C(state[2]), 
         .D(n27883), .Z(n16_adj_1789)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut.init = 16'h0aca;
    LUT4 i33_4_lut_adj_123 (.A(num_delay[14]), .B(num_delay_15__N_1292[14]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1793)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_123.init = 16'h0aca;
    LUT4 i1_4_lut_adj_124 (.A(n39513), .B(num_delay[14]), .C(n16_adj_1798), 
         .D(n39544), .Z(num_delay_15__N_1292[14])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_124.init = 16'hfefa;
    LUT4 i33_4_lut_adj_125 (.A(num_delay[13]), .B(num_delay_15__N_1292[13]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1796)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_125.init = 16'h0aca;
    LUT4 i1_2_lut_adj_126 (.A(cnt_scan[4]), .B(state[2]), .Z(n4_adj_1815)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_126.init = 16'heeee;
    LUT4 i1_4_lut_adj_127 (.A(n39513), .B(num_delay[13]), .C(n16_adj_1799), 
         .D(n39544), .Z(num_delay_15__N_1292[13])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_127.init = 16'hfefa;
    LUT4 i33_4_lut_adj_128 (.A(num_delay[12]), .B(num_delay_15__N_1292[12]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1786)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_128.init = 16'h0aca;
    LUT4 i33_4_lut_adj_129 (.A(num_delay[11]), .B(num_delay_15__N_1292[11]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1792)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_129.init = 16'h0aca;
    LUT4 i33_4_lut_adj_130 (.A(num_delay[10]), .B(num_delay_15__N_1292[10]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1785)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_130.init = 16'h0aca;
    LUT4 i1_4_lut_adj_131 (.A(n34502), .B(n47_adj_1738), .C(state[1]), 
         .D(state[5]), .Z(n6373)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_131.init = 16'haaae;
    LUT4 i33_4_lut_adj_132 (.A(num_delay[9]), .B(num_delay_15__N_1292[9]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1784)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_132.init = 16'h0aca;
    LUT4 i2_4_lut_adj_133 (.A(state[1]), .B(n27754), .C(state[5]), .D(n39613), 
         .Z(n34502)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_133.init = 16'h0012;
    LUT4 i33_4_lut_adj_134 (.A(num_delay[8]), .B(num_delay_15__N_1292[8]), 
         .C(state[2]), .D(n27883), .Z(n16)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_134.init = 16'h0aca;
    LUT4 i1_4_lut_adj_135 (.A(n39513), .B(num_delay[8]), .C(n16_adj_1803), 
         .D(n39544), .Z(num_delay_15__N_1292[8])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_135.init = 16'hfefa;
    LUT4 i33_4_lut_adj_136 (.A(num_delay[7]), .B(num_delay_15__N_1292[7]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1795)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_136.init = 16'h0aca;
    LUT4 i1_4_lut_adj_137 (.A(n39513), .B(num_delay[7]), .C(n16_adj_1805), 
         .D(n39544), .Z(num_delay_15__N_1292[7])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_137.init = 16'hfefa;
    LUT4 i33_4_lut_adj_138 (.A(num_delay[6]), .B(num_delay_15__N_1292[6]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1783)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_138.init = 16'h0aca;
    LUT4 i33_4_lut_adj_139 (.A(num_delay[5]), .B(num_delay_15__N_1292[5]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1797)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_139.init = 16'h0aca;
    LUT4 i1_4_lut_adj_140 (.A(n39513), .B(num_delay[5]), .C(n16_adj_1806), 
         .D(n39544), .Z(num_delay_15__N_1292[5])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_140.init = 16'hfefa;
    LUT4 i33_4_lut_adj_141 (.A(num_delay[4]), .B(num_delay_15__N_1292[4]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1788)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_141.init = 16'h0aca;
    LUT4 i33_4_lut_adj_142 (.A(num_delay[3]), .B(num_delay_15__N_1292[3]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1794)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_142.init = 16'h0aca;
    LUT4 i1_4_lut_adj_143 (.A(n39513), .B(num_delay[3]), .C(n16_adj_1801), 
         .D(n39544), .Z(num_delay_15__N_1292[3])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_143.init = 16'hfefa;
    LUT4 i31317_4_lut (.A(state[0]), .B(num_delay[2]), .C(n28109), .D(n19_adj_1782), 
         .Z(num_delay_15__N_981[2])) /* synthesis lut_function=(A (B+!(D))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i31317_4_lut.init = 16'hc8fa;
    LUT4 i41_4_lut (.A(num_delay[2]), .B(n27883), .C(state[2]), .D(n37048), 
         .Z(n28109)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i41_4_lut.init = 16'hfaca;
    LUT4 i1_4_lut_adj_144 (.A(num_delay[2]), .B(n39607), .C(n39543), .D(oled_dcn_N_1400), 
         .Z(n15_adj_1802)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_144.init = 16'ha8f8;
    LUT4 i33_4_lut_adj_145 (.A(num_delay[1]), .B(num_delay_15__N_1292[1]), 
         .C(state[2]), .D(n27883), .Z(n16_adj_1787)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_145.init = 16'h0aca;
    LUT4 n40482_bdd_2_lut_3_lut (.A(n40985), .B(state[3]), .C(state[2]), 
         .Z(n40483)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n40482_bdd_2_lut_3_lut.init = 16'h0202;
    LUT4 i2_3_lut_4_lut_adj_146 (.A(cnt_init[0]), .B(n39543), .C(state[2]), 
         .D(state[0]), .Z(n6_adj_1816)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam i2_3_lut_4_lut_adj_146.init = 16'h0440;
    LUT4 num_3011_mux_6_i8_4_lut (.A(n7_adj_1767), .B(n2[7]), .C(state[3]), 
         .D(n37690), .Z(n1[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam num_3011_mux_6_i8_4_lut.init = 16'hc0ca;
    LUT4 i21184_2_lut (.A(state[0]), .B(state[4]), .Z(n27754)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21184_2_lut.init = 16'heeee;
    LUT4 i20691_3_lut (.A(\cnt_main[0] ), .B(cnt_main[4]), .C(warning_TEM), 
         .Z(cnt_main_4__N_1048[0])) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;   // d:/new porject/top-xu/oled.v(91[12:56])
    defparam i20691_3_lut.init = 16'hdede;
    LUT4 num_2__bdd_2_lut (.A(num[4]), .B(char[13]), .Z(n38998)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam num_2__bdd_2_lut.init = 16'h4444;
    LUT4 num_2__bdd_3_lut_31759 (.A(num[2]), .B(num[4]), .C(char[13]), 
         .Z(n38999)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam num_2__bdd_3_lut_31759.init = 16'h7070;
    LUT4 i1_2_lut_adj_147 (.A(cnt_scan[4]), .B(n38640), .Z(n44_adj_1773)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(45[32:40])
    defparam i1_2_lut_adj_147.init = 16'h4444;
    LUT4 i3795_2_lut (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n2108[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i3795_2_lut.init = 16'h6666;
    LUT4 num_2__bdd_3_lut (.A(num[4]), .B(char[13]), .C(num[1]), .Z(n39000)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam num_2__bdd_3_lut.init = 16'h4c4c;
    LUT4 i1_4_lut_adj_148 (.A(n24_adj_1817), .B(char_reg[0]), .C(n39550), 
         .D(n27_adj_1743), .Z(char_reg_7__N_953[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_148.init = 16'hce0a;
    LUT4 i1_2_lut_rep_485_4_lut (.A(cnt_init[1]), .B(n39610), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n39523)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(123[7] 139[14])
    defparam i1_2_lut_rep_485_4_lut.init = 16'h0040;
    LUT4 num_2__bdd_4_lut (.A(num[4]), .B(char[5]), .C(char[13]), .D(num[1]), 
         .Z(n39001)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam num_2__bdd_4_lut.init = 16'hf0e4;
    LUT4 i1_2_lut_4_lut_adj_149 (.A(cnt_init[2]), .B(n39668), .C(cnt_init[0]), 
         .D(state_back[0]), .Z(n19_adj_1807)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_149.init = 16'hec00;
    LUT4 i1_4_lut_adj_150 (.A(n37005), .B(n37203), .C(state[0]), .D(n39548), 
         .Z(sys_clk_c_enable_262)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_150.init = 16'ha088;
    LUT4 i2_4_lut_adj_151 (.A(n14_adj_1818), .B(n4_adj_1819), .C(state[0]), 
         .D(n39548), .Z(sys_clk_c_enable_264)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_151.init = 16'hc088;
    LUT4 n39002_bdd_3_lut (.A(n39002), .B(n38999), .C(num[0]), .Z(n39003)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n39002_bdd_3_lut.init = 16'hcaca;
    LUT4 i31085_3_lut (.A(char_reg[1]), .B(char_reg[0]), .C(cnt_write[1]), 
         .Z(n37890)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31085_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_152 (.A(n39550), .B(state_back[0]), .C(n12_adj_1727), 
         .D(n27_adj_1743), .Z(state_back_5__N_1035[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_152.init = 16'hdc50;
    LUT4 i1_4_lut_adj_153 (.A(n39505), .B(n9129), .C(cnt_write[0]), .D(n30700), 
         .Z(n6361[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_153.init = 16'hcecc;
    LUT4 i1_2_lut_4_lut_adj_154 (.A(cnt_init[2]), .B(n39668), .C(cnt_init[0]), 
         .D(state_back[2]), .Z(n19_adj_1820)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_154.init = 16'hec00;
    LUT4 n38733_bdd_4_lut_then_4_lut (.A(\cnt[4] ), .B(\cnt[3] ), .C(\cnt[1] ), 
         .D(\cnt[2] ), .Z(n39692)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C (D))))) */ ;
    defparam n38733_bdd_4_lut_then_4_lut.init = 16'h1004;
    LUT4 n37201_bdd_4_lut (.A(n39647), .B(n37277), .C(n9_adj_1821), .D(state[5]), 
         .Z(n39342)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n37201_bdd_4_lut.init = 16'hf088;
    FD1P3IX cnt_scan_i0_i1 (.D(cnt_scan_4__N_1058[1]), .SP(sys_clk_c_enable_343), 
            .CD(n21774), .CK(sys_clk_c), .Q(cnt_scan[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_scan_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_155 (.A(n9129), .B(n6373), .C(n38787), .D(n39503), 
         .Z(sys_clk_c_enable_265)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_155.init = 16'hc088;
    FD1P3IX cnt_write_i0_i2 (.D(n30743), .SP(sys_clk_c_enable_338), .CD(n21864), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i3 (.D(n4247[3]), .SP(sys_clk_c_enable_338), .CD(n21864), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    LUT4 i31322_4_lut (.A(state[0]), .B(num_delay[0]), .C(n24_adj_1822), 
         .D(n19_adj_1782), .Z(num_delay_15__N_981[0])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i31322_4_lut.init = 16'h8caf;
    LUT4 mux_2153_i1_4_lut (.A(n9129), .B(n36998), .C(n39503), .D(n4_adj_1800), 
         .Z(n6298[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam mux_2153_i1_4_lut.init = 16'hca0a;
    LUT4 i41_4_lut_adj_156 (.A(num_delay[0]), .B(n27883), .C(state[2]), 
         .D(n37104), .Z(n24_adj_1822)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i41_4_lut_adj_156.init = 16'h3505;
    FD1P3IX cnt_write_i0_i4 (.D(n4247[4]), .SP(sys_clk_c_enable_338), .CD(n21864), 
            .CK(sys_clk_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    FD1P3AX y_p_i0_i1 (.D(n36651), .SP(sys_clk_c_enable_314), .CK(sys_clk_c), 
            .Q(y_p[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam y_p_i0_i1.GSR = "ENABLED";
    FD1P3IX x_ph_i0_i1 (.D(x_ph_7__N_1076[1]), .SP(sys_clk_c_enable_313), 
            .CD(n34726), .CK(sys_clk_c), .Q(x_ph[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam x_ph_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_scan_i0_i2 (.D(cnt_scan_4__N_1058[2]), .SP(sys_clk_c_enable_343), 
            .CD(n21774), .CK(sys_clk_c), .Q(cnt_scan[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_scan_i0_i2.GSR = "ENABLED";
    FD1P3AX x_pl_i0_i3 (.D(n37259), .SP(sys_clk_c_enable_313), .CK(sys_clk_c), 
            .Q(x_pl[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam x_pl_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_157 (.A(cnt_init[0]), .B(num_delay[0]), .C(n15_adj_1823), 
         .D(n39544), .Z(n37104)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_157.init = 16'h23af;
    LUT4 i1_4_lut_adj_158 (.A(num_delay[0]), .B(n39607), .C(n39543), .D(oled_dcn_N_1400), 
         .Z(n15_adj_1823)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_158.init = 16'ha8f8;
    LUT4 i2_4_lut_rep_510 (.A(state[0]), .B(n40986), .C(state[1]), .D(n39613), 
         .Z(n39548)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_rep_510.init = 16'h0012;
    LUT4 i2821_2_lut_4_lut (.A(state[0]), .B(n40986), .C(state[1]), .D(n39613), 
         .Z(n9129)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2821_2_lut_4_lut.init = 16'h0002;
    LUT4 i1_3_lut_rep_466_4_lut (.A(state[1]), .B(n40986), .C(state[0]), 
         .D(state[2]), .Z(n39504)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_3_lut_rep_466_4_lut.init = 16'hfeee;
    FD1P3IX char_i0_i1 (.D(char_167__N_1108[1]), .SP(sys_clk_c_enable_314), 
            .CD(n34726), .CK(sys_clk_c), .Q(char[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_i0_i1.GSR = "ENABLED";
    LUT4 i3816_3_lut_4_lut (.A(cnt_init[2]), .B(n39619), .C(cnt_init[3]), 
         .D(cnt_init[4]), .Z(n2108[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/oled.v(124[49:64])
    defparam i3816_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX char_i0_i2 (.D(char_167__N_1108[2]), .SP(sys_clk_c_enable_313), 
            .CD(n34726), .CK(sys_clk_c), .Q(char[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_i0_i2.GSR = "ENABLED";
    FD1P3IX char_i0_i3 (.D(char_167__N_1108[3]), .SP(sys_clk_c_enable_314), 
            .CD(n34726), .CK(sys_clk_c), .Q(char[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam char_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_159 (.A(n40986), .B(n39649), .C(n6373), 
         .D(n39612), .Z(n4_adj_1819)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_159.init = 16'he0f0;
    FD1P3IX cnt_delay_i0_i1 (.D(n4271[1]), .SP(sys_clk_c_enable_329), .CD(n21844), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    LUT4 n38733_bdd_4_lut_else_4_lut (.A(\cnt[4] ), .B(\cnt[3] ), .C(\cnt[1] ), 
         .D(\cnt[2] ), .Z(n39691)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n38733_bdd_4_lut_else_4_lut.init = 16'h110d;
    FD1P3IX cnt_delay_i0_i2 (.D(n4271[2]), .SP(sys_clk_c_enable_329), .CD(n21844), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i3 (.D(n4271[3]), .SP(sys_clk_c_enable_329), .CD(n21844), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    LUT4 i20697_3_lut_4_lut (.A(\cnt_main[1] ), .B(n39654), .C(cnt_main[4]), 
         .D(\cnt_main[2] ), .Z(cnt_main_4__N_1048[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // d:/new porject/top-xu/oled.v(91[40:55])
    defparam i20697_3_lut_4_lut.init = 16'hf7f8;
    FD1P3IX cnt_delay_i0_i4 (.D(n4271[4]), .SP(sys_clk_c_enable_329), .CD(n21844), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n4271[5]), .SP(sys_clk_c_enable_329), .CD(n21844), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n4271[6]), .SP(sys_clk_c_enable_329), .CD(n21844), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i7 (.D(n4271[7]), .SP(sys_clk_c_enable_329), .CD(n21844), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    LUT4 i3773_2_lut_3_lut_4_lut (.A(\cnt_main[1] ), .B(n39654), .C(cnt_main[3]), 
         .D(\cnt_main[2] ), .Z(n17[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(91[40:55])
    defparam i3773_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3IX cnt_delay_i0_i8 (.D(n4271[8]), .SP(sys_clk_c_enable_329), .CD(n21844), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n4271[9]), .SP(sys_clk_c_enable_329), .CD(n21844), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n4271[10]), .SP(sys_clk_c_enable_329), 
            .CD(n21844), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i11 (.D(n4271[11]), .SP(sys_clk_c_enable_329), 
            .CD(n21844), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n4271[12]), .SP(sys_clk_c_enable_329), 
            .CD(n21844), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i13 (.D(n4271[13]), .SP(sys_clk_c_enable_329), 
            .CD(n21844), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    LUT4 i3775_2_lut_3_lut_4_lut (.A(\cnt_main[1] ), .B(n39654), .C(cnt_main[3]), 
         .D(\cnt_main[2] ), .Z(n10246)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(91[40:55])
    defparam i3775_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3IX cnt_delay_i0_i14 (.D(n4271[14]), .SP(sys_clk_c_enable_329), 
            .CD(n21844), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i15 (.D(n4271[15]), .SP(sys_clk_c_enable_329), 
            .CD(n21844), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    LUT4 i24218_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(n4247[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam i24218_3_lut_4_lut.init = 16'h7f80;
    LUT4 i24_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n4247[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(45[42:51])
    defparam i24_2_lut.init = 16'h6666;
    FD1P3IX cnt_scan_i0_i3 (.D(cnt_scan_4__N_1058[3]), .SP(sys_clk_c_enable_343), 
            .CD(n21774), .CK(sys_clk_c), .Q(cnt_scan[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_scan_i0_i3.GSR = "ENABLED";
    LUT4 i31020_3_lut_4_lut (.A(n39631), .B(sw1_c), .C(\cnt_main[0] ), 
         .D(n8599), .Z(n37825)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i31020_3_lut_4_lut.init = 16'hf202;
    LUT4 i3_3_lut_4_lut_adj_160 (.A(n39631), .B(sw1_c), .C(n39639), .D(\cnt_main[0] ), 
         .Z(n35032)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_3_lut_4_lut_adj_160.init = 16'h0002;
    LUT4 i2_4_lut_adj_161 (.A(cnt_scan[4]), .B(n4_adj_1808), .C(n11_adj_1755), 
         .D(n10318), .Z(n37093)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_161.init = 16'h0408;
    LUT4 i1_2_lut_rep_450_3_lut_4_lut (.A(n39633), .B(n39634), .C(n2510), 
         .D(char[1]), .Z(n39488)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(143[11:14])
    defparam i1_2_lut_rep_450_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n39633), .B(n39634), .C(n2509), .D(char[1]), 
         .Z(n7_c)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(143[11:14])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h1f0f;
    PFUMX i32159 (.BLUT(n40043), .ALUT(n40042), .C0(state[3]), .Z(n40044));
    PFUMX i32619 (.BLUT(n40863), .ALUT(n40861), .C0(cnt_scan[3]), .Z(n40864));
    LUT4 i1_4_lut_adj_162 (.A(state[2]), .B(n2220[4]), .C(n6_adj_1824), 
         .D(n39523), .Z(n6_adj_1735)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/oled.v(79[4] 197[11])
    defparam i1_4_lut_adj_162.init = 16'ha8a0;
    LUT4 n38776_bdd_3_lut_4_lut (.A(char[19]), .B(n39634), .C(num[2]), 
         .D(n38776), .Z(n38777)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(156[59:71])
    defparam n38776_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_2_lut_rep_469_3_lut (.A(cnt_write[0]), .B(n39616), .C(cnt_write[4]), 
         .Z(n39507)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(45[42:51])
    defparam i1_2_lut_rep_469_3_lut.init = 16'he0e0;
    LUT4 i1_3_lut_4_lut_adj_163 (.A(cnt_write[0]), .B(n39616), .C(cnt_write[4]), 
         .D(state[4]), .Z(n14_adj_1818)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(45[42:51])
    defparam i1_3_lut_4_lut_adj_163.init = 16'h1e00;
    LUT4 i1_2_lut_adj_164 (.A(cnt_scan[4]), .B(n25), .Z(n64_adj_1774)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(45[32:40])
    defparam i1_2_lut_adj_164.init = 16'h4444;
    LUT4 i14141_2_lut_rep_443_3_lut_4_lut (.A(cnt_main[3]), .B(n39639), 
         .C(cnt_main[4]), .D(\cnt_main[0] ), .Z(n39481)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i14141_2_lut_rep_443_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i20678_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(n39639), .C(cnt_main[4]), 
         .D(\cnt_main[0] ), .Z(state_5__N_1340[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 120[14])
    defparam i20678_2_lut_3_lut_4_lut.init = 16'hf0e0;
    PFUMX i32617 (.BLUT(n40859), .ALUT(n40858), .C0(cnt_scan[0]), .Z(n40860));
    PFUMX i32568 (.BLUT(n8626), .ALUT(n40774), .C0(\cnt_main[0] ), .Z(n40775));
    L6MUX21 i32572 (.D0(n40778), .D1(n40775), .SD(\cnt_main[1] ), .Z(n37830));
    PFUMX i32570 (.BLUT(n40777), .ALUT(n40776), .C0(\cnt_main[0] ), .Z(n40778));
    LUT4 i1_2_lut_rep_477_3_lut_4_lut (.A(state[3]), .B(n40986), .C(n39646), 
         .D(state[0]), .Z(n39515)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_2_lut_rep_477_3_lut_4_lut.init = 16'h1110;
    LUT4 i15314_2_lut_3_lut_4_lut (.A(state[3]), .B(n40986), .C(sys_clk_c_enable_89), 
         .D(n39565), .Z(n21924)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i15314_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i31056_3_lut (.A(n3816), .B(n4194), .C(cnt_scan[0]), .Z(n37861)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31056_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(state[3]), .B(n40986), .C(n39646), 
         .D(state[0]), .Z(n21774)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(122[5:9])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i31053_3_lut (.A(n3815), .B(n4193), .C(cnt_scan[0]), .Z(n37858)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31053_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_165 (.A(n40986), .B(state[2]), .C(n21), .D(n28165), 
         .Z(sys_clk_c_enable_132)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_165.init = 16'h1000;
    LUT4 i92_4_lut_adj_166 (.A(n34440), .B(n2677), .C(cnt_scan[1]), .D(n39660), 
         .Z(n57_adj_1731)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i92_4_lut_adj_166.init = 16'hca0a;
    LUT4 i1_4_lut_4_lut_adj_167 (.A(cnt_scan[2]), .B(n39662), .C(cnt_scan[3]), 
         .D(cnt_scan[4]), .Z(n3744)) /* synthesis lut_function=(A (C+(D))+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_167.init = 16'hffa4;
    LUT4 i31278_2_lut_rep_572 (.A(cnt_init[4]), .B(cnt_init[3]), .Z(n39610)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i31278_2_lut_rep_572.init = 16'h1111;
    PFUMX i32487 (.BLUT(n40634), .ALUT(n40633), .C0(cnt_scan[1]), .Z(n40635));
    LUT4 i31047_3_lut (.A(n3812), .B(n4190), .C(cnt_scan[0]), .Z(n37852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31047_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_168 (.A(cnt_init[2]), .B(n39668), .C(state[4]), 
         .D(cnt_init[0]), .Z(n6_adj_1824)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(125[8:12])
    defparam i1_2_lut_3_lut_4_lut_adj_168.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_169 (.A(cnt_init[2]), .B(n39668), .C(state[0]), 
         .D(cnt_init[0]), .Z(n37374)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(125[8:12])
    defparam i1_2_lut_3_lut_4_lut_adj_169.init = 16'hffef;
    LUT4 i31046_3_lut (.A(n3056), .B(n3434), .C(cnt_scan[0]), .Z(n37851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31046_3_lut.init = 16'hcaca;
    PFUMX i32489 (.BLUT(n40638), .ALUT(n40636), .C0(cnt_scan[3]), .Z(n40639));
    FD1P3IX cnt_write_i0_i1 (.D(n4247[1]), .SP(sys_clk_c_enable_338), .CD(n21864), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    LUT4 i31044_3_lut (.A(n3811), .B(n4189), .C(cnt_scan[0]), .Z(n37849)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31044_3_lut.init = 16'hcaca;
    L6MUX21 i31088 (.D0(n37891), .D1(n37892), .SD(cnt_write[3]), .Z(oled_dat_N_1422));
    LUT4 i31043_3_lut (.A(n3055), .B(n3433), .C(cnt_scan[0]), .Z(n37848)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31043_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_170 (.A(cnt_init[0]), .B(n20440), .C(state_back[2]), 
         .D(n39607), .Z(n16_adj_1825)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_170.init = 16'h5444;
    PFUMX i31571 (.BLUT(n38639), .ALUT(n38638), .C0(cnt_scan[3]), .Z(n38640));
    LUT4 i1_3_lut_adj_171 (.A(state_back[2]), .B(n39543), .C(oled_dcn_N_1400), 
         .Z(n20440)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1_3_lut_adj_171.init = 16'h8c8c;
    PFUMX i31569 (.BLUT(n38636), .ALUT(n38635), .C0(cnt_scan[1]), .Z(n38637));
    LUT4 i1_2_lut_2_lut_adj_172 (.A(cnt_scan[4]), .B(n63), .Z(n64_adj_1775)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam i1_2_lut_2_lut_adj_172.init = 16'h4444;
    LUT4 gnd_bdd_2_lut_31964_2_lut (.A(cnt_scan[4]), .B(n39309), .Z(n39310)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam gnd_bdd_2_lut_31964_2_lut.init = 16'h4444;
    LUT4 gnd_bdd_2_lut_31974_2_lut (.A(cnt_scan[4]), .B(n39316), .Z(n39317)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam gnd_bdd_2_lut_31974_2_lut.init = 16'h4444;
    PFUMX mux_36_Mux_2_i31 (.BLUT(n15_adj_1752), .ALUT(\Tem_lower[2] ), 
          .C0(cnt_main[4]), .Z(char_167__N_1108[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;
    LUT4 i1_2_lut_2_lut_adj_173 (.A(cnt_scan[4]), .B(n19), .Z(n64_adj_1770)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam i1_2_lut_2_lut_adj_173.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_174 (.A(cnt_scan[4]), .B(n40639), .Z(n64_adj_1777)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam i1_2_lut_2_lut_adj_174.init = 16'h4444;
    LUT4 i2_3_lut_4_lut_4_lut_adj_175 (.A(state[4]), .B(state[5]), .C(n39563), 
         .D(state[3]), .Z(n11_adj_1804)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_175.init = 16'hfffd;
    PFUMX mux_36_Mux_3_i31 (.BLUT(n15_adj_1751), .ALUT(\Tem_lower[3] ), 
          .C0(cnt_main[4]), .Z(char_167__N_1108[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;
    LUT4 i1_2_lut_2_lut_adj_176 (.A(state[4]), .B(state_back[5]), .Z(n9_adj_1821)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_2_lut_adj_176.init = 16'h4444;
    L6MUX21 i31019 (.D0(n37822), .D1(n37823), .SD(\cnt_main[2] ), .Z(n37824));
    PFUMX mux_36_Mux_1_i31 (.BLUT(n15_c), .ALUT(\Tem_lower[1] ), .C0(cnt_main[4]), 
          .Z(char_167__N_1108[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;
    PFUMX i31017 (.BLUT(n8), .ALUT(n9), .C0(\cnt_main[1] ), .Z(n37822));
    L6MUX21 i31026 (.D0(n37829), .D1(n37830), .SD(\cnt_main[2] ), .Z(n37831));
    PFUMX i31024 (.BLUT(n37825), .ALUT(n37826), .C0(\cnt_main[1] ), .Z(n37829));
    FD1P3AX cnt_scan_i0_i4 (.D(n37093), .SP(sys_clk_c_enable_343), .CK(sys_clk_c), 
            .Q(cnt_scan[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_scan_i0_i4.GSR = "ENABLED";
    PFUMX i31018 (.BLUT(n11_adj_1748), .ALUT(n12_adj_1746), .C0(\cnt_main[1] ), 
          .Z(n37823));
    L6MUX21 i31036 (.D0(n37839), .D1(n37840), .SD(\cnt_main[2] ), .Z(n37841));
    LUT4 i20774_4_lut (.A(n38622), .B(n2508), .C(n37193), .D(n2509), 
         .Z(n126)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(156[51:79])
    defparam i20774_4_lut.init = 16'hc088;
    LUT4 i20793_2_lut (.A(state[4]), .B(oled_dcn_N_1400), .Z(n2220[4])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/oled.v(132[20] 135[14])
    defparam i20793_2_lut.init = 16'hbbbb;
    L6MUX21 i31028 (.D0(n11_adj_1826), .D1(n12_adj_1827), .SD(\cnt_main[1] ), 
            .Z(n37833));
    PFUMX i31034 (.BLUT(n37835), .ALUT(n37836), .C0(\cnt_main[1] ), .Z(n37839));
    PFUMX i31035 (.BLUT(n37837), .ALUT(n37838), .C0(\cnt_main[1] ), .Z(n37840));
    LUT4 i1_3_lut_adj_177 (.A(state[2]), .B(state_back[3]), .C(n77), .Z(n6_adj_1728)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_177.init = 16'h8080;
    LUT4 i1_2_lut_4_lut_adj_178 (.A(n38554), .B(n1666[6]), .C(n37755), 
         .D(state[2]), .Z(n6_adj_1721)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_178.init = 16'hac00;
    LUT4 i21433_3_lut (.A(state[2]), .B(oled_dcn_N_1409), .C(n39560), 
         .Z(n27)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i21433_3_lut.init = 16'h1515;
    LUT4 i1_4_lut_adj_179 (.A(state[2]), .B(n39610), .C(n37374), .D(n37628), 
         .Z(n37087)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_4_lut_adj_179.init = 16'h0080;
    FD1P3IX cnt_scan_i0_i0 (.D(cnt_scan_4__N_1058[0]), .SP(sys_clk_c_enable_343), 
            .CD(n21774), .CK(sys_clk_c), .Q(cnt_scan[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;   // d:/new porject/top-xu/oled.v(78[12] 198[6])
    defparam cnt_scan_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_180 (.A(n38518), .B(n1666[3]), .C(n39450), 
         .D(state[2]), .Z(n6_adj_1828)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_180.init = 16'hac00;
    LUT4 i1_2_lut_4_lut_adj_181 (.A(n22), .B(n1666[2]), .C(n37769), .D(state[2]), 
         .Z(n6_adj_1829)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_181.init = 16'hac00;
    LUT4 i31354_4_lut (.A(n34497), .B(n39564), .C(n39646), .D(state[0]), 
         .Z(sys_clk_c_enable_89)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;
    defparam i31354_4_lut.init = 16'habaa;
    LUT4 i3_4_lut_adj_182 (.A(n27291), .B(n6_adj_1816), .C(state[1]), 
         .D(state[5]), .Z(n34497)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_182.init = 16'h0004;
    LUT4 i20988_2_lut (.A(n2144[15]), .B(oled_dcn_N_1400), .Z(n2170[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20988_2_lut.init = 16'h2222;
    LUT4 i20723_2_lut (.A(state[4]), .B(state[3]), .Z(n27291)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20723_2_lut.init = 16'heeee;
    LUT4 i20989_2_lut (.A(n2144[14]), .B(oled_dcn_N_1400), .Z(n2170[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20989_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_adj_183 (.A(n22_adj_5), .B(n1666[1]), .C(n37769), 
         .D(state[2]), .Z(n6_adj_1831)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_183.init = 16'hac00;
    PFUMX i31039 (.BLUT(n37842), .ALUT(n37843), .C0(\cnt_main[0] ), .Z(n37844));
    LUT4 i1_2_lut_4_lut_adj_184 (.A(n15), .B(n38481), .C(n39450), .D(state[2]), 
         .Z(n6_adj_1833)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_184.init = 16'hac00;
    LUT4 i1_2_lut_4_lut_adj_185 (.A(n38562), .B(n1666[7]), .C(n37755), 
         .D(state[2]), .Z(n6_adj_1834)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_185.init = 16'hac00;
    PFUMX mux_36_Mux_0_i11 (.BLUT(n8613[0]), .ALUT(n8623), .C0(\cnt_main[0] ), 
          .Z(n11_adj_1826)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;
    PFUMX i32268 (.BLUT(n40260), .ALUT(n40255), .C0(state[0]), .Z(n40261));
    PFUMX i32266 (.BLUT(n40258), .ALUT(n40257), .C0(state[5]), .Z(n40259));
    LUT4 n40479_bdd_4_lut (.A(n40479), .B(n40478), .C(state[5]), .D(state[4]), 
         .Z(n40985)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n40479_bdd_4_lut.init = 16'h00ca;
    PFUMX mux_3364_i1 (.BLUT(hundres_0__N_357), .ALUT(hundres_0__N_357_adj_6), 
          .C0(sw1_c), .Z(n9303));
    PFUMX mux_3362_i1 (.BLUT(hundres_0__N_357_adj_7), .ALUT(hundres_0__N_357_adj_8), 
          .C0(sw1_c), .Z(n9316));
    PFUMX mux_2397_i3 (.BLUT(\hour_ones[2] ), .ALUT(\hour_warning_ones[2] ), 
          .C0(sw1_c), .Z(n8603[2]));
    LUT4 i20695_2_lut (.A(n2144[0]), .B(oled_dcn_N_1400), .Z(n2170[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(133[19:29])
    defparam i20695_2_lut.init = 16'h2222;
    PFUMX mux_2397_i4 (.BLUT(\hour_ones[3] ), .ALUT(\hour_warning_ones[3] ), 
          .C0(sw1_c), .Z(n8603[3]));
    PFUMX mux_2399_i3 (.BLUT(\min_ones[2] ), .ALUT(\min_warning_ones[2] ), 
          .C0(sw1_c), .Z(n8613[2]));
    LUT4 i1_2_lut_rep_569 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n39607)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_569.init = 16'hdddd;
    PFUMX mux_2397_i2 (.BLUT(\hour_ones[1] ), .ALUT(\hour_warning_ones[1] ), 
          .C0(sw1_c), .Z(n8603[1]));
    LUT4 i77_3_lut_rep_451_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(n39543), 
         .D(oled_dcn_N_1400), .Z(n39489)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i77_3_lut_rep_451_4_lut.init = 16'hfddd;
    PFUMX mux_2399_i2 (.BLUT(\min_ones[1] ), .ALUT(\min_warning_ones[1] ), 
          .C0(sw1_c), .Z(n8613[1]));
    LUT4 i1_4_lut_adj_186 (.A(state[2]), .B(n39513), .C(n19_adj_1820), 
         .D(n16_adj_1825), .Z(n6_adj_1724)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_186.init = 16'haaa8;
    LUT4 i1_2_lut_rep_439_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(oled_dcn_N_1400), .D(n39668), .Z(n39477)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_rep_439_3_lut_4_lut.init = 16'hfffd;
    PFUMX i47_adj_187 (.BLUT(n6_adj_1834), .ALUT(n12_adj_1776), .C0(state[3]), 
          .Z(n24_adj_1810));
    PFUMX i31966 (.BLUT(n39315), .ALUT(n39313), .C0(cnt_scan[3]), .Z(n39316));
    LUT4 i20731_3_lut (.A(n39560), .B(state[2]), .C(oled_dcn_N_1409), 
         .Z(n12_adj_1736)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i20731_3_lut.init = 16'h0202;
    PFUMX mux_36_Mux_0_i12 (.BLUT(n8629), .ALUT(\Tem_high[0] ), .C0(\cnt_main[0] ), 
          .Z(n12_adj_1827)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=361, LSE_RLINE=391 */ ;
    PFUMX i32022 (.BLUT(n39730), .ALUT(n39731), .C0(\cnt_main[0] ), .Z(num_7__N_1092[0]));
    PFUMX i31962 (.BLUT(n39311), .ALUT(n37861), .C0(cnt_scan[1]), .Z(n39312));
    PFUMX i47_adj_188 (.BLUT(n6_adj_1833), .ALUT(n12_adj_1772), .C0(state[3]), 
          .Z(n24_adj_1817));
    PFUMX i31959 (.BLUT(n39308), .ALUT(n39306), .C0(cnt_scan[3]), .Z(n39309));
    PFUMX i47_adj_189 (.BLUT(n6_adj_1831), .ALUT(n12_adj_1779), .C0(state[3]), 
          .Z(n24_adj_1814));
    PFUMX i47_adj_190 (.BLUT(n6_adj_1742), .ALUT(n12_adj_1771), .C0(state[3]), 
          .Z(n24_adj_1811));
    PFUMX i31956 (.BLUT(n39304), .ALUT(n37858), .C0(cnt_scan[1]), .Z(n39305));
    PFUMX i91 (.BLUT(n57_adj_1741), .ALUT(n61_adj_1769), .C0(cnt_scan[3]), 
          .Z(n63));
    PFUMX i32002 (.BLUT(n39700), .ALUT(n39701), .C0(num[2]), .Z(n2507));
    PFUMX i32000 (.BLUT(n39697), .ALUT(n39698), .C0(num[1]), .Z(n39545));
    PFUMX i47_adj_191 (.BLUT(n6_adj_1829), .ALUT(n12_adj_1778), .C0(state[3]), 
          .Z(n24_adj_1813));
    PFUMX i31086 (.BLUT(n37887), .ALUT(n37888), .C0(cnt_write[2]), .Z(n37891));
    PFUMX i47_adj_192 (.BLUT(n6_adj_1828), .ALUT(n12_adj_1780), .C0(state[3]), 
          .Z(n24_adj_1812));
    \divide(WIDTH=32,N=12000000)  divide_1Hz (.sys_clk_c(sys_clk_c), .clk_in_1Hz(clk_in_1Hz), 
            .GND_net(GND_net), .sys_rst_n_c(sys_rst_n_c), .rst_n_in_N_1518(rst_n_in_N_1518)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/oled.v(54[36] 58[5])
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000) 
//

module \divide(WIDTH=32,N=12000000)  (sys_clk_c, clk_in_1Hz, GND_net, 
            sys_rst_n_c, rst_n_in_N_1518) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output clk_in_1Hz;
    input GND_net;
    input sys_rst_n_c;
    output rst_n_in_N_1518;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // d:/new porject/top-xu/oled.v(52[9:19])
    wire [31:0]n200;
    
    wire n21818;
    wire [31:0]n101;
    
    wire clkout_N_295, n34355;
    wire [31:0]cnt_p;   // d:/new porject/top-xu/clock.v(11[19:24])
    
    wire n34354, n34353, n34352, n34351, n34350, n34349, n34348, 
        n34347, n34346, n34345, n34344, n34343, n34342, n34341, 
        n34340, n34419, n34418, n34417, n34416, n34415, n34414, 
        n34413, n34412, n34411, n34410, n34409, n34408, n37650, 
        n37998, n37654, n37652, n17, n30_adj_1718, n26_adj_1719, 
        n18, n27_adj_1720, n24, n37590;
    
    FD1S3IX cnt_p_3010__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n21818), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i0.GSR = "ENABLED";
    FD1S3AX clk_p_29 (.D(clkout_N_295), .CK(sys_clk_c), .Q(clk_in_1Hz)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=36, LSE_RCOL=5, LSE_LLINE=54, LSE_RLINE=58 */ ;   // d:/new porject/top-xu/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D cnt_p_3010_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34355), .S0(n101[31]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_3010_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34354), .COUT(n34355), .S0(n101[29]), 
          .S1(n101[30]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34353), .COUT(n34354), .S0(n101[27]), 
          .S1(n101[28]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34352), .COUT(n34353), .S0(n101[25]), 
          .S1(n101[26]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34351), .COUT(n34352), .S0(n101[23]), 
          .S1(n101[24]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_25.INJECT1_1 = "NO";
    FD1S3IX cnt_p_3010__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n21818), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i1.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n21818), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n21818), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n21818), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n21818), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n21818), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_3010__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n21818), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010__i31.GSR = "ENABLED";
    CCU2D cnt_p_3010_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34350), .COUT(n34351), .S0(n101[21]), 
          .S1(n101[22]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34349), .COUT(n34350), .S0(n101[19]), 
          .S1(n101[20]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34348), .COUT(n34349), .S0(n101[17]), 
          .S1(n101[18]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34347), .COUT(n34348), .S0(n101[15]), 
          .S1(n101[16]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34346), .COUT(n34347), .S0(n101[13]), 
          .S1(n101[14]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34345), .COUT(n34346), .S0(n101[11]), 
          .S1(n101[12]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n34344), .COUT(n34345), .S0(n101[9]), .S1(n101[10]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34343), .COUT(n34344), .S0(n101[7]), .S1(n101[8]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34342), .COUT(n34343), .S0(n101[5]), .S1(n101[6]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34341), .COUT(n34342), .S0(n101[3]), .S1(n101[4]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34340), .COUT(n34341), .S0(n101[1]), .S1(n101[2]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_3010_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_3010_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_3010_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n34340), .S1(n101[0]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3010_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_3010_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_3010_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_3010_add_4_1.INJECT1_1 = "NO";
    LUT4 rst_n_in_I_0_1_lut (.A(sys_rst_n_c), .Z(rst_n_in_N_1518)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/beep.v(81[5:14])
    defparam rst_n_in_I_0_1_lut.init = 16'h5555;
    CCU2D add_27540_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n34419), 
          .S0(clkout_N_295));
    defparam add_27540_cout.INIT0 = 16'h0000;
    defparam add_27540_cout.INIT1 = 16'h0000;
    defparam add_27540_cout.INJECT1_0 = "NO";
    defparam add_27540_cout.INJECT1_1 = "NO";
    CCU2D add_27540_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34418), .COUT(n34419));
    defparam add_27540_24.INIT0 = 16'h5555;
    defparam add_27540_24.INIT1 = 16'h5555;
    defparam add_27540_24.INJECT1_0 = "NO";
    defparam add_27540_24.INJECT1_1 = "NO";
    CCU2D add_27540_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34417), .COUT(n34418));
    defparam add_27540_22.INIT0 = 16'h5555;
    defparam add_27540_22.INIT1 = 16'h5555;
    defparam add_27540_22.INJECT1_0 = "NO";
    defparam add_27540_22.INJECT1_1 = "NO";
    CCU2D add_27540_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34416), .COUT(n34417));
    defparam add_27540_20.INIT0 = 16'h5555;
    defparam add_27540_20.INIT1 = 16'h5555;
    defparam add_27540_20.INJECT1_0 = "NO";
    defparam add_27540_20.INJECT1_1 = "NO";
    CCU2D add_27540_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34415), .COUT(n34416));
    defparam add_27540_18.INIT0 = 16'h5555;
    defparam add_27540_18.INIT1 = 16'h5555;
    defparam add_27540_18.INJECT1_0 = "NO";
    defparam add_27540_18.INJECT1_1 = "NO";
    CCU2D add_27540_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34414), .COUT(n34415));
    defparam add_27540_16.INIT0 = 16'h5aaa;
    defparam add_27540_16.INIT1 = 16'h5555;
    defparam add_27540_16.INJECT1_0 = "NO";
    defparam add_27540_16.INJECT1_1 = "NO";
    CCU2D add_27540_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34413), .COUT(n34414));
    defparam add_27540_14.INIT0 = 16'h5aaa;
    defparam add_27540_14.INIT1 = 16'h5555;
    defparam add_27540_14.INJECT1_0 = "NO";
    defparam add_27540_14.INJECT1_1 = "NO";
    CCU2D add_27540_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34412), .COUT(n34413));
    defparam add_27540_12.INIT0 = 16'h5555;
    defparam add_27540_12.INIT1 = 16'h5aaa;
    defparam add_27540_12.INJECT1_0 = "NO";
    defparam add_27540_12.INJECT1_1 = "NO";
    CCU2D add_27540_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34411), .COUT(n34412));
    defparam add_27540_10.INIT0 = 16'h5aaa;
    defparam add_27540_10.INIT1 = 16'h5aaa;
    defparam add_27540_10.INJECT1_0 = "NO";
    defparam add_27540_10.INJECT1_1 = "NO";
    CCU2D add_27540_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34410), .COUT(n34411));
    defparam add_27540_8.INIT0 = 16'h5555;
    defparam add_27540_8.INIT1 = 16'h5aaa;
    defparam add_27540_8.INJECT1_0 = "NO";
    defparam add_27540_8.INJECT1_1 = "NO";
    CCU2D add_27540_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34409), .COUT(n34410));
    defparam add_27540_6.INIT0 = 16'h5555;
    defparam add_27540_6.INIT1 = 16'h5555;
    defparam add_27540_6.INJECT1_0 = "NO";
    defparam add_27540_6.INJECT1_1 = "NO";
    CCU2D add_27540_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34408), .COUT(n34409));
    defparam add_27540_4.INIT0 = 16'h5aaa;
    defparam add_27540_4.INIT1 = 16'h5aaa;
    defparam add_27540_4.INJECT1_0 = "NO";
    defparam add_27540_4.INJECT1_1 = "NO";
    CCU2D add_27540_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n34408));
    defparam add_27540_2.INIT0 = 16'h7000;
    defparam add_27540_2.INIT1 = 16'h5555;
    defparam add_27540_2.INJECT1_0 = "NO";
    defparam add_27540_2.INJECT1_1 = "NO";
    LUT4 i31324_4_lut (.A(n37650), .B(n37998), .C(n37654), .D(n37652), 
         .Z(n21818)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i31324_4_lut.init = 16'h8000;
    LUT4 i30845_4_lut (.A(n200[6]), .B(cnt_p[7]), .C(n200[3]), .D(cnt_p[17]), 
         .Z(n37650)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30845_4_lut.init = 16'h8000;
    LUT4 i31323_4_lut (.A(n17), .B(n30_adj_1718), .C(n26_adj_1719), .D(n18), 
         .Z(n37998)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i31323_4_lut.init = 16'h0001;
    LUT4 i30849_4_lut (.A(n200[0]), .B(n200[2]), .C(cnt_p[18]), .D(cnt_p[11]), 
         .Z(n37654)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30849_4_lut.init = 16'h8000;
    LUT4 i30847_4_lut (.A(cnt_p[9]), .B(cnt_p[16]), .C(n200[1]), .D(n200[5]), 
         .Z(n37652)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30847_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(cnt_p[28]), .B(cnt_p[8]), .Z(n17)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i14_4_lut (.A(n27_adj_1720), .B(cnt_p[29]), .C(n24), .D(cnt_p[13]), 
         .Z(n30_adj_1718)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_p[24]), .B(cnt_p[30]), .C(cnt_p[27]), .D(cnt_p[14]), 
         .Z(n26_adj_1719)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(cnt_p[25]), .B(cnt_p[26]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i11_4_lut (.A(cnt_p[19]), .B(cnt_p[10]), .C(cnt_p[22]), .D(cnt_p[15]), 
         .Z(n27_adj_1720)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(cnt_p[31]), .B(n200[4]), .C(n37590), .D(cnt_p[20]), 
         .Z(n24)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i8_4_lut.init = 16'hbfff;
    LUT4 i30786_3_lut (.A(cnt_p[23]), .B(cnt_p[21]), .C(cnt_p[12]), .Z(n37590)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i30786_3_lut.init = 16'h8080;
    
endmodule
