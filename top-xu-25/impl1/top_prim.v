// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Thu Feb 25 14:42:34 2021
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
    wire [7:0]uart_send_data;   // d:/new porject/top-xu/top.v(356[12:26])
    
    wire warning_TEM, uart_recv_done;
    wire [7:0]uart_recv_data;   // d:/new porject/top-xu/top.v(415[13:27])
    wire [7:0]music_tone;   // d:/new porject/top-xu/top.v(416[13:23])
    
    wire n5577, n5576, n5575, n5574, n33145, n5235, n5555, n5556, 
        n5557, n5558, n5423, n5422, n5421, n5420, n5295, n5542, 
        n5543, n5553, n5554, n5413, n5412, n5411, n5410, n5573, 
        n5572, n5571, n5537, n5538, n5539, n5540, n5265, n5559, 
        n5560, n5570, n5541, n5403, n5402, n5401, n5400, n5399, 
        n5611, n5610, n5609, n5608, n5607, n5606, n5605, n5604, 
        n5594, n5593, n5592, n5591, n5590, n5589, n5588, warning_time_7__N_176, 
        led_N_216, n749, n750, n751, n752, n753, n754, n755, 
        n756, led_N_213, n795, n796, n797, n798, n799, n800, 
        n801, n802, n805, n806, n807, n808, n809, n810, n811, 
        n812, n831, n850, n12;
    wire [7:0]sec_7__N_1;
    wire [7:0]min_7__N_11;
    wire [7:0]hour_7__N_19;
    
    wire uart_en_N_231, n5, n12_adj_1886, key_sec_pre, key_sec, key_sec_pre_adj_1887, 
        key_sec_adj_1888, n9755;
    wire [3:0]hundres_0__N_353;
    wire [3:0]hundres_0__N_356;
    wire [3:0]hundres_0__N_356_adj_1947;
    
    wire hundres_0__N_361;
    wire [3:0]hundres_0__N_353_adj_1971;
    
    wire hundres_0__N_361_adj_1890;
    wire [3:0]hundres_0__N_353_adj_1997;
    
    wire hundres_0__N_361_adj_1892;
    wire [3:0]hundres_0__N_356_adj_2025;
    
    wire hundres_0__N_361_adj_1894, sys_clk_c_enable_103;
    wire [3:0]hundres_1__N_345_adj_2043;
    
    wire n37969, n21900;
    wire [2:0]state_back_2__N_522;
    
    wire one_wire_N_671, n35534, n12746;
    wire [7:0]char_reg;   // d:/new porject/top-xu/oled.v(45[17:25])
    wire [4:0]cnt_main_adj_2068;   // d:/new porject/top-xu/oled.v(46[12:20])
    wire [15:0]cnt_adj_2073;   // d:/new porject/top-xu/oled.v(47[35:38])
    
    wire n9673, n9668, n36123, n37970, n36085, n20808, n29, n35946, 
        n34, n35674, n37, n8666, n8663, n36057, n27367, n20810, 
        n8673, n32580, n37921, n32579, n35675, n36026, clk_1s_enable_16, 
        n35743, n8692, n5536, n2507, n2508, n2509, n2510, n2513, 
        n2676, n2677, n2678, n2679, n2680, n2681, n2682, n3054, 
        n3055, n3056, n3057, n3058, n3059, n3060, n3432, n3433, 
        n3434, n3435, n3436, n3437, n3438, n3810, n3811, n3812, 
        n3813, n3814, n3815, n3816, n4188, n4189, n4190, n4191, 
        n4192, n4193, n4194, n20, n19, n18, n4, n32754, rx_flag, 
        n32753, n37423, n37422, n37421;
    wire [4:0]state_adj_2093;   // d:/new porject/top-xu/music_player.v(41[11:16])
    
    wire n32752;
    wire [8:0]music_cnt;   // d:/new porject/top-xu/music_player.v(47[11:20])
    
    wire recv_done_d0, recv_done_d1, n123, n124, n125, n126, n22, 
        n37072, n9380, n9367, n36002, clk_1s_enable_9, sys_clk_c_enable_115, 
        sys_clk_c_enable_163, n35667, n9751, n9749, n5407, n5406, 
        n5409, n5408, n5417, n35556, n32948, n32751, n32750, n32947, 
        n32946, n32945, n10, n32749, n36551, n36679, n4_adj_1895, 
        n21961, n4_adj_1896, n4_adj_1897, sys_clk_c_enable_7, n5416, 
        n5419, n5418, n3622, n3618, sys_clk_c_enable_133, n32748, 
        n5398, n5397, n32747, n5396, n32746, n24, n32745, n5587, 
        n20_adj_1898, n17, n16, n32744, n32940, n32743, n32939, 
        n32578, sys_clk_c_enable_333, n33179, n32938, n4_adj_1899, 
        n32577, n22_adj_1900, n1705, n1704, n1703, n1700, n1699, 
        n19_adj_1901, n32937, n19725, n9664, n6, n8, n31, n6_adj_1902, 
        n11544, n9659, n15, n9677, n34_adj_1903, n38250, one_wire_out, 
        n21947, n38234, n38231, sys_clk_c_enable_308, n38227, n11, 
        n37923, n37922, n36219, n38216, n37070, n38210, n37892, 
        n37976, n38204, n37975, n33164, n37972, n38198, n6_adj_1904, 
        n38192, n4_adj_1905, n4_adj_1906, n37_adj_1907, n32, n38175, 
        n38174, n6_adj_1908, n38170, n38168, n7, n8_adj_1909, n4_adj_1910, 
        n7_adj_1911, n38163, n32807, n4_adj_1912, n32806, n38156, 
        n38155, n32805, n32804, n38152, n6_adj_1913, n36380, n38347, 
        n37053, n32799, n37764, n37763, n37762, n32730, n7_adj_1914, 
        n32731, n38136, n38129, n32798, n25994, n26000, n6_adj_1915, 
        n32797, n38126, n38124, n38113, n181, n38108, n38107, 
        n37191, n32796, sys_clk_c_enable_237, sys_clk_c_enable_306, 
        n167, n38089, n35666, sys_clk_c_enable_295, n4_adj_1916, n35735, 
        n4_adj_1917, n39479, n37971, n39470, n32732, n19219, n37031, 
        n37985, sys_clk_c_enable_155, n36265, n36263, n12760, n37030, 
        n32729, n36239, n36225, n6_adj_1918, n36221, n5_adj_1919, 
        sys_clk_c_enable_147, n39490, n33269, n37964;
    
    VHI i31147 (.Z(VCC_net));
    CCU2D add_124_7 (.A0(warning_time[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32745), .COUT(n32746), .S0(n751), .S1(n750));   // d:/new porject/top-xu/top.v(193[22:41])
    defparam add_124_7.INIT0 = 16'h5aaa;
    defparam add_124_7.INIT1 = 16'h5aaa;
    defparam add_124_7.INJECT1_0 = "NO";
    defparam add_124_7.INJECT1_1 = "NO";
    CCU2D add_124_5 (.A0(warning_time[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32744), .COUT(n32745), .S0(n753), .S1(n752));   // d:/new porject/top-xu/top.v(193[22:41])
    defparam add_124_5.INIT0 = 16'h5aaa;
    defparam add_124_5.INIT1 = 16'h5aaa;
    defparam add_124_5.INJECT1_0 = "NO";
    defparam add_124_5.INJECT1_1 = "NO";
    FD1P3AY min_waning_t_i0_i0 (.D(min_warning[0]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(min_waning_t[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i0.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i0 (.D(hour_warning[0]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(hour_waning_t[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i0.GSR = "ENABLED";
    FD1S3AX sec_i0 (.D(sec_7__N_1[0]), .CK(clk_1s), .Q(sec[0]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i0.GSR = "ENABLED";
    FD1S3AX min_i0 (.D(min_7__N_11[0]), .CK(clk_1s), .Q(min[0]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam min_i0.GSR = "ENABLED";
    FD1P3AX hour_i0 (.D(hour_7__N_19[0]), .SP(clk_1s_enable_16), .CK(clk_1s), 
            .Q(hour[0]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i0.GSR = "ENABLED";
    FD1P3AX Temp_H_i0 (.D(ds18b20_data[4]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[0]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam Temp_H_i0.GSR = "ENABLED";
    FD1S3AY min_warning__i0 (.D(n24), .CK(sys_clk_c), .Q(min_warning[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i0.GSR = "ENABLED";
    FD1P3IX warning_time__i0 (.D(n756), .SP(clk_1s_enable_9), .CD(n9749), 
            .CK(clk_1s), .Q(warning_time[0]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i0.GSR = "ENABLED";
    FD1P3IX uart_en_207 (.D(n39490), .SP(sys_clk_c_enable_7), .CD(n21900), 
            .CK(sys_clk_c), .Q(uart_en));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam uart_en_207.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i6 (.D(n5554), .SP(sys_clk_c_enable_295), .CK(sys_clk_c), 
            .Q(sec_t[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i6.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i5 (.D(n5555), .SP(sys_clk_c_enable_295), .CK(sys_clk_c), 
            .Q(sec_t[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i5.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i4 (.D(n5556), .SP(sys_clk_c_enable_295), .CK(sys_clk_c), 
            .Q(sec_t[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i4.GSR = "ENABLED";
    ROM128X1A mux_906_Mux_9 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3815)) /* synthesis initstate=0x0000000070002C120018007C00002418 */ ;
    defparam mux_906_Mux_9.initval = 128'h0000000070002C120018007C00002418;
    ROM128X1A mux_906_Mux_8 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3816)) /* synthesis initstate=0x000004402C1F86ED93FD012C0000DBFD */ ;
    defparam mux_906_Mux_8.initval = 128'h000004402C1F86ED93FD012C0000DBFD;
    ROM128X1A mux_906_Mux_6 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4188)) /* synthesis initstate=0x07226192950679A20004004000004404 */ ;
    defparam mux_906_Mux_6.initval = 128'h07226192950679A20004004000004404;
    ROM128X1A mux_906_Mux_2 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4192)) /* synthesis initstate=0x07E2009052E7E117A305040800002F05 */ ;
    defparam mux_906_Mux_2.initval = 128'h07E2009052E7E117A305040800002F05;
    ROM128X1A mux_906_Mux_1 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4193)) /* synthesis initstate=0x0000005007E7E18D8385803000001B85 */ ;
    defparam mux_906_Mux_1.initval = 128'h0000005007E7E18D8385803000001B85;
    ROM128X1A mux_906_Mux_35 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2679)) /* synthesis initstate=0x02EFE9FC00E7F9FE105128000000FC51 */ ;
    defparam mux_906_Mux_35.initval = 128'h02EFE9FC00E7F9FE105128000000FC51;
    ROM128X1A mux_906_Mux_34 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2680)) /* synthesis initstate=0x07F5690452EFF9FE236104580000FF61 */ ;
    defparam mux_906_Mux_34.initval = 128'h07F5690452EFF9FE236104580000FF61;
    ROM128X1A mux_906_Mux_33 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2681)) /* synthesis initstate=0x0000090403EFF9FD832500600000FB25 */ ;
    defparam mux_906_Mux_33.initval = 128'h0000090403EFF9FD832500600000FB25;
    ROM128X1A mux_906_Mux_30 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3054)) /* synthesis initstate=0x04A8927EACAA96BD4BEF426800007BEF */ ;
    defparam mux_906_Mux_30.initval = 128'h04A8927EACAA96BD4BEF426800007BEF;
    FD1P3AX sec_t_i0_i3 (.D(n5557), .SP(sys_clk_c_enable_295), .CK(sys_clk_c), 
            .Q(sec_t[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i3.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i2 (.D(n5558), .SP(sys_clk_c_enable_295), .CK(sys_clk_c), 
            .Q(sec_t[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i2.GSR = "ENABLED";
    FD1P3IX hour_warning__i0 (.D(n5611), .SP(sys_clk_c_enable_163), .CD(n9751), 
            .CK(sys_clk_c), .Q(hour_warning[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i0.GSR = "ENABLED";
    FD1P3IX key_mode_3039__i0 (.D(n20), .SP(sys_clk_c_enable_308), .CD(n25994), 
            .CK(sys_clk_c), .Q(key_mode[0]));   // d:/new porject/top-xu/top.v(99[22:37])
    defparam key_mode_3039__i0.GSR = "ENABLED";
    FD1P3JX uart_send_data_i0_i0 (.D(Temp_H[0]), .SP(sys_clk_c_enable_306), 
            .PD(n21947), .CK(sys_clk_c), .Q(uart_send_data[0]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam uart_send_data_i0_i0.GSR = "DISABLED";
    FD1P3AY led_202 (.D(led_N_213), .SP(warning_time_7__N_176), .CK(clk_1s), 
            .Q(led_c));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam led_202.GSR = "ENABLED";
    ROM128X1A mux_906_Mux_24 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3060)) /* synthesis initstate=0x001010012C1F82FDC3AD02CC0000FBAD */ ;
    defparam mux_906_Mux_24.initval = 128'h001010012C1F82FDC3AD02CC0000FBAD;
    ROM128X1A mux_907_Mux_1 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n126)) /* synthesis initstate=0x00000000054D4A4A014A244A954A244A */ ;
    defparam mux_907_Mux_1.initval = 128'h00000000054D4A4A014A244A954A244A;
    ROM128X1A mux_906_Mux_25 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3059)) /* synthesis initstate=0x00100040580020020C42001C00000442 */ ;
    defparam mux_906_Mux_25.initval = 128'h00100040580020020C42001C00000442;
    ROM128X1A mux_907_Mux_2 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n125)) /* synthesis initstate=0x000000005994949451139113B7139113 */ ;
    defparam mux_907_Mux_2.initval = 128'h000000005994949451139113B7139113;
    ROM128X1A mux_906_Mux_26 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3058)) /* synthesis initstate=0x041BA2FA090040003C3001AC00000030 */ ;
    defparam mux_906_Mux_26.initval = 128'h041BA2FA090040003C3001AC00000030;
    ROM128X1A mux_906_Mux_27 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3057)) /* synthesis initstate=0x011441441A0D096503402D580000CB40 */ ;
    defparam mux_906_Mux_27.initval = 128'h011441441A0D096503402D580000CB40;
    ROM128X1A mux_906_Mux_28 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3056)) /* synthesis initstate=0x001808620D0000023C91810800000491 */ ;
    defparam mux_906_Mux_28.initval = 128'h001808620D0000023C91810800000491;
    ROM128X1A mux_906_Mux_29 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3055)) /* synthesis initstate=0x075300C0184000000484403800000084 */ ;
    defparam mux_906_Mux_29.initval = 128'h075300C0184000000484403800000084;
    FD1P3AX sec_t_i0_i1 (.D(n5559), .SP(sys_clk_c_enable_295), .CK(sys_clk_c), 
            .Q(sec_t[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i1.GSR = "ENABLED";
    PFUMX i30500 (.BLUT(n37922), .ALUT(n37921), .C0(cnt_adj_2073[4]), 
          .Z(n37923));
    ROM128X1A mux_906_Mux_32 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2682)) /* synthesis initstate=0x0000090417F5797400A800000000E8A8 */ ;
    defparam mux_906_Mux_32.initval = 128'h0000090417F5797400A800000000E8A8;
    ROM128X1A mux_907_Mux_3 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n124)) /* synthesis initstate=0x0000000091DC0303010384C3F70384C3 */ ;
    defparam mux_907_Mux_3.initval = 128'h0000000091DC0303010384C3F70384C3;
    CCU2D add_124_3 (.A0(warning_time[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32743), .COUT(n32744), .S0(n755), .S1(n754));   // d:/new porject/top-xu/top.v(193[22:41])
    defparam add_124_3.INIT0 = 16'h5aaa;
    defparam add_124_3.INIT1 = 16'h5aaa;
    defparam add_124_3.INJECT1_0 = "NO";
    defparam add_124_3.INJECT1_1 = "NO";
    LUT4 n37030_bdd_3_lut (.A(n37030), .B(char_reg[0]), .C(n38113), .Z(n37031)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37030_bdd_3_lut.init = 16'hcaca;
    FD1P3AX min_t_i0_i0 (.D(n5577), .SP(sys_clk_c_enable_155), .CK(sys_clk_c), 
            .Q(min_t[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i0.GSR = "ENABLED";
    LUT4 i2_4_lut_4_lut (.A(key_mode[0]), .B(n39470), .C(n12_adj_1886), 
         .D(n35556), .Z(n9751)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_4_lut_4_lut.init = 16'h2000;
    ROM128X1A mux_907_Mux_5 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n123)) /* synthesis initstate=0x00000000CE03DFDF44DCF5DC48DCF5DC */ ;
    defparam mux_907_Mux_5.initval = 128'h00000000CE03DFDF44DCF5DC48DCF5DC;
    CCU2D add_124_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(warning_time[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32743), .S1(n756));   // d:/new porject/top-xu/top.v(193[22:41])
    defparam add_124_1.INIT0 = 16'hF000;
    defparam add_124_1.INIT1 = 16'h5555;
    defparam add_124_1.INJECT1_0 = "NO";
    defparam add_124_1.INJECT1_1 = "NO";
    LUT4 i4_3_lut_4_lut (.A(n38231), .B(n38210), .C(hour_warning[5]), 
         .D(hour_warning[3]), .Z(n11)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i4_3_lut_4_lut.init = 16'h0008;
    FD1P3AX hour_t_i0_i0 (.D(n5543), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .Q(hour_t[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(key_mode[1]), .B(key_mode[2]), .C(sw1_c), 
         .Z(n35666)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0202;
    IB sw2_pad (.I(sw2), .O(sw2_c));   // d:/new porject/top-xu/top.v(11[8:11])
    IB sw1_pad (.I(sw1), .O(sw1_c));   // d:/new porject/top-xu/top.v(10[8:11])
    ROM128X1A mux_906_Mux_3 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4191)) /* synthesis initstate=0x02E7E1B600E2E1934221280000002621 */ ;
    defparam mux_906_Mux_3.initval = 128'h02E7E1B600E2E1934221280000002621;
    ROM128X1A mux_906_Mux_4 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4190)) /* synthesis initstate=0x02E3E1B610EAE1972379045800002F79 */ ;
    defparam mux_906_Mux_4.initval = 128'h02E3E1B610EAE1972379045800002F79;
    ROM128X1A mux_906_Mux_36 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2678)) /* synthesis initstate=0x02E7E9BC10E7F9FF215104480000FD51 */ ;
    defparam mux_906_Mux_36.initval = 128'h02E7E9BC10E7F9FF215104480000FD51;
    ROM128X1A mux_906_Mux_5 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4189)) /* synthesis initstate=0x02BAE19E01A8E18F0169002000001D69 */ ;
    defparam mux_906_Mux_5.initval = 128'h02BAE19E01A8E18F0169002000001D69;
    ROM128X1A mux_906_Mux_37 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2677)) /* synthesis initstate=0x00A5E93E05A7FDFF016980700000FD69 */ ;
    defparam mux_906_Mux_37.initval = 128'h00A5E93E05A7FDFF016980700000FD69;
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/new porject/top-xu/top.v(4[8:17])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/new porject/top-xu/top.v(3[8:15])
    OB led_pad (.I(led_c), .O(led));   // d:/new porject/top-xu/top.v(9[13:16])
    OB oled_mosi_pad (.I(oled_mosi_c), .O(oled_mosi));   // d:/new porject/top-xu/top.v(18[9:18])
    OB oled_sck_pad (.I(oled_sck_c), .O(oled_sck));   // d:/new porject/top-xu/top.v(17[9:17])
    OB oled_dc_pad (.I(oled_dc_c), .O(oled_dc));   // d:/new porject/top-xu/top.v(16[9:16])
    OB oled_cs_pad (.I(oled_cs_c), .O(oled_cs));   // d:/new porject/top-xu/top.v(15[9:16])
    OB oled_res_pad (.I(oled_res_c), .O(oled_res));   // d:/new porject/top-xu/top.v(14[9:17])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // d:/new porject/top-xu/top.v(20[10:18])
    OB beep_pad (.I(beep_c), .O(beep));   // d:/new porject/top-xu/top.v(19[18:22])
    BB one_wire_pad (.I(one_wire_N_671), .T(n11544), .B(one_wire), .O(one_wire_out));   // d:/new porject/top-xu/ds18b20.v(63[2] 264[5])
    CCU2D add_1922_5 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[2]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[3]), 
          .D1(GND_net), .CIN(n32730), .COUT(n32731), .S0(n5592), .S1(n5591));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1922_5.INIT0 = 16'h2d2d;
    defparam add_1922_5.INIT1 = 16'h2d2d;
    defparam add_1922_5.INJECT1_0 = "NO";
    defparam add_1922_5.INJECT1_1 = "NO";
    ROM128X1A mux_906_Mux_39 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n2676)) /* synthesis initstate=0x050D6D04950D7976000400200000EC04 */ ;
    defparam mux_906_Mux_39.initval = 128'h050D6D04950D7976000400200000EC04;
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // d:/new porject/top-xu/top.v(12[18:26])
    ROM128X1A mux_906_Mux_0 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n4194)) /* synthesis initstate=0x0000001017F86D6000A800200000C0A8 */ ;
    defparam mux_906_Mux_0.initval = 128'h0000001017F86D6000A800200000C0A8;
    ROM128X1A mux_906_Mux_22 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3432)) /* synthesis initstate=0x0478923EBE7A96BD836F405000007B6F */ ;
    defparam mux_906_Mux_22.initval = 128'h0478923EBE7A96BD836F405000007B6F;
    ROM128X1A mux_906_Mux_21 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3433)) /* synthesis initstate=0x02831A80029002005C025F1200000002 */ ;
    defparam mux_906_Mux_21.initval = 128'h02831A80029002005C025F1200000002;
    ROM128X1A mux_906_Mux_20 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3434)) /* synthesis initstate=0x0588322212960A03AC160C5800000416 */ ;
    defparam mux_906_Mux_20.initval = 128'h0588322212960A03AC160C5800000416;
    ROM128X1A mux_906_Mux_19 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3435)) /* synthesis initstate=0x00003A40059D63E503C3AC320000CBC3 */ ;
    defparam mux_906_Mux_19.initval = 128'h00003A40059D63E503C3AC320000CBC3;
    FD1P3AX warning_203 (.D(led_N_216), .SP(warning_time_7__N_176), .CK(clk_1s), 
            .Q(warning));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_203.GSR = "ENABLED";
    ROM128X1A mux_906_Mux_18 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3436)) /* synthesis initstate=0x041FD7BE10102A002C2A0C5A0000002A */ ;
    defparam mux_906_Mux_18.initval = 128'h041FD7BE10102A002C2A0C5A0000002A;
    ROM128X1A mux_906_Mux_17 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3437)) /* synthesis initstate=0x00001001001002005C120F9200000012 */ ;
    defparam mux_906_Mux_17.initval = 128'h00001001001002005C120F9200000012;
    FD1P3AX time_set_191 (.D(n38198), .SP(sys_clk_c_enable_308), .CK(sys_clk_c), 
            .Q(time_set));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam time_set_191.GSR = "ENABLED";
    ROM128X1A mux_906_Mux_14 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3810)) /* synthesis initstate=0x04989E3EACA892AD117F11080000597F */ ;
    defparam mux_906_Mux_14.initval = 128'h04989E3EACA892AD117F11080000597F;
    CCU2D add_1922_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre), .B1(key_sec), .C1(GND_net), .D1(GND_net), 
          .COUT(n32729));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1922_1.INIT0 = 16'hF000;
    defparam add_1922_1.INIT1 = 16'h2222;
    defparam add_1922_1.INJECT1_0 = "NO";
    defparam add_1922_1.INJECT1_1 = "NO";
    CCU2D add_1922_9 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[6]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[7]), 
          .D1(GND_net), .CIN(n32732), .S0(n5588), .S1(n5587));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1922_9.INIT0 = 16'h2d2d;
    defparam add_1922_9.INIT1 = 16'h2d2d;
    defparam add_1922_9.INJECT1_0 = "NO";
    defparam add_1922_9.INJECT1_1 = "NO";
    ROM128X1A mux_906_Mux_10 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3814)) /* synthesis initstate=0x040DEDAF2500040060B1820C000000B1 */ ;
    defparam mux_906_Mux_10.initval = 128'h040DEDAF2500040060B1820C000000B1;
    ROM128X1A mux_906_Mux_11 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3813)) /* synthesis initstate=0x05020410320D05E4835C2E180000CB5C */ ;
    defparam mux_906_Mux_11.initval = 128'h05020410320D05E4835C2E180000CB5C;
    ROM128X1A mux_906_Mux_12 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3812)) /* synthesis initstate=0x000A0422210044036010022800000410 */ ;
    defparam mux_906_Mux_12.initval = 128'h000A0422210044036010022800000410;
    ROM128X1A mux_906_Mux_13 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3811)) /* synthesis initstate=0x0361048030460C100210105800002210 */ ;
    defparam mux_906_Mux_13.initval = 128'h0361048030460C100210105800002210;
    ROM128X1A mux_906_Mux_16 (.AD0(n2513), .AD1(n38129), .AD2(n38107), 
            .AD3(n2510), .AD4(n2509), .AD5(n2508), .AD6(n2507), .DO0(n3438)) /* synthesis initstate=0x000012407C1F86FF83EF00D20000FFEF */ ;
    defparam mux_906_Mux_16.initval = 128'h000012407C1F86FF83EF00D20000FFEF;
    FD1P3AX min_waning_t_i0_i5 (.D(min_warning[5]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(min_waning_t[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i5.GSR = "ENABLED";
    CCU2D add_1922_7 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[4]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[5]), 
          .D1(GND_net), .CIN(n32731), .COUT(n32732), .S0(n5590), .S1(n5589));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1922_7.INIT0 = 16'h2d2d;
    defparam add_1922_7.INIT1 = 16'h2d2d;
    defparam add_1922_7.INJECT1_0 = "NO";
    defparam add_1922_7.INJECT1_1 = "NO";
    CCU2D add_1922_3 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[0]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[1]), 
          .D1(GND_net), .CIN(n32729), .COUT(n32730), .S0(n5594), .S1(n5593));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1922_3.INIT0 = 16'hd2d2;
    defparam add_1922_3.INIT1 = 16'h2d2d;
    defparam add_1922_3.INJECT1_0 = "NO";
    defparam add_1922_3.INJECT1_1 = "NO";
    FD1P3AX hour_waning_t_i0_i7 (.D(hour_warning[7]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(hour_waning_t[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i7.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i6 (.D(hour_warning[6]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(hour_waning_t[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i6.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i7 (.D(n5553), .SP(sys_clk_c_enable_295), .CK(sys_clk_c), 
            .Q(sec_t[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i7.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i4 (.D(min_warning[4]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(min_waning_t[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i4.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i5 (.D(hour_warning[5]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(hour_waning_t[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i5.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i4 (.D(hour_warning[4]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(hour_waning_t[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i4.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i3 (.D(min_warning[3]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(min_waning_t[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i3.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i3 (.D(hour_warning[3]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(hour_waning_t[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i3.GSR = "ENABLED";
    FD1S3AX sec_i7 (.D(sec_7__N_1[7]), .CK(clk_1s), .Q(sec[7]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i7.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i2 (.D(hour_warning[2]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(hour_waning_t[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i2.GSR = "ENABLED";
    FD1S3AX sec_i6 (.D(sec_7__N_1[6]), .CK(clk_1s), .Q(sec[6]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i6.GSR = "ENABLED";
    FD1S3AX sec_i5 (.D(sec_7__N_1[5]), .CK(clk_1s), .Q(sec[5]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i5.GSR = "ENABLED";
    FD1S3AX min_i1 (.D(min_7__N_11[1]), .CK(clk_1s), .Q(min[1]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam min_i1.GSR = "ENABLED";
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
            .Q(Temp_H[1]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam Temp_H_i1.GSR = "ENABLED";
    FD1P3AX Temp_H_i2 (.D(ds18b20_data[6]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[2]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam Temp_H_i2.GSR = "ENABLED";
    FD1P3AX Temp_H_i3 (.D(ds18b20_data[7]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[3]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam Temp_H_i3.GSR = "ENABLED";
    FD1P3AX Temp_H_i4 (.D(ds18b20_data[8]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[4]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam Temp_H_i4.GSR = "ENABLED";
    FD1P3AX Temp_H_i5 (.D(hundres_1__N_345_adj_2043[0]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[5]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam Temp_H_i5.GSR = "ENABLED";
    FD1P3AX Temp_H_i6 (.D(hundres_1__N_345_adj_2043[1]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[6]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam Temp_H_i6.GSR = "ENABLED";
    FD1P3IX min_warning__i1 (.D(n5593), .SP(sys_clk_c_enable_115), .CD(n9755), 
            .CK(sys_clk_c), .Q(min_warning[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i1.GSR = "ENABLED";
    FD1S3AY min_warning__i2 (.D(n20_adj_1898), .CK(sys_clk_c), .Q(min_warning[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i2.GSR = "ENABLED";
    FD1P3IX min_warning__i3 (.D(n5591), .SP(sys_clk_c_enable_115), .CD(n9755), 
            .CK(sys_clk_c), .Q(min_warning[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i3.GSR = "ENABLED";
    FD1P3IX min_warning__i4 (.D(n5590), .SP(sys_clk_c_enable_115), .CD(n9755), 
            .CK(sys_clk_c), .Q(min_warning[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i4.GSR = "ENABLED";
    FD1P3IX min_warning__i5 (.D(n5589), .SP(sys_clk_c_enable_115), .CD(n9755), 
            .CK(sys_clk_c), .Q(min_warning[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i5.GSR = "ENABLED";
    FD1P3IX min_warning__i6 (.D(n5588), .SP(sys_clk_c_enable_115), .CD(n9755), 
            .CK(sys_clk_c), .Q(min_warning[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i6.GSR = "ENABLED";
    FD1P3IX min_warning__i7 (.D(n5587), .SP(sys_clk_c_enable_115), .CD(n9755), 
            .CK(sys_clk_c), .Q(min_warning[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_warning__i7.GSR = "ENABLED";
    FD1P3IX warning_time__i1 (.D(n755), .SP(clk_1s_enable_9), .CD(n9749), 
            .CK(clk_1s), .Q(warning_time[1]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i1.GSR = "ENABLED";
    FD1P3IX warning_time__i2 (.D(n754), .SP(clk_1s_enable_9), .CD(n9749), 
            .CK(clk_1s), .Q(warning_time[2]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i2.GSR = "ENABLED";
    FD1P3IX warning_time__i3 (.D(n753), .SP(clk_1s_enable_9), .CD(n9749), 
            .CK(clk_1s), .Q(warning_time[3]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i3.GSR = "ENABLED";
    FD1P3IX warning_time__i4 (.D(n752), .SP(clk_1s_enable_9), .CD(n9749), 
            .CK(clk_1s), .Q(warning_time[4]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i4.GSR = "ENABLED";
    FD1P3IX warning_time__i5 (.D(n751), .SP(clk_1s_enable_9), .CD(n9749), 
            .CK(clk_1s), .Q(warning_time[5]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i5.GSR = "ENABLED";
    FD1P3IX warning_time__i6 (.D(n750), .SP(clk_1s_enable_9), .CD(n9749), 
            .CK(clk_1s), .Q(warning_time[6]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i6.GSR = "ENABLED";
    FD1P3IX warning_time__i7 (.D(n749), .SP(clk_1s_enable_9), .CD(n9749), 
            .CK(clk_1s), .Q(warning_time[7]));   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam warning_time__i7.GSR = "ENABLED";
    FD1P3AY min_waning_t_i0_i2 (.D(min_warning[2]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(min_waning_t[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i2.GSR = "ENABLED";
    IB key3_pad (.I(key3), .O(key3_c));   // d:/new porject/top-xu/top.v(7[8:12])
    IB key2_pad (.I(key2), .O(key2_c));   // d:/new porject/top-xu/top.v(6[8:12])
    IB key1_pad (.I(key1), .O(key1_c));   // d:/new porject/top-xu/top.v(5[8:12])
    FD1P3AX hour_waning_t_i0_i1 (.D(hour_warning[1]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(hour_waning_t[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i1.GSR = "ENABLED";
    FD1S3AX sec_i4 (.D(sec_7__N_1[4]), .CK(clk_1s), .Q(sec[4]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i4.GSR = "ENABLED";
    FD1S3AX sec_i3 (.D(sec_7__N_1[3]), .CK(clk_1s), .Q(sec[3]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i3.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i7 (.D(min_warning[7]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(min_waning_t[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i7.GSR = "ENABLED";
    FD1S3AX sec_i2 (.D(sec_7__N_1[2]), .CK(clk_1s), .Q(sec[2]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i2.GSR = "ENABLED";
    FD1S3AX sec_i1 (.D(sec_7__N_1[1]), .CK(clk_1s), .Q(sec[1]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam sec_i1.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i1 (.D(min_warning[1]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(min_waning_t[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i1.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i6 (.D(min_warning[6]), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(min_waning_t[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i6.GSR = "ENABLED";
    PFUMX i30396 (.BLUT(n37763), .ALUT(n37762), .C0(cnt_adj_2073[4]), 
          .Z(n37764));
    CCU2D add_1913_9 (.A0(n5265), .B0(n38234), .C0(n5417), .D0(min_t[6]), 
          .A1(n5265), .B1(n38234), .C1(n5416), .D1(min_t[7]), .CIN(n32948), 
          .S0(n5571), .S1(n5570));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1913_9.INIT0 = 16'he4b1;
    defparam add_1913_9.INIT1 = 16'he4b1;
    defparam add_1913_9.INJECT1_0 = "NO";
    defparam add_1913_9.INJECT1_1 = "NO";
    CCU2D add_1913_7 (.A0(n5265), .B0(n38234), .C0(n5419), .D0(min_t[4]), 
          .A1(n5265), .B1(n38234), .C1(n5418), .D1(min_t[5]), .CIN(n32947), 
          .COUT(n32948), .S0(n5573), .S1(n5572));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1913_7.INIT0 = 16'he4b1;
    defparam add_1913_7.INIT1 = 16'he4b1;
    defparam add_1913_7.INJECT1_0 = "NO";
    defparam add_1913_7.INJECT1_1 = "NO";
    FD1P3AX hour_t_i0_i7 (.D(n5536), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .Q(hour_t[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i7.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i6 (.D(n5537), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .Q(hour_t[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i6.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i5 (.D(n5538), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .Q(hour_t[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i5.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i4 (.D(n5539), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .Q(hour_t[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i4.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i3 (.D(n5540), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .Q(hour_t[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i3.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i2 (.D(n5541), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .Q(hour_t[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i2.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i1 (.D(n5542), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .Q(hour_t[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_t_i0_i1.GSR = "ENABLED";
    FD1P3AX uart_send_data_i0_i7 (.D(n3622), .SP(sys_clk_c_enable_306), 
            .CK(sys_clk_c), .Q(uart_send_data[7]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam uart_send_data_i0_i7.GSR = "DISABLED";
    FD1P3AX min_t_i0_i7 (.D(n5570), .SP(sys_clk_c_enable_155), .CK(sys_clk_c), 
            .Q(min_t[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i7.GSR = "ENABLED";
    FD1P3AX min_t_i0_i6 (.D(n5571), .SP(sys_clk_c_enable_155), .CK(sys_clk_c), 
            .Q(min_t[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i6.GSR = "ENABLED";
    FD1P3AX min_t_i0_i5 (.D(n5572), .SP(sys_clk_c_enable_155), .CK(sys_clk_c), 
            .Q(min_t[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i5.GSR = "ENABLED";
    FD1P3AX min_t_i0_i4 (.D(n5573), .SP(sys_clk_c_enable_155), .CK(sys_clk_c), 
            .Q(min_t[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i4.GSR = "ENABLED";
    FD1P3AX min_t_i0_i3 (.D(n5574), .SP(sys_clk_c_enable_155), .CK(sys_clk_c), 
            .Q(min_t[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i3.GSR = "ENABLED";
    FD1P3AX min_t_i0_i2 (.D(n5575), .SP(sys_clk_c_enable_155), .CK(sys_clk_c), 
            .Q(min_t[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i2.GSR = "ENABLED";
    FD1P3AX min_t_i0_i1 (.D(n5576), .SP(sys_clk_c_enable_155), .CK(sys_clk_c), 
            .Q(min_t[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam min_t_i0_i1.GSR = "ENABLED";
    CCU2D add_1913_5 (.A0(n5265), .B0(n38234), .C0(n5421), .D0(min_t[2]), 
          .A1(n5265), .B1(n38234), .C1(n5420), .D1(min_t[3]), .CIN(n32946), 
          .COUT(n32947), .S0(n5575), .S1(n5574));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1913_5.INIT0 = 16'he4b1;
    defparam add_1913_5.INIT1 = 16'he4b1;
    defparam add_1913_5.INJECT1_0 = "NO";
    defparam add_1913_5.INJECT1_1 = "NO";
    FD1P3IX hour_warning__i7 (.D(n5604), .SP(sys_clk_c_enable_163), .CD(n9751), 
            .CK(sys_clk_c), .Q(hour_warning[7]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i7.GSR = "ENABLED";
    FD1P3IX hour_warning__i6 (.D(n5605), .SP(sys_clk_c_enable_163), .CD(n9751), 
            .CK(sys_clk_c), .Q(hour_warning[6]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i6.GSR = "ENABLED";
    FD1P3IX hour_warning__i5 (.D(n5606), .SP(sys_clk_c_enable_163), .CD(n9751), 
            .CK(sys_clk_c), .Q(hour_warning[5]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i5.GSR = "ENABLED";
    FD1P3IX hour_warning__i4 (.D(n5607), .SP(sys_clk_c_enable_163), .CD(n9751), 
            .CK(sys_clk_c), .Q(hour_warning[4]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i4.GSR = "ENABLED";
    FD1P3IX hour_warning__i3 (.D(n5608), .SP(sys_clk_c_enable_163), .CD(n9751), 
            .CK(sys_clk_c), .Q(hour_warning[3]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i3.GSR = "ENABLED";
    FD1P3IX hour_warning__i2 (.D(n5609), .SP(sys_clk_c_enable_163), .CD(n9751), 
            .CK(sys_clk_c), .Q(hour_warning[2]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i2.GSR = "ENABLED";
    FD1P3IX hour_warning__i1 (.D(n5610), .SP(sys_clk_c_enable_163), .CD(n9751), 
            .CK(sys_clk_c), .Q(hour_warning[1]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam hour_warning__i1.GSR = "ENABLED";
    CCU2D add_1913_3 (.A0(n38234), .B0(n5265), .C0(n5423), .D0(min_t[0]), 
          .A1(n5265), .B1(n38234), .C1(n5422), .D1(min_t[1]), .CIN(n32945), 
          .COUT(n32946), .S0(n5577), .S1(n5576));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1913_3.INIT0 = 16'hd1e2;
    defparam add_1913_3.INIT1 = 16'he4b1;
    defparam add_1913_3.INJECT1_0 = "NO";
    defparam add_1913_3.INJECT1_1 = "NO";
    CCU2D add_1913_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5265), .B1(n38234), .C1(GND_net), .D1(GND_net), .COUT(n32945));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1913_1.INIT0 = 16'hF000;
    defparam add_1913_1.INIT1 = 16'heeee;
    defparam add_1913_1.INJECT1_0 = "NO";
    defparam add_1913_1.INJECT1_1 = "NO";
    CCU2D add_1931_9 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[6]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[7]), 
          .D1(GND_net), .CIN(n32940), .S0(n5605), .S1(n5604));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1931_9.INIT0 = 16'h2d2d;
    defparam add_1931_9.INIT1 = 16'h2d2d;
    defparam add_1931_9.INJECT1_0 = "NO";
    defparam add_1931_9.INJECT1_1 = "NO";
    CCU2D add_1931_7 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[4]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[5]), 
          .D1(GND_net), .CIN(n32939), .COUT(n32940), .S0(n5607), .S1(n5606));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1931_7.INIT0 = 16'h2d2d;
    defparam add_1931_7.INIT1 = 16'h2d2d;
    defparam add_1931_7.INJECT1_0 = "NO";
    defparam add_1931_7.INJECT1_1 = "NO";
    CCU2D add_1931_5 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[2]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[3]), 
          .D1(GND_net), .CIN(n32938), .COUT(n32939), .S0(n5609), .S1(n5608));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1931_5.INIT0 = 16'h2d2d;
    defparam add_1931_5.INIT1 = 16'h2d2d;
    defparam add_1931_5.INJECT1_0 = "NO";
    defparam add_1931_5.INJECT1_1 = "NO";
    CCU2D add_1931_3 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[0]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[1]), 
          .D1(GND_net), .CIN(n32937), .COUT(n32938), .S0(n5611), .S1(n5610));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1931_3.INIT0 = 16'hd2d2;
    defparam add_1931_3.INIT1 = 16'h2d2d;
    defparam add_1931_3.INJECT1_0 = "NO";
    defparam add_1931_3.INJECT1_1 = "NO";
    CCU2D add_1931_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre), .B1(key_sec), .C1(GND_net), .D1(GND_net), 
          .COUT(n32937));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1931_1.INIT0 = 16'hF000;
    defparam add_1931_1.INIT1 = 16'h2222;
    defparam add_1931_1.INJECT1_0 = "NO";
    defparam add_1931_1.INJECT1_1 = "NO";
    CCU2D add_138_9 (.A0(sec[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32754), 
          .S0(n805));   // d:/new porject/top-xu/top.v(219[14:24])
    defparam add_138_9.INIT0 = 16'h5aaa;
    defparam add_138_9.INIT1 = 16'h0000;
    defparam add_138_9.INJECT1_0 = "NO";
    defparam add_138_9.INJECT1_1 = "NO";
    CCU2D add_138_7 (.A0(sec[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32753), 
          .COUT(n32754), .S0(n807), .S1(n806));   // d:/new porject/top-xu/top.v(219[14:24])
    defparam add_138_7.INIT0 = 16'h5aaa;
    defparam add_138_7.INIT1 = 16'h5aaa;
    defparam add_138_7.INJECT1_0 = "NO";
    defparam add_138_7.INJECT1_1 = "NO";
    CCU2D add_138_5 (.A0(sec[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32752), 
          .COUT(n32753), .S0(n809), .S1(n808));   // d:/new porject/top-xu/top.v(219[14:24])
    defparam add_138_5.INIT0 = 16'h5aaa;
    defparam add_138_5.INIT1 = 16'h5aaa;
    defparam add_138_5.INJECT1_0 = "NO";
    defparam add_138_5.INJECT1_1 = "NO";
    CCU2D equal_3037_16 (.A0(hour[1]), .B0(hour_waning_t[1]), .C0(hour[0]), 
          .D0(hour_waning_t[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32580), .S1(warning_time_7__N_176));
    defparam equal_3037_16.INIT0 = 16'h9009;
    defparam equal_3037_16.INIT1 = 16'hFFFF;
    defparam equal_3037_16.INJECT1_0 = "YES";
    defparam equal_3037_16.INJECT1_1 = "NO";
    CCU2D equal_3037_15 (.A0(hour[5]), .B0(hour_waning_t[5]), .C0(hour[4]), 
          .D0(hour_waning_t[4]), .A1(hour[3]), .B1(hour_waning_t[3]), 
          .C1(hour[2]), .D1(hour_waning_t[2]), .CIN(n32579), .COUT(n32580));
    defparam equal_3037_15.INIT0 = 16'h9009;
    defparam equal_3037_15.INIT1 = 16'h9009;
    defparam equal_3037_15.INJECT1_0 = "YES";
    defparam equal_3037_15.INJECT1_1 = "YES";
    CCU2D add_138_3 (.A0(sec[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32751), 
          .COUT(n32752), .S0(n811), .S1(n810));   // d:/new porject/top-xu/top.v(219[14:24])
    defparam add_138_3.INIT0 = 16'h5aaa;
    defparam add_138_3.INIT1 = 16'h5aaa;
    defparam add_138_3.INJECT1_0 = "NO";
    defparam add_138_3.INJECT1_1 = "NO";
    CCU2D add_138_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n32751), 
          .S1(n812));   // d:/new porject/top-xu/top.v(219[14:24])
    defparam add_138_1.INIT0 = 16'hF000;
    defparam add_138_1.INIT1 = 16'h5555;
    defparam add_138_1.INJECT1_0 = "NO";
    defparam add_138_1.INJECT1_1 = "NO";
    CCU2D equal_3037_13 (.A0(min[1]), .B0(min_waning_t[1]), .C0(min[0]), 
          .D0(min_waning_t[0]), .A1(hour[7]), .B1(hour_waning_t[7]), .C1(hour[6]), 
          .D1(hour_waning_t[6]), .CIN(n32578), .COUT(n32579));
    defparam equal_3037_13.INIT0 = 16'h9009;
    defparam equal_3037_13.INIT1 = 16'h9009;
    defparam equal_3037_13.INJECT1_0 = "YES";
    defparam equal_3037_13.INJECT1_1 = "YES";
    CCU2D add_137_9 (.A0(min[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32750), 
          .S0(n795));   // d:/new porject/top-xu/top.v(217[14:24])
    defparam add_137_9.INIT0 = 16'h5aaa;
    defparam add_137_9.INIT1 = 16'h0000;
    defparam add_137_9.INJECT1_0 = "NO";
    defparam add_137_9.INJECT1_1 = "NO";
    CCU2D add_137_7 (.A0(min[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32749), 
          .COUT(n32750), .S0(n797), .S1(n796));   // d:/new porject/top-xu/top.v(217[14:24])
    defparam add_137_7.INIT0 = 16'h5aaa;
    defparam add_137_7.INIT1 = 16'h5aaa;
    defparam add_137_7.INJECT1_0 = "NO";
    defparam add_137_7.INJECT1_1 = "NO";
    LUT4 mux_3249_i2_3_lut (.A(hundres_0__N_356_adj_1947[3]), .B(hundres_0__N_356_adj_2025[3]), 
         .C(sw1_c), .Z(n12746)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(112[119:148])
    defparam mux_3249_i2_3_lut.init = 16'hcaca;
    CCU2D add_137_5 (.A0(min[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32748), 
          .COUT(n32749), .S0(n799), .S1(n798));   // d:/new porject/top-xu/top.v(217[14:24])
    defparam add_137_5.INIT0 = 16'h5aaa;
    defparam add_137_5.INIT1 = 16'h5aaa;
    defparam add_137_5.INJECT1_0 = "NO";
    defparam add_137_5.INJECT1_1 = "NO";
    CCU2D add_137_3 (.A0(min[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32747), 
          .COUT(n32748), .S0(n801), .S1(n800));   // d:/new porject/top-xu/top.v(217[14:24])
    defparam add_137_3.INIT0 = 16'h5aaa;
    defparam add_137_3.INIT1 = 16'h5aaa;
    defparam add_137_3.INJECT1_0 = "NO";
    defparam add_137_3.INJECT1_1 = "NO";
    CCU2D add_137_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[0]), .B1(sec[7]), .C1(n19725), .D1(sec[6]), .COUT(n32747), 
          .S1(n802));   // d:/new porject/top-xu/top.v(217[14:24])
    defparam add_137_1.INIT0 = 16'hF000;
    defparam add_137_1.INIT1 = 16'h5556;
    defparam add_137_1.INJECT1_0 = "NO";
    defparam add_137_1.INJECT1_1 = "NO";
    CCU2D add_124_9 (.A0(warning_time[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32746), .S0(n749));   // d:/new porject/top-xu/top.v(193[22:41])
    defparam add_124_9.INIT0 = 16'h5aaa;
    defparam add_124_9.INIT1 = 16'h0000;
    defparam add_124_9.INJECT1_0 = "NO";
    defparam add_124_9.INJECT1_1 = "NO";
    CCU2D add_1904_9 (.A0(n5235), .B0(n38234), .C0(n5407), .D0(sec_t[6]), 
          .A1(n5235), .B1(n38234), .C1(n5406), .D1(sec_t[7]), .CIN(n32807), 
          .S0(n5554), .S1(n5553));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1904_9.INIT0 = 16'he4b1;
    defparam add_1904_9.INIT1 = 16'he4b1;
    defparam add_1904_9.INJECT1_0 = "NO";
    defparam add_1904_9.INJECT1_1 = "NO";
    CCU2D add_1904_7 (.A0(n5235), .B0(n38234), .C0(n5409), .D0(sec_t[4]), 
          .A1(n5235), .B1(n38234), .C1(n5408), .D1(sec_t[5]), .CIN(n32806), 
          .COUT(n32807), .S0(n5556), .S1(n5555));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1904_7.INIT0 = 16'he4b1;
    defparam add_1904_7.INIT1 = 16'he4b1;
    defparam add_1904_7.INJECT1_0 = "NO";
    defparam add_1904_7.INJECT1_1 = "NO";
    CCU2D add_1904_5 (.A0(n5235), .B0(n38234), .C0(n5411), .D0(sec_t[2]), 
          .A1(n5235), .B1(n38234), .C1(n5410), .D1(sec_t[3]), .CIN(n32805), 
          .COUT(n32806), .S0(n5558), .S1(n5557));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1904_5.INIT0 = 16'he4b1;
    defparam add_1904_5.INIT1 = 16'he4b1;
    defparam add_1904_5.INJECT1_0 = "NO";
    defparam add_1904_5.INJECT1_1 = "NO";
    CCU2D add_1904_3 (.A0(n38234), .B0(n5235), .C0(n5413), .D0(sec_t[0]), 
          .A1(n5235), .B1(n38234), .C1(n5412), .D1(sec_t[1]), .CIN(n32804), 
          .COUT(n32805), .S0(n5560), .S1(n5559));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1904_3.INIT0 = 16'hd1e2;
    defparam add_1904_3.INIT1 = 16'he4b1;
    defparam add_1904_3.INJECT1_0 = "NO";
    defparam add_1904_3.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(min[7]), .B(min[6]), .C(n5_adj_1919), .D(n6_adj_1918), 
         .Z(n831)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hfeee;
    CCU2D add_1904_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5235), .B1(n38234), .C1(GND_net), .D1(GND_net), .COUT(n32804));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1904_1.INIT0 = 16'hF000;
    defparam add_1904_1.INIT1 = 16'heeee;
    defparam add_1904_1.INJECT1_0 = "NO";
    defparam add_1904_1.INJECT1_1 = "NO";
    CCU2D equal_3037_11 (.A0(min[5]), .B0(min_waning_t[5]), .C0(min[4]), 
          .D0(min_waning_t[4]), .A1(min[3]), .B1(min_waning_t[3]), .C1(min[2]), 
          .D1(min_waning_t[2]), .CIN(n32577), .COUT(n32578));
    defparam equal_3037_11.INIT0 = 16'h9009;
    defparam equal_3037_11.INIT1 = 16'h9009;
    defparam equal_3037_11.INJECT1_0 = "YES";
    defparam equal_3037_11.INJECT1_1 = "YES";
    CCU2D equal_3037_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[7]), .B1(min_waning_t[7]), .C1(min[6]), .D1(min_waning_t[6]), 
          .COUT(n32577));   // d:/new porject/top-xu/top.v(189[7:28])
    defparam equal_3037_0.INIT0 = 16'hF000;
    defparam equal_3037_0.INIT1 = 16'h9009;
    defparam equal_3037_0.INJECT1_0 = "NO";
    defparam equal_3037_0.INJECT1_1 = "YES";
    CCU2D add_1895_9 (.A0(n5295), .B0(n38234), .C0(n5397), .D0(hour_t[6]), 
          .A1(n5295), .B1(n38234), .C1(n5396), .D1(hour_t[7]), .CIN(n32799), 
          .S0(n5537), .S1(n5536));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1895_9.INIT0 = 16'he4b1;
    defparam add_1895_9.INIT1 = 16'he4b1;
    defparam add_1895_9.INJECT1_0 = "NO";
    defparam add_1895_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(min[0]), .B(min[4]), .C(min[2]), .D(min[1]), .Z(n5_adj_1919)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut.init = 16'hc8c0;
    LUT4 i2_2_lut (.A(min[5]), .B(min[3]), .Z(n6_adj_1918)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 mux_300_Mux_3_i31_3_lut (.A(n27367), .B(char_reg[3]), .C(n38113), 
         .Z(n1703)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/new porject/top-xu/oled.v(133[20] 136[14])
    defparam mux_300_Mux_3_i31_3_lut.init = 16'hc5c5;
    CCU2D add_1895_7 (.A0(n5295), .B0(n38234), .C0(n5399), .D0(hour_t[4]), 
          .A1(n5295), .B1(n38234), .C1(n5398), .D1(hour_t[5]), .CIN(n32798), 
          .COUT(n32799), .S0(n5539), .S1(n5538));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1895_7.INIT0 = 16'he4b1;
    defparam add_1895_7.INIT1 = 16'he4b1;
    defparam add_1895_7.INJECT1_0 = "NO";
    defparam add_1895_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_281 (.A(key_mode[1]), .B(key_mode[2]), .C(key_mode[0]), 
         .Z(n4_adj_1906)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/new porject/top-xu/top.v(173[12:21])
    defparam i1_2_lut_3_lut_adj_281.init = 16'hefef;
    LUT4 i1_2_lut_rep_576_3_lut (.A(key_mode[1]), .B(key_mode[2]), .C(key_mode[0]), 
         .Z(n38163)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/top.v(173[12:21])
    defparam i1_2_lut_rep_576_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_568_3_lut (.A(key_mode[1]), .B(key_mode[2]), .C(key_mode[0]), 
         .Z(n38155)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/top.v(173[12:21])
    defparam i1_2_lut_rep_568_3_lut.init = 16'h1010;
    CCU2D add_1895_5 (.A0(n5295), .B0(n38234), .C0(n5401), .D0(hour_t[2]), 
          .A1(n5295), .B1(n38234), .C1(n5400), .D1(hour_t[3]), .CIN(n32797), 
          .COUT(n32798), .S0(n5541), .S1(n5540));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1895_5.INIT0 = 16'he4b1;
    defparam add_1895_5.INIT1 = 16'he4b1;
    defparam add_1895_5.INJECT1_0 = "NO";
    defparam add_1895_5.INJECT1_1 = "NO";
    CCU2D add_1895_3 (.A0(n38234), .B0(n5295), .C0(n5403), .D0(hour_t[0]), 
          .A1(n5295), .B1(n38234), .C1(n5402), .D1(hour_t[1]), .CIN(n32796), 
          .COUT(n32797), .S0(n5543), .S1(n5542));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1895_3.INIT0 = 16'hd1e2;
    defparam add_1895_3.INIT1 = 16'he4b1;
    defparam add_1895_3.INJECT1_0 = "NO";
    defparam add_1895_3.INJECT1_1 = "NO";
    LUT4 cnt_0__bdd_3_lut_30362 (.A(cnt_adj_2073[0]), .B(cnt_adj_2073[1]), 
         .C(cnt_adj_2073[2]), .Z(n37070)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;
    defparam cnt_0__bdd_3_lut_30362.init = 16'hdbdb;
    CCU2D add_1895_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5295), .B1(n38234), .C1(GND_net), .D1(GND_net), .COUT(n32796));   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam add_1895_1.INIT0 = 16'hF000;
    defparam add_1895_1.INIT1 = 16'heeee;
    defparam add_1895_1.INJECT1_0 = "NO";
    defparam add_1895_1.INJECT1_1 = "NO";
    LUT4 mux_300_Mux_3_i30_4_lut_3_lut_4_lut (.A(cnt_adj_2073[1]), .B(cnt_adj_2073[2]), 
         .C(cnt_adj_2073[3]), .D(cnt_adj_2073[0]), .Z(n27367)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam mux_300_Mux_3_i30_4_lut_3_lut_4_lut.init = 16'hfee0;
    LUT4 reduce_nor_78_i1_2_lut_rep_685 (.A(key_mode[1]), .B(key_mode[2]), 
         .Z(n39470)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/top.v(173[12:21])
    defparam reduce_nor_78_i1_2_lut_rep_685.init = 16'heeee;
    LUT4 i1_4_lut_adj_282 (.A(n11), .B(n33145), .C(n36221), .D(n38234), 
         .Z(n12_adj_1886)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_282.init = 16'hce0a;
    LUT4 i1_3_lut_4_lut (.A(cnt_adj_2073[0]), .B(cnt_adj_2073[1]), .C(cnt_adj_2073[2]), 
         .D(cnt_adj_2073[3]), .Z(n4_adj_1899)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(133[20] 136[14])
    defparam i1_3_lut_4_lut.init = 16'hfe00;
    LUT4 mux_300_Mux_1_i22_3_lut_3_lut_4_lut_3_lut (.A(cnt_adj_2073[0]), .B(cnt_adj_2073[1]), 
         .C(cnt_adj_2073[2]), .Z(n22)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;   // d:/new porject/top-xu/oled.v(133[20] 136[14])
    defparam mux_300_Mux_1_i22_3_lut_3_lut_4_lut_3_lut.init = 16'h1616;
    LUT4 cnt_4__bdd_4_lut_30326 (.A(cnt_adj_2073[4]), .B(cnt_adj_2073[2]), 
         .C(cnt_adj_2073[3]), .D(cnt_adj_2073[1]), .Z(n37422)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B+!(D)))) */ ;
    defparam cnt_4__bdd_4_lut_30326.init = 16'h4e7f;
    LUT4 cnt_4__bdd_2_lut_30641 (.A(cnt_adj_2073[4]), .B(cnt_adj_2073[2]), 
         .Z(n37421)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam cnt_4__bdd_2_lut_30641.init = 16'h4444;
    LUT4 mux_300_Mux_0_i15_4_lut_4_lut (.A(cnt_adj_2073[0]), .B(cnt_adj_2073[1]), 
         .C(cnt_adj_2073[2]), .D(cnt_adj_2073[3]), .Z(n15)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B (C (D))))) */ ;   // d:/new porject/top-xu/oled.v(133[20] 136[14])
    defparam mux_300_Mux_0_i15_4_lut_4_lut.init = 16'h54e0;
    LUT4 i2_4_lut_adj_283 (.A(hour[7]), .B(n8), .C(n38250), .D(hour[4]), 
         .Z(n850)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_283.init = 16'hfefa;
    FD1P3AX sec_t_i0_i0 (.D(n5560), .SP(sys_clk_c_enable_295), .CK(sys_clk_c), 
            .Q(sec_t[0]));   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam sec_t_i0_i0.GSR = "ENABLED";
    LUT4 i3579_4_lut (.A(hour[2]), .B(hour[3]), .C(hour[1]), .D(hour[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i3579_4_lut.init = 16'heccc;
    LUT4 cnt_0__bdd_4_lut_30499 (.A(cnt_adj_2073[4]), .B(cnt_adj_2073[3]), 
         .C(cnt_adj_2073[1]), .D(cnt_adj_2073[2]), .Z(n37191)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam cnt_0__bdd_4_lut_30499.init = 16'h144f;
    LUT4 i29853_4_lut (.A(n38108), .B(rx_flag), .C(n31), .D(n38174), 
         .Z(sys_clk_c_enable_103)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam i29853_4_lut.init = 16'h3f3b;
    LUT4 i2_3_lut_rep_507 (.A(sys_rst_n_c), .B(clk_1s), .C(sys_clk_c_enable_7), 
         .Z(sys_clk_c_enable_306)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam i2_3_lut_rep_507.init = 16'h8080;
    LUT4 i15303_2_lut_4_lut (.A(sys_rst_n_c), .B(clk_1s), .C(sys_clk_c_enable_7), 
         .D(n3622), .Z(n21947)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam i15303_2_lut_4_lut.init = 16'h8000;
    LUT4 i29974_4_lut_4_lut_4_lut_4_lut (.A(sw1_c), .B(key_mode[0]), .C(n38170), 
         .D(n39470), .Z(n36679)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam i29974_4_lut_4_lut_4_lut_4_lut.init = 16'h0043;
    LUT4 i29971_4_lut_else_4_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), 
         .C(n38234), .D(n38231), .Z(n38347)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/new porject/top-xu/top.v(173[12:21])
    defparam i29971_4_lut_else_4_lut_4_lut.init = 16'h0001;
    FD1P3JX uart_send_data_i0_i1 (.D(Temp_H[1]), .SP(sys_clk_c_enable_306), 
            .PD(n21947), .CK(sys_clk_c), .Q(uart_send_data[1]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam uart_send_data_i0_i1.GSR = "DISABLED";
    FD1P3JX uart_send_data_i0_i2 (.D(Temp_H[2]), .SP(sys_clk_c_enable_306), 
            .PD(n21947), .CK(sys_clk_c), .Q(uart_send_data[2]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam uart_send_data_i0_i2.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(n38204), .B(hour_warning[5]), .C(hour_warning[4]), 
         .D(n34_adj_1903), .Z(n33145)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut.init = 16'hfeee;
    LUT4 i19250_4_lut (.A(n33179), .B(sec_t[7]), .C(n38163), .D(n805), 
         .Z(sec_7__N_1[7])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19250_4_lut.init = 16'hc5c0;
    LUT4 i19253_4_lut (.A(n33179), .B(sec_t[6]), .C(n38163), .D(n806), 
         .Z(sec_7__N_1[6])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19253_4_lut.init = 16'hc5c0;
    LUT4 i19247_4_lut (.A(n33179), .B(sec_t[5]), .C(n38163), .D(n807), 
         .Z(sec_7__N_1[5])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19247_4_lut.init = 16'hc5c0;
    LUT4 i18679_4_lut (.A(n831), .B(min_t[1]), .C(n38163), .D(n801), 
         .Z(min_7__N_11[1])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i18679_4_lut.init = 16'hc5c0;
    LUT4 i18676_4_lut (.A(n831), .B(min_t[2]), .C(n38163), .D(n800), 
         .Z(min_7__N_11[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i18676_4_lut.init = 16'hc5c0;
    LUT4 i18664_4_lut (.A(n831), .B(min_t[3]), .C(n38163), .D(n799), 
         .Z(min_7__N_11[3])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i18664_4_lut.init = 16'hc5c0;
    LUT4 min_7__I_0_i5_4_lut (.A(n798), .B(min_t[4]), .C(n38163), .D(n831), 
         .Z(min_7__N_11[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam min_7__I_0_i5_4_lut.init = 16'hc0ca;
    LUT4 i18667_4_lut (.A(n831), .B(min_t[5]), .C(n38163), .D(n797), 
         .Z(min_7__N_11[5])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i18667_4_lut.init = 16'hc5c0;
    LUT4 i18673_4_lut (.A(n831), .B(min_t[6]), .C(n38163), .D(n796), 
         .Z(min_7__N_11[6])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i18673_4_lut.init = 16'hc5c0;
    LUT4 i18682_4_lut (.A(n831), .B(min_t[7]), .C(n38163), .D(n795), 
         .Z(min_7__N_11[7])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i18682_4_lut.init = 16'hc5c0;
    FD1P3JX uart_send_data_i0_i3 (.D(Temp_H[3]), .SP(sys_clk_c_enable_306), 
            .PD(n21947), .CK(sys_clk_c), .Q(uart_send_data[3]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam uart_send_data_i0_i3.GSR = "DISABLED";
    LUT4 i20179_4_lut (.A(min_warning[2]), .B(n9755), .C(n5592), .D(sys_clk_c_enable_115), 
         .Z(n20_adj_1898)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i20179_4_lut.init = 16'h3022;
    LUT4 i29381_4_lut (.A(hour_warning[2]), .B(hour_warning[1]), .C(hour_warning[4]), 
         .D(n36057), .Z(n36221)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29381_4_lut.init = 16'hfffe;
    LUT4 sec_7__I_0_i5_4_lut (.A(n808), .B(sec_t[4]), .C(n38163), .D(n33179), 
         .Z(sec_7__N_1[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam sec_7__I_0_i5_4_lut.init = 16'hc0ca;
    VLO i1 (.Z(GND_net));
    LUT4 i1_4_lut_adj_284 (.A(hour_warning[3]), .B(hour_warning[2]), .C(hour_warning[1]), 
         .D(hour_warning[0]), .Z(n34_adj_1903)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_284.init = 16'heaaa;
    LUT4 i19256_4_lut (.A(n809), .B(sec_t[3]), .C(n38163), .D(n33179), 
         .Z(sec_7__N_1[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19256_4_lut.init = 16'hc0ca;
    LUT4 i19255_4_lut (.A(n810), .B(sec_t[2]), .C(n38163), .D(n33179), 
         .Z(sec_7__N_1[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19255_4_lut.init = 16'hc0ca;
    LUT4 i2_3_lut_rep_508_4_lut (.A(sys_rst_n_c), .B(n38168), .C(state_adj_2093[1]), 
         .D(state_adj_2093[0]), .Z(sys_clk_c_enable_237)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/new porject/top-xu/top.v(188[12] 201[6])
    defparam i2_3_lut_rep_508_4_lut.init = 16'h0080;
    LUT4 i19254_4_lut (.A(n811), .B(sec_t[1]), .C(n38163), .D(n33179), 
         .Z(sec_7__N_1[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i19254_4_lut.init = 16'hc0ca;
    FD1P3JX uart_send_data_i0_i4 (.D(Temp_H[4]), .SP(sys_clk_c_enable_306), 
            .PD(n21947), .CK(sys_clk_c), .Q(uart_send_data[4]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam uart_send_data_i0_i4.GSR = "DISABLED";
    FD1P3JX uart_send_data_i0_i5 (.D(Temp_H[5]), .SP(sys_clk_c_enable_306), 
            .PD(n21947), .CK(sys_clk_c), .Q(uart_send_data[5]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam uart_send_data_i0_i5.GSR = "DISABLED";
    FD1P3JX uart_send_data_i0_i6 (.D(Temp_H[6]), .SP(sys_clk_c_enable_306), 
            .PD(n21947), .CK(sys_clk_c), .Q(uart_send_data[6]));   // d:/new porject/top-xu/top.v(320[8] 351[6])
    defparam uart_send_data_i0_i6.GSR = "DISABLED";
    FD1P3IX key_mode_3039__i1 (.D(n19), .SP(sys_clk_c_enable_308), .CD(n25994), 
            .CK(sys_clk_c), .Q(key_mode[1]));   // d:/new porject/top-xu/top.v(99[22:37])
    defparam key_mode_3039__i1.GSR = "ENABLED";
    FD1P3IX key_mode_3039__i2 (.D(n18), .SP(sys_clk_c_enable_308), .CD(n25994), 
            .CK(sys_clk_c), .Q(key_mode[2]));   // d:/new porject/top-xu/top.v(99[22:37])
    defparam key_mode_3039__i2.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_4_lut_adj_285 (.A(cnt_main_adj_2068[2]), .B(cnt_main_adj_2068[1]), 
         .C(cnt_main_adj_2068[0]), .D(n38227), .Z(n7)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))) */ ;   // d:/new porject/top-xu/oled.v(46[12:20])
    defparam i1_4_lut_adj_285.init = 16'ha828;
    LUT4 i1_4_lut_adj_286 (.A(n38089), .B(key_mode[0]), .C(n6_adj_1915), 
         .D(n167), .Z(n5265)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_286.init = 16'h5575;
    PFUMX mux_3250_i3 (.BLUT(n4_adj_1895), .ALUT(n4_adj_1910), .C0(sw1_c), 
          .Z(n20810));
    LUT4 i2_4_lut_adj_287 (.A(n35735), .B(n35666), .C(n38234), .D(n19_adj_1901), 
         .Z(n6_adj_1915)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_287.init = 16'hc888;
    LUT4 i1_4_lut_adj_288 (.A(n36002), .B(n38156), .C(n36239), .D(n36123), 
         .Z(n35735)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_288.init = 16'h0004;
    LUT4 i2_4_lut_adj_289 (.A(min_t[4]), .B(n4_adj_1917), .C(n6_adj_1904), 
         .D(min_t[3]), .Z(n19_adj_1901)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i2_4_lut_adj_289.init = 16'heccc;
    LUT4 i29166_2_lut (.A(min_t[7]), .B(min_t[1]), .Z(n36002)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29166_2_lut.init = 16'heeee;
    LUT4 i29399_4_lut (.A(min_t[5]), .B(min_t[3]), .C(min_t[0]), .D(min_t[6]), 
         .Z(n36239)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29399_4_lut.init = 16'hfffe;
    LUT4 i29286_2_lut (.A(min_t[4]), .B(min_t[2]), .Z(n36123)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29286_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(min_t[7]), .B(min_t[6]), .Z(n4_adj_1917)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_290 (.A(min_t[5]), .B(min_t[0]), .C(min_t[2]), .D(min_t[1]), 
         .Z(n6_adj_1904)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/top.v(63[16:21])
    defparam i2_4_lut_adj_290.init = 16'ha8a0;
    PFUMX i30182 (.BLUT(n37422), .ALUT(n37421), .C0(cnt_adj_2073[0]), 
          .Z(n37423));
    PFUMX mux_3250_i4 (.BLUT(n9673), .ALUT(n9677), .C0(sw1_c), .Z(n8663));
    PFUMX mux_3249_i3 (.BLUT(n4_adj_1896), .ALUT(n4_adj_1897), .C0(sw1_c), 
          .Z(n20808));
    LUT4 sec_7__I_0_i1_4_lut (.A(n812), .B(sec_t[0]), .C(n38163), .D(n33179), 
         .Z(sec_7__N_1[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(214[14] 226[8])
    defparam sec_7__I_0_i1_4_lut.init = 16'hc0ca;
    PFUMX mux_3249_i4 (.BLUT(n9664), .ALUT(n9668), .C0(sw1_c), .Z(n8673));
    LUT4 i19894_4_lut (.A(min_warning[0]), .B(n9755), .C(n5594), .D(sys_clk_c_enable_115), 
         .Z(n24)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i19894_4_lut.init = 16'h3022;
    PFUMX mux_3250_i1 (.BLUT(hour_tens[0]), .ALUT(hour_warning_tens[0]), 
          .C0(sw1_c), .Z(n8666));
    LUT4 i3254_1_lut (.A(warning_time_7__N_176), .Z(n9749)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/top.v(189[7:28])
    defparam i3254_1_lut.init = 16'h5555;
    LUT4 m1_lut (.Z(n39490)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i2_4_lut_adj_291 (.A(n38216), .B(key_mode[0]), .C(n12), .D(n35556), 
         .Z(n9755)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i2_4_lut_adj_291.init = 16'h1000;
    LUT4 i1_4_lut_adj_292 (.A(n5), .B(n35674), .C(min_warning[7]), .D(n4), 
         .Z(n12)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_292.init = 16'heeea;
    LUT4 i29840_4_lut (.A(warning_time[1]), .B(n35534), .C(warning_time[3]), 
         .D(warning_time[2]), .Z(led_N_216)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i29840_4_lut.init = 16'h0313;
    LUT4 cnt_4__bdd_4_lut_30642 (.A(cnt_adj_2073[3]), .B(cnt_adj_2073[2]), 
         .C(cnt_adj_2073[0]), .D(cnt_adj_2073[1]), .Z(n37762)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam cnt_4__bdd_4_lut_30642.init = 16'h4115;
    LUT4 char_reg_0__bdd_4_lut_30901 (.A(cnt_adj_2073[1]), .B(cnt_adj_2073[0]), 
         .C(cnt_adj_2073[3]), .D(cnt_adj_2073[2]), .Z(n37030)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam char_reg_0__bdd_4_lut_30901.init = 16'h0315;
    LUT4 i9_4_lut (.A(n17), .B(min_warning[0]), .C(n16), .D(min_warning[3]), 
         .Z(n5)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i9_4_lut.init = 16'h0020;
    LUT4 cnt_4__bdd_3_lut (.A(cnt_adj_2073[2]), .B(cnt_adj_2073[0]), .C(cnt_adj_2073[1]), 
         .Z(n37763)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam cnt_4__bdd_3_lut.init = 16'h3232;
    LUT4 i3_4_lut_adj_293 (.A(key_mode[0]), .B(n37_adj_1907), .C(n38136), 
         .D(n35666), .Z(n35667)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_293.init = 16'h0800;
    LUT4 i1_4_lut_adj_294 (.A(n36263), .B(n38234), .C(n38156), .D(n32), 
         .Z(n37_adj_1907)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_294.init = 16'hdc50;
    LUT4 i29423_4_lut (.A(sec_t[7]), .B(n36219), .C(n36085), .D(sec_t[5]), 
         .Z(n36263)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29423_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_295 (.A(sec_t[5]), .B(n4_adj_1912), .C(n6_adj_1913), 
         .D(sec_t[3]), .Z(n32)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i2_4_lut_adj_295.init = 16'heccc;
    LUT4 i29379_4_lut (.A(sec_t[4]), .B(sec_t[0]), .C(sec_t[1]), .D(sec_t[6]), 
         .Z(n36219)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29379_4_lut.init = 16'hfffe;
    LUT4 cnt_1__bdd_3_lut (.A(cnt_adj_2073[1]), .B(cnt_adj_2073[2]), .C(cnt_adj_2073[0]), 
         .Z(n37053)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam cnt_1__bdd_3_lut.init = 16'h2c2c;
    LUT4 i29248_2_lut (.A(sec_t[3]), .B(sec_t[2]), .Z(n36085)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29248_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_296 (.A(sec_t[7]), .B(sec_t[6]), .Z(n4_adj_1912)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_296.init = 16'heeee;
    LUT4 i2_4_lut_adj_297 (.A(sec_t[4]), .B(sec_t[2]), .C(sec_t[1]), .D(sec_t[0]), 
         .Z(n6_adj_1913)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_297.init = 16'ha888;
    LUT4 i1_4_lut_adj_298 (.A(min_warning[6]), .B(min_warning[5]), .C(n6_adj_1908), 
         .D(min_warning[4]), .Z(n4)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_298.init = 16'heaaa;
    LUT4 i7_4_lut (.A(n38210), .B(min_warning[6]), .C(min_warning[5]), 
         .D(min_warning[7]), .Z(n17)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i7_4_lut.init = 16'h0002;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i6_4_lut (.A(min_warning[1]), .B(min_warning[4]), .C(min_warning[2]), 
         .D(n35675), .Z(n16)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(88[13] 180[7])
    defparam i6_4_lut.init = 16'h0100;
    LUT4 i2_4_lut_adj_299 (.A(min_warning[3]), .B(min_warning[2]), .C(min_warning[1]), 
         .D(min_warning[0]), .Z(n6_adj_1908)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_299.init = 16'ha888;
    LUT4 cnt_2__bdd_4_lut_30027 (.A(cnt_adj_2073[2]), .B(cnt_adj_2073[4]), 
         .C(cnt_adj_2073[1]), .D(cnt_adj_2073[3]), .Z(n37072)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam cnt_2__bdd_4_lut_30027.init = 16'h3525;
    LUT4 i3_4_lut_adj_300 (.A(n38136), .B(n34), .C(sw1_c), .D(n38155), 
         .Z(n35743)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_300.init = 16'h0400;
    LUT4 i1_4_lut_adj_301 (.A(n36265), .B(n38234), .C(n38156), .D(n29), 
         .Z(n34)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_301.init = 16'hdc50;
    LUT4 i29425_4_lut (.A(n36026), .B(n36225), .C(hour_t[3]), .D(hour_t[1]), 
         .Z(n36265)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29425_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_302 (.A(n36026), .B(hour_t[6]), .C(hour_t[4]), .D(n37), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut_adj_302.init = 16'hfeee;
    LUT4 i29385_4_lut (.A(hour_t[2]), .B(hour_t[4]), .C(hour_t[0]), .D(hour_t[6]), 
         .Z(n36225)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29385_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_303 (.A(hour_t[3]), .B(hour_t[2]), .C(hour_t[1]), 
         .D(hour_t[0]), .Z(n37)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_303.init = 16'heaaa;
    LUT4 i29190_2_lut (.A(hour_t[5]), .B(hour_t[7]), .Z(n36026)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29190_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_304 (.A(warning_time[4]), .B(warning_time[6]), .C(warning_time[5]), 
         .D(warning_time[7]), .Z(n35534)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/top.v(341[9:21])
    defparam i3_4_lut_adj_304.init = 16'hfffe;
    LUT4 equal_71_i4_2_lut_rep_629 (.A(key_mode[1]), .B(key_mode[2]), .Z(n38216)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/top.v(164[9:13])
    defparam equal_71_i4_2_lut_rep_629.init = 16'hdddd;
    LUT4 i29846_4_lut (.A(n38170), .B(n38216), .C(sw1_c), .D(key_mode[0]), 
         .Z(n36551)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam i29846_4_lut.init = 16'h5575;
    LUT4 i2_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(sys_clk_c_enable_308), 
         .D(key_mode[0]), .Z(n6_adj_1902)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/new porject/top-xu/top.v(164[9:13])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_rep_549_3_lut_4_lut (.A(n38234), .B(n38231), .C(n39470), 
         .D(key_mode[0]), .Z(n38136)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam i1_2_lut_rep_549_3_lut_4_lut.init = 16'h1110;
    LUT4 i3_3_lut_4_lut (.A(n38234), .B(n38231), .C(sw1_c), .D(sys_clk_c_enable_308), 
         .Z(n35556)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam i3_3_lut_4_lut.init = 16'h00e0;
    LUT4 i29847_2_lut_3_lut_4_lut (.A(n38234), .B(n38231), .C(n36551), 
         .D(sys_clk_c_enable_308), .Z(sys_clk_c_enable_115)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam i29847_2_lut_3_lut_4_lut.init = 16'h00e0;
    LUT4 i29978_3_lut_3_lut_4_lut (.A(n38234), .B(n38231), .C(n39470), 
         .D(n38175), .Z(sys_clk_c_enable_133)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/new porject/top-xu/top.v(107[6] 179[11])
    defparam i29978_3_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i2_3_lut (.A(sec[7]), .B(sec[6]), .C(n19725), .Z(n33179)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 mux_300_Mux_1_i31_3_lut_4_lut (.A(n37191), .B(cnt_adj_2073[0]), 
         .C(n38113), .D(char_reg[1]), .Z(n1705)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam mux_300_Mux_1_i31_3_lut_4_lut.init = 16'hf202;
    BCD_U5 bcd_hour_warning (.\hour_warning[3] (hour_warning[3]), .\hour_warning[4] (hour_warning[4]), 
           .n37975(n37975), .n9367(n9367), .n37969(n37969), .n4(n4_adj_1910), 
           .\hundres_0__N_353[1] (hundres_0__N_353_adj_1997[1]), .hundres_0__N_361(hundres_0__N_361_adj_1892), 
           .\hour_warning[2] (hour_warning[2]), .\hour_warning[1] (hour_warning[1]), 
           .\hour_warning_ones[1] (hour_warning_ones[1]), .\hour_warning_tens[0] (hour_warning_tens[0]), 
           .\hour_warning[7] (hour_warning[7]), .\hour_warning_ones[3] (hour_warning_ones[3]), 
           .\hour_warning_ones[2] (hour_warning_ones[2]), .\hour_warning[5] (hour_warning[5]), 
           .\hour_warning[6] (hour_warning[6])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(272[7] 278[3])
    LUT4 i2680_4_lut (.A(n7_adj_1911), .B(n3618), .C(uart_en_N_231), .D(n8_adj_1909), 
         .Z(sys_clk_c_enable_7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(340[10] 347[8])
    defparam i2680_4_lut.init = 16'hcfca;
    LUT4 i2_2_lut_adj_305 (.A(warning_time[0]), .B(warning_time[2]), .Z(n7_adj_1911)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/top.v(341[9:21])
    defparam i2_2_lut_adj_305.init = 16'heeee;
    uart_send u_uart_send (.sys_clk_c(sys_clk_c), .uart_en(uart_en), .uart_send_data({uart_send_data}), 
            .uart_txd_c(uart_txd_c), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(358[11] 367[2])
    LUT4 mux_300_Mux_2_i31_3_lut_4_lut (.A(n37072), .B(cnt_adj_2073[0]), 
         .C(n38113), .D(char_reg[2]), .Z(n1704)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam mux_300_Mux_2_i31_3_lut_4_lut.init = 16'hf202;
    LUT4 i3_4_lut_adj_306 (.A(n6), .B(sec[5]), .C(sec[4]), .D(sec[3]), 
         .Z(n19725)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_306.init = 16'h8000;
    LUT4 i3_3_lut (.A(n35534), .B(warning_time[1]), .C(warning_time[3]), 
         .Z(n8_adj_1909)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/top.v(341[9:21])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i2_2_lut_4_lut_4_lut (.A(music_tone[1]), .B(music_tone[2]), .C(music_tone[3]), 
         .D(music_tone[0]), .Z(n33164)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/new porject/top-xu/top.v(333[14:33])
    defparam i2_2_lut_4_lut_4_lut.init = 16'hfdf5;
    LUT4 i1149_4_lut (.A(n7_adj_1914), .B(warning_TEM), .C(n38192), .D(n35946), 
         .Z(n3618)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(333[11] 337[9])
    defparam i1149_4_lut.init = 16'hcdcc;
    LUT4 i2_4_lut_adj_307 (.A(music_tone[3]), .B(music_tone[7]), .C(music_tone[6]), 
         .D(music_tone[5]), .Z(n7_adj_1914)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut_adj_307.init = 16'hfffe;
    BCD bcd_sec (.\sec[4] (sec[4]), .n37985(n37985), .\sec[1] (sec[1]), 
        .\hundres_0__N_356[1] (hundres_0__N_356[1]), .\hundres_0__N_356[2] (hundres_0__N_356[2]), 
        .n37964(n37964), .n19219(n19219), .n9659(n9659), .\hundres_0__N_353[0] (hundres_0__N_353[0]), 
        .\sec[2] (sec[2]), .n37971(n37971), .\sec[3] (sec[3]), .\sec[7] (sec[7]), 
        .\hundres_0__N_353[1] (hundres_0__N_353[1]), .n37972(n37972), .\sec[6] (sec[6]), 
        .\sec[5] (sec[5])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(248[6] 254[3])
    LUT4 i10_1_lut (.A(key_mode[0]), .Z(n20)) /* synthesis lut_function=(!(A)) */ ;
    defparam i10_1_lut.init = 16'h5555;
    LUT4 i29127_2_lut (.A(music_tone[2]), .B(music_tone[4]), .Z(n35946)) /* synthesis lut_function=(A (B)) */ ;
    defparam i29127_2_lut.init = 16'h8888;
    LUT4 mux_300_Mux_7_i31_3_lut (.A(n37423), .B(char_reg[7]), .C(n38113), 
         .Z(n1699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(133[20] 136[14])
    defparam mux_300_Mux_7_i31_3_lut.init = 16'hcaca;
    LUT4 i1153_2_lut (.A(uart_en_N_231), .B(n3618), .Z(n3622)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/top.v(340[10] 347[8])
    defparam i1153_2_lut.init = 16'h8888;
    LUT4 i29890_2_lut (.A(led_c), .B(led_N_216), .Z(led_N_213)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i29890_2_lut.init = 16'h7777;
    LUT4 i26112_2_lut (.A(key_mode[1]), .B(key_mode[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/top.v(99[22:37])
    defparam i26112_2_lut.init = 16'h6666;
    LUT4 i26119_3_lut (.A(key_mode[2]), .B(key_mode[1]), .C(key_mode[0]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/top.v(99[22:37])
    defparam i26119_3_lut.init = 16'h6a6a;
    LUT4 i2_4_lut_adj_308 (.A(Temp_H[6]), .B(Temp_H[5]), .C(Temp_H[4]), 
         .D(n4_adj_1916), .Z(uart_en_N_231)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_308.init = 16'hfeee;
    FD1P3IX hour_i7 (.D(hour_t[7]), .SP(clk_1s_enable_16), .CD(n26000), 
            .CK(clk_1s), .Q(hour[7]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i7.GSR = "ENABLED";
    LUT4 cnt_0__bdd_3_lut_30624 (.A(cnt_adj_2073[0]), .B(cnt_adj_2073[1]), 
         .C(cnt_adj_2073[2]), .Z(n37922)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam cnt_0__bdd_3_lut_30624.init = 16'h4040;
    FD1P3IX hour_i6 (.D(hour_t[6]), .SP(clk_1s_enable_16), .CD(n26000), 
            .CK(clk_1s), .Q(hour[6]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i6.GSR = "ENABLED";
    LUT4 cnt_0__bdd_4_lut_30621 (.A(cnt_adj_2073[0]), .B(cnt_adj_2073[3]), 
         .C(cnt_adj_2073[1]), .D(cnt_adj_2073[2]), .Z(n37921)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_30621.init = 16'h0311;
    LUT4 mux_300_Mux_6_i31_3_lut (.A(n37923), .B(char_reg[6]), .C(n38113), 
         .Z(n1700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(133[20] 136[14])
    defparam mux_300_Mux_6_i31_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_309 (.A(Temp_H[3]), .B(Temp_H[2]), .Z(n4_adj_1916)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_309.init = 16'h8888;
    LUT4 mux_300_Mux_2_i22_4_lut_3_lut (.A(cnt_adj_2073[1]), .B(cnt_adj_2073[2]), 
         .C(cnt_adj_2073[0]), .Z(n22_adj_1900)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // d:/new porject/top-xu/oled.v(133[20] 136[14])
    defparam mux_300_Mux_2_i22_4_lut_3_lut.init = 16'h9898;
    DS18B20Z u_DS18B20Z (.sys_rst_n_c(sys_rst_n_c), .n38124(n38124), .GND_net(GND_net), 
            .sys_clk_c(sys_clk_c), .one_wire_N_671(one_wire_N_671), .\state_back_2__N_522[2] (state_back_2__N_522[2]), 
            .\hundres_1__N_345[1] (hundres_1__N_345_adj_2043[1]), .\hundres_1__N_345[0] (hundres_1__N_345_adj_2043[0]), 
            .\ds18b20_data[8] (ds18b20_data[8]), .\ds18b20_data[7] (ds18b20_data[7]), 
            .\ds18b20_data[6] (ds18b20_data[6]), .\ds18b20_data[5] (ds18b20_data[5]), 
            .\ds18b20_data[4] (ds18b20_data[4]), .one_wire_out(one_wire_out), 
            .n37892(n37892), .n38126(n38126), .n38152(n38152), .n33269(n33269), 
            .n11544(n11544), .sys_clk_c_enable_333(sys_clk_c_enable_333), 
            .n10(n10)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(303[11] 309[2])
    LUT4 i29214_2_lut_rep_617 (.A(hour_warning[6]), .B(hour_warning[7]), 
         .Z(n38204)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29214_2_lut_rep_617.init = 16'heeee;
    LUT4 i29220_2_lut_3_lut (.A(hour_warning[6]), .B(hour_warning[7]), .C(hour_warning[0]), 
         .Z(n36057)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i29220_2_lut_3_lut.init = 16'hfefe;
    LUT4 i3586_3_lut (.A(sec[0]), .B(sec[2]), .C(sec[1]), .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i3586_3_lut.init = 16'hecec;
    LUT4 mux_3250_i2_3_lut (.A(n37970), .B(n37969), .C(sw1_c), .Z(n12760)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(110[119:149])
    defparam mux_3250_i2_3_lut.init = 16'hcaca;
    Beeper m_beep (.beep_c(beep_c), .sys_clk_c(sys_clk_c), .\music_tone[0] (music_tone[0]), 
           .n33164(n33164), .\music_tone[4] (music_tone[4]), .GND_net(GND_net), 
           .\music_tone[1] (music_tone[1]), .\music_tone[3] (music_tone[3]), 
           .\music_tone[2] (music_tone[2]), .sw2_c(sw2_c), .n38192(n38192)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(432[9] 438[2])
    LUT4 i1_2_lut_rep_623 (.A(key_sec_pre), .B(key_sec), .Z(n38210)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_623.init = 16'hdddd;
    FD1P3IX hour_i5 (.D(hour_t[5]), .SP(clk_1s_enable_16), .CD(n26000), 
            .CK(clk_1s), .Q(hour[5]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i5.GSR = "ENABLED";
    \divide(WIDTH=32,N=12000000)_U2  devide_1s (.clk_1s(clk_1s), .sys_clk_c(sys_clk_c), 
            .GND_net(GND_net), .n21900(n21900)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(30[37] 36[3])
    KEY_U0 key_2 (.GND_net(GND_net), .sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre), 
           .key_sec(key_sec), .key2_c(key2_c), .n38234(n38234), .key_sec_adj_10(key_sec_adj_1888), 
           .key_sec_pre_adj_11(key_sec_pre_adj_1887), .n38170(n38170), .\key_mode[2] (key_mode[2]), 
           .\key_mode[1] (key_mode[1]), .n35674(n35674)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(47[6] 52[3])
    BCD_U4 bcd_min (.\min[4] (min[4]), .\min[3] (min[3]), .\min[1] (min[1]), 
           .\min_ones[1] (min_ones[1]), .\min_tens[0] (min_tens[0]), .\min_ones[3] (min_ones[3]), 
           .\min_ones[2] (min_ones[2]), .n9380(n9380), .\hundres_0__N_356[3] (hundres_0__N_356_adj_1947[3]), 
           .n4(n4_adj_1896), .n9664(n9664), .hundres_0__N_361(hundres_0__N_361), 
           .\min[6] (min[6]), .\min[5] (min[5]), .\min[7] (min[7]), .\min[2] (min[2])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(256[6] 262[3])
    LUT4 i29793_2_lut_2_lut (.A(warning_time_7__N_176), .B(led_N_216), .Z(clk_1s_enable_9)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i29793_2_lut_2_lut.init = 16'hdddd;
    FD1P3IX hour_i4 (.D(hour_t[4]), .SP(clk_1s_enable_16), .CD(n26000), 
            .CK(clk_1s), .Q(hour[4]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i4.GSR = "ENABLED";
    LUT4 i18670_4_lut (.A(n831), .B(min_t[0]), .C(n38163), .D(n802), 
         .Z(min_7__N_11[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i18670_4_lut.init = 16'hc5c0;
    music_play m_music_play (.\state[0] (state_adj_2093[0]), .sys_clk_c(sys_clk_c), 
            .recv_done_d1(recv_done_d1), .recv_done_d0(recv_done_d0), .music_tone({music_tone}), 
            .uart_recv_done(uart_recv_done), .music_cnt({Open_0, Open_1, 
            music_cnt[6:0]}), .sys_clk_c_enable_237(sys_clk_c_enable_237), 
            .n126(n126), .uart_recv_data({uart_recv_data}), .warning(warning), 
            .n4(n4_adj_1905), .\state[1] (state_adj_2093[1]), .sys_rst_n_c(sys_rst_n_c), 
            .n38168(n38168), .warning_TEM(warning_TEM), .n39490(n39490), 
            .GND_net(GND_net), .n21961(n21961), .n38126(n38126), .n38124(n38124), 
            .n37892(n37892), .\state_back_2__N_522[2] (state_back_2__N_522[2]), 
            .sys_clk_c_enable_333(sys_clk_c_enable_333), .n38152(n38152), 
            .n10(n10), .n33269(n33269), .n123(n123), .n124(n124), .n125(n125)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(449[13] 462[6])
    FD1P3IX hour_i3 (.D(hour_t[3]), .SP(clk_1s_enable_16), .CD(n26000), 
            .CK(clk_1s), .Q(hour[3]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i3.GSR = "ENABLED";
    \uart_recv(CLK_FREQ=12000000)  u_uart_recv (.sys_clk_c(sys_clk_c), .sys_clk_c_enable_103(sys_clk_c_enable_103), 
            .rx_flag(rx_flag), .uart_recv_done(uart_recv_done), .uart_rxd_c(uart_rxd_c), 
            .uart_recv_data({uart_recv_data}), .n38174(n38174), .n31(n31), 
            .GND_net(GND_net), .n38108(n38108)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(423[1] 430[6])
    BCD_U7 bcd_T (.\ds18b20_data[6] (ds18b20_data[6]), .\ds18b20_data[7] (ds18b20_data[7]), 
           .\Tem_lower[3] (Tem_lower[3]), .\Tem_high[0] (Tem_high[0]), .\ds18b20_data[5] (ds18b20_data[5]), 
           .\Tem_lower[1] (Tem_lower[1]), .\cnt_main[0] (cnt_main_adj_2068[0]), 
           .n8692(n8692), .n36380(n36380), .\Tem_lower[2] (Tem_lower[2]), 
           .\hundres_1__N_345[1] (hundres_1__N_345_adj_2043[1]), .\Tem_high[2] (Tem_high[2]), 
           .\ds18b20_data[8] (ds18b20_data[8]), .\hundres_1__N_345[0] (hundres_1__N_345_adj_2043[0]), 
           .n39479(n39479)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(295[5] 301[3])
    BCD_U6 bcd_hour (.\hour[3] (hour[3]), .\hour[4] (hour[4]), .n37976(n37976), 
           .\hour[6] (hour[6]), .\hour[5] (hour[5]), .n38250(n38250), 
           .n9367(n9367), .n37970(n37970), .n4(n4_adj_1895), .\hour[7] (hour[7]), 
           .\hundres_0__N_353[1] (hundres_0__N_353_adj_1971[1]), .hundres_0__N_361(hundres_0__N_361_adj_1890), 
           .\hour[2] (hour[2]), .\hour[1] (hour[1]), .\hour_ones[1] (hour_ones[1]), 
           .\hour_tens[0] (hour_tens[0]), .\hour_ones[3] (hour_ones[3]), 
           .\hour_ones[2] (hour_ones[2])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(264[6] 270[3])
    BCD_U3 bcd_min_warning (.\min_warning[1] (min_warning[1]), .\min_warning_ones[2] (min_warning_ones[2]), 
           .\min_warning[4] (min_warning[4]), .\min_warning[3] (min_warning[3]), 
           .n9380(n9380), .\hundres_0__N_356[3] (hundres_0__N_356_adj_2025[3]), 
           .n4(n4_adj_1897), .n9668(n9668), .hundres_0__N_361(hundres_0__N_361_adj_1894), 
           .\min_warning[5] (min_warning[5]), .\min_warning[6] (min_warning[6]), 
           .\min_warning[7] (min_warning[7]), .\min_warning[2] (min_warning[2]), 
           .\min_warning_ones[1] (min_warning_ones[1]), .\min_warning_tens[0] (min_warning_tens[0]), 
           .\min_warning_ones[3] (min_warning_ones[3])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(280[7] 286[3])
    OLED12832 oled1 (.sys_clk_c(sys_clk_c), .char_reg({char_reg[7:6], Open_2, 
            Open_3, Open_4, Open_5, Open_6, char_reg[0]}), .oled_cs_c(oled_cs_c), 
            .oled_dc_c(oled_dc_c), .\cnt[0] (cnt_adj_2073[0]), .cnt_main({Open_7, 
            Open_8, Open_9, Open_10, cnt_main_adj_2068[0]}), .warning_TEM(warning_TEM), 
            .\cnt_main[1] (cnt_main_adj_2068[1]), .\cnt_main[2] (cnt_main_adj_2068[2]), 
            .\char_reg[3] (char_reg[3]), .\char_reg[2] (char_reg[2]), .\char_reg[1] (char_reg[1]), 
            .n22(n22_adj_1900), .n1704(n1704), .n22_adj_3(n22), .n1705(n1705), 
            .n15(n15), .n37031(n37031), .n37070(n37070), .n1699(n1699), 
            .GND_net(GND_net), .n38129(n38129), .sw1_c(sw1_c), .n2678(n2678), 
            .n38107(n38107), .time_set(time_set), .n38227(n38227), .n37053(n37053), 
            .n1700(n1700), .\cnt[1] (cnt_adj_2073[1]), .\cnt[2] (cnt_adj_2073[2]), 
            .n3815(n3815), .n4193(n4193), .n3437(n3437), .n3059(n3059), 
            .\cnt[3] (cnt_adj_2073[3]), .n3816(n3816), .n4194(n4194), 
            .n3438(n3438), .n3060(n3060), .n38113(n38113), .n9659(n9659), 
            .n19219(n19219), .\hundres_0__N_353[1] (hundres_0__N_353[1]), 
            .n39479(n39479), .\hundres_1__N_345[0] (hundres_1__N_345_adj_2043[0]), 
            .\ds18b20_data[8] (ds18b20_data[8]), .\hundres_1__N_345[1] (hundres_1__N_345_adj_2043[1]), 
            .\min_ones[3] (min_ones[3]), .\min_warning_ones[3] (min_warning_ones[3]), 
            .n2677(n2677), .n3054(n3054), .n3810(n3810), .n3432(n3432), 
            .n4188(n4188), .n2676(n2676), .\cnt[4] (cnt_adj_2073[4]), 
            .n2508(n2508), .n2507(n2507), .n3435(n3435), .n4191(n4191), 
            .n3057(n3057), .n3813(n3813), .n2679(n2679), .n37764(n37764), 
            .n2513(n2513), .n2510(n2510), .n2509(n2509), .n4(n4_adj_1899), 
            .n37975(n37975), .n37969(n37969), .n9367(n9367), .\hundres_0__N_353[1]_adj_4 (hundres_0__N_353_adj_1997[1]), 
            .n9677(n9677), .n37976(n37976), .n37970(n37970), .\hundres_0__N_353[1]_adj_5 (hundres_0__N_353_adj_1971[1]), 
            .n9673(n9673), .\min_tens[0] (min_tens[0]), .\min_warning_tens[0] (min_warning_tens[0]), 
            .\Tem_high[2] (Tem_high[2]), .\min[0] (min[0]), .\min_warning[0] (min_warning[0]), 
            .\hour[0] (hour[0]), .\hour_warning[0] (hour_warning[0]), .n9380(n9380), 
            .n12746(n12746), .n12760(n12760), .n8673(n8673), .oled_mosi_c(oled_mosi_c), 
            .n20808(n20808), .n20810(n20810), .oled_sck_c(oled_sck_c), 
            .oled_res_c(oled_res_c), .n7(n7), .\Tem_lower[2] (Tem_lower[2]), 
            .\Tem_lower[3] (Tem_lower[3]), .\Tem_lower[1] (Tem_lower[1]), 
            .n8663(n8663), .n3812(n3812), .n4190(n4190), .n36380(n36380), 
            .n3814(n3814), .n4192(n4192), .n3811(n3811), .n4189(n4189), 
            .n3055(n3055), .n3433(n3433), .hundres_0__N_361(hundres_0__N_361_adj_1890), 
            .hundres_0__N_361_adj_6(hundres_0__N_361_adj_1892), .hundres_0__N_361_adj_7(hundres_0__N_361), 
            .hundres_0__N_361_adj_8(hundres_0__N_361_adj_1894), .\hour_ones[2] (hour_ones[2]), 
            .\hour_warning_ones[2] (hour_warning_ones[2]), .\hour_ones[3] (hour_ones[3]), 
            .\hour_warning_ones[3] (hour_warning_ones[3]), .\min_ones[2] (min_ones[2]), 
            .\min_warning_ones[2] (min_warning_ones[2]), .\hour_ones[1] (hour_ones[1]), 
            .\hour_warning_ones[1] (hour_warning_ones[1]), .\min_ones[1] (min_ones[1]), 
            .\min_warning_ones[1] (min_warning_ones[1]), .n2681(n2681), 
            .\Tem_high[0] (Tem_high[0]), .n2682(n2682), .\ds18b20_data[4] (ds18b20_data[4]), 
            .n8666(n8666), .n3056(n3056), .n3434(n3434), .n3058(n3058), 
            .n3436(n3436), .n2680(n2680), .\hundres_0__N_356[1] (hundres_0__N_356[1]), 
            .\hundres_0__N_356[2] (hundres_0__N_356[2]), .n37972(n37972), 
            .n37964(n37964), .\sec[1] (sec[1]), .n8692(n8692), .n37985(n37985), 
            .n37971(n37971), .\hundres_0__N_353[0] (hundres_0__N_353[0]), 
            .\sec[0] (sec[0]), .n1703(n1703), .sys_rst_n_c(sys_rst_n_c), 
            .n4_adj_9(n4_adj_1905), .recv_done_d1(recv_done_d1), .recv_done_d0(recv_done_d0), 
            .n21961(n21961)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(375[12] 406[3])
    KEY key_3 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre_adj_1887), 
        .key_sec(key_sec_adj_1888), .key3_c(key3_c), .n38231(n38231), 
        .n39470(n39470), .n38234(n38234), .n181(n181), .\key_mode[2] (key_mode[2]), 
        .\key_mode[1] (key_mode[1]), .n35675(n35675), .key_sec_adj_1(key_sec), 
        .key_sec_pre_adj_2(key_sec_pre), .n38156(n38156), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(55[6] 60[3])
    KEY_U1 key_1 (.sys_clk_c(sys_clk_c), .key1_c(key1_c), .GND_net(GND_net), 
           .sw1_c(sw1_c), .n38089(n38089), .n6(n6_adj_1902), .n181(n181), 
           .sys_clk_c_enable_155(sys_clk_c_enable_155), .key_mode({key_mode}), 
           .n39470(n39470), .n850(n850), .n831(n831), .clk_1s_enable_16(clk_1s_enable_16), 
           .sys_clk_c_enable_308(sys_clk_c_enable_308), .n38175(n38175), 
           .n38198(n38198), .n25994(n25994), .sys_clk_c_enable_295(sys_clk_c_enable_295), 
           .n36679(n36679), .sys_clk_c_enable_147(sys_clk_c_enable_147), 
           .n38231(n38231), .n38234(n38234), .n38216(n38216), .n26000(n26000), 
           .n38170(n38170), .n167(n167), .\hour_t[0] (hour_t[0]), .\hour_7__N_19[0] (hour_7__N_19[0]), 
           .n4(n4_adj_1906), .sys_clk_c_enable_163(sys_clk_c_enable_163), 
           .n38163(n38163), .min({min}), .n5415({n5416, n5417, n5418, 
           n5419, n5420, n5421, n5422, n5423}), .sec({sec}), .n5405({n5406, 
           n5407, n5408, n5409, n5410, n5411, n5412, n5413}), 
           .n35667(n35667), .n5235(n5235), .n35743(n35743), .n5295(n5295), 
           .hour({hour}), .n5395({n5396, n5397, n5398, n5399, n5400, 
           n5401, n5402, n5403}), .n38347(n38347)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(39[6] 44[3])
    FD1P3IX hour_i2 (.D(hour_t[2]), .SP(clk_1s_enable_16), .CD(n26000), 
            .CK(clk_1s), .Q(hour[2]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i2.GSR = "ENABLED";
    FD1P3IX hour_i1 (.D(hour_t[1]), .SP(clk_1s_enable_16), .CD(n26000), 
            .CK(clk_1s), .Q(hour[1]));   // d:/new porject/top-xu/top.v(209[12] 227[6])
    defparam hour_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module BCD_U5
//

module BCD_U5 (\hour_warning[3] , \hour_warning[4] , n37975, n9367, 
            n37969, n4, \hundres_0__N_353[1] , hundres_0__N_361, \hour_warning[2] , 
            \hour_warning[1] , \hour_warning_ones[1] , \hour_warning_tens[0] , 
            \hour_warning[7] , \hour_warning_ones[3] , \hour_warning_ones[2] , 
            \hour_warning[5] , \hour_warning[6] ) /* synthesis syn_module_defined=1 */ ;
    input \hour_warning[3] ;
    input \hour_warning[4] ;
    output n37975;
    input n9367;
    output n37969;
    output n4;
    output \hundres_0__N_353[1] ;
    output hundres_0__N_361;
    input \hour_warning[2] ;
    input \hour_warning[1] ;
    output \hour_warning_ones[1] ;
    output \hour_warning_tens[0] ;
    input \hour_warning[7] ;
    output \hour_warning_ones[3] ;
    output \hour_warning_ones[2] ;
    input \hour_warning[5] ;
    input \hour_warning[6] ;
    
    wire [3:0]hundres_1__N_345;
    
    wire n38050;
    wire [3:0]hundres_1__N_346;
    
    wire n38040;
    wire [3:0]hundres_1__N_347;
    
    wire n38031, n38014, n38309, n38308, n38004, n37967, n37988, 
        n38119, n39481, n39480, n39482, n38147, n38091, n38020, 
        n37980;
    wire [3:0]hundres_0__N_356;
    
    wire n38187;
    
    LUT4 i4450_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_345[1]), .B(n38050), 
         .C(hundres_1__N_346[1]), .D(n38040), .Z(hundres_1__N_347[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4450_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3427_3_lut_rep_444_4_lut (.A(hundres_1__N_345[1]), .B(n38050), 
         .C(hundres_1__N_346[1]), .D(n38040), .Z(n38031)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3427_3_lut_rep_444_4_lut.init = 16'hf666;
    LUT4 i4457_3_lut_rep_427_4_lut_3_lut_4_lut (.A(hundres_1__N_345[1]), .B(n38050), 
         .C(hundres_1__N_346[1]), .D(n38040), .Z(n38014)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4457_3_lut_rep_427_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4435_2_lut_rep_433_4_lut_4_lut_then_4_lut (.A(\hour_warning[3] ), 
         .B(\hour_warning[4] ), .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), 
         .Z(n38309)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4435_2_lut_rep_433_4_lut_4_lut_then_4_lut.init = 16'h2524;
    LUT4 i4435_2_lut_rep_433_4_lut_4_lut_else_4_lut (.A(\hour_warning[3] ), 
         .B(\hour_warning[4] ), .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), 
         .Z(n38308)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4435_2_lut_rep_433_4_lut_4_lut_else_4_lut.init = 16'h959a;
    LUT4 i3958_2_lut_rep_380_4_lut_4_lut (.A(n38004), .B(hundres_1__N_347[2]), 
         .C(hundres_1__N_347[1]), .D(n37975), .Z(n37967)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i3958_2_lut_rep_380_4_lut_4_lut.init = 16'hff6c;
    LUT4 i1_3_lut_4_lut (.A(n38014), .B(n37988), .C(n9367), .D(n37969), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i4427_2_lut_rep_410_4_lut_4_lut_then_4_lut (.A(\hour_warning[4] ), 
         .B(n38119), .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), 
         .Z(n39481)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i4427_2_lut_rep_410_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    LUT4 i4427_2_lut_rep_410_4_lut_4_lut_else_4_lut (.A(\hour_warning[4] ), 
         .B(n38119), .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), 
         .Z(n39480)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4427_2_lut_rep_410_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i3519_4_lut (.A(n37967), .B(n39482), .C(\hundres_0__N_353[1] ), 
         .D(n38147), .Z(hundres_0__N_361)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3519_4_lut.init = 16'hb3a0;
    LUT4 i4485_3_lut_4_lut_3_lut_4_lut (.A(n38119), .B(\hour_warning[4] ), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(hundres_1__N_346[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4485_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12637_2_lut_rep_463_3_lut_4_lut (.A(n38119), .B(\hour_warning[4] ), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n38050)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i12637_2_lut_rep_463_3_lut_4_lut.init = 16'heee0;
    LUT4 i3426_3_lut_rep_504 (.A(n38119), .B(\hour_warning[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(n38091)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3426_3_lut_rep_504.init = 16'hffe0;
    LUT4 i4471_3_lut_4_lut (.A(n38119), .B(\hour_warning[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(hundres_1__N_346[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4471_3_lut_4_lut.init = 16'h998a;
    LUT4 i4408_3_lut_rep_382_4_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38020), 
         .C(hundres_1__N_347[1]), .D(hundres_1__N_347[2]), .Z(n37969)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4408_3_lut_rep_382_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4386_2_lut_rep_393_4_lut_4_lut (.A(\hour_warning[2] ), .B(n38020), 
         .C(hundres_1__N_347[1]), .D(hundres_1__N_347[2]), .Z(n37980)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4386_2_lut_rep_393_4_lut_4_lut.init = 16'h554a;
    LUT4 i4401_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38020), 
         .C(hundres_1__N_347[1]), .D(hundres_1__N_347[2]), .Z(hundres_0__N_356[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4401_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4394_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38020), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(hundres_0__N_356[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4394_3_lut_4_lut.init = 16'h998c;
    PFUMX i31141 (.BLUT(n39480), .ALUT(n39481), .C0(n38040), .Z(n39482));
    LUT4 i3522_2_lut_rep_417_3_lut (.A(\hour_warning[3] ), .B(n38031), .C(\hour_warning[2] ), 
         .Z(n38004)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3522_2_lut_rep_417_3_lut.init = 16'hf6f6;
    LUT4 i4358_2_lut_4_lut_4_lut (.A(\hour_warning[1] ), .B(n37980), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\hour_warning_ones[1] )) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4358_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 i4380_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[1] ), .B(n37980), 
         .C(hundres_0__N_356[1]), .D(hundres_0__N_356[2]), .Z(\hour_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4380_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3589_2_lut_rep_401_3_lut_4_lut (.A(n38187), .B(\hour_warning[7] ), 
         .C(n38014), .D(hundres_1__N_346[3]), .Z(n37988)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3589_2_lut_rep_401_3_lut_4_lut.init = 16'h8880;
    LUT4 i4414_2_lut_rep_388_3_lut_3_lut_4_lut (.A(n38187), .B(\hour_warning[7] ), 
         .C(n38014), .D(hundres_1__N_346[3]), .Z(n37975)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i4414_2_lut_rep_388_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i4373_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[1] ), .B(n37980), 
         .C(hundres_0__N_356[1]), .D(hundres_0__N_356[2]), .Z(\hour_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4373_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4422_3_lut_4_lut_3_lut_4_lut (.A(n38187), .B(\hour_warning[7] ), 
         .C(n38014), .D(hundres_1__N_346[3]), .Z(\hundres_0__N_353[1] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4422_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i4366_3_lut_4_lut (.A(\hour_warning[1] ), .B(n37980), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\hour_warning_ones[2] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4366_3_lut_4_lut.init = 16'h998c;
    LUT4 i3530_2_lut_rep_600 (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .Z(n38187)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3530_2_lut_rep_600.init = 16'heeee;
    LUT4 i3591_2_lut_rep_560_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n38147)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3591_2_lut_rep_560_3_lut.init = 16'he0e0;
    LUT4 i14203_2_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_345[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i14203_2_lut_3_lut.init = 16'h1010;
    LUT4 i4337_2_lut_rep_532_3_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n38119)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4337_2_lut_rep_532_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4345_3_lut_4_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_345[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4345_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4448_2_lut_rep_453_3_lut (.A(\hour_warning[4] ), .B(n38091), .C(\hour_warning[3] ), 
         .Z(n38040)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4448_2_lut_rep_453_3_lut.init = 16'hf6f6;
    LUT4 i4443_3_lut_4_lut (.A(\hour_warning[4] ), .B(n38091), .C(\hour_warning[3] ), 
         .D(n38031), .Z(hundres_1__N_347[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4443_3_lut_4_lut.init = 16'h6966;
    PFUMX i30539 (.BLUT(n38308), .ALUT(n38309), .C0(n38119), .Z(n38020));
    
endmodule
//
// Verilog Description of module uart_send
//

module uart_send (sys_clk_c, uart_en, uart_send_data, uart_txd_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input uart_en;
    input [7:0]uart_send_data;
    output uart_txd_c;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire uart_en_d1, uart_en_d0, uart_tx_busy, n21836;
    wire [15:0]clk_cnt;   // d:/new porject/top-xu/uart.v(19[12:19])
    
    wire n21891;
    wire [15:0]n69;
    
    wire n12431;
    wire [7:0]tx_data;   // d:/new porject/top-xu/uart.v(22[12:19])
    wire [15:0]n2132;
    
    wire n12432, sys_clk_c_enable_211, n21845, n35812, n29788, n19293, 
        n36336;
    wire [0:0]n5381;
    
    wire uart_tx_busy_N_749, n36333, n19510;
    wire [0:0]n5352;
    
    wire sys_clk_c_enable_350, n12427, n33143, uart_txd_N_752, n10, 
        n36165, n35655, n16, n12, n35527, n38260, n36253, n38261, 
        n19509, n35809, n36273, n36255, n36325, n4, n32869, n32868, 
        n32867, n32866, n32865, n32864, n32863, n32862;
    
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n21836), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i0.GSR = "ENABLED";
    LUT4 i5864_3_lut (.A(n12431), .B(tx_data[4]), .C(n2132[5]), .Z(n12432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i5864_3_lut.init = 16'hcaca;
    FD1P3JX tx_cnt_FSM_i0 (.D(n2132[15]), .SP(sys_clk_c_enable_211), .PD(n21845), 
            .CK(sys_clk_c), .Q(n2132[0]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(uart_en_d0), .B(n35812), .C(uart_en_d1), .Z(n29788)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hc4c4;
    PFUMX i11563 (.BLUT(n12432), .ALUT(n19293), .C0(n36336), .Z(n5381[0]));
    FD1S3IX clk_cnt_3046__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_3046__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n21891), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046__i1.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i1 (.D(n2132[0]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[1]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i2 (.D(n2132[1]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[2]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n2132[2]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[3]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n2132[3]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[4]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n2132[4]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[5]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n2132[5]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[6]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n2132[6]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[7]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n2132[7]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[8]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n2132[8]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_749));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_749), .SP(sys_clk_c_enable_211), 
            .CD(n21845), .CK(sys_clk_c), .Q(n2132[10]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n2132[10]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[11]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n2132[11]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[12]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n2132[12]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[13]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n2132[13]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[14]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n2132[14]), .SP(sys_clk_c_enable_211), .CD(n21845), 
            .CK(sys_clk_c), .Q(n2132[15]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i29655_4_lut_4_lut (.A(n2132[8]), .B(n36333), .C(n19510), .D(n5352[0]), 
         .Z(n19293)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam i29655_4_lut_4_lut.init = 16'hf4b0;
    FD1P3IX tx_data_i1 (.D(uart_send_data[1]), .SP(sys_clk_c_enable_350), 
            .CD(n29788), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i1.GSR = "ENABLED";
    FD1P3IX tx_data_i2 (.D(uart_send_data[2]), .SP(sys_clk_c_enable_350), 
            .CD(n29788), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1P3IX tx_data_i3 (.D(uart_send_data[3]), .SP(sys_clk_c_enable_350), 
            .CD(n29788), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1P3IX tx_data_i4 (.D(uart_send_data[4]), .SP(sys_clk_c_enable_350), 
            .CD(n29788), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1P3IX tx_data_i5 (.D(uart_send_data[5]), .SP(sys_clk_c_enable_350), 
            .CD(n29788), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i5.GSR = "ENABLED";
    LUT4 i20036_4_lut (.A(n12427), .B(n2132[0]), .C(uart_txd_c), .D(n33143), 
         .Z(uart_txd_N_752)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i20036_4_lut.init = 16'h3022;
    LUT4 i20098_2_lut (.A(n5381[0]), .B(uart_tx_busy_N_749), .Z(n12427)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i20098_2_lut.init = 16'heeee;
    FD1P3IX tx_data_i6 (.D(uart_send_data[6]), .SP(sys_clk_c_enable_350), 
            .CD(n29788), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i6.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(n2132[15]), .B(n10), .C(n2132[13]), .Z(n33143)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut (.A(n2132[14]), .B(n2132[12]), .C(n2132[11]), .D(n2132[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_278 (.A(n36165), .B(n35655), .C(uart_tx_busy_N_749), 
         .D(clk_cnt[2]), .Z(n35812)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i4_4_lut_adj_278.init = 16'h0040;
    LUT4 i8_4_lut (.A(clk_cnt[13]), .B(n16), .C(n12), .D(clk_cnt[12]), 
         .Z(n35527)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(88[13:35])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(clk_cnt[10]), .B(clk_cnt[15]), .C(clk_cnt[9]), .D(n38260), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(88[13:35])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(clk_cnt[8]), .B(clk_cnt[7]), .Z(n12)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart.v(88[13:35])
    defparam i3_2_lut.init = 16'heeee;
    FD1P3IX tx_data_i7 (.D(uart_send_data[7]), .SP(sys_clk_c_enable_350), 
            .CD(n29788), .CK(sys_clk_c), .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i7.GSR = "ENABLED";
    LUT4 i29340_2_lut_rep_673 (.A(clk_cnt[11]), .B(clk_cnt[14]), .Z(n38260)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29340_2_lut_rep_673.init = 16'heeee;
    LUT4 i29413_3_lut_4_lut (.A(clk_cnt[11]), .B(clk_cnt[14]), .C(clk_cnt[7]), 
         .D(clk_cnt[10]), .Z(n36253)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29413_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_674 (.A(clk_cnt[4]), .B(clk_cnt[3]), .Z(n38261)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i1_2_lut_rep_674.init = 16'heeee;
    LUT4 i29327_3_lut_4_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(clk_cnt[0]), 
         .D(n35527), .Z(n36165)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i29327_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_adj_279 (.A(clk_cnt[6]), .B(clk_cnt[5]), .C(clk_cnt[1]), 
         .Z(n35655)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_279.init = 16'h8080;
    LUT4 i1_3_lut_4_lut (.A(uart_en_d0), .B(uart_en_d1), .C(uart_tx_busy), 
         .D(n35812), .Z(n21836)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam i1_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1_2_lut_3_lut (.A(uart_en_d0), .B(uart_en_d1), .C(n35812), .Z(sys_clk_c_enable_350)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i12887_3_lut (.A(n19509), .B(tx_data[7]), .C(n2132[8]), .Z(n19510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i12887_3_lut.init = 16'hcaca;
    LUT4 mux_1830_i1_3_lut (.A(tx_data[0]), .B(tx_data[1]), .C(n2132[2]), 
         .Z(n5352[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam mux_1830_i1_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(n35809), .B(n36253), .C(n35655), .D(n36273), .Z(sys_clk_c_enable_211)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_4_lut.init = 16'h0020;
    LUT4 i29433_4_lut (.A(clk_cnt[13]), .B(n36255), .C(clk_cnt[12]), .D(clk_cnt[15]), 
         .Z(n36273)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29433_4_lut.init = 16'hfffe;
    LUT4 i29415_4_lut (.A(clk_cnt[3]), .B(clk_cnt[4]), .C(clk_cnt[9]), 
         .D(clk_cnt[8]), .Z(n36255)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29415_4_lut.init = 16'hfffe;
    LUT4 i15197_1_lut (.A(uart_tx_busy), .Z(n21845)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam i15197_1_lut.init = 16'h5555;
    LUT4 i5863_3_lut (.A(tx_data[2]), .B(tx_data[3]), .C(n2132[4]), .Z(n12431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i5863_3_lut.init = 16'hcaca;
    LUT4 i29493_2_lut (.A(n2132[7]), .B(n2132[6]), .Z(n36333)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i29493_2_lut.init = 16'h1111;
    LUT4 i29966_4_lut (.A(n2132[8]), .B(n2132[7]), .C(n2132[6]), .D(n36325), 
         .Z(n36336)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i29966_4_lut.init = 16'hfffe;
    LUT4 i29485_3_lut (.A(n2132[5]), .B(n2132[4]), .C(n2132[3]), .Z(n36325)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i29485_3_lut.init = 16'h0101;
    LUT4 i12886_3_lut (.A(tx_data[5]), .B(tx_data[6]), .C(n2132[7]), .Z(n19509)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i12886_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(uart_tx_busy), .B(clk_cnt[6]), .C(n35527), .D(n4), 
         .Z(n21891)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/new porject/top-xu/uart.v(88[13:35])
    defparam i1_4_lut.init = 16'hfdf5;
    LUT4 i1_4_lut_adj_280 (.A(clk_cnt[1]), .B(clk_cnt[5]), .C(n38261), 
         .D(n35809), .Z(n4)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i1_4_lut_adj_280.init = 16'hc8c0;
    LUT4 i1_2_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .Z(n35809)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i1_2_lut.init = 16'h8888;
    FD1S3JX uart_txd_47 (.D(uart_txd_N_752), .CK(sys_clk_c), .PD(n21845), 
            .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(101[10] 116[26])
    defparam uart_txd_47.GSR = "ENABLED";
    CCU2D clk_cnt_3046_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32869), .S0(n69[15]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_3046_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_3046_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_3046_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32868), .COUT(n32869), .S0(n69[13]), .S1(n69[14]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_3046_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_3046_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32867), .COUT(n32868), .S0(n69[11]), .S1(n69[12]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_3046_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_3046_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32866), .COUT(n32867), .S0(n69[9]), .S1(n69[10]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_3046_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_3046_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32865), .COUT(n32866), .S0(n69[7]), .S1(n69[8]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_3046_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_3046_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32864), .COUT(n32865), .S0(n69[5]), .S1(n69[6]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_3046_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_3046_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32863), .COUT(n32864), .S0(n69[3]), .S1(n69[4]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_3046_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_3046_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32862), .COUT(n32863), .S0(n69[1]), .S1(n69[2]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_3046_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_3046_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_3046_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32862), .S1(n69[0]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3046_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_3046_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_3046_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_3046_add_4_1.INJECT1_1 = "NO";
    FD1P3IX tx_data_i0 (.D(uart_send_data[0]), .SP(sys_clk_c_enable_350), 
            .CD(n29788), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=358, LSE_RLINE=367 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module BCD
//

module BCD (\sec[4] , n37985, \sec[1] , \hundres_0__N_356[1] , \hundres_0__N_356[2] , 
            n37964, n19219, n9659, \hundres_0__N_353[0] , \sec[2] , 
            n37971, \sec[3] , \sec[7] , \hundres_0__N_353[1] , n37972, 
            \sec[6] , \sec[5] ) /* synthesis syn_module_defined=1 */ ;
    input \sec[4] ;
    output n37985;
    input \sec[1] ;
    output \hundres_0__N_356[1] ;
    output \hundres_0__N_356[2] ;
    output n37964;
    output n19219;
    output n9659;
    output \hundres_0__N_353[0] ;
    input \sec[2] ;
    output n37971;
    input \sec[3] ;
    input \sec[7] ;
    output \hundres_0__N_353[1] ;
    output n37972;
    input \sec[6] ;
    input \sec[5] ;
    
    wire [3:0]hundres_1__N_345;
    
    wire n38052;
    wire [3:0]hundres_1__N_346;
    
    wire n38042, n38032;
    wire [3:0]hundres_1__N_347;
    
    wire n38006, n38120, n38306, n38305, n38148, n38007, n38092, 
        n38022, n38008, n38193;
    
    LUT4 i3429_3_lut_rep_445_4_lut (.A(hundres_1__N_345[1]), .B(n38052), 
         .C(hundres_1__N_346[1]), .D(n38042), .Z(n38032)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3429_3_lut_rep_445_4_lut.init = 16'hf666;
    LUT4 i4933_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_345[1]), .B(n38052), 
         .C(hundres_1__N_346[1]), .D(n38042), .Z(hundres_1__N_347[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4933_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4940_3_lut_rep_419_4_lut_3_lut_4_lut (.A(hundres_1__N_345[1]), .B(n38052), 
         .C(hundres_1__N_346[1]), .D(n38042), .Z(n38006)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4940_3_lut_rep_419_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4918_2_lut_rep_435_4_lut_4_lut_then_4_lut (.A(\sec[4] ), .B(n38120), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n38306)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (C)+!B !(C+(D))))) */ ;
    defparam i4918_2_lut_rep_435_4_lut_4_lut_then_4_lut.init = 16'h6063;
    LUT4 i4918_2_lut_rep_435_4_lut_4_lut_else_4_lut (.A(\sec[4] ), .B(n38120), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n38305)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4918_2_lut_rep_435_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i3434_3_lut_rep_377_4_lut (.A(n37985), .B(\sec[1] ), .C(\hundres_0__N_356[1] ), 
         .D(\hundres_0__N_356[2] ), .Z(n37964)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3434_3_lut_rep_377_4_lut.init = 16'hffe0;
    LUT4 n19219_bdd_4_lut_30627 (.A(n19219), .B(n38148), .C(n38006), .D(hundres_1__N_346[3]), 
         .Z(n9659)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A !((C+(D))+!B)) */ ;
    defparam n19219_bdd_4_lut_30627.init = 16'ha20c;
    LUT4 i4861_2_lut_4_lut_4_lut (.A(n38007), .B(hundres_1__N_347[2]), .C(hundres_1__N_347[1]), 
         .D(\hundres_0__N_353[0] ), .Z(n19219)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i4861_2_lut_4_lut_4_lut.init = 16'hff6c;
    LUT4 i4968_3_lut_4_lut_3_lut_4_lut (.A(n38120), .B(\sec[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(hundres_1__N_346[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4968_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12647_2_lut_rep_465_3_lut_4_lut (.A(n38120), .B(\sec[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(n38052)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i12647_2_lut_rep_465_3_lut_4_lut.init = 16'heee0;
    LUT4 i3428_3_lut_rep_505 (.A(n38120), .B(\sec[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(n38092)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3428_3_lut_rep_505.init = 16'hffe0;
    LUT4 i4954_3_lut_4_lut (.A(n38120), .B(\sec[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(hundres_1__N_346[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4954_3_lut_4_lut.init = 16'h998a;
    LUT4 i4891_3_lut_rep_384_4_lut_3_lut_4_lut (.A(n38022), .B(\sec[2] ), 
         .C(hundres_1__N_347[1]), .D(hundres_1__N_347[2]), .Z(n37971)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4891_3_lut_rep_384_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4869_2_lut_rep_398_4_lut_4_lut (.A(n38022), .B(\sec[2] ), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(n37985)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4869_2_lut_rep_398_4_lut_4_lut.init = 16'h332c;
    LUT4 i4884_2_lut_3_lut_3_lut_4_lut (.A(n38022), .B(\sec[2] ), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(\hundres_0__N_356[2] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4884_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i3431_3_lut_rep_421 (.A(n38022), .B(\sec[2] ), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(n38008)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3431_3_lut_rep_421.init = 16'hffe0;
    LUT4 i4877_3_lut_4_lut (.A(n38022), .B(\sec[2] ), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(\hundres_0__N_356[1] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4877_3_lut_4_lut.init = 16'h998a;
    LUT4 i4882_2_lut_rep_420_3_lut (.A(\sec[3] ), .B(n38032), .C(\sec[2] ), 
         .Z(n38007)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4882_2_lut_rep_420_3_lut.init = 16'hf6f6;
    LUT4 i4905_3_lut_4_lut_3_lut_4_lut (.A(n38193), .B(\sec[7] ), .C(hundres_1__N_346[3]), 
         .D(n38006), .Z(\hundres_0__N_353[1] )) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4905_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4897_2_lut_3_lut_3_lut_4_lut (.A(n38193), .B(\sec[7] ), .C(hundres_1__N_346[3]), 
         .D(n38006), .Z(\hundres_0__N_353[0] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4897_2_lut_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4833_2_lut_rep_385_3_lut (.A(\sec[2] ), .B(n38008), .C(\sec[1] ), 
         .Z(n37972)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4833_2_lut_rep_385_3_lut.init = 16'hf6f6;
    LUT4 i4812_2_lut_rep_606 (.A(\sec[6] ), .B(\sec[5] ), .Z(n38193)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4812_2_lut_rep_606.init = 16'heeee;
    LUT4 i3592_2_lut_rep_561_3_lut (.A(\sec[6] ), .B(\sec[5] ), .C(\sec[7] ), 
         .Z(n38148)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3592_2_lut_rep_561_3_lut.init = 16'he0e0;
    LUT4 i14201_2_lut_3_lut (.A(\sec[6] ), .B(\sec[5] ), .C(\sec[7] ), 
         .Z(hundres_1__N_345[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i14201_2_lut_3_lut.init = 16'h1010;
    LUT4 i4807_3_lut_4_lut_3_lut (.A(\sec[6] ), .B(\sec[5] ), .C(\sec[7] ), 
         .Z(hundres_1__N_345[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4807_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i4799_2_lut_rep_533_3_lut_3_lut (.A(\sec[6] ), .B(\sec[5] ), .C(\sec[7] ), 
         .Z(n38120)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4799_2_lut_rep_533_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i3570_2_lut_rep_455_3_lut (.A(\sec[4] ), .B(n38092), .C(\sec[3] ), 
         .Z(n38042)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3570_2_lut_rep_455_3_lut.init = 16'hf6f6;
    LUT4 i4926_3_lut_4_lut (.A(\sec[4] ), .B(n38092), .C(\sec[3] ), .D(n38032), 
         .Z(hundres_1__N_347[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4926_3_lut_4_lut.init = 16'h6966;
    PFUMX i30537 (.BLUT(n38305), .ALUT(n38306), .C0(\sec[3] ), .Z(n38022));
    
endmodule
//
// Verilog Description of module DS18B20Z
//

module DS18B20Z (sys_rst_n_c, n38124, GND_net, sys_clk_c, one_wire_N_671, 
            \state_back_2__N_522[2] , \hundres_1__N_345[1] , \hundres_1__N_345[0] , 
            \ds18b20_data[8] , \ds18b20_data[7] , \ds18b20_data[6] , \ds18b20_data[5] , 
            \ds18b20_data[4] , one_wire_out, n37892, n38126, n38152, 
            n33269, n11544, sys_clk_c_enable_333, n10) /* synthesis syn_module_defined=1 */ ;
    input sys_rst_n_c;
    output n38124;
    input GND_net;
    input sys_clk_c;
    output one_wire_N_671;
    output \state_back_2__N_522[2] ;
    output \hundres_1__N_345[1] ;
    output \hundres_1__N_345[0] ;
    output \ds18b20_data[8] ;
    output \ds18b20_data[7] ;
    output \ds18b20_data[6] ;
    output \ds18b20_data[5] ;
    output \ds18b20_data[4] ;
    input one_wire_out;
    output n37892;
    output n38126;
    output n38152;
    input n33269;
    output n11544;
    input sys_clk_c_enable_333;
    output n10;
    
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=\u_DS18B20Z/clk_1mhz */ ;   // d:/new porject/top-xu/ds18b20.v(36[10:18])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire n38203, n26, sys_clk_c_enable_336, n32762;
    wire [19:0]cnt_delay;   // d:/new porject/top-xu/ds18b20.v(55[15:24])
    wire [19:0]n263;
    
    wire n32763, clk_1mhz_N_673, n32761, one_wire_N_674, n32760;
    wire [3:0]cnt_main;   // d:/new porject/top-xu/ds18b20.v(51[14:22])
    wire [3:0]n25;
    
    wire n38215, n38097, n32759;
    wire [2:0]state;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    
    wire sys_clk_c_enable_347;
    wire [2:0]state_back;   // d:/new porject/top-xu/ds18b20.v(62[15:25])
    
    wire sys_clk_c_enable_16;
    wire [2:0]state_back_2__N_522;
    
    wire n37865, sys_clk_c_enable_335, n32758;
    wire [7:0]data_wr;   // d:/new porject/top-xu/ds18b20.v(52[14:21])
    
    wire sys_clk_c_enable_18, n7, sys_clk_c_enable_20, n7_adj_1869, 
        n38214, sys_clk_c_enable_27;
    wire [15:0]temperature;   // d:/new porject/top-xu/ds18b20.v(59[15:26])
    wire [7:0]data_wr_buffer;   // d:/new porject/top-xu/ds18b20.v(53[14:28])
    
    wire sys_clk_c_enable_30, sys_clk_c_enable_265, sys_clk_c_enable_182, 
        n35721, sys_clk_c_enable_48;
    wire [2:0]state_2__N_519;
    wire [7:0]temperature_buffer;   // d:/new porject/top-xu/ds18b20.v(60[14:32])
    
    wire sys_clk_c_enable_49, sys_clk_c_enable_50, sys_clk_c_enable_52, 
        sys_clk_c_enable_53, sys_clk_c_enable_332, n32757, n38219, n35519, 
        sys_clk_c_enable_253;
    wire [5:0]cnt_write;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    
    wire n38212, n38106, n30277, sys_clk_c_enable_58;
    wire [2:0]cnt_init;   // d:/new porject/top-xu/ds18b20.v(54[14:22])
    
    wire n38195, n33240, n30290, n35806;
    wire [5:0]cnt_read;   // d:/new porject/top-xu/ds18b20.v(58[14:22])
    
    wire n38209;
    wire [5:0]n208;
    
    wire n36215, n38218, n37863, n38104, n37891, n38100;
    wire [2:0]cnt_1mhz;   // d:/new porject/top-xu/ds18b20.v(37[14:22])
    wire [2:0]n17;
    
    wire n2, n3, n36286, one_wire_N_679, sys_clk_c_enable_67, n26298, 
        n47, n3_adj_1870, one_wire_N_684, n18113, n19583, n37955, 
        n37862, n37864, n38220, n38221, n35, n21, n31663, n3_adj_1871, 
        n4, one_wire_N_672, n36408, n36409, n36410, n38213, n37354, 
        n38099, n35787, n38058, sys_clk_c_enable_267, n38217, n35898, 
        sys_clk_c_enable_294, n35780, n35779, n35783, n35781, n35782, 
        n36411, n37950;
    wire [19:0]n3038;
    
    wire n19468, n38077;
    wire [19:0]num_delay;   // d:/new porject/top-xu/ds18b20.v(56[15:24])
    
    wire sys_clk_c_enable_122;
    wire [19:0]num_delay_19__N_611;
    
    wire sys_clk_c_enable_124, sys_clk_c_enable_131, n6, n13;
    wire [19:0]cnt_delay_19__N_443;
    
    wire sys_clk_c_enable_194, sys_clk_c_enable_195, n38222, n32756, 
        n32755, n36442, n38273, n38272, n32818, n261, n32817, 
        n32816, n32815, n32814, sys_clk_c_enable_250, n32813, n32812, 
        n32811, n4_adj_1872, n32810, n38267, n32809, n13308, n7_adj_1873, 
        n13320;
    wire [2:0]state_2__N_558;
    wire [2:0]state_2__N_555;
    
    wire n2_adj_1874, n38315, n38314, n38161, n38326, n38232, n37665, 
        n37664, n37666, n38351, n38350, n36441, n38354, n38353, 
        n38357, n38356, n6_adj_1875, n20711, n38067, n38068, n38236, 
        n37251, n33082, n38237, n37262, n30267, n36149, n35525, 
        n38288, n38159, n121, n38154, n37156, n25043, n38196, 
        n38287, n38238, n38169, n10230, n27306, n38160, n52, n38162, 
        n35_adj_1876, sys_clk_c_enable_334, n38304, sys_clk_c_enable_279, 
        n15, n18_adj_1877, n21_adj_1878, n37209, n35568, n56, sys_clk_c_enable_281, 
        n29, n36111, n6_adj_1879, n35755, n33310, n6_adj_1881, n35739, 
        n4_adj_1882, n37954, n37956, n21910, n38207, n21923, n37, 
        n98, sys_clk_c_enable_345, n23, n74, n38141;
    wire [2:0]n109;
    wire [2:0]state_2__N_561;
    
    wire n37208, n37207, n12700, n37890, n33222, n37250, n38355, 
        n38149, n38128, n38123, n19455, n38125, n24969, n38223, 
        n38131, n37189, n38079, n39468, n21737, n38316, n39, n38158, 
        n12, n38358, n38057, n38103, n38078, n61, n37861, n38289, 
        n38194, n3_adj_1884, n38352, n38303, n38302, n35911, n6_adj_1885, 
        n38190, n38191, n21092, n33188, n35877, n32764;
    
    LUT4 i1_2_lut_rep_537_3_lut (.A(clk_1mhz), .B(n38203), .C(sys_rst_n_c), 
         .Z(n38124)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_rep_537_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut (.A(clk_1mhz), .B(n38203), .C(n26), .D(sys_rst_n_c), 
         .Z(sys_clk_c_enable_336)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4000;
    CCU2D add_48_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32762), .COUT(n32763), .S0(n263[15]), .S1(n263[16]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_17.INIT0 = 16'h5aaa;
    defparam add_48_17.INIT1 = 16'h5aaa;
    defparam add_48_17.INJECT1_0 = "NO";
    defparam add_48_17.INJECT1_1 = "NO";
    FD1S3AX clk_1mhz_112 (.D(clk_1mhz_N_673), .CK(sys_clk_c), .Q(clk_1mhz)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(42[12] 47[6])
    defparam clk_1mhz_112.GSR = "ENABLED";
    CCU2D add_48_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32761), .COUT(n32762), .S0(n263[13]), .S1(n263[14]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_15.INIT0 = 16'h5aaa;
    defparam add_48_15.INIT1 = 16'h5aaa;
    defparam add_48_15.INJECT1_0 = "NO";
    defparam add_48_15.INJECT1_1 = "NO";
    FD1S3AX one_wire_buffer_121 (.D(one_wire_N_674), .CK(clk_1mhz), .Q(one_wire_N_671)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam one_wire_buffer_121.GSR = "ENABLED";
    CCU2D add_48_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32760), .COUT(n32761), .S0(n263[11]), .S1(n263[12]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_13.INIT0 = 16'h5aaa;
    defparam add_48_13.INIT1 = 16'h5aaa;
    defparam add_48_13.INJECT1_0 = "NO";
    defparam add_48_13.INJECT1_1 = "NO";
    LUT4 i3667_2_lut (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(88[24:39])
    defparam i3667_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_510_3_lut_4_lut (.A(clk_1mhz), .B(n38203), .C(n38215), 
         .D(sys_rst_n_c), .Z(n38097)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_510_3_lut_4_lut.init = 16'h0400;
    CCU2D add_48_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32759), .COUT(n32760), .S0(n263[9]), .S1(n263[10]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_11.INIT0 = 16'h5aaa;
    defparam add_48_11.INIT1 = 16'h5aaa;
    defparam add_48_11.INJECT1_0 = "NO";
    defparam add_48_11.INJECT1_1 = "NO";
    LUT4 i29862_2_lut_rep_509_3_lut_4_lut (.A(clk_1mhz), .B(n38203), .C(state[0]), 
         .D(\state_back_2__N_522[2] ), .Z(sys_clk_c_enable_347)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i29862_2_lut_rep_509_3_lut_4_lut.init = 16'h0004;
    FD1P3AX state_back_i0_i0 (.D(state_back_2__N_522[0]), .SP(sys_clk_c_enable_16), 
            .CK(sys_clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    LUT4 gnd_bdd_2_lut_30458_3_lut_4_lut (.A(clk_1mhz), .B(n38203), .C(n37865), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_335)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam gnd_bdd_2_lut_30458_3_lut_4_lut.init = 16'h4000;
    CCU2D add_48_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32758), .COUT(n32759), .S0(n263[7]), .S1(n263[8]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_9.INIT0 = 16'h5aaa;
    defparam add_48_9.INIT1 = 16'h5aaa;
    defparam add_48_9.INJECT1_0 = "NO";
    defparam add_48_9.INJECT1_1 = "NO";
    FD1P3AX data_wr_i0_i7 (.D(n7), .SP(sys_clk_c_enable_18), .CK(sys_clk_c), 
            .Q(data_wr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n7_adj_1869), .SP(sys_clk_c_enable_20), .CK(sys_clk_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i1 (.D(n38214), .SP(sys_clk_c_enable_20), .CK(sys_clk_c), 
            .Q(data_wr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i1.GSR = "DISABLED";
    FD1P3AX data_out_i0_i10 (.D(temperature[10]), .SP(sys_clk_c_enable_27), 
            .CK(sys_clk_c), .Q(\hundres_1__N_345[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i10.GSR = "DISABLED";
    FD1P3AX data_out_i0_i9 (.D(temperature[9]), .SP(sys_clk_c_enable_27), 
            .CK(sys_clk_c), .Q(\hundres_1__N_345[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i9.GSR = "DISABLED";
    FD1P3AX data_out_i0_i8 (.D(temperature[8]), .SP(sys_clk_c_enable_27), 
            .CK(sys_clk_c), .Q(\ds18b20_data[8] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i8.GSR = "DISABLED";
    FD1P3AX data_out_i0_i7 (.D(temperature[7]), .SP(sys_clk_c_enable_27), 
            .CK(sys_clk_c), .Q(\ds18b20_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i7.GSR = "DISABLED";
    FD1P3AX data_out_i0_i6 (.D(temperature[6]), .SP(sys_clk_c_enable_27), 
            .CK(sys_clk_c), .Q(\ds18b20_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i5 (.D(temperature[5]), .SP(sys_clk_c_enable_27), 
            .CK(sys_clk_c), .Q(\ds18b20_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i5.GSR = "DISABLED";
    FD1P3AX data_out_i0_i4 (.D(temperature[4]), .SP(sys_clk_c_enable_27), 
            .CK(sys_clk_c), .Q(\ds18b20_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i4.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i7 (.D(data_wr[7]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(data_wr_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i6 (.D(data_wr[6]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(data_wr_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i4 (.D(data_wr[1]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(data_wr_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i4.GSR = "DISABLED";
    LUT4 i29904_3_lut_4_lut (.A(clk_1mhz), .B(n38203), .C(state[1]), .D(state[0]), 
         .Z(sys_clk_c_enable_265)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i29904_3_lut_4_lut.init = 16'h0004;
    FD1P3AX cnt_delay_i0_i0 (.D(n35721), .SP(sys_clk_c_enable_182), .CK(sys_clk_c), 
            .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    FD1P3AX state_i0_i0 (.D(state_2__N_519[0]), .SP(sys_clk_c_enable_48), 
            .CK(sys_clk_c), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i1 (.D(one_wire_out), .SP(sys_clk_c_enable_49), 
            .CK(sys_clk_c), .Q(temperature_buffer[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i1.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i2 (.D(one_wire_out), .SP(sys_clk_c_enable_50), 
            .CK(sys_clk_c), .Q(temperature_buffer[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i2.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i4 (.D(one_wire_out), .SP(sys_clk_c_enable_52), 
            .CK(sys_clk_c), .Q(temperature_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i4.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i5 (.D(one_wire_out), .SP(sys_clk_c_enable_53), 
            .CK(sys_clk_c), .Q(temperature_buffer[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i5.GSR = "DISABLED";
    LUT4 i29912_2_lut_3_lut_4_lut (.A(clk_1mhz), .B(n38203), .C(state[1]), 
         .D(\state_back_2__N_522[2] ), .Z(sys_clk_c_enable_332)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i29912_2_lut_3_lut_4_lut.init = 16'h0004;
    CCU2D add_48_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32757), .COUT(n32758), .S0(n263[5]), .S1(n263[6]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_7.INIT0 = 16'h5aaa;
    defparam add_48_7.INIT1 = 16'h5aaa;
    defparam add_48_7.INJECT1_0 = "NO";
    defparam add_48_7.INJECT1_1 = "NO";
    LUT4 i29936_2_lut_rep_632 (.A(\state_back_2__N_522[2] ), .B(state[1]), 
         .Z(n38219)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i29936_2_lut_rep_632.init = 16'h1111;
    LUT4 i29938_2_lut (.A(cnt_main[1]), .B(n35519), .Z(sys_clk_c_enable_253)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i29938_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_519_3_lut_4_lut (.A(cnt_write[1]), .B(n38212), .C(cnt_write[5]), 
         .D(cnt_write[4]), .Z(n38106)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_519_3_lut_4_lut.init = 16'he000;
    LUT4 i23725_4_lut_3_lut_4_lut (.A(cnt_write[1]), .B(n38212), .C(cnt_write[0]), 
         .D(cnt_write[4]), .Z(n30277)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i23725_4_lut_3_lut_4_lut.init = 16'h110f;
    FD1P3AX temperature_buffer_i0_i6 (.D(one_wire_out), .SP(sys_clk_c_enable_58), 
            .CK(sys_clk_c), .Q(temperature_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i6.GSR = "DISABLED";
    LUT4 i29665_3_lut_4_lut (.A(cnt_init[1]), .B(n38195), .C(state[0]), 
         .D(n33240), .Z(n30290)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam i29665_3_lut_4_lut.init = 16'hf707;
    LUT4 i1_2_lut (.A(state[1]), .B(cnt_main[3]), .Z(n35806)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i3782_2_lut_3_lut_4_lut (.A(cnt_read[2]), .B(n38209), .C(cnt_read[4]), 
         .D(cnt_read[3]), .Z(n208[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3782_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i6_4_lut (.A(n38097), .B(n36215), .C(cnt_write[5]), .D(state[1]), 
         .Z(sys_clk_c_enable_30)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i6_4_lut.init = 16'h0200;
    LUT4 i3761_2_lut (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n208[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3761_2_lut.init = 16'h6666;
    LUT4 i29375_3_lut_4_lut (.A(n38212), .B(cnt_write[4]), .C(cnt_write[0]), 
         .D(cnt_write[1]), .Z(n36215)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29375_3_lut_4_lut.init = 16'hfffe;
    LUT4 n35898_bdd_3_lut_4_lut (.A(cnt_main[1]), .B(n38218), .C(state[0]), 
         .D(cnt_main[3]), .Z(n37863)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam n35898_bdd_3_lut_4_lut.init = 16'h0080;
    PFUMX i30473 (.BLUT(n38104), .ALUT(n37891), .C0(state[1]), .Z(n37892));
    LUT4 i11568_2_lut_rep_513_3_lut_4_lut (.A(cnt_main[1]), .B(n38218), 
         .C(state[0]), .D(cnt_main[3]), .Z(n38100)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i11568_2_lut_rep_513_3_lut_4_lut.init = 16'h0f8f;
    FD1S3IX cnt_1mhz_3044__i0 (.D(n17[0]), .CK(sys_clk_c), .CD(n38203), 
            .Q(cnt_1mhz[0]));   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam cnt_1mhz_3044__i0.GSR = "ENABLED";
    PFUMX state_2__I_0_144_i7 (.BLUT(n2), .ALUT(n3), .C0(n36286), .Z(one_wire_N_679)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;
    FD1P3AX temperature_buffer_i0_i7 (.D(one_wire_out), .SP(sys_clk_c_enable_67), 
            .CK(sys_clk_c), .Q(temperature_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i7.GSR = "DISABLED";
    FD1P3IX cnt_read_i0_i0 (.D(n47), .SP(sys_clk_c_enable_265), .CD(n26298), 
            .CK(sys_clk_c), .Q(cnt_read[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    PFUMX state_2__I_0_i7 (.BLUT(n30290), .ALUT(n3_adj_1870), .C0(n36286), 
          .Z(one_wire_N_684)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;
    LUT4 n18113_bdd_4_lut (.A(n18113), .B(n19583), .C(cnt_read[5]), .D(cnt_read[0]), 
         .Z(n37955)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n18113_bdd_4_lut.init = 16'h00ca;
    LUT4 i1_2_lut_rep_517_3_lut_4_lut (.A(cnt_main[1]), .B(n38218), .C(cnt_main[3]), 
         .D(state[0]), .Z(n38104)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i1_2_lut_rep_517_3_lut_4_lut.init = 16'h0800;
    PFUMX i30456 (.BLUT(n37863), .ALUT(n37862), .C0(state[1]), .Z(n37864));
    LUT4 i1_3_lut_rep_539_4_lut (.A(cnt_read[0]), .B(n38220), .C(\state_back_2__N_522[2] ), 
         .D(n38221), .Z(n38126)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (C))) */ ;
    defparam i1_3_lut_rep_539_4_lut.init = 16'h0f2f;
    PFUMX i25120 (.BLUT(n35), .ALUT(n21), .C0(state[0]), .Z(n31663));
    PFUMX state_2__I_0_132_Mux_0_i7 (.BLUT(n3_adj_1871), .ALUT(n4), .C0(\state_back_2__N_522[2] ), 
          .Z(state_2__N_519[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;
    FD1P3AX i107_128 (.D(one_wire_N_684), .SP(one_wire_N_679), .CK(clk_1mhz), 
            .Q(one_wire_N_672)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i107_128.GSR = "ENABLED";
    PFUMX i29570 (.BLUT(n36408), .ALUT(n36409), .C0(cnt_write[5]), .Z(n36410));
    LUT4 i29298_2_lut_rep_626 (.A(state[1]), .B(cnt_main[3]), .Z(n38213)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29298_2_lut_rep_626.init = 16'heeee;
    LUT4 gnd_bdd_2_lut_30157_4_lut_4_lut (.A(n38219), .B(n37354), .C(n38099), 
         .D(n38100), .Z(sys_clk_c_enable_16)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam gnd_bdd_2_lut_30157_4_lut_4_lut.init = 16'hc040;
    LUT4 i1_3_lut (.A(\state_back_2__N_522[2] ), .B(n35787), .C(state[0]), 
         .Z(sys_clk_c_enable_182)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;
    defparam i1_3_lut.init = 16'h8484;
    LUT4 i29796_4_lut (.A(cnt_read[5]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(n38058), .Z(sys_clk_c_enable_267)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i29796_4_lut.init = 16'h0004;
    LUT4 n35898_bdd_3_lut_30455_4_lut (.A(n38217), .B(cnt_init[0]), .C(state[0]), 
         .D(n35898), .Z(n37862)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(54[14:22])
    defparam n35898_bdd_3_lut_30455_4_lut.init = 16'h00f4;
    FD1P3AX cnt_write_i0_i1 (.D(n35780), .SP(sys_clk_c_enable_294), .CK(sys_clk_c), 
            .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i2 (.D(n35779), .SP(sys_clk_c_enable_294), .CK(sys_clk_c), 
            .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i3 (.D(n35783), .SP(sys_clk_c_enable_294), .CK(sys_clk_c), 
            .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i4 (.D(n35781), .SP(sys_clk_c_enable_294), .CK(sys_clk_c), 
            .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i5 (.D(n35782), .SP(sys_clk_c_enable_294), .CK(sys_clk_c), 
            .Q(cnt_write[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i5.GSR = "ENABLED";
    L6MUX21 i29573 (.D0(n36411), .D1(n37950), .SD(cnt_write[5]), .Z(n3038[6]));
    LUT4 i12858_3_lut_rep_490_4_lut (.A(n38217), .B(cnt_init[0]), .C(state[0]), 
         .D(n19468), .Z(n38077)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(54[14:22])
    defparam i12858_3_lut_rep_490_4_lut.init = 16'hf404;
    LUT4 i20738_2_lut_rep_627 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n38214)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20738_2_lut_rep_627.init = 16'h8888;
    FD1P3AX num_delay_i0_i2 (.D(num_delay_19__N_611[2]), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i2.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i5 (.D(num_delay_19__N_611[5]), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i7 (.D(num_delay_19__N_611[7]), .SP(sys_clk_c_enable_124), 
            .CK(sys_clk_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i7.GSR = "DISABLED";
    LUT4 i2_3_lut (.A(clk_1mhz), .B(state[1]), .C(n38203), .Z(n35787)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut.init = 16'h1010;
    FD1P3AX num_delay_i0_i19 (.D(n38219), .SP(sys_clk_c_enable_131), .CK(sys_clk_c), 
            .Q(num_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i19.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut (.A(\state_back_2__N_522[2] ), .B(state[1]), .C(n6), 
         .D(n13), .Z(num_delay_19__N_611[4])) /* synthesis lut_function=(A (C)+!A ((D)+!B)) */ ;
    defparam i1_4_lut_4_lut.init = 16'hf5b1;
    FD1P3AX cnt_delay_i0_i19 (.D(cnt_delay_19__N_443[19]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i18 (.D(cnt_delay_19__N_443[18]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i17 (.D(cnt_delay_19__N_443[17]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i16 (.D(cnt_delay_19__N_443[16]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i15 (.D(cnt_delay_19__N_443[15]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i14 (.D(cnt_delay_19__N_443[14]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i13 (.D(cnt_delay_19__N_443[13]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i12 (.D(cnt_delay_19__N_443[12]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i11 (.D(cnt_delay_19__N_443[11]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i10 (.D(cnt_delay_19__N_443[10]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i9 (.D(cnt_delay_19__N_443[9]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i8 (.D(cnt_delay_19__N_443[8]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i7 (.D(cnt_delay_19__N_443[7]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i6 (.D(cnt_delay_19__N_443[6]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i5 (.D(cnt_delay_19__N_443[5]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i4 (.D(cnt_delay_19__N_443[4]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i3 (.D(cnt_delay_19__N_443[3]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i2 (.D(cnt_delay_19__N_443[2]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i1 (.D(cnt_delay_19__N_443[1]), .SP(sys_clk_c_enable_182), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    FD1P3AX state_back_i0_i2 (.D(\state_back_2__N_522[2] ), .SP(sys_clk_c_enable_194), 
            .CK(sys_clk_c), .Q(state_back[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i2.GSR = "ENABLED";
    FD1P3AX state_back_i0_i1 (.D(n38222), .SP(sys_clk_c_enable_195), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    CCU2D add_48_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32756), .COUT(n32757), .S0(n263[3]), .S1(n263[4]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_5.INIT0 = 16'h5aaa;
    defparam add_48_5.INIT1 = 16'h5aaa;
    defparam add_48_5.INJECT1_0 = "NO";
    defparam add_48_5.INJECT1_1 = "NO";
    CCU2D add_48_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32755), .COUT(n32756), .S0(n263[1]), .S1(n263[2]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_3.INIT0 = 16'h5aaa;
    defparam add_48_3.INIT1 = 16'h5aaa;
    defparam add_48_3.INJECT1_0 = "NO";
    defparam add_48_3.INJECT1_1 = "NO";
    CCU2D add_48_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32755), .S1(n263[0]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_1.INIT0 = 16'hF000;
    defparam add_48_1.INIT1 = 16'h5555;
    defparam add_48_1.INJECT1_0 = "NO";
    defparam add_48_1.INJECT1_1 = "NO";
    LUT4 i29616_1_lut_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), 
         .C(cnt_read[3]), .D(cnt_read[4]), .Z(n36442)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i29616_1_lut_2_lut_4_lut_4_lut.init = 16'hffb6;
    LUT4 i12960_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n19583)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (D)+!B (C+(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i12960_2_lut_4_lut_4_lut.init = 16'h006d;
    FD1S3IX cnt_1mhz_3044__i2 (.D(n17[2]), .CK(sys_clk_c), .CD(n38203), 
            .Q(cnt_1mhz[2]));   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam cnt_1mhz_3044__i2.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_3044__i1 (.D(n17[1]), .CK(sys_clk_c), .CD(n38203), 
            .Q(cnt_1mhz[1]));   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam cnt_1mhz_3044__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_633 (.A(cnt_read[4]), .B(cnt_read[5]), .Z(n38220)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_633.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_then_4_lut (.A(\state_back_2__N_522[2] ), 
         .B(n38077), .C(n38126), .D(n38152), .Z(n38273)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_3_lut_4_lut_then_4_lut.init = 16'he000;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_else_4_lut (.A(\state_back_2__N_522[2] ), 
         .B(n38126), .C(n38152), .D(n38100), .Z(n38272)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_3_lut_4_lut_else_4_lut.init = 16'hc080;
    CCU2D sub_2408_add_2_21 (.A0(cnt_delay[19]), .B0(num_delay[19]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32818), .S1(n261));
    defparam sub_2408_add_2_21.INIT0 = 16'h5999;
    defparam sub_2408_add_2_21.INIT1 = 16'h0000;
    defparam sub_2408_add_2_21.INJECT1_0 = "NO";
    defparam sub_2408_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_2408_add_2_19 (.A0(cnt_delay[17]), .B0(num_delay[19]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32817), .COUT(n32818));
    defparam sub_2408_add_2_19.INIT0 = 16'h5999;
    defparam sub_2408_add_2_19.INIT1 = 16'h5555;
    defparam sub_2408_add_2_19.INJECT1_0 = "NO";
    defparam sub_2408_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_2408_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(num_delay[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32816), .COUT(n32817));
    defparam sub_2408_add_2_17.INIT0 = 16'h5555;
    defparam sub_2408_add_2_17.INIT1 = 16'h5999;
    defparam sub_2408_add_2_17.INJECT1_0 = "NO";
    defparam sub_2408_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_2408_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[19]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32815), .COUT(n32816));
    defparam sub_2408_add_2_15.INIT0 = 16'h5999;
    defparam sub_2408_add_2_15.INIT1 = 16'h5999;
    defparam sub_2408_add_2_15.INJECT1_0 = "NO";
    defparam sub_2408_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_2408_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32814), .COUT(n32815));
    defparam sub_2408_add_2_13.INIT0 = 16'h5555;
    defparam sub_2408_add_2_13.INIT1 = 16'h5999;
    defparam sub_2408_add_2_13.INJECT1_0 = "NO";
    defparam sub_2408_add_2_13.INJECT1_1 = "NO";
    FD1P3AX temperature_i0_i4 (.D(temperature_buffer[4]), .SP(sys_clk_c_enable_250), 
            .CK(sys_clk_c), .Q(temperature[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i4.GSR = "ENABLED";
    CCU2D sub_2408_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32813), .COUT(n32814));
    defparam sub_2408_add_2_11.INIT0 = 16'h5555;
    defparam sub_2408_add_2_11.INIT1 = 16'h5555;
    defparam sub_2408_add_2_11.INJECT1_0 = "NO";
    defparam sub_2408_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_2408_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32812), .COUT(n32813));
    defparam sub_2408_add_2_9.INIT0 = 16'h5999;
    defparam sub_2408_add_2_9.INIT1 = 16'h5999;
    defparam sub_2408_add_2_9.INJECT1_0 = "NO";
    defparam sub_2408_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_2408_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32811), .COUT(n32812));
    defparam sub_2408_add_2_7.INIT0 = 16'h5999;
    defparam sub_2408_add_2_7.INIT1 = 16'h5999;
    defparam sub_2408_add_2_7.INJECT1_0 = "NO";
    defparam sub_2408_add_2_7.INJECT1_1 = "NO";
    LUT4 i11527_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n18113)) /* synthesis lut_function=(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i11527_3_lut_4_lut.init = 16'hb6db;
    LUT4 state_2__I_0_132_Mux_2_i4_3_lut_3_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), 
         .C(state_back[2]), .D(state[0]), .Z(n4_adj_1872)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam state_2__I_0_132_Mux_2_i4_3_lut_3_lut_4_lut.init = 16'hf077;
    CCU2D sub_2408_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32810), .COUT(n32811));
    defparam sub_2408_add_2_5.INIT0 = 16'h5999;
    defparam sub_2408_add_2_5.INIT1 = 16'h5999;
    defparam sub_2408_add_2_5.INJECT1_0 = "NO";
    defparam sub_2408_add_2_5.INJECT1_1 = "NO";
    LUT4 state_2__I_0_144_i3_4_lut_4_lut_4_lut_4_lut (.A(state[0]), .B(\state_back_2__N_522[2] ), 
         .C(n37955), .D(state[1]), .Z(n3)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;
    defparam state_2__I_0_144_i3_4_lut_4_lut_4_lut_4_lut.init = 16'h1151;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(state[0]), .B(\state_back_2__N_522[2] ), 
         .C(state[1]), .D(n38267), .Z(num_delay_19__N_611[8])) /* synthesis lut_function=(!(A (B+(C))+!A (B+!((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h1303;
    CCU2D sub_2408_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32809), .COUT(n32810));
    defparam sub_2408_add_2_3.INIT0 = 16'h5999;
    defparam sub_2408_add_2_3.INIT1 = 16'h5999;
    defparam sub_2408_add_2_3.INJECT1_0 = "NO";
    defparam sub_2408_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_2408_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n32809));
    defparam sub_2408_add_2_1.INIT0 = 16'h0000;
    defparam sub_2408_add_2_1.INIT1 = 16'h5999;
    defparam sub_2408_add_2_1.INJECT1_0 = "NO";
    defparam sub_2408_add_2_1.INJECT1_1 = "NO";
    LUT4 i20552_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[2]), 
         .D(cnt_write[1]), .Z(n13308)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i20552_4_lut_4_lut_4_lut.init = 16'h1041;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut_adj_222 (.A(cnt_write[0]), .B(cnt_write[2]), 
         .C(cnt_write[1]), .D(cnt_write[3]), .Z(n7_adj_1873)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C (D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i1_4_lut_4_lut_4_lut_4_lut_adj_222.init = 16'h1004;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n13320)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h4014;
    PFUMX state_2__I_0_132_Mux_0_i2 (.BLUT(state_2__N_558[0]), .ALUT(state_2__N_555[0]), 
          .C0(state[0]), .Z(n2_adj_1874)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;
    LUT4 i18379_then_4_lut (.A(cnt_write[5]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[4]), .Z(n38315)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C+!(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i18379_then_4_lut.init = 16'heb7e;
    LUT4 i18379_else_4_lut (.A(cnt_write[5]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[4]), .Z(n38314)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C))) */ ;
    defparam i18379_else_4_lut.init = 16'hfe96;
    LUT4 i1_2_lut_rep_574_3_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(cnt_read[0]), 
         .Z(n38161)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_574_3_lut.init = 16'h7070;
    LUT4 mux_1056_Mux_0_i31_3_lut_else_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), 
         .C(cnt_read[3]), .D(cnt_read[2]), .Z(n38326)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam mux_1056_Mux_0_i31_3_lut_else_4_lut.init = 16'h41a4;
    FD1P3AX temperature_i0_i5 (.D(temperature_buffer[5]), .SP(sys_clk_c_enable_250), 
            .CK(sys_clk_c), .Q(temperature[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i5.GSR = "ENABLED";
    FD1P3AX temperature_i0_i6 (.D(temperature_buffer[6]), .SP(sys_clk_c_enable_250), 
            .CK(sys_clk_c), .Q(temperature[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_i0_i7 (.D(temperature_buffer[7]), .SP(sys_clk_c_enable_250), 
            .CK(sys_clk_c), .Q(temperature[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i7.GSR = "ENABLED";
    FD1P3AX temperature_i0_i8 (.D(temperature_buffer[0]), .SP(sys_clk_c_enable_253), 
            .CK(sys_clk_c), .Q(temperature[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i8.GSR = "ENABLED";
    FD1P3AX temperature_i0_i9 (.D(temperature_buffer[1]), .SP(sys_clk_c_enable_253), 
            .CK(sys_clk_c), .Q(temperature[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i9.GSR = "ENABLED";
    FD1P3AX temperature_i0_i10 (.D(temperature_buffer[2]), .SP(sys_clk_c_enable_253), 
            .CK(sys_clk_c), .Q(temperature[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i10.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_645 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n38232)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_645.init = 16'hbbbb;
    PFUMX i30327 (.BLUT(n37665), .ALUT(n37664), .C0(cnt_write[5]), .Z(n37666));
    LUT4 mux_905_Mux_2_i38_4_lut_then_3_lut (.A(data_wr_buffer[6]), .B(cnt_write[2]), 
         .C(cnt_write[0]), .Z(n38351)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam mux_905_Mux_2_i38_4_lut_then_3_lut.init = 16'h8080;
    LUT4 i14_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(state[0]), 
         .D(n3038[6]), .Z(n13)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i14_3_lut_4_lut.init = 16'hfb0b;
    LUT4 mux_905_Mux_2_i38_4_lut_else_3_lut (.A(cnt_write[2]), .B(data_wr_buffer[4]), 
         .C(cnt_write[0]), .Z(n38350)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam mux_905_Mux_2_i38_4_lut_else_3_lut.init = 16'h4040;
    LUT4 i29615_1_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n36441)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;
    defparam i29615_1_lut_4_lut.init = 16'hdb6d;
    LUT4 n30265_bdd_4_lut_then_4_lut (.A(cnt_write[4]), .B(cnt_write[3]), 
         .C(cnt_write[2]), .D(cnt_write[1]), .Z(n38354)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam n30265_bdd_4_lut_then_4_lut.init = 16'haaa8;
    LUT4 n30265_bdd_4_lut_else_4_lut (.A(cnt_write[4]), .B(cnt_write[3]), 
         .C(cnt_write[0]), .D(cnt_write[2]), .Z(n38353)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam n30265_bdd_4_lut_else_4_lut.init = 16'hf0e0;
    LUT4 i15028_3_lut_then_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n38357)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i15028_3_lut_then_4_lut.init = 16'h1a41;
    LUT4 i15028_3_lut_else_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n38356)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B (C+!(D))+!B ((D)+!C))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i15028_3_lut_else_4_lut.init = 16'ha41a;
    LUT4 i1_2_lut_3_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(cnt_read[0]), 
         .Z(n6_adj_1875)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i3_4_lut_rep_480 (.A(cnt_read[1]), .B(cnt_read[4]), .C(cnt_read[5]), 
         .D(n20711), .Z(n38067)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i3_4_lut_rep_480.init = 16'hfffb;
    LUT4 i1_2_lut_rep_481 (.A(cnt_read[4]), .B(n20711), .Z(n38068)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_481.init = 16'heeee;
    LUT4 i1_2_lut_rep_649 (.A(cnt_write[2]), .B(cnt_write[1]), .Z(n38236)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_649.init = 16'h2222;
    LUT4 cnt_write_4__bdd_3_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), 
         .C(data_wr_buffer[7]), .D(cnt_write[4]), .Z(n37251)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_4__bdd_3_lut_4_lut.init = 16'h2000;
    LUT4 i2_3_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .D(data_wr_buffer[7]), .Z(n33082)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut.init = 16'h2000;
    LUT4 n25024_bdd_4_lut_3_lut_rep_650 (.A(cnt_write[2]), .B(cnt_write[1]), 
         .C(cnt_write[3]), .Z(n38237)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam n25024_bdd_4_lut_3_lut_rep_650.init = 16'hd6d6;
    LUT4 i29657_3_lut_4_lut_4_lut (.A(cnt_write[0]), .B(n37262), .C(cnt_write[4]), 
         .D(n38237), .Z(n36408)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i29657_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_rep_471_3_lut (.A(cnt_read[4]), .B(n20711), .C(cnt_read[1]), 
         .Z(n38058)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_471_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[4]), 
         .C(n38212), .D(cnt_write[1]), .Z(n30267)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i1_4_lut_4_lut_adj_223 (.A(cnt_write[0]), .B(n36149), .C(cnt_write[2]), 
         .D(cnt_write[5]), .Z(n35525)) /* synthesis lut_function=((B (D)+!B ((D)+!C))+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i1_4_lut_4_lut_adj_223.init = 16'hff57;
    LUT4 i2_3_lut_then_3_lut (.A(state[0]), .B(state[1]), .C(n261), .Z(n38288)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;
    defparam i2_3_lut_then_3_lut.init = 16'h3131;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(n38159), 
         .D(cnt_write[5]), .Z(n121)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hfff4;
    LUT4 n25024_bdd_4_lut_30109_4_lut (.A(cnt_write[0]), .B(cnt_write[2]), 
         .C(cnt_write[3]), .D(cnt_write[1]), .Z(n37262)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam n25024_bdd_4_lut_30109_4_lut.init = 16'h4450;
    LUT4 cnt_write_4__bdd_4_lut_30101_3_lut (.A(cnt_write[0]), .B(cnt_write[5]), 
         .C(n38154), .Z(n37156)) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam cnt_write_4__bdd_4_lut_30101_3_lut.init = 16'hd1d1;
    LUT4 i29569_4_lut_4_lut (.A(cnt_write[0]), .B(n38236), .C(cnt_write[4]), 
         .D(n25043), .Z(n36409)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i29569_4_lut_4_lut.init = 16'h5554;
    LUT4 i2_3_lut_else_3_lut (.A(cnt_main[3]), .B(state[0]), .C(n38196), 
         .D(state[1]), .Z(n38287)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_else_3_lut.init = 16'hfff7;
    LUT4 i20660_2_lut_rep_651 (.A(cnt_write[0]), .B(cnt_write[1]), .Z(n38238)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20660_2_lut_rep_651.init = 16'h8888;
    LUT4 i3727_2_lut_rep_582_3_lut (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(cnt_write[2]), .Z(n38169)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3727_2_lut_rep_582_3_lut.init = 16'h8080;
    LUT4 i3734_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n10230)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3734_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i20693_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n27306)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i20693_2_lut_3_lut_4_lut.init = 16'hfff8;
    LUT4 i39_2_lut_3_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .Z(n25043)) /* synthesis lut_function=(!(A (C)+!A !(B (C)+!B !(C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i39_2_lut_3_lut.init = 16'h4b4b;
    LUT4 i56_4_lut (.A(cnt_main[3]), .B(n35898), .C(state[1]), .D(n38160), 
         .Z(n52)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i56_4_lut.init = 16'hcacf;
    LUT4 i29311_2_lut (.A(cnt_write[4]), .B(cnt_write[3]), .Z(n36149)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29311_2_lut.init = 16'heeee;
    FD1P3IX cnt_read_i0_i1 (.D(n208[1]), .SP(sys_clk_c_enable_265), .CD(n26298), 
            .CK(sys_clk_c), .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_224 (.A(\state_back_2__N_522[2] ), .B(cnt_write[5]), 
         .C(n30277), .D(n30267), .Z(n21)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_224.init = 16'h5140;
    LUT4 i54_3_lut_4_lut_4_lut (.A(\state_back_2__N_522[2] ), .B(n38162), 
         .C(n38161), .D(state[1]), .Z(n35)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;
    defparam i54_3_lut_4_lut_4_lut.init = 16'h44f4;
    LUT4 i29930_4_lut_4_lut (.A(\state_back_2__N_522[2] ), .B(n35_adj_1876), 
         .C(n38126), .D(n38124), .Z(sys_clk_c_enable_334)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;
    defparam i29930_4_lut_4_lut.init = 16'hb000;
    LUT4 i29901_3_lut_4_lut_4_lut (.A(\state_back_2__N_522[2] ), .B(n38304), 
         .C(n38203), .D(clk_1mhz), .Z(sys_clk_c_enable_279)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i29901_3_lut_4_lut_4_lut.init = 16'h00b0;
    LUT4 i1_4_lut (.A(state[0]), .B(state[1]), .C(n15), .D(n18_adj_1877), 
         .Z(state_2__N_519[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_2_lut_4_lut_4_lut (.A(\state_back_2__N_522[2] ), .B(state[0]), 
         .C(n19468), .D(n38162), .Z(n21_adj_1878)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_225 (.A(\state_back_2__N_522[2] ), .B(n37209), 
         .C(n35568), .D(n56), .Z(sys_clk_c_enable_281)) /* synthesis lut_function=(A (C (D))+!A (B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_225.init = 16'he040;
    LUT4 i30_4_lut_4_lut (.A(cnt_write[5]), .B(n30277), .C(state[0]), 
         .D(n38162), .Z(n29)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i30_4_lut_4_lut.init = 16'hdfd0;
    LUT4 i1_4_lut_adj_226 (.A(\state_back_2__N_522[2] ), .B(state[0]), .C(n36111), 
         .D(cnt_init[0]), .Z(n18_adj_1877)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i1_4_lut_adj_226.init = 16'haaab;
    LUT4 i3674_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i3674_2_lut_3_lut.init = 16'h7878;
    LUT4 i3484_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n6_adj_1879)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i3484_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i29406_2_lut_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[3]), 
         .D(state[1]), .Z(n35755)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i29406_2_lut_3_lut_4_lut.init = 16'h0007;
    LUT4 i3681_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i3681_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX cnt_read_i0_i2 (.D(n208[2]), .SP(sys_clk_c_enable_265), .CD(n26298), 
            .CK(sys_clk_c), .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    LUT4 state_2__I_0_132_Mux_0_i4_4_lut (.A(n33310), .B(state_back[0]), 
         .C(state[0]), .D(n38220), .Z(n4)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam state_2__I_0_132_Mux_0_i4_4_lut.init = 16'hc5cf;
    LUT4 i1_2_lut_adj_227 (.A(state_back[1]), .B(n261), .Z(n6_adj_1881)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_adj_227.init = 16'h8888;
    FD1P3IX cnt_read_i0_i3 (.D(n208[3]), .SP(sys_clk_c_enable_265), .CD(n26298), 
            .CK(sys_clk_c), .Q(cnt_read[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i3.GSR = "ENABLED";
    LUT4 one_wire_I_0_4_lut (.A(one_wire_out), .B(n35739), .C(one_wire_N_679), 
         .D(n4_adj_1882), .Z(one_wire_N_674)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam one_wire_I_0_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_228 (.A(n37954), .B(\state_back_2__N_522[2] ), .C(n37956), 
         .D(cnt_write[5]), .Z(n4_adj_1882)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_228.init = 16'h3022;
    FD1P3IX cnt_read_i0_i4 (.D(n208[4]), .SP(sys_clk_c_enable_265), .CD(n26298), 
            .CK(sys_clk_c), .Q(cnt_read[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i5 (.D(n208[5]), .SP(sys_clk_c_enable_265), .CD(n26298), 
            .CK(sys_clk_c), .Q(cnt_read[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i5.GSR = "ENABLED";
    LUT4 state_2__N_558_2__bdd_4_lut (.A(n38162), .B(n19468), .C(n38222), 
         .D(state[0]), .Z(n37354)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam state_2__N_558_2__bdd_4_lut.init = 16'hcfaf;
    FD1P3AX temperature_buffer_i0_i0 (.D(one_wire_out), .SP(sys_clk_c_enable_267), 
            .CK(sys_clk_c), .Q(temperature_buffer[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i0.GSR = "DISABLED";
    FD1P3IX num_delay_i0_i0 (.D(n6), .SP(sys_clk_c_enable_336), .CD(n33269), 
            .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_229 (.A(state[0]), .B(state[1]), .Z(n35739)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_229.init = 16'h8888;
    FD1P3IX cnt_init_i0_i0 (.D(n38207), .SP(sys_clk_c_enable_347), .CD(n21910), 
            .CK(sys_clk_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    LUT4 i2_4_lut_4_lut (.A(state[0]), .B(\state_back_2__N_522[2] ), .C(n38220), 
         .D(n35787), .Z(n26298)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (D)))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h5100;
    LUT4 i20485_4_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n38232), 
         .D(\state_back_2__N_522[2] ), .Z(num_delay_19__N_611[7])) /* synthesis lut_function=(!(A (B+(D))+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i20485_4_lut_4_lut_4_lut.init = 16'h0073;
    LUT4 i15276_4_lut_4_lut (.A(state[0]), .B(cnt_main[3]), .C(n6_adj_1879), 
         .D(sys_clk_c_enable_332), .Z(n21923)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;
    defparam i15276_4_lut_4_lut.init = 16'hd500;
    LUT4 i1_4_lut_4_lut_adj_230 (.A(state[0]), .B(n37), .C(state[1]), 
         .D(n52), .Z(n35_adj_1876)) /* synthesis lut_function=(A (D)+!A (B+((D)+!C))) */ ;
    defparam i1_4_lut_4_lut_adj_230.init = 16'hff45;
    LUT4 i1_4_lut_adj_231 (.A(n38126), .B(n38124), .C(\state_back_2__N_522[2] ), 
         .D(n98), .Z(sys_clk_c_enable_345)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_231.init = 16'h8880;
    LUT4 i42_4_lut_4_lut (.A(state[0]), .B(n38161), .C(\state_back_2__N_522[2] ), 
         .D(n38104), .Z(n23)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i42_4_lut_4_lut.init = 16'h4f40;
    LUT4 i99_4_lut (.A(n37), .B(n121), .C(state[0]), .D(n37666), .Z(n74)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i99_4_lut.init = 16'hc505;
    LUT4 i1_4_lut_adj_232 (.A(\state_back_2__N_522[2] ), .B(n38141), .C(n35739), 
         .D(n36410), .Z(num_delay_19__N_611[1])) /* synthesis lut_function=(A+(B (C (D))+!B (C))) */ ;
    defparam i1_4_lut_adj_232.init = 16'hfaba;
    LUT4 i3703_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n109[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(111[24:39])
    defparam i3703_3_lut.init = 16'h6a6a;
    LUT4 state_2__I_0_132_Mux_0_i3_4_lut_4_lut (.A(state[0]), .B(state[1]), 
         .C(n2_adj_1874), .D(state_2__N_561[0]), .Z(n3_adj_1871)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;
    defparam state_2__I_0_132_Mux_0_i3_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i1_3_lut_4_lut (.A(state[1]), .B(n38106), .C(cnt_write[0]), .D(cnt_write[1]), 
         .Z(n35780)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0220;
    PFUMX i30076 (.BLUT(n37208), .ALUT(n37207), .C0(state[1]), .Z(n37209));
    LUT4 i1_3_lut_4_lut_adj_233 (.A(state[1]), .B(n38106), .C(n38238), 
         .D(cnt_write[2]), .Z(n35779)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_233.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_adj_234 (.A(state[1]), .B(n38106), .C(n38169), 
         .D(cnt_write[3]), .Z(n35783)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_234.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_adj_235 (.A(state[1]), .B(n38106), .C(n10230), 
         .D(cnt_write[4]), .Z(n35781)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_235.init = 16'h0220;
    LUT4 i20739_1_lut_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7_adj_1869)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i20739_1_lut_2_lut.init = 16'h7777;
    LUT4 i1_4_lut_4_lut_adj_236 (.A(cnt_init[2]), .B(state[0]), .C(n3038[6]), 
         .D(n38222), .Z(num_delay_19__N_611[6])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam i1_4_lut_4_lut_adj_236.init = 16'hd100;
    LUT4 i29274_3_lut_3_lut (.A(cnt_init[2]), .B(one_wire_out), .C(cnt_init[1]), 
         .Z(n36111)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam i29274_3_lut_3_lut.init = 16'hfdfd;
    FD1P3AX state_i0_i1 (.D(state_2__N_519[1]), .SP(sys_clk_c_enable_279), 
            .CK(sys_clk_c), .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3AX state_i0_i2 (.D(state_2__N_519[2]), .SP(sys_clk_c_enable_281), 
            .CK(sys_clk_c), .Q(\state_back_2__N_522[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_i0_i2.GSR = "ENABLED";
    LUT4 i5033_1_lut (.A(one_wire_N_672), .Z(n11544)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(63[2] 264[5])
    defparam i5033_1_lut.init = 16'h5555;
    LUT4 i26132_1_lut (.A(cnt_1mhz[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam i26132_1_lut.init = 16'h5555;
    LUT4 i6126_2_lut (.A(cnt_write[4]), .B(cnt_write[5]), .Z(n12700)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i6126_2_lut.init = 16'h8888;
    LUT4 i29992_2_lut (.A(\state_back_2__N_522[2] ), .B(state[1]), .Z(n36286)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i29992_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_680 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n38267)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_680.init = 16'h2222;
    LUT4 n19468_bdd_3_lut_30475_3_lut_3_lut (.A(cnt_init[0]), .B(cnt_init[1]), 
         .C(cnt_init[2]), .Z(n37890)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam n19468_bdd_3_lut_30475_3_lut_3_lut.init = 16'h2a2a;
    FD1P3IX cnt_main_i0_i0 (.D(n25[0]), .SP(sys_clk_c_enable_332), .CD(n21923), 
            .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i0 (.D(n33222), .SP(sys_clk_c_enable_294), .CK(sys_clk_c), 
            .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i20413_2_lut_rep_634 (.A(state[0]), .B(state[1]), .Z(n38221)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20413_2_lut_rep_634.init = 16'heeee;
    LUT4 i5165_1_lut (.A(cnt_read[0]), .Z(n47)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i5165_1_lut.init = 16'h5555;
    LUT4 n37251_bdd_4_lut (.A(n37251), .B(n37250), .C(cnt_write[3]), .D(cnt_write[0]), 
         .Z(n37954)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n37251_bdd_4_lut.init = 16'hca00;
    LUT4 i2_4_lut_4_lut_adj_237 (.A(n38355), .B(state[0]), .C(n121), .D(n38149), 
         .Z(n35898)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;
    defparam i2_4_lut_4_lut_adj_237.init = 16'hcc8c;
    LUT4 i15262_3_lut_4_lut (.A(state[0]), .B(n38128), .C(state[1]), .D(n38217), 
         .Z(n21910)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i15262_3_lut_4_lut.init = 16'h1101;
    LUT4 i2_3_lut_4_lut_adj_238 (.A(\state_back_2__N_522[2] ), .B(n38124), 
         .C(n38123), .D(n35806), .Z(sys_clk_c_enable_27)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_238.init = 16'h4000;
    LUT4 i2_3_lut_4_lut_adj_239 (.A(n38124), .B(n38215), .C(n38213), .D(n25[1]), 
         .Z(sys_clk_c_enable_20)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_239.init = 16'h0200;
    LUT4 i1_3_lut_4_lut_adj_240 (.A(n38126), .B(n38152), .C(\state_back_2__N_522[2] ), 
         .D(n19455), .Z(sys_clk_c_enable_194)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_240.init = 16'h8880;
    LUT4 i12832_3_lut_4_lut (.A(n38125), .B(state[0]), .C(state[1]), .D(n38077), 
         .Z(n19455)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i12832_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i1_4_lut_adj_241 (.A(cnt_write[5]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .D(n38159), .Z(n24969)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_adj_241.init = 16'hafae;
    LUT4 i100_3_lut_4_lut (.A(cnt_main[3]), .B(n38123), .C(state[1]), 
         .D(n74), .Z(n98)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i100_3_lut_4_lut.init = 16'hf404;
    LUT4 i1_2_lut_3_lut_adj_242 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[0]), .Z(n35721)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_242.init = 16'h2020;
    LUT4 i3696_2_lut_rep_636 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n38223)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(111[24:39])
    defparam i3696_2_lut_rep_636.init = 16'h6666;
    LUT4 i29831_3_lut_4_lut (.A(cnt_write[5]), .B(n38131), .C(cnt_write[0]), 
         .D(state[1]), .Z(n33222)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i29831_3_lut_4_lut.init = 16'h0700;
    LUT4 i1_2_lut_3_lut_adj_243 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[19]), .Z(cnt_delay_19__N_443[19])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_243.init = 16'h2020;
    LUT4 state_0__bdd_4_lut_30089 (.A(cnt_main[3]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(cnt_main[2]), .Z(n37189)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C)))) */ ;
    defparam state_0__bdd_4_lut_30089.init = 16'h4060;
    LUT4 cnt_main_3__bdd_4_lut_30888 (.A(cnt_main[3]), .B(cnt_main[0]), 
         .C(cnt_main[2]), .D(state[0]), .Z(n37208)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam cnt_main_3__bdd_4_lut_30888.init = 16'hfdff;
    LUT4 n24969_bdd_4_lut (.A(n24969), .B(cnt_write[0]), .C(n37156), .D(cnt_write[4]), 
         .Z(n19468)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;
    defparam n24969_bdd_4_lut.init = 16'hf022;
    LUT4 i20114_2_lut_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(state_2__N_558[0])) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(111[24:39])
    defparam i20114_2_lut_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i1_4_lut_adj_244 (.A(cnt_write[5]), .B(n38079), .C(cnt_write[4]), 
         .D(n10230), .Z(n35782)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_adj_244.init = 16'h4888;
    LUT4 cnt_main_0__bdd_4_lut (.A(cnt_main[0]), .B(cnt_main[3]), .C(cnt_main[2]), 
         .D(cnt_main[1]), .Z(state_2__N_561[0])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(D)))) */ ;
    defparam cnt_main_0__bdd_4_lut.init = 16'h1322;
    LUT4 i1_2_lut_3_lut_adj_245 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[18]), .Z(cnt_delay_19__N_443[18])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_245.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_246 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[17]), .Z(cnt_delay_19__N_443[17])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_246.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_247 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[16]), .Z(cnt_delay_19__N_443[16])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_247.init = 16'h2020;
    LUT4 i23739_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n39468), .D(\state_back_2__N_522[2] ), 
         .Z(n3_adj_1870)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;
    defparam i23739_4_lut_4_lut.init = 16'hfeaa;
    LUT4 mux_54_Mux_2_i7_4_lut (.A(n21737), .B(n6), .C(\state_back_2__N_522[2] ), 
         .D(state[1]), .Z(num_delay_19__N_611[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_2_i7_4_lut.init = 16'hc5c0;
    LUT4 i15090_2_lut (.A(cnt_init[2]), .B(state[0]), .Z(n21737)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i15090_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_248 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[15]), .Z(cnt_delay_19__N_443[15])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_248.init = 16'h2020;
    LUT4 i2_3_lut_4_lut_adj_249 (.A(cnt_write[4]), .B(n38154), .C(cnt_write[0]), 
         .D(n38316), .Z(n33240)) /* synthesis lut_function=(A ((D)+!C)+!A (B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut_adj_249.init = 16'hff4f;
    LUT4 i1_3_lut_4_lut_adj_250 (.A(state[0]), .B(n38149), .C(state[1]), 
         .D(\state_back_2__N_522[2] ), .Z(n39)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_adj_250.init = 16'hff7f;
    LUT4 mux_54_Mux_5_i7_4_lut (.A(n21737), .B(n6), .C(\state_back_2__N_522[2] ), 
         .D(state[1]), .Z(num_delay_19__N_611[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_5_i7_4_lut.init = 16'hc5cf;
    LUT4 i3789_3_lut_4_lut (.A(cnt_read[3]), .B(n38158), .C(cnt_read[4]), 
         .D(cnt_read[5]), .Z(n208[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3789_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_3_lut_adj_251 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[14]), .Z(cnt_delay_19__N_443[14])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_251.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_252 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[13]), .Z(cnt_delay_19__N_443[13])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_252.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_253 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[12]), .Z(cnt_delay_19__N_443[12])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_253.init = 16'h2020;
    LUT4 i1_2_lut_rep_628 (.A(\state_back_2__N_522[2] ), .B(state[0]), .Z(n38215)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_628.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_254 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[11]), .Z(cnt_delay_19__N_443[11])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_254.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_255 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[10]), .Z(cnt_delay_19__N_443[10])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_255.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_256 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[9]), .Z(cnt_delay_19__N_443[9])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_256.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_257 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[8]), .Z(cnt_delay_19__N_443[8])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_257.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_258 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[7]), .Z(cnt_delay_19__N_443[7])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_258.init = 16'h2020;
    LUT4 i26_3_lut_4_lut (.A(cnt_main[3]), .B(n38160), .C(state[1]), .D(n19468), 
         .Z(n12)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i26_3_lut_4_lut.init = 16'hf404;
    LUT4 i1_2_lut_rep_512_4_lut (.A(n38221), .B(\state_back_2__N_522[2] ), 
         .C(n38161), .D(n38152), .Z(n38099)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C (D))+!B (D)))) */ ;
    defparam i1_2_lut_rep_512_4_lut.init = 16'h7300;
    LUT4 i1_2_lut_3_lut_adj_259 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[6]), .Z(cnt_delay_19__N_443[6])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_259.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_260 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[5]), .Z(cnt_delay_19__N_443[5])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_260.init = 16'h2020;
    LUT4 i2_3_lut_4_lut_adj_261 (.A(\state_back_2__N_522[2] ), .B(n38152), 
         .C(state[0]), .D(state[1]), .Z(sys_clk_c_enable_294)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_261.init = 16'h4004;
    LUT4 i1_2_lut_3_lut_adj_262 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[4]), .Z(cnt_delay_19__N_443[4])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_262.init = 16'h2020;
    LUT4 i1_2_lut_rep_492_3_lut_4_lut (.A(cnt_write[4]), .B(n38154), .C(state[1]), 
         .D(cnt_write[5]), .Z(n38079)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i1_2_lut_rep_492_3_lut_4_lut.init = 16'hd0f0;
    LUT4 n36441_bdd_4_lut (.A(n36441), .B(n36442), .C(cnt_read[5]), .D(cnt_read[0]), 
         .Z(n39468)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n36441_bdd_4_lut.init = 16'hffca;
    FD1P3IX cnt_main_i0_i1 (.D(n25[1]), .SP(sys_clk_c_enable_332), .CD(n21923), 
            .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(n25[2]), .SP(sys_clk_c_enable_332), .CD(n21923), 
            .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n25[3]), .SP(sys_clk_c_enable_332), .CD(n21923), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i8 (.D(num_delay_19__N_611[8]), .SP(sys_clk_c_enable_333), 
            .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i8.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i6 (.D(num_delay_19__N_611[6]), .SP(sys_clk_c_enable_334), 
            .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i6.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i4 (.D(num_delay_19__N_611[4]), .SP(sys_clk_c_enable_335), 
            .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i4.GSR = "DISABLED";
    FD1P3IX num_delay_i0_i3 (.D(n38358), .SP(sys_clk_c_enable_336), .CD(n33269), 
            .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i3.GSR = "DISABLED";
    LUT4 n30265_bdd_4_lut_30329 (.A(n38154), .B(n35525), .C(cnt_write[0]), 
         .D(cnt_write[4]), .Z(n37664)) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C+(D))+!B)) */ ;
    defparam n30265_bdd_4_lut_30329.init = 16'h880c;
    LUT4 i29896_2_lut_rep_635 (.A(state[1]), .B(\state_back_2__N_522[2] ), 
         .Z(n38222)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i29896_2_lut_rep_635.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_263 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[3]), .Z(cnt_delay_19__N_443[3])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_263.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_264 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[2]), .Z(cnt_delay_19__N_443[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_264.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_265 (.A(\state_back_2__N_522[2] ), .B(n261), 
         .C(n263[1]), .Z(cnt_delay_19__N_443[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_265.init = 16'h2020;
    LUT4 i26141_3_lut (.A(cnt_1mhz[2]), .B(cnt_1mhz[1]), .C(cnt_1mhz[0]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam i26141_3_lut.init = 16'h6a6a;
    LUT4 i26134_2_lut (.A(cnt_1mhz[1]), .B(cnt_1mhz[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam i26134_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n38222), .B(n38057), .C(n38126), .D(n38077), 
         .Z(sys_clk_c_enable_131)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hc040;
    LUT4 i29941_2_lut (.A(cnt_main[1]), .B(n35519), .Z(sys_clk_c_enable_250)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i29941_2_lut.init = 16'h1111;
    LUT4 i2_3_lut_4_lut_4_lut_adj_266 (.A(n38222), .B(n38103), .C(n38078), 
         .D(n38077), .Z(sys_clk_c_enable_124)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_4_lut_adj_266.init = 16'hc040;
    LUT4 i4_4_lut (.A(n38196), .B(n38152), .C(cnt_main[3]), .D(n61), 
         .Z(n35519)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i4_4_lut.init = 16'hffbf;
    LUT4 i19955_3_lut (.A(state[0]), .B(\state_back_2__N_522[2] ), .C(state[1]), 
         .Z(state_back_2__N_522[0])) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i19955_3_lut.init = 16'h2323;
    LUT4 i1_2_lut_3_lut_adj_267 (.A(\state_back_2__N_522[2] ), .B(state[0]), 
         .C(state[1]), .Z(n61)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_adj_267.init = 16'hfbfb;
    LUT4 n35898_bdd_4_lut_30695 (.A(n38220), .B(cnt_read[0]), .C(state[1]), 
         .D(state[0]), .Z(n37861)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam n35898_bdd_4_lut_30695.init = 16'h0004;
    PFUMX i30525 (.BLUT(n38287), .ALUT(n38288), .C0(\state_back_2__N_522[2] ), 
          .Z(n38289));
    LUT4 cnt_write_4__bdd_4_lut_30892 (.A(cnt_write[4]), .B(data_wr_buffer[4]), 
         .C(cnt_write[2]), .D(cnt_write[1]), .Z(n37250)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam cnt_write_4__bdd_4_lut_30892.init = 16'h5804;
    LUT4 i26161_4_lut (.A(cnt_write[0]), .B(cnt_write[5]), .C(n27306), 
         .D(cnt_write[4]), .Z(state_2__N_555[0])) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C (D))))) */ ;
    defparam i26161_4_lut.init = 16'h3f77;
    LUT4 cnt_main_3__bdd_3_lut_4_lut (.A(cnt_write[5]), .B(n38194), .C(state[0]), 
         .D(n38195), .Z(n37207)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_3__bdd_3_lut_4_lut.init = 16'h707f;
    LUT4 i3_4_lut (.A(n38124), .B(cnt_main[3]), .C(n25[1]), .D(n61), 
         .Z(sys_clk_c_enable_18)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_rep_541_3_lut (.A(clk_1mhz), .B(n38203), .C(\state_back_2__N_522[2] ), 
         .Z(n38128)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_rep_541_3_lut.init = 16'hfbfb;
    LUT4 i20556_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i20556_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_516_3_lut_4_lut (.A(clk_1mhz), .B(n38203), .C(n38126), 
         .D(sys_rst_n_c), .Z(n38103)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_rep_516_3_lut_4_lut.init = 16'h4000;
    LUT4 i2_2_lut_rep_470_3_lut_4_lut_4_lut (.A(n38219), .B(n38124), .C(n38123), 
         .D(cnt_main[3]), .Z(n38057)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B))) */ ;
    defparam i2_2_lut_rep_470_3_lut_4_lut_4_lut.init = 16'h44c4;
    LUT4 i1_3_lut_4_lut_adj_268 (.A(n38078), .B(n38124), .C(n38219), .D(n31663), 
         .Z(sys_clk_c_enable_122)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_268.init = 16'h8880;
    LUT4 i1_2_lut_rep_491_3_lut_4_lut_4_lut (.A(n38219), .B(cnt_main[3]), 
         .C(n38160), .D(state[0]), .Z(n38078)) /* synthesis lut_function=(!(A (B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_491_3_lut_4_lut_4_lut.init = 16'h7555;
    LUT4 i1_2_lut_rep_630 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n38217)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_630.init = 16'h8888;
    LUT4 n37864_bdd_3_lut (.A(n37864), .B(n37861), .C(\state_back_2__N_522[2] ), 
         .Z(n37865)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37864_bdd_3_lut.init = 16'hcaca;
    PFUMX i32 (.BLUT(n35755), .ALUT(n6_adj_1881), .C0(\state_back_2__N_522[2] ), 
          .Z(n15));
    LUT4 i29684_3_lut_4_lut (.A(n37189), .B(state[0]), .C(state[1]), .D(n29), 
         .Z(n3_adj_1884)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i29684_3_lut_4_lut.init = 16'hf808;
    LUT4 n38_bdd_4_lut (.A(n38352), .B(n33082), .C(cnt_write[3]), .D(cnt_write[4]), 
         .Z(n37956)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n38_bdd_4_lut.init = 16'h00ca;
    LUT4 state_2__I_0_144_i2_4_lut (.A(n38195), .B(cnt_write[0]), .C(state[0]), 
         .D(n12700), .Z(n2)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam state_2__I_0_144_i2_4_lut.init = 16'h0aca;
    LUT4 i3665_1_lut (.A(cnt_main[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(88[24:39])
    defparam i3665_1_lut.init = 16'h5555;
    LUT4 i29_4_lut_then_4_lut (.A(n24969), .B(n38194), .C(state[0]), .D(n38195), 
         .Z(n38303)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i29_4_lut_then_4_lut.init = 16'hdfd0;
    LUT4 i29_4_lut_else_4_lut (.A(state[0]), .B(cnt_main[3]), .C(cnt_main[0]), 
         .D(cnt_main[2]), .Z(n38302)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i29_4_lut_else_4_lut.init = 16'h0008;
    LUT4 n37890_bdd_3_lut (.A(n37890), .B(n19468), .C(state[0]), .Z(n37891)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37890_bdd_3_lut.init = 16'hcaca;
    FD1P3AX num_delay_i0_i1 (.D(num_delay_19__N_611[1]), .SP(sys_clk_c_enable_345), 
            .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i1.GSR = "DISABLED";
    PFUMX i29571 (.BLUT(n7_adj_1873), .ALUT(n13308), .C0(cnt_write[4]), 
          .Z(n36411));
    FD1P3IX cnt_init_i0_i2 (.D(n109[2]), .SP(sys_clk_c_enable_347), .CD(n21910), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    PFUMX i41 (.BLUT(n23), .ALUT(n21_adj_1878), .C0(state[1]), .Z(n26));
    LUT4 i1_2_lut_rep_575_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n38162)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_575_3_lut.init = 16'h7070;
    LUT4 i29807_3_lut_4_lut (.A(cnt_read[1]), .B(n38068), .C(cnt_read[5]), 
         .D(n35911), .Z(sys_clk_c_enable_58)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i29807_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_269 (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(state[1]), .D(cnt_init[0]), .Z(n6_adj_1885)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_269.init = 16'h7000;
    LUT4 i29323_2_lut_rep_603 (.A(cnt_read[2]), .B(cnt_read[3]), .Z(n38190)) /* synthesis lut_function=(A (B)) */ ;
    defparam i29323_2_lut_rep_603.init = 16'h8888;
    LUT4 i29812_2_lut_2_lut_3_lut (.A(cnt_read[2]), .B(cnt_read[3]), .C(n38067), 
         .Z(sys_clk_c_enable_52)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i29812_2_lut_2_lut_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_604 (.A(cnt_read[2]), .B(cnt_read[3]), .Z(n38191)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_604.init = 16'heeee;
    LUT4 i29815_2_lut_2_lut_3_lut (.A(cnt_read[2]), .B(cnt_read[3]), .C(n38067), 
         .Z(sys_clk_c_enable_50)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i29815_2_lut_2_lut_3_lut.init = 16'h0101;
    LUT4 i2_3_lut_4_lut_adj_270 (.A(cnt_read[2]), .B(cnt_read[3]), .C(cnt_read[1]), 
         .D(cnt_read[0]), .Z(n33310)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_270.init = 16'hfffe;
    FD1P3IX cnt_init_i0_i1 (.D(n38223), .SP(sys_clk_c_enable_347), .CD(n21910), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_271 (.A(n35568), .B(n39), .C(n38289), .D(n21092), 
         .Z(sys_clk_c_enable_48)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_271.init = 16'h8000;
    PFUMX i25 (.BLUT(n6_adj_1885), .ALUT(n12), .C0(state[0]), .Z(n10));
    LUT4 i1_2_lut_rep_607 (.A(cnt_write[0]), .B(cnt_write[4]), .Z(n38194)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i1_2_lut_rep_607.init = 16'h2222;
    LUT4 i2_2_lut_rep_562_3_lut (.A(cnt_write[0]), .B(cnt_write[4]), .C(cnt_write[5]), 
         .Z(n38149)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    defparam i2_2_lut_rep_562_3_lut.init = 16'h2020;
    LUT4 i29802_2_lut_rep_608 (.A(cnt_init[2]), .B(cnt_init[0]), .Z(n38195)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i29802_2_lut_rep_608.init = 16'h1111;
    LUT4 i3_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(n38222), 
         .D(state[0]), .Z(n21092)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_3_lut_4_lut.init = 16'hffef;
    LUT4 i2_2_lut_rep_609 (.A(cnt_main[2]), .B(cnt_main[0]), .Z(n38196)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_609.init = 16'heeee;
    PFUMX state_2__I_0_132_Mux_2_i7 (.BLUT(n3_adj_1884), .ALUT(n4_adj_1872), 
          .C0(\state_back_2__N_522[2] ), .Z(state_2__N_519[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=303, LSE_RLINE=309 */ ;
    LUT4 i1_4_lut_adj_272 (.A(n38152), .B(n6_adj_1875), .C(n33188), .D(n35877), 
         .Z(n35568)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_272.init = 16'ha080;
    LUT4 i29810_2_lut_2_lut_3_lut_4_lut (.A(cnt_read[1]), .B(n38068), .C(n38191), 
         .D(cnt_read[5]), .Z(sys_clk_c_enable_53)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i29810_2_lut_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 cnt_write_0__bdd_4_lut_30788 (.A(cnt_write[0]), .B(n38154), .C(n13320), 
         .D(cnt_write[4]), .Z(n37950)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam cnt_write_0__bdd_4_lut_30788.init = 16'h88f0;
    LUT4 i29818_3_lut_4_lut (.A(cnt_read[1]), .B(n38068), .C(cnt_read[5]), 
         .D(n35911), .Z(sys_clk_c_enable_49)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i29818_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_2_lut_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n37)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;
    defparam i1_2_lut_2_lut_3_lut.init = 16'h8f8f;
    LUT4 i3_4_lut_adj_273 (.A(state[0]), .B(n30267), .C(cnt_write[5]), 
         .D(n38222), .Z(n33188)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_273.init = 16'hfdff;
    LUT4 i1_2_lut_adj_274 (.A(state[0]), .B(\state_back_2__N_522[2] ), .Z(n35877)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_274.init = 16'hbbbb;
    LUT4 i29804_2_lut_2_lut_3_lut_4_lut (.A(cnt_read[1]), .B(n38068), .C(n38190), 
         .D(cnt_read[5]), .Z(sys_clk_c_enable_67)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i29804_2_lut_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_631 (.A(cnt_main[0]), .B(cnt_main[2]), .Z(n38218)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i1_2_lut_rep_631.init = 16'h2222;
    LUT4 i1_3_lut_adj_275 (.A(state[1]), .B(n261), .C(state[0]), .Z(n56)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;
    defparam i1_3_lut_adj_275.init = 16'h4545;
    LUT4 i3614_3_lut_rep_616 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .Z(n38203)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i3614_3_lut_rep_616.init = 16'hc8c8;
    LUT4 i1_3_lut_2_lut_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(clk_1mhz_N_673)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1_3_lut_2_lut_4_lut.init = 16'h37c8;
    LUT4 i1_2_lut_adj_276 (.A(cnt_read[2]), .B(cnt_read[3]), .Z(n35911)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_276.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_565_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n38152)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_565_4_lut.init = 16'h00c8;
    LUT4 i3_4_lut_adj_277 (.A(cnt_read[0]), .B(state[1]), .C(n38124), 
         .D(n35877), .Z(n20711)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_4_lut_adj_277.init = 16'hffef;
    LUT4 i22_1_lut_rep_620 (.A(cnt_init[0]), .Z(n38207)) /* synthesis lut_function=(!(A)) */ ;
    defparam i22_1_lut_rep_620.init = 16'h5555;
    LUT4 i3763_2_lut_rep_622 (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n38209)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3763_2_lut_rep_622.init = 16'h8888;
    LUT4 i3768_2_lut_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n208[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3768_2_lut_3_lut.init = 16'h7878;
    LUT4 i3770_2_lut_rep_571_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n38158)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3770_2_lut_rep_571_3_lut.init = 16'h8080;
    LUT4 i3775_2_lut_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n208[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3775_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i30571 (.BLUT(n38356), .ALUT(n38357), .C0(cnt_read[1]), .Z(n38358));
    PFUMX i30569 (.BLUT(n38353), .ALUT(n38354), .C0(cnt_write[5]), .Z(n38355));
    LUT4 i1_2_lut_rep_573_3_lut (.A(cnt_main[0]), .B(cnt_main[2]), .C(cnt_main[1]), 
         .Z(n38160)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i1_2_lut_rep_573_3_lut.init = 16'h2020;
    PFUMX i30515 (.BLUT(n38272), .ALUT(n38273), .C0(state[1]), .Z(sys_clk_c_enable_195));
    PFUMX i30567 (.BLUT(n38350), .ALUT(n38351), .C0(cnt_write[1]), .Z(n38352));
    LUT4 i1_2_lut_rep_538_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[2]), 
         .C(cnt_main[3]), .D(cnt_main[1]), .Z(n38125)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i1_2_lut_rep_538_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_625 (.A(cnt_write[3]), .B(cnt_write[2]), .Z(n38212)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_625.init = 16'heeee;
    LUT4 i1_2_lut_rep_536_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[2]), 
         .C(state[0]), .D(cnt_main[1]), .Z(n38123)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i1_2_lut_rep_536_3_lut_4_lut.init = 16'h2000;
    LUT4 n30265_bdd_3_lut_30330_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[4]), .D(n35525), .Z(n37665)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam n30265_bdd_3_lut_30330_4_lut.init = 16'hff01;
    CCU2D add_48_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32764), 
          .S0(n263[19]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_21.INIT0 = 16'h5aaa;
    defparam add_48_21.INIT1 = 16'h0000;
    defparam add_48_21.INJECT1_0 = "NO";
    defparam add_48_21.INJECT1_1 = "NO";
    PFUMX i30551 (.BLUT(n38326), .ALUT(n38356), .C0(cnt_read[1]), .Z(n6));
    LUT4 i29953_2_lut_rep_567_3_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[1]), .Z(n38154)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i29953_2_lut_rep_567_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_rep_544_3_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[4]), .D(cnt_write[1]), .Z(n38131)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_rep_544_3_lut_4_lut.init = 16'hf0e0;
    PFUMX i30543 (.BLUT(n38314), .ALUT(n38315), .C0(cnt_write[2]), .Z(n38316));
    CCU2D add_48_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32763), .COUT(n32764), .S0(n263[17]), .S1(n263[18]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_19.INIT0 = 16'h5aaa;
    defparam add_48_19.INIT1 = 16'h5aaa;
    defparam add_48_19.INJECT1_0 = "NO";
    defparam add_48_19.INJECT1_1 = "NO";
    LUT4 i29228_2_lut_rep_572_3_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[4]), .Z(n38159)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i29228_2_lut_rep_572_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_554_3_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[5]), .D(cnt_write[4]), .Z(n38141)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_554_3_lut_4_lut.init = 16'hfffe;
    PFUMX i30535 (.BLUT(n38302), .ALUT(n38303), .C0(state[1]), .Z(n38304));
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (beep_c, sys_clk_c, \music_tone[0] , n33164, \music_tone[4] , 
            GND_net, \music_tone[1] , \music_tone[3] , \music_tone[2] , 
            sw2_c, n38192) /* synthesis syn_module_defined=1 */ ;
    output beep_c;
    input sys_clk_c;
    input \music_tone[0] ;
    input n33164;
    input \music_tone[4] ;
    input GND_net;
    input \music_tone[1] ;
    input \music_tone[3] ;
    input \music_tone[2] ;
    input sw2_c;
    output n38192;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire piano_out_N_1543, n38281, n38282;
    wire [15:0]time_end;   // d:/new porject/top-xu/beep.v(31[12:20])
    
    wire n15, n32742;
    wire [17:0]time_cnt;   // d:/new porject/top-xu/beep.v(65[12:20])
    wire [17:0]n5631;
    
    wire n5650, n32741, n32740, n32734, n3717;
    wire [17:0]n77;
    
    wire n32739, n32738, n32737, n32736, n32735, n38296, n38297, 
        n37565, n38318, n38317, n38321, n38320, n38324, n38323, 
        n38330, n38329, n38333, n38332, n38336, n38335, n38339, 
        n38338, n38360, n38359, n37348, n37564, n37551, n37550, 
        n32886, n32885, n32884, n32883, n32882, n32881, n32880, 
        n32879, n32878, n37347, n29, n34, n30, n31, n28, n39487, 
        n38284, n38285, n39486;
    
    FD1S3AX piano_out_20 (.D(piano_out_N_1543), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=432, LSE_RLINE=438 */ ;   // d:/new porject/top-xu/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    PFUMX i30521 (.BLUT(n38281), .ALUT(n38282), .C0(\music_tone[0] ), 
          .Z(time_end[11]));
    PFUMX tone_4__I_0_Mux_8_i31 (.BLUT(n15), .ALUT(n33164), .C0(\music_tone[4] ), 
          .Z(time_end[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=432, LSE_RLINE=438 */ ;
    CCU2D add_1933_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32742), .S0(n5631[17]), .S1(n5650));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1933_19.INIT0 = 16'h5555;
    defparam add_1933_19.INIT1 = 16'h0000;
    defparam add_1933_19.INJECT1_0 = "NO";
    defparam add_1933_19.INJECT1_1 = "NO";
    CCU2D add_1933_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32741), .COUT(n32742), .S0(n5631[15]), 
          .S1(n5631[16]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1933_17.INIT0 = 16'h5999;
    defparam add_1933_17.INIT1 = 16'h5555;
    defparam add_1933_17.INJECT1_0 = "NO";
    defparam add_1933_17.INJECT1_1 = "NO";
    CCU2D add_1933_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32740), .COUT(n32741), .S0(n5631[13]), 
          .S1(n5631[14]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1933_15.INIT0 = 16'h5999;
    defparam add_1933_15.INIT1 = 16'h5999;
    defparam add_1933_15.INJECT1_0 = "NO";
    defparam add_1933_15.INJECT1_1 = "NO";
    CCU2D add_1933_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n32734), .S1(n5631[0]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1933_1.INIT0 = 16'h0000;
    defparam add_1933_1.INIT1 = 16'h5999;
    defparam add_1933_1.INJECT1_0 = "NO";
    defparam add_1933_1.INJECT1_1 = "NO";
    FD1S3IX time_cnt_3049__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i0.GSR = "ENABLED";
    CCU2D add_1933_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32739), .COUT(n32740), .S0(n5631[11]), 
          .S1(n5631[12]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1933_13.INIT0 = 16'h5999;
    defparam add_1933_13.INIT1 = 16'h5999;
    defparam add_1933_13.INJECT1_0 = "NO";
    defparam add_1933_13.INJECT1_1 = "NO";
    CCU2D add_1933_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32738), .COUT(n32739), .S0(n5631[9]), 
          .S1(n5631[10]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1933_11.INIT0 = 16'h5999;
    defparam add_1933_11.INIT1 = 16'h5999;
    defparam add_1933_11.INJECT1_0 = "NO";
    defparam add_1933_11.INJECT1_1 = "NO";
    CCU2D add_1933_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32737), .COUT(n32738), .S0(n5631[7]), 
          .S1(n5631[8]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1933_9.INIT0 = 16'h5999;
    defparam add_1933_9.INIT1 = 16'h5999;
    defparam add_1933_9.INJECT1_0 = "NO";
    defparam add_1933_9.INJECT1_1 = "NO";
    CCU2D add_1933_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32736), .COUT(n32737), .S0(n5631[5]), 
          .S1(n5631[6]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1933_7.INIT0 = 16'h5999;
    defparam add_1933_7.INIT1 = 16'h5999;
    defparam add_1933_7.INJECT1_0 = "NO";
    defparam add_1933_7.INJECT1_1 = "NO";
    CCU2D add_1933_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32735), .COUT(n32736), .S0(n5631[3]), 
          .S1(n5631[4]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1933_5.INIT0 = 16'h5999;
    defparam add_1933_5.INIT1 = 16'h5999;
    defparam add_1933_5.INJECT1_0 = "NO";
    defparam add_1933_5.INJECT1_1 = "NO";
    CCU2D add_1933_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32734), .COUT(n32735), .S0(n5631[1]), 
          .S1(n5631[2]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1933_3.INIT0 = 16'h5999;
    defparam add_1933_3.INIT1 = 16'h5999;
    defparam add_1933_3.INJECT1_0 = "NO";
    defparam add_1933_3.INJECT1_1 = "NO";
    PFUMX i30531 (.BLUT(n38296), .ALUT(n38297), .C0(\music_tone[0] ), 
          .Z(time_end[6]));
    FD1S3IX time_cnt_3049__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i17.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_3049__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n3717), 
            .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049__i1.GSR = "ENABLED";
    LUT4 n34_bdd_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[4] ), .Z(n37565)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n34_bdd_4_lut_4_lut.init = 16'hf921;
    LUT4 tone_4__I_0_Mux_12_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38318)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_then_4_lut.init = 16'hfa93;
    LUT4 tone_4__I_0_Mux_12_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38317)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_else_4_lut.init = 16'hfa4b;
    LUT4 tone_4__I_0_Mux_2_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38321)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_2_i31_then_4_lut.init = 16'hfb8b;
    LUT4 tone_4__I_0_Mux_2_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38320)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C)+!B (D))) */ ;
    defparam tone_4__I_0_Mux_2_i31_else_4_lut.init = 16'hae3d;
    LUT4 tone_4__I_0_Mux_0_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38324)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D)))) */ ;
    defparam tone_4__I_0_Mux_0_i31_then_4_lut.init = 16'hbdff;
    LUT4 tone_4__I_0_Mux_0_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38323)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_0_i31_else_4_lut.init = 16'hd98b;
    LUT4 i29907_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n38330)) /* synthesis lut_function=(A (B+(D))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i29907_4_lut_then_4_lut.init = 16'hafcc;
    LUT4 i29907_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n38329)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i29907_4_lut_else_4_lut.init = 16'hefff;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38333)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_then_4_lut.init = 16'hffbc;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38332)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C)+!B !(C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_else_4_lut.init = 16'hc9db;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38336)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+(D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_then_4_lut.init = 16'ha899;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38335)) /* synthesis lut_function=(A (B)+!A !(B+(C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_else_4_lut.init = 16'h8999;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38339)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(C (D)+!C !(D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_then_4_lut.init = 16'hadf0;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38338)) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_else_4_lut.init = 16'ha4f1;
    LUT4 n37305_bdd_3_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38360)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C+(D)))) */ ;
    defparam n37305_bdd_3_lut_then_4_lut.init = 16'hee62;
    LUT4 n37305_bdd_3_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38359)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A ((D)+!B)) */ ;
    defparam n37305_bdd_3_lut_else_4_lut.init = 16'hfd13;
    LUT4 n21_bdd_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), .C(\music_tone[2] ), 
         .D(\music_tone[3] ), .Z(n37348)) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;
    defparam n21_bdd_4_lut.init = 16'h02cb;
    PFUMX i30263 (.BLUT(n37565), .ALUT(n37564), .C0(\music_tone[2] ), 
          .Z(time_end[5]));
    PFUMX i30261 (.BLUT(n37551), .ALUT(n37550), .C0(\music_tone[4] ), 
          .Z(time_end[3]));
    LUT4 i1241_2_lut (.A(n5650), .B(sw2_c), .Z(n3717)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/beep.v(72[11] 76[5])
    defparam i1241_2_lut.init = 16'hbbbb;
    CCU2D time_cnt_3049_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32886), .S0(n77[17]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_3049_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_3049_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_3049_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_3049_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32885), .COUT(n32886), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_3049_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_3049_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_3049_add_4_17.INJECT1_1 = "NO";
    LUT4 music_tone_4__bdd_3_lut (.A(\music_tone[2] ), .B(\music_tone[3] ), 
         .C(\music_tone[0] ), .Z(n37550)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam music_tone_4__bdd_3_lut.init = 16'hecec;
    CCU2D time_cnt_3049_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32884), .COUT(n32885), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_3049_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_3049_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_3049_add_4_15.INJECT1_1 = "NO";
    CCU2D time_cnt_3049_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32883), .COUT(n32884), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_3049_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_3049_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_3049_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_3049_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32882), .COUT(n32883), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_3049_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_3049_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_3049_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_3049_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32881), .COUT(n32882), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_3049_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_3049_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_3049_add_4_9.INJECT1_1 = "NO";
    CCU2D time_cnt_3049_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32880), .COUT(n32881), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_3049_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_3049_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_3049_add_4_7.INJECT1_1 = "NO";
    CCU2D time_cnt_3049_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32879), .COUT(n32880), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_3049_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_3049_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_3049_add_4_5.INJECT1_1 = "NO";
    CCU2D time_cnt_3049_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32878), .COUT(n32879), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_3049_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_3049_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_3049_add_4_3.INJECT1_1 = "NO";
    CCU2D time_cnt_3049_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32878), .S1(n77[0]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3049_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_3049_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_3049_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_3049_add_4_1.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_11_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38282)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_then_4_lut.init = 16'hfe71;
    LUT4 tone_4__I_0_Mux_6_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38297)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (C+(D))) */ ;
    defparam tone_4__I_0_Mux_6_i31_then_4_lut.init = 16'hffd2;
    LUT4 tone_4__I_0_Mux_6_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38296)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C (D))+!B !((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_6_i31_else_4_lut.init = 16'hbf67;
    PFUMX i30153 (.BLUT(n37348), .ALUT(n37347), .C0(\music_tone[4] ), 
          .Z(time_end[1]));
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_1543)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n5631[1]), .B(n5631[6]), .C(n5631[16]), .D(n5631[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n5631[5]), .C(n28), .D(n5631[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n5631[10]), .B(n5631[4]), .C(n5631[8]), .D(n5631[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n5631[14]), .B(n5631[17]), .C(n5631[15]), .D(n5631[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n5631[12]), .B(n5631[7]), .C(n5631[0]), .D(n5631[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n39487)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_then_4_lut.init = 16'he0c0;
    LUT4 music_tone_4__bdd_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[1] ), .Z(n37551)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B !(C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam music_tone_4__bdd_4_lut_4_lut.init = 16'hcf35;
    LUT4 tone_4__I_0_Mux_11_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38281)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_else_4_lut.init = 16'hba27;
    LUT4 i20158_4_lut_4_lut_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n15)) /* synthesis lut_function=(!(A (C (D))+!A !(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i20158_4_lut_4_lut_4_lut_4_lut.init = 16'h5eff;
    LUT4 n34_bdd_2_lut_3_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .Z(n37564)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam n34_bdd_2_lut_3_lut.init = 16'hf8f8;
    LUT4 n21_bdd_4_lut_30152_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n37347)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+!(D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam n21_bdd_4_lut_30152_4_lut.init = 16'hf8f5;
    LUT4 i1_2_lut_rep_605 (.A(\music_tone[0] ), .B(\music_tone[1] ), .Z(n38192)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_605.init = 16'hbbbb;
    PFUMX i30523 (.BLUT(n38284), .ALUT(n38285), .C0(\music_tone[1] ), 
          .Z(time_end[10]));
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n39486)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_else_4_lut.init = 16'hc0c1;
    LUT4 n37278_bdd_3_lut_then_4_lut (.A(\music_tone[2] ), .B(\music_tone[0] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n38285)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D)))) */ ;
    defparam n37278_bdd_3_lut_then_4_lut.init = 16'hfacf;
    LUT4 n37278_bdd_3_lut_else_4_lut (.A(\music_tone[2] ), .B(\music_tone[0] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n38284)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (D)+!B ((D)+!C))) */ ;
    defparam n37278_bdd_3_lut_else_4_lut.init = 16'hf721;
    PFUMX i30573 (.BLUT(n38359), .ALUT(n38360), .C0(\music_tone[1] ), 
          .Z(time_end[4]));
    PFUMX i30559 (.BLUT(n38338), .ALUT(n38339), .C0(\music_tone[0] ), 
          .Z(time_end[13]));
    PFUMX i30557 (.BLUT(n38335), .ALUT(n38336), .C0(\music_tone[0] ), 
          .Z(time_end[14]));
    PFUMX i30555 (.BLUT(n38332), .ALUT(n38333), .C0(\music_tone[0] ), 
          .Z(time_end[9]));
    PFUMX i30553 (.BLUT(n38329), .ALUT(n38330), .C0(\music_tone[2] ), 
          .Z(time_end[7]));
    PFUMX i30549 (.BLUT(n38323), .ALUT(n38324), .C0(\music_tone[0] ), 
          .Z(time_end[0]));
    PFUMX i30547 (.BLUT(n38320), .ALUT(n38321), .C0(\music_tone[0] ), 
          .Z(time_end[2]));
    PFUMX i30545 (.BLUT(n38317), .ALUT(n38318), .C0(\music_tone[0] ), 
          .Z(time_end[12]));
    PFUMX i31145 (.BLUT(n39486), .ALUT(n39487), .C0(\music_tone[1] ), 
          .Z(time_end[15]));
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000)_U2 
//

module \divide(WIDTH=32,N=12000000)_U2  (clk_1s, sys_clk_c, GND_net, n21900) /* synthesis syn_module_defined=1 */ ;
    output clk_1s;
    input sys_clk_c;
    input GND_net;
    output n21900;
    
    wire clk_1s /* synthesis is_clock=1, SET_AS_NETWORK=clk_1s */ ;   // d:/new porject/top-xu/top.v(29[7:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire clkout_N_299;
    wire [31:0]n200;
    
    wire n21890;
    wire [31:0]n101;
    
    wire n32834;
    wire [31:0]cnt_p;   // d:/new porject/top-xu/clock.v(11[19:24])
    
    wire n32973, n32972, n32971, n32970, n32969, n32968, n32967, 
        n32966, n32965, n32964, n32963, n32962, n32833, n32832, 
        n32831, n32830, n32829, n32828, n32827, n32826, n32825, 
        n32824, n32823, n32822, n32821, n32820, n32819, n36209, 
        n36537, n36205, n36203, n28_adj_1866, n19, n27_adj_1867, 
        n25, n26_adj_1868, n24;
    
    FD1S3AX clk_p_29 (.D(clkout_N_299), .CK(sys_clk_c), .Q(clk_1s)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=37, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=36 */ ;   // d:/new porject/top-xu/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n21890), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i0.GSR = "ENABLED";
    CCU2D cnt_p_3040_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32834), .S0(n101[31]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_3040_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_33.INJECT1_1 = "NO";
    CCU2D add_26049_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32973), 
          .S0(clkout_N_299));
    defparam add_26049_cout.INIT0 = 16'h0000;
    defparam add_26049_cout.INIT1 = 16'h0000;
    defparam add_26049_cout.INJECT1_0 = "NO";
    defparam add_26049_cout.INJECT1_1 = "NO";
    CCU2D add_26049_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32972), .COUT(n32973));
    defparam add_26049_24.INIT0 = 16'h5555;
    defparam add_26049_24.INIT1 = 16'h5555;
    defparam add_26049_24.INJECT1_0 = "NO";
    defparam add_26049_24.INJECT1_1 = "NO";
    CCU2D add_26049_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32971), .COUT(n32972));
    defparam add_26049_22.INIT0 = 16'h5555;
    defparam add_26049_22.INIT1 = 16'h5555;
    defparam add_26049_22.INJECT1_0 = "NO";
    defparam add_26049_22.INJECT1_1 = "NO";
    CCU2D add_26049_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32970), .COUT(n32971));
    defparam add_26049_20.INIT0 = 16'h5555;
    defparam add_26049_20.INIT1 = 16'h5555;
    defparam add_26049_20.INJECT1_0 = "NO";
    defparam add_26049_20.INJECT1_1 = "NO";
    CCU2D add_26049_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32969), .COUT(n32970));
    defparam add_26049_18.INIT0 = 16'h5555;
    defparam add_26049_18.INIT1 = 16'h5555;
    defparam add_26049_18.INJECT1_0 = "NO";
    defparam add_26049_18.INJECT1_1 = "NO";
    CCU2D add_26049_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32968), .COUT(n32969));
    defparam add_26049_16.INIT0 = 16'h5aaa;
    defparam add_26049_16.INIT1 = 16'h5555;
    defparam add_26049_16.INJECT1_0 = "NO";
    defparam add_26049_16.INJECT1_1 = "NO";
    CCU2D add_26049_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32967), .COUT(n32968));
    defparam add_26049_14.INIT0 = 16'h5aaa;
    defparam add_26049_14.INIT1 = 16'h5555;
    defparam add_26049_14.INJECT1_0 = "NO";
    defparam add_26049_14.INJECT1_1 = "NO";
    CCU2D add_26049_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32966), .COUT(n32967));
    defparam add_26049_12.INIT0 = 16'h5555;
    defparam add_26049_12.INIT1 = 16'h5aaa;
    defparam add_26049_12.INJECT1_0 = "NO";
    defparam add_26049_12.INJECT1_1 = "NO";
    CCU2D add_26049_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32965), .COUT(n32966));
    defparam add_26049_10.INIT0 = 16'h5aaa;
    defparam add_26049_10.INIT1 = 16'h5aaa;
    defparam add_26049_10.INJECT1_0 = "NO";
    defparam add_26049_10.INJECT1_1 = "NO";
    CCU2D add_26049_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32964), .COUT(n32965));
    defparam add_26049_8.INIT0 = 16'h5555;
    defparam add_26049_8.INIT1 = 16'h5aaa;
    defparam add_26049_8.INJECT1_0 = "NO";
    defparam add_26049_8.INJECT1_1 = "NO";
    CCU2D add_26049_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32963), .COUT(n32964));
    defparam add_26049_6.INIT0 = 16'h5555;
    defparam add_26049_6.INIT1 = 16'h5555;
    defparam add_26049_6.INJECT1_0 = "NO";
    defparam add_26049_6.INJECT1_1 = "NO";
    CCU2D add_26049_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32962), .COUT(n32963));
    defparam add_26049_4.INIT0 = 16'h5aaa;
    defparam add_26049_4.INIT1 = 16'h5aaa;
    defparam add_26049_4.INJECT1_0 = "NO";
    defparam add_26049_4.INJECT1_1 = "NO";
    CCU2D add_26049_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n32962));
    defparam add_26049_2.INIT0 = 16'h7000;
    defparam add_26049_2.INIT1 = 16'h5555;
    defparam add_26049_2.INJECT1_0 = "NO";
    defparam add_26049_2.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32833), .COUT(n32834), .S0(n101[29]), 
          .S1(n101[30]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_31.INJECT1_1 = "NO";
    FD1S3IX cnt_p_3040__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n21890), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n21890), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n21890), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n21890), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n21890), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n21890), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_3040__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n21890), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040__i1.GSR = "ENABLED";
    CCU2D cnt_p_3040_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32832), .COUT(n32833), .S0(n101[27]), 
          .S1(n101[28]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32831), .COUT(n32832), .S0(n101[25]), 
          .S1(n101[26]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32830), .COUT(n32831), .S0(n101[23]), 
          .S1(n101[24]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32829), .COUT(n32830), .S0(n101[21]), 
          .S1(n101[22]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32828), .COUT(n32829), .S0(n101[19]), 
          .S1(n101[20]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32827), .COUT(n32828), .S0(n101[17]), 
          .S1(n101[18]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32826), .COUT(n32827), .S0(n101[15]), 
          .S1(n101[16]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32825), .COUT(n32826), .S0(n101[13]), 
          .S1(n101[14]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32824), .COUT(n32825), .S0(n101[11]), 
          .S1(n101[12]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32823), .COUT(n32824), .S0(n101[9]), .S1(n101[10]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32822), .COUT(n32823), .S0(n101[7]), .S1(n101[8]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32821), .COUT(n32822), .S0(n101[5]), .S1(n101[6]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32820), .COUT(n32821), .S0(n101[3]), .S1(n101[4]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32819), .COUT(n32820), .S0(n101[1]), .S1(n101[2]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_3040_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_3040_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_3040_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32819), .S1(n101[0]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3040_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_3040_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_3040_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_3040_add_4_1.INJECT1_1 = "NO";
    LUT4 i29833_3_lut (.A(n36209), .B(n36537), .C(n36205), .Z(n21890)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i29833_3_lut.init = 16'h8080;
    LUT4 i29369_4_lut (.A(n200[1]), .B(cnt_p[11]), .C(n200[2]), .D(n200[3]), 
         .Z(n36209)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29369_4_lut.init = 16'h8000;
    LUT4 i29832_4_lut (.A(n36203), .B(n200[0]), .C(n28_adj_1866), .D(cnt_p[16]), 
         .Z(n36537)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i29832_4_lut.init = 16'h0800;
    LUT4 i29365_4_lut (.A(n200[5]), .B(cnt_p[17]), .C(cnt_p[12]), .D(cnt_p[20]), 
         .Z(n36205)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29365_4_lut.init = 16'h8000;
    LUT4 i29363_4_lut (.A(cnt_p[23]), .B(cnt_p[21]), .C(cnt_p[7]), .D(cnt_p[9]), 
         .Z(n36203)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29363_4_lut.init = 16'h8000;
    LUT4 i15252_1_lut (.A(clk_1s), .Z(n21900)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/clock.v(30[9] 33[14])
    defparam i15252_1_lut.init = 16'h5555;
    LUT4 i10_3_lut (.A(n19), .B(n200[6]), .C(cnt_p[18]), .Z(n28_adj_1866)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i10_3_lut.init = 16'hbfbf;
    LUT4 i1_4_lut (.A(n27_adj_1867), .B(n200[4]), .C(n25), .D(n26_adj_1868), 
         .Z(n19)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i12_4_lut (.A(cnt_p[19]), .B(n24), .C(cnt_p[8]), .D(cnt_p[14]), 
         .Z(n27_adj_1867)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_p[30]), .B(cnt_p[22]), .C(cnt_p[13]), .D(cnt_p[25]), 
         .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(cnt_p[28]), .B(cnt_p[15]), .C(cnt_p[31]), .D(cnt_p[29]), 
         .Z(n26_adj_1868)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt_p[26]), .B(cnt_p[24]), .C(cnt_p[10]), .D(cnt_p[27]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i9_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module KEY_U0
//

module KEY_U0 (GND_net, sys_clk_c, key_sec_pre, key_sec, key2_c, n38234, 
            key_sec_adj_10, key_sec_pre_adj_11, n38170, \key_mode[2] , 
            \key_mode[1] , n35674) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key2_c;
    output n38234;
    input key_sec_adj_10;
    input key_sec_pre_adj_11;
    output n38170;
    input \key_mode[2] ;
    input \key_mode[1] ;
    output n35674;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire n32847;
    wire [17:0]cnt;   // d:/new porject/top-xu/key.v(37[16:19])
    wire [17:0]n77;
    
    wire n32848, n32846, key_rst_pre, key_rst, n32845, sys_clk_c_enable_6, 
        n32844, key_edge, n21, n34, n30, n22, n31, n28, n32852, 
        n32851, n32850, n32849;
    
    CCU2D cnt_3042_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32847), 
          .COUT(n32848), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_3042_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_3042_add_4_9.INJECT1_0 = "NO";
    defparam cnt_3042_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_3042_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32846), 
          .COUT(n32847), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_3042_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_3042_add_4_7.INJECT1_0 = "NO";
    defparam cnt_3042_add_4_7.INJECT1_1 = "NO";
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    CCU2D cnt_3042_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32845), 
          .COUT(n32846), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_3042_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_3042_add_4_5.INJECT1_0 = "NO";
    defparam cnt_3042_add_4_5.INJECT1_1 = "NO";
    FD1S3AY key_rst_26 (.D(key2_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1P3AY key_sec_29 (.D(key2_c), .SP(sys_clk_c_enable_6), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    CCU2D cnt_3042_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32844), 
          .COUT(n32845), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_3042_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_3042_add_4_3.INJECT1_0 = "NO";
    defparam cnt_3042_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_3042_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32844), .S1(n77[0]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042_add_4_1.INIT0 = 16'hF000;
    defparam cnt_3042_add_4_1.INIT1 = 16'h0555;
    defparam cnt_3042_add_4_1.INJECT1_0 = "NO";
    defparam cnt_3042_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_3042__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i0.GSR = "ENABLED";
    FD1S3IX cnt_3042__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i17.GSR = "ENABLED";
    FD1S3IX cnt_3042__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i16.GSR = "ENABLED";
    FD1S3IX cnt_3042__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i15.GSR = "ENABLED";
    FD1S3IX cnt_3042__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i14.GSR = "ENABLED";
    FD1S3IX cnt_3042__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i13.GSR = "ENABLED";
    FD1S3IX cnt_3042__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i12.GSR = "ENABLED";
    FD1S3IX cnt_3042__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i11.GSR = "ENABLED";
    FD1S3IX cnt_3042__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i10.GSR = "ENABLED";
    FD1S3IX cnt_3042__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i9.GSR = "ENABLED";
    FD1S3IX cnt_3042__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i8.GSR = "ENABLED";
    FD1S3IX cnt_3042__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i7.GSR = "ENABLED";
    FD1S3IX cnt_3042__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i6.GSR = "ENABLED";
    FD1S3IX cnt_3042__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i5.GSR = "ENABLED";
    FD1S3IX cnt_3042__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i4.GSR = "ENABLED";
    FD1S3IX cnt_3042__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i3.GSR = "ENABLED";
    FD1S3IX cnt_3042__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i2.GSR = "ENABLED";
    FD1S3IX cnt_3042__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042__i1.GSR = "ENABLED";
    LUT4 key_sec_pre_I_0_2_lut_rep_647 (.A(key_sec_pre), .B(key_sec), .Z(n38234)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_647.init = 16'h2222;
    LUT4 i1_2_lut_rep_583_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(key_sec_adj_10), 
         .D(key_sec_pre_adj_11), .Z(n38170)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_rep_583_3_lut_4_lut.init = 16'h2f22;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(\key_mode[2] ), 
         .D(\key_mode[1] ), .Z(n35674)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_6)) /* synthesis lut_function=(A (B (C (D)))) */ ;
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
    CCU2D cnt_3042_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32852), .S0(n77[17]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_3042_add_4_19.INIT1 = 16'h0000;
    defparam cnt_3042_add_4_19.INJECT1_0 = "NO";
    defparam cnt_3042_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_3042_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32851), .COUT(n32852), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_3042_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_3042_add_4_17.INJECT1_0 = "NO";
    defparam cnt_3042_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_3042_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32850), .COUT(n32851), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_3042_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_3042_add_4_15.INJECT1_0 = "NO";
    defparam cnt_3042_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_3042_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32849), .COUT(n32850), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_3042_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_3042_add_4_13.INJECT1_0 = "NO";
    defparam cnt_3042_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_3042_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32848), .COUT(n32849), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3042_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_3042_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_3042_add_4_11.INJECT1_0 = "NO";
    defparam cnt_3042_add_4_11.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module BCD_U4
//

module BCD_U4 (\min[4] , \min[3] , \min[1] , \min_ones[1] , \min_tens[0] , 
            \min_ones[3] , \min_ones[2] , n9380, \hundres_0__N_356[3] , 
            n4, n9664, hundres_0__N_361, \min[6] , \min[5] , \min[7] , 
            \min[2] ) /* synthesis syn_module_defined=1 */ ;
    input \min[4] ;
    input \min[3] ;
    input \min[1] ;
    output \min_ones[1] ;
    output \min_tens[0] ;
    output \min_ones[3] ;
    output \min_ones[2] ;
    input n9380;
    output \hundres_0__N_356[3] ;
    output n4;
    output n9664;
    output hundres_0__N_361;
    input \min[6] ;
    input \min[5] ;
    input \min[7] ;
    input \min[2] ;
    
    
    wire n38114, n38046, n38035;
    wire [3:0]hundres_1__N_347;
    
    wire n37983;
    wire [3:0]hundres_0__N_356;
    
    wire n38142;
    wire [3:0]hundres_1__N_345;
    
    wire n39475, n38013, n37987, n38293, n38294, n38026;
    wire [3:0]hundres_1__N_346;
    
    wire n38184, n37966, n37974;
    wire [3:0]hundres_0__N_353;
    
    wire n39476, n39474, n38270, n38060;
    
    LUT4 i3556_2_lut_rep_459_3_lut (.A(\min[4] ), .B(n38114), .C(\min[3] ), 
         .Z(n38046)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3556_2_lut_rep_459_3_lut.init = 16'hf6f6;
    LUT4 i4751_3_lut_4_lut (.A(\min[4] ), .B(n38114), .C(\min[3] ), .D(n38035), 
         .Z(hundres_1__N_347[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4751_3_lut_4_lut.init = 16'h6966;
    LUT4 i4666_2_lut_4_lut_4_lut (.A(n37983), .B(\min[1] ), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\min_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4666_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4688_3_lut_4_lut_3_lut_4_lut (.A(n37983), .B(\min[1] ), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\min_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4688_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4681_2_lut_3_lut_3_lut_4_lut (.A(n37983), .B(\min[1] ), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\min_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4681_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4674_3_lut_4_lut (.A(n37983), .B(\min[1] ), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\min_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4674_3_lut_4_lut.init = 16'h998a;
    LUT4 i3554_2_lut_rep_409_4_lut_4_lut_then_4_lut (.A(\min[4] ), .B(n38142), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n39475)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i3554_2_lut_rep_409_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    LUT4 i1_3_lut_4_lut (.A(n38013), .B(n37987), .C(n9380), .D(\hundres_0__N_356[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    PFUMX i30529 (.BLUT(n38293), .ALUT(n38294), .C0(\min[3] ), .Z(n38026));
    LUT4 i3550_2_lut_rep_379_3_lut_4_lut_4_lut (.A(n38013), .B(hundres_1__N_346[3]), 
         .C(\hundres_0__N_356[3] ), .D(n38184), .Z(n37966)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i3550_2_lut_rep_379_3_lut_4_lut_4_lut.init = 16'hf4fa;
    LUT4 i4044_3_lut_4_lut (.A(\hundres_0__N_356[3] ), .B(n37974), .C(n9380), 
         .D(hundres_0__N_353[1]), .Z(n9664)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4044_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3549_4_lut (.A(n37966), .B(n39476), .C(hundres_0__N_353[1]), 
         .D(n38184), .Z(hundres_0__N_361)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3549_4_lut.init = 16'hb3a0;
    LUT4 i3554_2_lut_rep_409_4_lut_4_lut_else_4_lut (.A(\min[4] ), .B(n38142), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n39474)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i3554_2_lut_rep_409_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i4743_2_lut_rep_439_4_lut_4_lut_then_4_lut (.A(\min[4] ), .B(n38142), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n38294)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (C)+!B !(C+(D))))) */ ;
    defparam i4743_2_lut_rep_439_4_lut_4_lut_then_4_lut.init = 16'h6063;
    LUT4 i4658_2_lut_rep_683 (.A(\min[6] ), .B(\min[5] ), .Z(n38270)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4658_2_lut_rep_683.init = 16'heeee;
    LUT4 i3598_2_lut_rep_597_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(n38184)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3598_2_lut_rep_597_3_lut.init = 16'he0e0;
    LUT4 i4653_3_lut_4_lut_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(hundres_1__N_345[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4653_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i14140_2_lut_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(hundres_1__N_345[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i14140_2_lut_3_lut.init = 16'h1010;
    LUT4 i4645_2_lut_rep_555_3_lut_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(n38142)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4645_2_lut_rep_555_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i4743_2_lut_rep_439_4_lut_4_lut_else_4_lut (.A(\min[4] ), .B(n38142), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n38293)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4743_2_lut_rep_439_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i11430_2_lut_rep_473_3_lut_4_lut (.A(n38142), .B(\min[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(n38060)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i11430_2_lut_rep_473_3_lut_4_lut.init = 16'heee0;
    LUT4 i4793_3_lut_4_lut_3_lut_4_lut (.A(n38142), .B(\min[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(hundres_1__N_346[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4793_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3437_3_lut_rep_527 (.A(n38142), .B(\min[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(n38114)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3437_3_lut_rep_527.init = 16'hffe0;
    LUT4 i4779_3_lut_4_lut (.A(n38142), .B(\min[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(hundres_1__N_346[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4779_3_lut_4_lut.init = 16'h998a;
    LUT4 i4716_3_lut_4_lut_3_lut_4_lut (.A(\min[2] ), .B(n38026), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(\hundres_0__N_356[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4716_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4694_2_lut_rep_396_4_lut_4_lut (.A(\min[2] ), .B(n38026), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(n37983)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4694_2_lut_rep_396_4_lut_4_lut.init = 16'h554a;
    LUT4 i4709_2_lut_3_lut_3_lut_4_lut (.A(\min[2] ), .B(n38026), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(hundres_0__N_356[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4709_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4702_3_lut_4_lut (.A(\min[2] ), .B(n38026), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(hundres_0__N_356[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4702_3_lut_4_lut.init = 16'h998c;
    PFUMX i31137 (.BLUT(n39474), .ALUT(n39475), .C0(n38046), .Z(n39476));
    LUT4 i3441_3_lut_rep_448_4_lut (.A(hundres_1__N_345[1]), .B(n38060), 
         .C(hundres_1__N_346[1]), .D(n38046), .Z(n38035)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3441_3_lut_rep_448_4_lut.init = 16'hf666;
    LUT4 i4765_3_lut_rep_426_4_lut_3_lut_4_lut (.A(hundres_1__N_345[1]), .B(n38060), 
         .C(hundres_1__N_346[1]), .D(n38046), .Z(n38013)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4765_3_lut_rep_426_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4758_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_345[1]), .B(n38060), 
         .C(hundres_1__N_346[1]), .D(n38046), .Z(hundres_1__N_347[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4758_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4730_3_lut_4_lut_3_lut_4_lut (.A(n38270), .B(\min[7] ), .C(hundres_1__N_346[3]), 
         .D(n38013), .Z(hundres_0__N_353[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4730_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4722_2_lut_rep_387_3_lut_3_lut_4_lut (.A(n38270), .B(\min[7] ), 
         .C(hundres_1__N_346[3]), .D(n38013), .Z(n37974)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4722_2_lut_rep_387_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i3596_2_lut_rep_400_3_lut_4_lut (.A(n38270), .B(\min[7] ), .C(hundres_1__N_346[3]), 
         .D(n38013), .Z(n37987)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3596_2_lut_rep_400_3_lut_4_lut.init = 16'h8880;
    
endmodule
//
// Verilog Description of module music_play
//

module music_play (\state[0] , sys_clk_c, recv_done_d1, recv_done_d0, 
            music_tone, uart_recv_done, music_cnt, sys_clk_c_enable_237, 
            n126, uart_recv_data, warning, n4, \state[1] , sys_rst_n_c, 
            n38168, warning_TEM, n39490, GND_net, n21961, n38126, 
            n38124, n37892, \state_back_2__N_522[2] , sys_clk_c_enable_333, 
            n38152, n10, n33269, n123, n124, n125) /* synthesis syn_module_defined=1 */ ;
    output \state[0] ;
    input sys_clk_c;
    output recv_done_d1;
    output recv_done_d0;
    output [7:0]music_tone;
    input uart_recv_done;
    output [8:0]music_cnt;
    input sys_clk_c_enable_237;
    input n126;
    input [7:0]uart_recv_data;
    input warning;
    output n4;
    output \state[1] ;
    input sys_rst_n_c;
    output n38168;
    output warning_TEM;
    input n39490;
    input GND_net;
    input n21961;
    input n38126;
    input n38124;
    input n37892;
    input \state_back_2__N_522[2] ;
    output sys_clk_c_enable_333;
    input n38152;
    input n10;
    output n33269;
    input n123;
    input n124;
    input n125;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire sys_clk_c_enable_5, n9179;
    wire [7:0]cnt_run;   // d:/new porject/top-xu/music_player.v(36[11:18])
    
    wire sys_clk_c_enable_193, n34863, sys_clk_c_enable_278;
    wire [7:0]music_tone_7__N_1641;
    wire [2:0]state_back;   // d:/new porject/top-xu/music_player.v(42[12:22])
    
    wire sys_clk_c_enable_33, sys_clk_c_enable_64, n29937;
    wire [8:0]n41;
    wire [15:0]clk_cnt;   // d:/new porject/top-xu/music_player.v(49[13:20])
    
    wire sys_clk_c_enable_125;
    wire [15:0]n69;
    wire [15:0]n121;
    
    wire n21992;
    wire [15:0]n69_adj_1863;
    wire [8:0]music_cnt_c;   // d:/new porject/top-xu/music_player.v(47[11:20])
    wire [15:0]cnt_delay;   // d:/new porject/top-xu/music_player.v(44[12:21])
    
    wire sys_clk_c_enable_84, n11870, uart_music_mode, n38073, n38072, 
        uart_data_busy_N_1710, n38173, sys_clk_c_enable_109, sys_clk_c_enable_187, 
        sys_clk_c_enable_188, sys_clk_c_enable_189, sys_clk_c_enable_190, 
        sys_clk_c_enable_191, sys_clk_c_enable_192, n125_c, n32933, 
        n381, n32932, n32931, n32930, n32929, n32928, n32907, 
        n32906, n32905, n32904, n32903, n32902, n32901, n120, 
        n32900, n35831, n32899, n38122;
    wire [4:0]n9929;
    
    wire n32898, n32897, n32896, n32895, n32894, n32893, n32892, 
        n33603, n38105, n6, n38208, n38101, n35773, n35772, n32890, 
        n32889, n32888, n32887, n17, n38201, n6_adj_1856, n86;
    wire [7:0]n131;
    
    wire n53, n33251, n10_c, n36113, n3725, n17_adj_1858, n18, 
        n16_adj_1859, n36129, n36125, n35804, n35803, n36159, n35784, 
        n38202, n36157, n5, n32784, n32783, n32782, n6_adj_1861, 
        n4_adj_1862, n36269, n36249, n32781;
    
    FD1P3AX state__i0 (.D(n9179), .SP(sys_clk_c_enable_5), .CK(sys_clk_c), 
            .Q(\state[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam state__i0.GSR = "ENABLED";
    FD1S3AX recv_done_d1_586 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam recv_done_d1_586.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i0 (.D(n34863), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .Q(cnt_run[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    FD1P3AX music_tone_i0_i0 (.D(music_tone_7__N_1641[0]), .SP(sys_clk_c_enable_278), 
            .CK(sys_clk_c), .Q(music_tone[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i0.GSR = "DISABLED";
    FD1P3AX state_back_i0_i0 (.D(\state[0] ), .SP(sys_clk_c_enable_33), 
            .CK(sys_clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    FD1S3AX recv_done_d0_585 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam recv_done_d0_585.GSR = "ENABLED";
    FD1P3IX music_cnt_3050__i1 (.D(n41[1]), .SP(sys_clk_c_enable_64), .CD(n29937), 
            .CK(sys_clk_c), .Q(music_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050__i1.GSR = "DISABLED";
    FD1P3IX music_cnt_3050__i2 (.D(n41[2]), .SP(sys_clk_c_enable_64), .CD(n29937), 
            .CK(sys_clk_c), .Q(music_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050__i2.GSR = "DISABLED";
    FD1P3IX clk_cnt_3052__i0 (.D(n69[0]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i0.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i0 (.D(n69_adj_1863[0]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i0.GSR = "DISABLED";
    FD1P3IX music_cnt_3050__i0 (.D(n41[0]), .SP(sys_clk_c_enable_64), .CD(n29937), 
            .CK(sys_clk_c), .Q(music_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050__i0.GSR = "DISABLED";
    FD1P3IX music_cnt_3050__i3 (.D(n41[3]), .SP(sys_clk_c_enable_64), .CD(n29937), 
            .CK(sys_clk_c), .Q(music_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050__i3.GSR = "DISABLED";
    FD1P3IX music_cnt_3050__i4 (.D(n41[4]), .SP(sys_clk_c_enable_64), .CD(n29937), 
            .CK(sys_clk_c), .Q(music_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050__i4.GSR = "DISABLED";
    FD1P3IX music_cnt_3050__i5 (.D(n41[5]), .SP(sys_clk_c_enable_64), .CD(n29937), 
            .CK(sys_clk_c), .Q(music_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050__i5.GSR = "DISABLED";
    FD1P3IX music_cnt_3050__i6 (.D(n41[6]), .SP(sys_clk_c_enable_64), .CD(n29937), 
            .CK(sys_clk_c), .Q(music_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050__i6.GSR = "DISABLED";
    FD1P3IX music_cnt_3050__i7 (.D(n41[7]), .SP(sys_clk_c_enable_64), .CD(n29937), 
            .CK(sys_clk_c), .Q(music_cnt_c[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050__i7.GSR = "DISABLED";
    FD1P3IX music_cnt_3050__i8 (.D(n41[8]), .SP(sys_clk_c_enable_64), .CD(n29937), 
            .CK(sys_clk_c), .Q(music_cnt_c[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050__i8.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i1 (.D(n69_adj_1863[1]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i1.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i2 (.D(n69_adj_1863[2]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i2.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i3 (.D(n69_adj_1863[3]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i3.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i4 (.D(n69_adj_1863[4]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i4.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i5 (.D(n69_adj_1863[5]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i5.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i6 (.D(n69_adj_1863[6]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i6.GSR = "DISABLED";
    LUT4 mux_366_i1_4_lut (.A(n126), .B(uart_recv_data[0]), .C(sys_clk_c_enable_84), 
         .D(n11870), .Z(music_tone_7__N_1641[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/music_player.v(102[7] 324[5])
    defparam mux_366_i1_4_lut.init = 16'hc0ca;
    LUT4 i14766_3_lut (.A(uart_music_mode), .B(n38073), .C(warning), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14766_3_lut.init = 16'hcaca;
    LUT4 i29875_4_lut (.A(n38072), .B(\state[1] ), .C(sys_rst_n_c), .D(n38168), 
         .Z(sys_clk_c_enable_33)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i29875_4_lut.init = 16'h1000;
    FD1P3AY uart_data_busy_591 (.D(uart_data_busy_N_1710), .SP(sys_clk_c_enable_84), 
            .CK(sys_clk_c), .Q(warning_TEM)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam uart_data_busy_591.GSR = "ENABLED";
    FD1P3IX cnt_delay_3051__i7 (.D(n69_adj_1863[7]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i7.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i8 (.D(n69_adj_1863[8]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i8.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i9 (.D(n69_adj_1863[9]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i9.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i10 (.D(n69_adj_1863[10]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i10.GSR = "DISABLED";
    FD1P3AX uart_music_mode_589 (.D(n38173), .SP(sys_clk_c_enable_84), .CK(sys_clk_c), 
            .Q(uart_music_mode)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam uart_music_mode_589.GSR = "ENABLED";
    FD1P3IX cnt_delay_3051__i11 (.D(n69_adj_1863[11]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i11.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i12 (.D(n69_adj_1863[12]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i12.GSR = "DISABLED";
    FD1P3AX state__i1 (.D(\state[0] ), .SP(sys_clk_c_enable_109), .CK(sys_clk_c), 
            .Q(\state[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam state__i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_3051__i13 (.D(n69_adj_1863[13]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i13.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i14 (.D(n69_adj_1863[14]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i14.GSR = "DISABLED";
    FD1P3IX cnt_delay_3051__i15 (.D(n69_adj_1863[15]), .SP(sys_clk_c_enable_125), 
            .CD(n21992), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051__i15.GSR = "DISABLED";
    FD1P3IX clk_cnt_3052__i1 (.D(n69[1]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i1.GSR = "DISABLED";
    FD1P3IX clk_cnt_3052__i2 (.D(n69[2]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i2.GSR = "DISABLED";
    FD1P3IX clk_cnt_3052__i3 (.D(n69[3]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i3.GSR = "DISABLED";
    FD1P3IX clk_cnt_3052__i4 (.D(n69[4]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i4.GSR = "DISABLED";
    FD1P3IX clk_cnt_3052__i5 (.D(n69[5]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i5.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i4 (.D(music_tone_7__N_1641[4]), .SP(sys_clk_c_enable_278), 
            .CK(sys_clk_c), .Q(music_tone[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i4.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i3 (.D(music_tone_7__N_1641[3]), .SP(sys_clk_c_enable_278), 
            .CK(sys_clk_c), .Q(music_tone[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i3.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i2 (.D(music_tone_7__N_1641[2]), .SP(sys_clk_c_enable_278), 
            .CK(sys_clk_c), .Q(music_tone[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i2.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i1 (.D(music_tone_7__N_1641[1]), .SP(sys_clk_c_enable_278), 
            .CK(sys_clk_c), .Q(music_tone[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i1.GSR = "DISABLED";
    FD1P3AX cnt_run_i0_i7 (.D(n39490), .SP(sys_clk_c_enable_187), .CK(sys_clk_c), 
            .Q(cnt_run[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i6 (.D(n39490), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .Q(cnt_run[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n39490), .SP(sys_clk_c_enable_189), .CK(sys_clk_c), 
            .Q(cnt_run[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i4 (.D(n39490), .SP(sys_clk_c_enable_190), .CK(sys_clk_c), 
            .Q(cnt_run[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n39490), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .Q(cnt_run[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i2 (.D(n39490), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .Q(cnt_run[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i1 (.D(n125_c), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .Q(cnt_run[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    CCU2D sub_2410_add_2_14 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32933), .S1(n381));
    defparam sub_2410_add_2_14.INIT0 = 16'h5555;
    defparam sub_2410_add_2_14.INIT1 = 16'h0000;
    defparam sub_2410_add_2_14.INJECT1_0 = "NO";
    defparam sub_2410_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_2410_add_2_12 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32932), .COUT(n32933));
    defparam sub_2410_add_2_12.INIT0 = 16'h5555;
    defparam sub_2410_add_2_12.INIT1 = 16'h5555;
    defparam sub_2410_add_2_12.INJECT1_0 = "NO";
    defparam sub_2410_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_2410_add_2_10 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32931), .COUT(n32932));
    defparam sub_2410_add_2_10.INIT0 = 16'h5555;
    defparam sub_2410_add_2_10.INIT1 = 16'h5555;
    defparam sub_2410_add_2_10.INJECT1_0 = "NO";
    defparam sub_2410_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_2410_add_2_8 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32930), .COUT(n32931));
    defparam sub_2410_add_2_8.INIT0 = 16'h5555;
    defparam sub_2410_add_2_8.INIT1 = 16'h5555;
    defparam sub_2410_add_2_8.INJECT1_0 = "NO";
    defparam sub_2410_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_2410_add_2_6 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32929), .COUT(n32930));
    defparam sub_2410_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_2410_add_2_6.INIT1 = 16'h5555;
    defparam sub_2410_add_2_6.INJECT1_0 = "NO";
    defparam sub_2410_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_2410_add_2_4 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32928), .COUT(n32929));
    defparam sub_2410_add_2_4.INIT0 = 16'h5555;
    defparam sub_2410_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_2410_add_2_4.INJECT1_0 = "NO";
    defparam sub_2410_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_2410_add_2_2 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32928));
    defparam sub_2410_add_2_2.INIT0 = 16'h5000;
    defparam sub_2410_add_2_2.INIT1 = 16'h5555;
    defparam sub_2410_add_2_2.INJECT1_0 = "NO";
    defparam sub_2410_add_2_2.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_3052__i6 (.D(n69[6]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i6.GSR = "DISABLED";
    CCU2D clk_cnt_3052_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32907), .S0(n69[15]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_3052_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_3052_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_3052_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32906), .COUT(n32907), .S0(n69[13]), .S1(n69[14]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_3052_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_3052_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32905), .COUT(n32906), .S0(n69[11]), .S1(n69[12]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_3052_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_3052_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32904), .COUT(n32905), .S0(n69[9]), .S1(n69[10]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_3052_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_3052_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32903), .COUT(n32904), .S0(n69[7]), .S1(n69[8]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_3052_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_3052_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32902), .COUT(n32903), .S0(n69[5]), .S1(n69[6]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_3052_add_4_7.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_3052__i7 (.D(n69[7]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i7.GSR = "DISABLED";
    CCU2D clk_cnt_3052_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32901), .COUT(n32902), .S0(n69[3]), .S1(n69[4]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_3052_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(cnt_run[3]), .B(cnt_run[6]), .C(cnt_run[7]), 
         .Z(n120)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    CCU2D clk_cnt_3052_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32900), .COUT(n32901), .S0(n69[1]), .S1(n69[2]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_3052_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_3052_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_210 (.A(cnt_run[3]), .B(cnt_run[6]), .C(cnt_run[4]), 
         .Z(n35831)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_210.init = 16'hfefe;
    LUT4 i29963_2_lut_rep_642 (.A(recv_done_d0), .B(recv_done_d1), .Z(sys_clk_c_enable_84)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam i29963_2_lut_rep_642.init = 16'h2222;
    LUT4 i29877_3_lut_4_lut (.A(recv_done_d0), .B(recv_done_d1), .C(n4), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_278)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam i29877_3_lut_4_lut.init = 16'h2f00;
    FD1P3IX clk_cnt_3052__i8 (.D(n69[8]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i8.GSR = "DISABLED";
    CCU2D clk_cnt_3052_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32900), .S1(n69[0]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_3052_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_3052_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_3052_add_4_1.INJECT1_1 = "NO";
    LUT4 i19998_2_lut_rep_581_3_lut (.A(recv_done_d0), .B(recv_done_d1), 
         .C(warning), .Z(n38168)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam i19998_2_lut_rep_581_3_lut.init = 16'hd0d0;
    CCU2D cnt_delay_3051_add_4_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32899), .S0(n69_adj_1863[15]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_17.INIT1 = 16'h0000;
    defparam cnt_delay_3051_add_4_17.INJECT1_0 = "NO";
    defparam cnt_delay_3051_add_4_17.INJECT1_1 = "NO";
    LUT4 i2_2_lut_rep_535_3_lut_4_lut (.A(recv_done_d0), .B(recv_done_d1), 
         .C(sys_rst_n_c), .D(warning), .Z(n38122)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam i2_2_lut_rep_535_3_lut_4_lut.init = 16'hd000;
    FD1P3IX clk_cnt_3052__i9 (.D(n69[9]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i9.GSR = "DISABLED";
    FD1P3IX clk_cnt_3052__i10 (.D(n69[10]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i10.GSR = "DISABLED";
    FD1P3IX clk_cnt_3052__i11 (.D(n69[11]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i11.GSR = "DISABLED";
    FD1P3IX clk_cnt_3052__i12 (.D(n69[12]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i12.GSR = "DISABLED";
    LUT4 mux_366_i3_3_lut_4_lut (.A(recv_done_d0), .B(recv_done_d1), .C(uart_recv_data[2]), 
         .D(n9929[2]), .Z(music_tone_7__N_1641[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam mux_366_i3_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_366_i2_3_lut_4_lut (.A(recv_done_d0), .B(recv_done_d1), .C(uart_recv_data[1]), 
         .D(n9929[1]), .Z(music_tone_7__N_1641[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam mux_366_i2_3_lut_4_lut.init = 16'hfd20;
    FD1P3IX clk_cnt_3052__i13 (.D(n69[13]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i13.GSR = "DISABLED";
    CCU2D cnt_delay_3051_add_4_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32898), .COUT(n32899), .S0(n69_adj_1863[13]), 
          .S1(n69_adj_1863[14]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_15.INJECT1_0 = "NO";
    defparam cnt_delay_3051_add_4_15.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_3052__i14 (.D(n69[14]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i14.GSR = "DISABLED";
    CCU2D cnt_delay_3051_add_4_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32897), .COUT(n32898), .S0(n69_adj_1863[11]), 
          .S1(n69_adj_1863[12]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_13.INJECT1_0 = "NO";
    defparam cnt_delay_3051_add_4_13.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_3052__i15 (.D(n69[15]), .SP(sys_clk_c_enable_237), .CD(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3052__i15.GSR = "DISABLED";
    CCU2D cnt_delay_3051_add_4_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32896), .COUT(n32897), .S0(n69_adj_1863[9]), 
          .S1(n69_adj_1863[10]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_11.INJECT1_0 = "NO";
    defparam cnt_delay_3051_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_delay_3051_add_4_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32895), .COUT(n32896), .S0(n69_adj_1863[7]), 
          .S1(n69_adj_1863[8]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_9.INJECT1_0 = "NO";
    defparam cnt_delay_3051_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_delay_3051_add_4_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32894), .COUT(n32895), .S0(n69_adj_1863[5]), 
          .S1(n69_adj_1863[6]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_7.INJECT1_0 = "NO";
    defparam cnt_delay_3051_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_delay_3051_add_4_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32893), .COUT(n32894), .S0(n69_adj_1863[3]), 
          .S1(n69_adj_1863[4]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_5.INJECT1_0 = "NO";
    defparam cnt_delay_3051_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_delay_3051_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32892), .COUT(n32893), .S0(n69_adj_1863[1]), .S1(n69_adj_1863[2]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_delay_3051_add_4_3.INJECT1_0 = "NO";
    defparam cnt_delay_3051_add_4_3.INJECT1_1 = "NO";
    LUT4 i15357_2_lut_3_lut (.A(n33603), .B(sys_clk_c_enable_237), .C(n381), 
         .Z(n21992)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i15357_2_lut_3_lut.init = 16'h4040;
    LUT4 i29844_2_lut_2_lut_4_lut (.A(\state[0] ), .B(cnt_run[0]), .C(n38105), 
         .D(n6), .Z(sys_clk_c_enable_109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(D))) */ ;   // d:/new porject/top-xu/music_player.v(112[4] 322[11])
    defparam i29844_2_lut_2_lut_4_lut.init = 16'h5d00;
    LUT4 i5344_2_lut_4_lut (.A(n38208), .B(cnt_run[0]), .C(n38105), .D(warning), 
         .Z(n11870)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/new porject/top-xu/music_player.v(261[7:11])
    defparam i5344_2_lut_4_lut.init = 16'hfeff;
    CCU2D cnt_delay_3051_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32892), .S1(n69_adj_1863[0]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3051_add_4_1.INIT0 = 16'hF000;
    defparam cnt_delay_3051_add_4_1.INIT1 = 16'h0555;
    defparam cnt_delay_3051_add_4_1.INJECT1_0 = "NO";
    defparam cnt_delay_3051_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(cnt_run[2]), .B(n38101), .C(cnt_run[7]), .D(n35831), 
         .Z(n35773)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i2_3_lut_4_lut.init = 16'h0040;
    LUT4 i2_3_lut_4_lut_adj_211 (.A(cnt_run[2]), .B(n38101), .C(cnt_run[4]), 
         .D(n120), .Z(n35772)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i2_3_lut_4_lut_adj_211.init = 16'h0040;
    CCU2D music_cnt_3050_add_4_9 (.A0(music_cnt_c[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt_c[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32890), .S0(n41[7]), .S1(n41[8]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050_add_4_9.INIT0 = 16'hfaaa;
    defparam music_cnt_3050_add_4_9.INIT1 = 16'hfaaa;
    defparam music_cnt_3050_add_4_9.INJECT1_0 = "NO";
    defparam music_cnt_3050_add_4_9.INJECT1_1 = "NO";
    FD1P3IX music_tone_i0_i5 (.D(uart_recv_data[5]), .SP(sys_clk_c_enable_278), 
            .CD(n21961), .CK(sys_clk_c), .Q(music_tone[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i5.GSR = "DISABLED";
    CCU2D music_cnt_3050_add_4_7 (.A0(music_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32889), .COUT(n32890), .S0(n41[5]), .S1(n41[6]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050_add_4_7.INIT0 = 16'hfaaa;
    defparam music_cnt_3050_add_4_7.INIT1 = 16'hfaaa;
    defparam music_cnt_3050_add_4_7.INJECT1_0 = "NO";
    defparam music_cnt_3050_add_4_7.INJECT1_1 = "NO";
    CCU2D music_cnt_3050_add_4_5 (.A0(music_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32888), .COUT(n32889), .S0(n41[3]), .S1(n41[4]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050_add_4_5.INIT0 = 16'hfaaa;
    defparam music_cnt_3050_add_4_5.INIT1 = 16'hfaaa;
    defparam music_cnt_3050_add_4_5.INJECT1_0 = "NO";
    defparam music_cnt_3050_add_4_5.INJECT1_1 = "NO";
    FD1P3IX music_tone_i0_i6 (.D(uart_recv_data[6]), .SP(sys_clk_c_enable_278), 
            .CD(n21961), .CK(sys_clk_c), .Q(music_tone[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i6.GSR = "DISABLED";
    FD1P3IX music_tone_i0_i7 (.D(uart_recv_data[7]), .SP(sys_clk_c_enable_278), 
            .CD(n21961), .CK(sys_clk_c), .Q(music_tone[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=449, LSE_RLINE=462 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i7.GSR = "DISABLED";
    CCU2D music_cnt_3050_add_4_3 (.A0(music_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32887), .COUT(n32888), .S0(n41[1]), .S1(n41[2]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050_add_4_3.INIT0 = 16'hfaaa;
    defparam music_cnt_3050_add_4_3.INIT1 = 16'hfaaa;
    defparam music_cnt_3050_add_4_3.INJECT1_0 = "NO";
    defparam music_cnt_3050_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_484_4_lut (.A(\state[0] ), .B(n38122), .C(\state[1] ), 
         .D(n33603), .Z(sys_clk_c_enable_125)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_484_4_lut.init = 16'h0040;
    CCU2D music_cnt_3050_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32887), .S1(n41[0]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3050_add_4_1.INIT0 = 16'hF000;
    defparam music_cnt_3050_add_4_1.INIT1 = 16'h0555;
    defparam music_cnt_3050_add_4_1.INJECT1_0 = "NO";
    defparam music_cnt_3050_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut_4_lut (.A(cnt_run[5]), .B(n17), .C(n38201), .D(n35831), 
         .Z(n6_adj_1856)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i2_2_lut_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut (.A(n38126), .B(n38124), .C(n37892), .D(\state_back_2__N_522[2] ), 
         .Z(sys_clk_c_enable_333)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(62[15:25])
    defparam i1_3_lut_4_lut.init = 16'h8880;
    LUT4 i1_2_lut_rep_518 (.A(cnt_run[1]), .B(n86), .Z(n38105)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i1_2_lut_rep_518.init = 16'heeee;
    LUT4 i11_3_lut_4_lut (.A(cnt_run[1]), .B(n86), .C(cnt_run[0]), .D(n131[0]), 
         .Z(n34863)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i11_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_3_lut_rep_485_4_lut (.A(cnt_run[1]), .B(n86), .C(cnt_run[0]), 
         .D(\state[0] ), .Z(n38072)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i1_3_lut_rep_485_4_lut.init = 16'hef00;
    LUT4 i2_3_lut_rep_486_4_lut (.A(cnt_run[1]), .B(n86), .C(cnt_run[0]), 
         .D(n38208), .Z(n38073)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i2_3_lut_rep_486_4_lut.init = 16'hfffe;
    LUT4 i73_2_lut_3_lut (.A(cnt_run[1]), .B(n86), .C(n131[2]), .Z(n53)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i73_2_lut_3_lut.init = 16'h1010;
    LUT4 i144_4_lut_4_lut (.A(cnt_run[1]), .B(n86), .C(n33251), .D(n131[1]), 
         .Z(n125_c)) /* synthesis lut_function=(A (C)+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i144_4_lut_4_lut.init = 16'hb1a0;
    LUT4 i4_4_lut (.A(uart_recv_data[7]), .B(uart_recv_data[5]), .C(uart_recv_data[0]), 
         .D(uart_recv_data[6]), .Z(n10_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i29276_2_lut (.A(uart_recv_data[1]), .B(uart_recv_data[4]), .Z(n36113)) /* synthesis lut_function=(A (B)) */ ;
    defparam i29276_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(cnt_run[0]), .B(n6), .C(\state[0] ), .D(n38105), 
         .Z(sys_clk_c_enable_5)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C)+!B))) */ ;
    defparam i1_4_lut.init = 16'h0c8c;
    LUT4 mux_2853_i1_4_lut (.A(\state[0] ), .B(state_back[0]), .C(\state[1] ), 
         .D(n3725), .Z(n9179)) /* synthesis lut_function=(!(A+!(B+!(C (D))))) */ ;   // d:/new porject/top-xu/music_player.v(112[4] 322[11])
    defparam mux_2853_i1_4_lut.init = 16'h4555;
    LUT4 i1249_2_lut (.A(n381), .B(n33603), .Z(n3725)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/music_player.v(314[26] 317[24])
    defparam i1249_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_212 (.A(n38168), .B(n3725), .C(\state[1] ), .D(\state[0] ), 
         .Z(n6)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;
    defparam i1_4_lut_adj_212.init = 16'h0a8a;
    LUT4 i3_4_lut (.A(cnt_run[4]), .B(cnt_run[5]), .C(cnt_run[2]), .D(n120), 
         .Z(n86)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(sys_rst_n_c), .B(n38152), .C(n10), .D(\state_back_2__N_522[2] ), 
         .Z(n33269)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i2_4_lut (.A(clk_cnt[9]), .B(n17_adj_1858), .C(clk_cnt[5]), .D(n18), 
         .Z(n33603)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i7_4_lut (.A(clk_cnt[12]), .B(clk_cnt[2]), .C(clk_cnt[8]), .D(clk_cnt[4]), 
         .Z(n17_adj_1858)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(clk_cnt[1]), .B(n16_adj_1859), .C(n36129), .D(n36125), 
         .Z(n18)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i8_4_lut.init = 16'hefff;
    LUT4 i6_4_lut (.A(clk_cnt[15]), .B(clk_cnt[0]), .C(clk_cnt[3]), .D(clk_cnt[14]), 
         .Z(n16_adj_1859)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i29292_2_lut (.A(clk_cnt[11]), .B(clk_cnt[10]), .Z(n36129)) /* synthesis lut_function=(A (B)) */ ;
    defparam i29292_2_lut.init = 16'h8888;
    LUT4 i29288_3_lut (.A(clk_cnt[7]), .B(clk_cnt[13]), .C(clk_cnt[6]), 
         .Z(n36125)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i29288_3_lut.init = 16'h8080;
    LUT4 mux_366_i5_4_lut (.A(uart_music_mode), .B(uart_recv_data[4]), .C(sys_clk_c_enable_84), 
         .D(warning), .Z(music_tone_7__N_1641[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(102[7] 324[5])
    defparam mux_366_i5_4_lut.init = 16'hc0c5;
    LUT4 mux_366_i4_4_lut (.A(n123), .B(uart_recv_data[3]), .C(sys_clk_c_enable_84), 
         .D(n11870), .Z(music_tone_7__N_1641[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/music_player.v(102[7] 324[5])
    defparam mux_366_i4_4_lut.init = 16'hc0ca;
    LUT4 mux_3454_i3_4_lut (.A(uart_music_mode), .B(n124), .C(warning), 
         .D(n38073), .Z(n9929[2])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // d:/new porject/top-xu/music_player.v(111[8] 323[6])
    defparam mux_3454_i3_4_lut.init = 16'h05c5;
    LUT4 mux_3454_i2_4_lut (.A(uart_music_mode), .B(n125), .C(warning), 
         .D(n38073), .Z(n9929[1])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // d:/new porject/top-xu/music_player.v(111[8] 323[6])
    defparam mux_3454_i2_4_lut.init = 16'h05c5;
    LUT4 i1_4_lut_adj_213 (.A(sys_clk_c_enable_193), .B(n35773), .C(n38105), 
         .D(n131[7]), .Z(sys_clk_c_enable_187)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i1_4_lut_adj_213.init = 16'h8a88;
    LUT4 i14177_4_lut (.A(sys_clk_c_enable_193), .B(n38105), .C(n35804), 
         .D(n131[6]), .Z(sys_clk_c_enable_188)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i14177_4_lut.init = 16'ha2a0;
    LUT4 i2_3_lut (.A(n35803), .B(cnt_run[6]), .C(n17), .Z(n35804)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i14175_4_lut (.A(sys_clk_c_enable_193), .B(n36159), .C(n38105), 
         .D(n131[5]), .Z(sys_clk_c_enable_189)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i14175_4_lut.init = 16'h8a88;
    LUT4 i29321_4_lut (.A(n17), .B(n35784), .C(cnt_run[3]), .D(cnt_run[5]), 
         .Z(n36159)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i29321_4_lut.init = 16'h0400;
    LUT4 i2_4_lut_adj_214 (.A(n38202), .B(n38201), .C(cnt_run[6]), .D(cnt_run[2]), 
         .Z(n35784)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/new porject/top-xu/music_player.v(36[11:18])
    defparam i2_4_lut_adj_214.init = 16'h0004;
    LUT4 i14173_4_lut (.A(sys_clk_c_enable_193), .B(n38105), .C(n35772), 
         .D(n131[4]), .Z(sys_clk_c_enable_190)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i14173_4_lut.init = 16'ha2a0;
    LUT4 i14171_4_lut (.A(sys_clk_c_enable_193), .B(n36157), .C(n38105), 
         .D(n131[3]), .Z(sys_clk_c_enable_191)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i14171_4_lut.init = 16'h8a88;
    LUT4 i29319_4_lut (.A(n17), .B(n35784), .C(cnt_run[3]), .D(cnt_run[5]), 
         .Z(n36157)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i29319_4_lut.init = 16'h0040;
    LUT4 i14169_4_lut (.A(sys_clk_c_enable_193), .B(n53), .C(n5), .D(n6_adj_1856), 
         .Z(sys_clk_c_enable_192)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i14169_4_lut.init = 16'ha888;
    LUT4 i1_2_lut (.A(cnt_run[7]), .B(cnt_run[2]), .Z(n5)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_adj_215 (.A(cnt_run[0]), .B(n17), .C(n86), .Z(n33251)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/new porject/top-xu/music_player.v(280[12:30])
    defparam i2_3_lut_adj_215.init = 16'hfbfb;
    CCU2D add_114_9 (.A0(cnt_run[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32784), 
          .S0(n131[7]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_9.INIT0 = 16'h5aaa;
    defparam add_114_9.INIT1 = 16'h0000;
    defparam add_114_9.INJECT1_0 = "NO";
    defparam add_114_9.INJECT1_1 = "NO";
    CCU2D add_114_7 (.A0(cnt_run[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32783), .COUT(n32784), .S0(n131[5]), .S1(n131[6]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_7.INIT0 = 16'h5aaa;
    defparam add_114_7.INIT1 = 16'h5aaa;
    defparam add_114_7.INJECT1_0 = "NO";
    defparam add_114_7.INJECT1_1 = "NO";
    CCU2D add_114_5 (.A0(cnt_run[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32782), .COUT(n32783), .S0(n131[3]), .S1(n131[4]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_5.INIT0 = 16'h5aaa;
    defparam add_114_5.INIT1 = 16'h5aaa;
    defparam add_114_5.INJECT1_0 = "NO";
    defparam add_114_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_216 (.A(warning), .B(sys_clk_c_enable_84), 
         .C(cnt_run[6]), .D(sys_rst_n_c), .Z(n6_adj_1861)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_216.init = 16'h0200;
    LUT4 i4_4_lut_adj_217 (.A(\state[1] ), .B(n35803), .C(\state[0] ), 
         .D(n6_adj_1861), .Z(sys_clk_c_enable_64)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/new porject/top-xu/music_player.v(112[4] 322[11])
    defparam i4_4_lut_adj_217.init = 16'h4000;
    LUT4 i1_2_lut_adj_218 (.A(n17), .B(sys_clk_c_enable_64), .Z(n29937)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i1_2_lut_adj_218.init = 16'h4444;
    LUT4 i2_4_lut_adj_219 (.A(cnt_run[3]), .B(n38201), .C(n4_adj_1862), 
         .D(cnt_run[2]), .Z(n35803)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut_adj_219.init = 16'h0004;
    LUT4 i3_4_lut_adj_220 (.A(music_cnt[5]), .B(music_cnt_c[7]), .C(music_cnt_c[8]), 
         .D(n36269), .Z(n17)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_220.init = 16'hfeff;
    LUT4 i29429_3_lut (.A(music_cnt[4]), .B(n36249), .C(music_cnt[1]), 
         .Z(n36269)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i29429_3_lut.init = 16'h8080;
    LUT4 i29409_4_lut (.A(music_cnt[6]), .B(music_cnt[3]), .C(music_cnt[0]), 
         .D(music_cnt[2]), .Z(n36249)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29409_4_lut.init = 16'h8000;
    LUT4 i5_4_lut_rep_586 (.A(uart_recv_data[3]), .B(n10_c), .C(uart_recv_data[2]), 
         .D(n36113), .Z(n38173)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i5_4_lut_rep_586.init = 16'hefff;
    LUT4 uart_recv_data_7__I_0_i16_1_lut_4_lut (.A(uart_recv_data[3]), .B(n10_c), 
         .C(uart_recv_data[2]), .D(n36113), .Z(uart_data_busy_N_1710)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam uart_recv_data_7__I_0_i16_1_lut_4_lut.init = 16'h1000;
    CCU2D add_114_3 (.A0(cnt_run[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32781), .COUT(n32782), .S0(n131[1]), .S1(n131[2]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_3.INIT0 = 16'h5aaa;
    defparam add_114_3.INIT1 = 16'h5aaa;
    defparam add_114_3.INJECT1_0 = "NO";
    defparam add_114_3.INJECT1_1 = "NO";
    CCU2D add_114_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32781), .S1(n131[0]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_1.INIT0 = 16'hF000;
    defparam add_114_1.INIT1 = 16'h5555;
    defparam add_114_1.INJECT1_0 = "NO";
    defparam add_114_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_614 (.A(cnt_run[1]), .B(cnt_run[0]), .Z(n38201)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i1_2_lut_rep_614.init = 16'h2222;
    LUT4 i2_3_lut_rep_514_4_lut (.A(cnt_run[1]), .B(cnt_run[0]), .C(n17), 
         .D(cnt_run[5]), .Z(n38101)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i2_3_lut_rep_514_4_lut.init = 16'h0002;
    LUT4 i145_2_lut_rep_615 (.A(cnt_run[4]), .B(cnt_run[7]), .Z(n38202)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i145_2_lut_rep_615.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_221 (.A(cnt_run[4]), .B(cnt_run[7]), .C(cnt_run[5]), 
         .Z(n4_adj_1862)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_221.init = 16'hfefe;
    LUT4 i1_2_lut_rep_621 (.A(\state[0] ), .B(\state[1] ), .Z(n38208)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/music_player.v(261[7:11])
    defparam i1_2_lut_rep_621.init = 16'hdddd;
    LUT4 i29956_2_lut_2_lut_3_lut_4_lut (.A(\state[0] ), .B(\state[1] ), 
         .C(sys_clk_c_enable_84), .D(warning), .Z(sys_clk_c_enable_193)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/music_player.v(261[7:11])
    defparam i29956_2_lut_2_lut_3_lut_4_lut.init = 16'h0200;
    
endmodule
//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000) 
//

module \uart_recv(CLK_FREQ=12000000)  (sys_clk_c, sys_clk_c_enable_103, 
            rx_flag, uart_recv_done, uart_rxd_c, uart_recv_data, n38174, 
            n31, GND_net, n38108) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_clk_c_enable_103;
    output rx_flag;
    output uart_recv_done;
    input uart_rxd_c;
    output [7:0]uart_recv_data;
    output n38174;
    output n31;
    input GND_net;
    output n38108;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire [7:0]rxdata;   // d:/new porject/top-xu/uart_recv.v(43[12:18])
    
    wire n9763, n20761, uart_rxd_d1, uart_rxd_d0, n21660, uart_data_7__N_1496;
    wire [15:0]clk_cnt;   // d:/new porject/top-xu/uart_recv.v(40[12:19])
    
    wire n21892;
    wire [15:0]n69;
    
    wire n21884;
    wire [15:0]n2042;
    
    wire sys_clk_c_enable_226, n20758, n20752, n20740, n20743, n20755, 
        n20749, n20746, n38242, n38132, n38244, n38172, n38130, 
        n35882, n38199, n35544, n6, n20688, n15, n14, n35895, 
        n35894, n35854, n35855, n35863, n35860, n35866, rx_flag_N_1497, 
        n32877, n32876, n32875, n32874, n32873, n32872, n32871, 
        n32870, n4, n33020;
    
    FD1P3IX rxdata__i0 (.D(n20761), .SP(sys_clk_c_enable_103), .CD(n9763), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n21660), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_1496), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i0.GSR = "ENABLED";
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n21884), 
            .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    FD1P3JX rx_cnt_FSM_i0 (.D(n2042[15]), .SP(sys_clk_c_enable_226), .PD(n9763), 
            .CK(sys_clk_c), .Q(n2042[0]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n20758), .SP(sys_clk_c_enable_103), .CD(n9763), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n20752), .SP(sys_clk_c_enable_103), .CD(n9763), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n20740), .SP(sys_clk_c_enable_103), .CD(n9763), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n20743), .SP(sys_clk_c_enable_103), .CD(n9763), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n20755), .SP(sys_clk_c_enable_103), .CD(n9763), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i6 (.D(n20749), .SP(sys_clk_c_enable_103), .CD(n9763), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i7 (.D(n20746), .SP(sys_clk_c_enable_103), .CD(n9763), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n21884), 
            .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n21884), 
            .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n21884), 
            .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n21884), 
            .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n21884), 
            .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n21884), 
            .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n21884), 
            .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=423, LSE_RLINE=430 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_3048__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n21892), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048__i1.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n2042[0]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[1]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n2042[1]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[2]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n2042[2]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[3]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n2042[3]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[4]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n2042[4]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[5]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n2042[5]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[6]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n2042[6]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[7]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n2042[7]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[8]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n2042[8]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(uart_data_7__N_1496));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_1496), .SP(sys_clk_c_enable_226), 
            .CD(n9763), .CK(sys_clk_c), .Q(n2042[10]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n2042[10]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[11]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n2042[11]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[12]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n2042[12]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[13]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i14 (.D(n2042[13]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[14]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i15 (.D(n2042[14]), .SP(sys_clk_c_enable_226), .CD(n9763), 
            .CK(sys_clk_c), .Q(n2042[15]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_655 (.A(n2042[6]), .B(n2042[7]), .Z(n38242)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_655.init = 16'heeee;
    LUT4 i1_2_lut_rep_587_3_lut (.A(n2042[6]), .B(n2042[7]), .C(n2042[8]), 
         .Z(n38174)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_587_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_545_3_lut_4_lut (.A(n2042[6]), .B(n2042[7]), .C(n2042[5]), 
         .D(n2042[8]), .Z(n38132)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_545_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_657 (.A(n2042[3]), .B(n2042[2]), .Z(n38244)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_657.init = 16'heeee;
    LUT4 i1_2_lut_rep_585_3_lut (.A(n2042[3]), .B(n2042[2]), .C(n2042[1]), 
         .Z(n38172)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_585_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_543_3_lut_4_lut (.A(n2042[3]), .B(n2042[2]), .C(n2042[4]), 
         .D(n2042[1]), .Z(n38130)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_543_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3278_1_lut (.A(rx_flag), .Z(n9763)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/uart_recv.v(70[10] 78[8])
    defparam i3278_1_lut.init = 16'h5555;
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[0]), .C(n2042[1]), .D(n35882), 
         .Z(n20761)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i29943_4_lut (.A(clk_cnt[6]), .B(clk_cnt[4]), .C(n38199), .D(n35544), 
         .Z(sys_clk_c_enable_226)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i29943_4_lut.init = 16'h0020;
    LUT4 i4_4_lut (.A(clk_cnt[0]), .B(n35544), .C(clk_cnt[4]), .D(n6), 
         .Z(n31)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i4_4_lut.init = 16'hffef;
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(clk_cnt[2]), .B(n20688), .C(clk_cnt[5]), .D(clk_cnt[3]), 
         .Z(n35544)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[13]), .C(n14), .D(clk_cnt[14]), 
         .Z(n20688)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(86[13:34])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[9]), .B(clk_cnt[15]), .C(clk_cnt[10]), .D(clk_cnt[7]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(86[13:34])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[8]), .B(clk_cnt[12]), .C(clk_cnt[11]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(86[13:34])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2042[5]), .B(n38130), .C(n2042[6]), 
         .D(n2042[8]), .Z(n35895)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_195 (.A(n2042[5]), .B(n38130), .C(n2042[7]), 
         .D(n2042[8]), .Z(n35894)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_195.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_196 (.A(n2042[4]), .B(n38132), .C(n2042[3]), 
         .D(n2042[1]), .Z(n35854)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_196.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_197 (.A(n2042[4]), .B(n38132), .C(n2042[2]), 
         .D(n2042[1]), .Z(n35855)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_197.init = 16'hfffe;
    LUT4 i1_4_lut_adj_198 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n2042[2]), 
         .D(n35854), .Z(n20758)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_198.init = 16'heca0;
    LUT4 i1_4_lut_adj_199 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n2042[3]), 
         .D(n35855), .Z(n20752)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_199.init = 16'heca0;
    LUT4 i1_4_lut_adj_200 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n2042[4]), 
         .D(n35863), .Z(n20740)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_200.init = 16'heca0;
    LUT4 i1_4_lut_adj_201 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n2042[5]), 
         .D(n35860), .Z(n20743)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_201.init = 16'heca0;
    LUT4 i1_4_lut_adj_202 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n2042[6]), 
         .D(n35894), .Z(n20755)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_202.init = 16'heca0;
    LUT4 i1_4_lut_adj_203 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n2042[7]), 
         .D(n35895), .Z(n20749)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_203.init = 16'heca0;
    LUT4 i1_4_lut_adj_204 (.A(uart_rxd_d1), .B(rxdata[7]), .C(n2042[8]), 
         .D(n35866), .Z(n20746)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_204.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_205 (.A(n2042[4]), .B(n38172), .C(n38242), 
         .D(n2042[5]), .Z(n35866)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_205.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_206 (.A(n2042[5]), .B(n38174), .C(n38244), 
         .D(n2042[4]), .Z(n35882)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_206.init = 16'hfffe;
    LUT4 i15014_4_lut (.A(uart_data_7__N_1496), .B(rx_flag_N_1497), .C(rx_flag), 
         .D(n31), .Z(n21660)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(70[10] 78[8])
    defparam i15014_4_lut.init = 16'hfcdc;
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_1497)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    CCU2D clk_cnt_3048_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32877), .S0(n69[15]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_3048_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_3048_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_3048_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32876), .COUT(n32877), .S0(n69[13]), .S1(n69[14]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_3048_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_3048_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32875), .COUT(n32876), .S0(n69[11]), .S1(n69[12]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_3048_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_3048_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32874), .COUT(n32875), .S0(n69[9]), .S1(n69[10]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_3048_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_3048_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32873), .COUT(n32874), .S0(n69[7]), .S1(n69[8]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_3048_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_3048_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32872), .COUT(n32873), .S0(n69[5]), .S1(n69[6]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_3048_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_3048_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32871), .COUT(n32872), .S0(n69[3]), .S1(n69[4]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_3048_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_3048_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32870), .COUT(n32871), .S0(n69[1]), .S1(n69[2]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_3048_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_3048_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_521_3_lut_4_lut (.A(n2042[1]), .B(n38244), .C(n2042[5]), 
         .D(n2042[4]), .Z(n38108)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_521_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_207 (.A(n2042[1]), .B(n38244), .C(n38174), 
         .D(n2042[4]), .Z(n35860)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_207.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_208 (.A(n2042[1]), .B(n38244), .C(n38174), 
         .D(n2042[5]), .Z(n35863)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_208.init = 16'hfffe;
    CCU2D clk_cnt_3048_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32870), .S1(n69[0]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3048_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_3048_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_3048_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_3048_add_4_1.INJECT1_1 = "NO";
    LUT4 i29836_4_lut (.A(rx_flag), .B(clk_cnt[6]), .C(n20688), .D(n4), 
         .Z(n21892)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/new porject/top-xu/uart_recv.v(92[9:26])
    defparam i29836_4_lut.init = 16'hfdf5;
    LUT4 i1_4_lut_adj_209 (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n33020), 
         .D(clk_cnt[3]), .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_209.init = 16'hccc8;
    LUT4 i1_2_lut_rep_612 (.A(clk_cnt[0]), .B(clk_cnt[1]), .Z(n38199)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_612.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(clk_cnt[0]), .B(clk_cnt[1]), .C(clk_cnt[2]), 
         .Z(n33020)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i15236_1_lut (.A(uart_data_7__N_1496), .Z(n21884)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam i15236_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module BCD_U7
//

module BCD_U7 (\ds18b20_data[6] , \ds18b20_data[7] , \Tem_lower[3] , \Tem_high[0] , 
            \ds18b20_data[5] , \Tem_lower[1] , \cnt_main[0] , n8692, 
            n36380, \Tem_lower[2] , \hundres_1__N_345[1] , \Tem_high[2] , 
            \ds18b20_data[8] , \hundres_1__N_345[0] , n39479) /* synthesis syn_module_defined=1 */ ;
    input \ds18b20_data[6] ;
    input \ds18b20_data[7] ;
    output \Tem_lower[3] ;
    output \Tem_high[0] ;
    input \ds18b20_data[5] ;
    output \Tem_lower[1] ;
    input \cnt_main[0] ;
    input n8692;
    output n36380;
    output \Tem_lower[2] ;
    input \hundres_1__N_345[1] ;
    output \Tem_high[2] ;
    input \ds18b20_data[8] ;
    input \hundres_1__N_345[0] ;
    output n39479;
    
    
    wire n38121;
    wire [3:0]hundres_1__N_346;
    
    wire n38299, n38300, n38301, n38053;
    wire [3:0]hundres_1__N_347;
    
    wire n38044, n38033;
    wire [3:0]hundres_0__N_353;
    
    wire n38093, n38011, n38009, n38034;
    wire [3:0]hundres_0__N_356;
    
    wire n38010, n37993, n39478, n39477, n37984, n38197;
    
    LUT4 i4099_2_lut_rep_437_4_lut_4_lut_else_4_lut (.A(\ds18b20_data[6] ), 
         .B(n38121), .C(hundres_1__N_346[1]), .D(hundres_1__N_346[2]), 
         .Z(n38299)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4099_2_lut_rep_437_4_lut_4_lut_else_4_lut.init = 16'h9592;
    PFUMX i30533 (.BLUT(n38299), .ALUT(n38300), .C0(\ds18b20_data[7] ), 
          .Z(n38301));
    LUT4 i3446_3_lut_rep_446_4_lut (.A(hundres_1__N_346[1]), .B(n38053), 
         .C(hundres_1__N_347[1]), .D(n38044), .Z(n38033)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3446_3_lut_rep_446_4_lut.init = 16'hf666;
    LUT4 i12648_2_lut_rep_466_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38121), 
         .C(hundres_1__N_346[1]), .D(hundres_1__N_346[2]), .Z(n38053)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i12648_2_lut_rep_466_3_lut_4_lut.init = 16'heee0;
    LUT4 i4170_3_lut_4_lut_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38121), 
         .C(hundres_1__N_346[1]), .D(hundres_1__N_346[2]), .Z(hundres_0__N_353[0])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4170_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3445_3_lut_rep_506 (.A(\ds18b20_data[7] ), .B(n38121), .C(hundres_1__N_346[1]), 
         .D(hundres_1__N_346[2]), .Z(n38093)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3445_3_lut_rep_506.init = 16'hffe0;
    LUT4 i4156_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38121), .C(hundres_1__N_346[1]), 
         .D(hundres_1__N_346[2]), .Z(hundres_1__N_347[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4156_3_lut_4_lut.init = 16'h998c;
    LUT4 i4121_3_lut_rep_424_4_lut_3_lut_4_lut (.A(hundres_1__N_346[1]), .B(n38053), 
         .C(hundres_1__N_347[1]), .D(n38044), .Z(n38011)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4121_3_lut_rep_424_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4114_2_lut_rep_422_3_lut_3_lut_4_lut (.A(hundres_1__N_346[1]), .B(n38053), 
         .C(hundres_1__N_347[1]), .D(n38044), .Z(n38009)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4114_2_lut_rep_422_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3448_3_lut_rep_406_4_lut (.A(hundres_1__N_347[1]), .B(n38034), 
         .C(hundres_0__N_356[1]), .D(n38010), .Z(n37993)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3448_3_lut_rep_406_4_lut.init = 16'hf666;
    LUT4 i4065_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_347[1]), .B(n38034), 
         .C(hundres_0__N_356[1]), .D(n38010), .Z(\Tem_lower[3] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4065_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i11496_2_lut_rep_447_4_lut (.A(hundres_1__N_346[1]), .B(n38053), 
         .C(hundres_1__N_347[1]), .D(n38044), .Z(n38034)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i11496_2_lut_rep_447_4_lut.init = 16'hf600;
    LUT4 i4072_3_lut_4_lut_3_lut_4_lut (.A(hundres_1__N_347[1]), .B(n38034), 
         .C(hundres_0__N_356[1]), .D(n38010), .Z(\Tem_high[0] )) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4072_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4050_2_lut_4_lut_4_lut (.A(n38301), .B(\ds18b20_data[5] ), .C(hundres_0__N_356[1]), 
         .D(n38009), .Z(\Tem_lower[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4050_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4091_2_lut_rep_407_4_lut_4_lut_then_4_lut (.A(n38121), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_346[1]), .D(hundres_1__N_346[2]), .Z(n39478)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i4091_2_lut_rep_407_4_lut_4_lut_then_4_lut.init = 16'h9ffa;
    LUT4 i4091_2_lut_rep_407_4_lut_4_lut_else_4_lut (.A(n38121), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_346[1]), .D(hundres_1__N_346[2]), .Z(n39477)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4091_2_lut_rep_407_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i29757_3_lut_4_lut (.A(n38011), .B(n37984), .C(\cnt_main[0] ), 
         .D(n8692), .Z(n36380)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i29757_3_lut_4_lut.init = 16'h6f60;
    LUT4 i4058_3_lut_4_lut (.A(\ds18b20_data[6] ), .B(n38033), .C(\ds18b20_data[5] ), 
         .D(n37993), .Z(\Tem_lower[2] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4058_3_lut_4_lut.init = 16'h6966;
    LUT4 i4063_2_lut_rep_423_3_lut (.A(\ds18b20_data[6] ), .B(n38033), .C(\ds18b20_data[5] ), 
         .Z(n38010)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4063_2_lut_rep_423_3_lut.init = 16'hf6f6;
    LUT4 i4086_3_lut_4_lut_3_lut_4_lut (.A(n38197), .B(\hundres_1__N_345[1] ), 
         .C(n38011), .D(hundres_0__N_353[0]), .Z(\Tem_high[2] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4086_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i3616_2_lut_rep_397_3_lut_4_lut (.A(n38197), .B(\hundres_1__N_345[1] ), 
         .C(n38011), .D(hundres_0__N_353[0]), .Z(n37984)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3616_2_lut_rep_397_3_lut_4_lut.init = 16'h8880;
    LUT4 i4099_2_lut_rep_437_4_lut_4_lut_then_4_lut (.A(\ds18b20_data[6] ), 
         .B(n38121), .C(hundres_1__N_346[1]), .D(hundres_1__N_346[2]), 
         .Z(n38300)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4099_2_lut_rep_437_4_lut_4_lut_then_4_lut.init = 16'h2526;
    LUT4 i3498_2_lut_rep_610 (.A(\ds18b20_data[8] ), .B(\hundres_1__N_345[0] ), 
         .Z(n38197)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3498_2_lut_rep_610.init = 16'heeee;
    LUT4 i14197_2_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_345[0] ), 
         .C(\hundres_1__N_345[1] ), .Z(hundres_1__N_346[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i14197_2_lut_3_lut.init = 16'h1010;
    LUT4 i4184_3_lut_4_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_345[0] ), 
         .C(\hundres_1__N_345[1] ), .Z(hundres_1__N_346[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4184_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4176_2_lut_rep_534_3_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_345[0] ), 
         .C(\hundres_1__N_345[1] ), .Z(n38121)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4176_2_lut_rep_534_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4107_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38093), .C(\ds18b20_data[6] ), 
         .D(n38033), .Z(hundres_0__N_356[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4107_3_lut_4_lut.init = 16'h6966;
    LUT4 i4112_2_lut_rep_457_3_lut (.A(\ds18b20_data[7] ), .B(n38093), .C(\ds18b20_data[6] ), 
         .Z(n38044)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4112_2_lut_rep_457_3_lut.init = 16'hf6f6;
    PFUMX i31139 (.BLUT(n39477), .ALUT(n39478), .C0(n38044), .Z(n39479));
    
endmodule
//
// Verilog Description of module BCD_U6
//

module BCD_U6 (\hour[3] , \hour[4] , n37976, \hour[6] , \hour[5] , 
            n38250, n9367, n37970, n4, \hour[7] , \hundres_0__N_353[1] , 
            hundres_0__N_361, \hour[2] , \hour[1] , \hour_ones[1] , 
            \hour_tens[0] , \hour_ones[3] , \hour_ones[2] ) /* synthesis syn_module_defined=1 */ ;
    input \hour[3] ;
    input \hour[4] ;
    output n37976;
    input \hour[6] ;
    input \hour[5] ;
    output n38250;
    input n9367;
    output n37970;
    output n4;
    input \hour[7] ;
    output \hundres_0__N_353[1] ;
    output hundres_0__N_361;
    input \hour[2] ;
    input \hour[1] ;
    output \hour_ones[1] ;
    output \hour_tens[0] ;
    output \hour_ones[3] ;
    output \hour_ones[2] ;
    
    wire [3:0]hundres_1__N_345;
    
    wire n38312, n38311, n38088, n38030;
    wire [3:0]hundres_1__N_347;
    
    wire n38038, n38001, n37968, n39483, n39484, n39485, n38015, 
        n37989, n38144, n38116;
    wire [3:0]hundres_1__N_346;
    
    wire n38064, n38018, n37981;
    wire [3:0]hundres_0__N_356;
    
    LUT4 i4589_2_lut_rep_431_4_lut_4_lut_then_4_lut (.A(\hour[3] ), .B(\hour[4] ), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n38312)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4589_2_lut_rep_431_4_lut_4_lut_then_4_lut.init = 16'h2524;
    LUT4 i4589_2_lut_rep_431_4_lut_4_lut_else_4_lut (.A(\hour[3] ), .B(\hour[4] ), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n38311)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4589_2_lut_rep_431_4_lut_4_lut_else_4_lut.init = 16'h959a;
    LUT4 i4597_3_lut_4_lut (.A(\hour[4] ), .B(n38088), .C(\hour[3] ), 
         .D(n38030), .Z(hundres_1__N_347[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4597_3_lut_4_lut.init = 16'h6966;
    LUT4 i4602_2_lut_rep_451_3_lut (.A(\hour[4] ), .B(n38088), .C(\hour[3] ), 
         .Z(n38038)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4602_2_lut_rep_451_3_lut.init = 16'hf6f6;
    LUT4 i3986_2_lut_rep_381_4_lut_4_lut (.A(n38001), .B(hundres_1__N_347[2]), 
         .C(hundres_1__N_347[1]), .D(n37976), .Z(n37968)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i3986_2_lut_rep_381_4_lut_4_lut.init = 16'hff6c;
    PFUMX i31143 (.BLUT(n39483), .ALUT(n39484), .C0(n38038), .Z(n39485));
    LUT4 i4504_2_lut_rep_663 (.A(\hour[6] ), .B(\hour[5] ), .Z(n38250)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4504_2_lut_rep_663.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(n38015), .B(n37989), .C(n9367), .D(n37970), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i3600_2_lut_rep_557_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(n38144)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3600_2_lut_rep_557_3_lut.init = 16'he0e0;
    LUT4 i14148_2_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(hundres_1__N_345[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i14148_2_lut_3_lut.init = 16'h1010;
    LUT4 i4499_3_lut_4_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(hundres_1__N_345[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4499_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i4491_2_lut_rep_529_3_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), 
         .C(\hour[7] ), .Z(n38116)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4491_2_lut_rep_529_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i3534_4_lut (.A(n37968), .B(n39485), .C(\hundres_0__N_353[1] ), 
         .D(n38144), .Z(hundres_0__N_361)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3534_4_lut.init = 16'hb3a0;
    LUT4 i4639_3_lut_4_lut_3_lut_4_lut (.A(n38116), .B(\hour[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(hundres_1__N_346[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4639_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12610_2_lut_rep_477_3_lut_4_lut (.A(n38116), .B(\hour[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(n38064)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i12610_2_lut_rep_477_3_lut_4_lut.init = 16'heee0;
    LUT4 i4581_2_lut_rep_411_4_lut_4_lut_then_4_lut (.A(\hour[4] ), .B(n38116), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n39484)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i4581_2_lut_rep_411_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    LUT4 i3452_3_lut_rep_501 (.A(n38116), .B(\hour[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(n38088)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3452_3_lut_rep_501.init = 16'hffe0;
    LUT4 i4625_3_lut_4_lut (.A(n38116), .B(\hour[4] ), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(hundres_1__N_346[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4625_3_lut_4_lut.init = 16'h998a;
    LUT4 i4581_2_lut_rep_411_4_lut_4_lut_else_4_lut (.A(\hour[4] ), .B(n38116), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n39483)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4581_2_lut_rep_411_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i4562_3_lut_rep_383_4_lut_3_lut_4_lut (.A(n38018), .B(\hour[2] ), 
         .C(hundres_1__N_347[1]), .D(hundres_1__N_347[2]), .Z(n37970)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4562_3_lut_rep_383_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4540_2_lut_rep_394_4_lut_4_lut (.A(n38018), .B(\hour[2] ), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(n37981)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4540_2_lut_rep_394_4_lut_4_lut.init = 16'h332c;
    LUT4 i4555_2_lut_3_lut_3_lut_4_lut (.A(n38018), .B(\hour[2] ), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(hundres_0__N_356[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4555_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4548_3_lut_4_lut (.A(n38018), .B(\hour[2] ), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(hundres_0__N_356[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4548_3_lut_4_lut.init = 16'h998a;
    LUT4 i4512_2_lut_4_lut_4_lut (.A(n37981), .B(\hour[1] ), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\hour_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4512_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4553_2_lut_rep_414_3_lut (.A(\hour[3] ), .B(n38030), .C(\hour[2] ), 
         .Z(n38001)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4553_2_lut_rep_414_3_lut.init = 16'hf6f6;
    LUT4 i4534_3_lut_4_lut_3_lut_4_lut (.A(n37981), .B(\hour[1] ), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\hour_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4534_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3599_2_lut_rep_402_3_lut_4_lut (.A(n38250), .B(\hour[7] ), .C(n38015), 
         .D(hundres_1__N_346[3]), .Z(n37989)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3599_2_lut_rep_402_3_lut_4_lut.init = 16'h8880;
    LUT4 i4568_2_lut_rep_389_3_lut_3_lut_4_lut (.A(n38250), .B(\hour[7] ), 
         .C(n38015), .D(hundres_1__N_346[3]), .Z(n37976)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i4568_2_lut_rep_389_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i4576_3_lut_4_lut_3_lut_4_lut (.A(n38250), .B(\hour[7] ), .C(n38015), 
         .D(hundres_1__N_346[3]), .Z(\hundres_0__N_353[1] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4576_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i3453_3_lut_rep_443_4_lut (.A(hundres_1__N_345[1]), .B(n38064), 
         .C(hundres_1__N_346[1]), .D(n38038), .Z(n38030)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3453_3_lut_rep_443_4_lut.init = 16'hf666;
    LUT4 i4604_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_345[1]), .B(n38064), 
         .C(hundres_1__N_346[1]), .D(n38038), .Z(hundres_1__N_347[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4604_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4611_3_lut_rep_428_4_lut_3_lut_4_lut (.A(hundres_1__N_345[1]), .B(n38064), 
         .C(hundres_1__N_346[1]), .D(n38038), .Z(n38015)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4611_3_lut_rep_428_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4527_2_lut_3_lut_3_lut_4_lut (.A(n37981), .B(\hour[1] ), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\hour_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4527_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4520_3_lut_4_lut (.A(n37981), .B(\hour[1] ), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\hour_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4520_3_lut_4_lut.init = 16'h998a;
    PFUMX i30541 (.BLUT(n38311), .ALUT(n38312), .C0(n38116), .Z(n38018));
    
endmodule
//
// Verilog Description of module BCD_U3
//

module BCD_U3 (\min_warning[1] , \min_warning_ones[2] , \min_warning[4] , 
            \min_warning[3] , n9380, \hundres_0__N_356[3] , n4, n9668, 
            hundres_0__N_361, \min_warning[5] , \min_warning[6] , \min_warning[7] , 
            \min_warning[2] , \min_warning_ones[1] , \min_warning_tens[0] , 
            \min_warning_ones[3] ) /* synthesis syn_module_defined=1 */ ;
    input \min_warning[1] ;
    output \min_warning_ones[2] ;
    input \min_warning[4] ;
    input \min_warning[3] ;
    input n9380;
    output \hundres_0__N_356[3] ;
    output n4;
    output n9668;
    output hundres_0__N_361;
    input \min_warning[5] ;
    input \min_warning[6] ;
    input \min_warning[7] ;
    input \min_warning[2] ;
    output \min_warning_ones[1] ;
    output \min_warning_tens[0] ;
    output \min_warning_ones[3] ;
    
    
    wire n37982;
    wire [3:0]hundres_0__N_356;
    
    wire n38115, n38048, n38036;
    wire [3:0]hundres_1__N_347;
    
    wire n38012, n37986, n38143;
    wire [3:0]hundres_1__N_345;
    
    wire n39472, n39471;
    wire [3:0]hundres_1__N_346;
    
    wire n38185, n37965, n37973;
    wire [3:0]hundres_0__N_353;
    
    wire n38291, n38290, n39473, n38271, n38061, n38028;
    
    LUT4 i4212_3_lut_4_lut (.A(n37982), .B(\min_warning[1] ), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\min_warning_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4212_3_lut_4_lut.init = 16'h998a;
    LUT4 i3511_2_lut_rep_461_3_lut (.A(\min_warning[4] ), .B(n38115), .C(\min_warning[3] ), 
         .Z(n38048)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3511_2_lut_rep_461_3_lut.init = 16'hf6f6;
    LUT4 i4289_3_lut_4_lut (.A(\min_warning[4] ), .B(n38115), .C(\min_warning[3] ), 
         .D(n38036), .Z(hundres_1__N_347[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4289_3_lut_4_lut.init = 16'h6966;
    LUT4 i1_3_lut_4_lut (.A(n38012), .B(n37986), .C(n9380), .D(\hundres_0__N_356[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i3509_2_lut_rep_408_4_lut_4_lut_then_4_lut (.A(n38143), .B(\min_warning[4] ), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n39472)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i3509_2_lut_rep_408_4_lut_4_lut_then_4_lut.init = 16'h9ffa;
    LUT4 i3509_2_lut_rep_408_4_lut_4_lut_else_4_lut (.A(n38143), .B(\min_warning[4] ), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n39471)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i3509_2_lut_rep_408_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i3505_2_lut_rep_378_3_lut_4_lut_4_lut (.A(n38012), .B(hundres_1__N_346[3]), 
         .C(\hundres_0__N_356[3] ), .D(n38185), .Z(n37965)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i3505_2_lut_rep_378_3_lut_4_lut_4_lut.init = 16'hf4fa;
    LUT4 i4016_3_lut_4_lut (.A(\hundres_0__N_356[3] ), .B(n37973), .C(n9380), 
         .D(hundres_0__N_353[1]), .Z(n9668)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4016_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4281_2_lut_rep_441_4_lut_4_lut_then_4_lut (.A(n38143), .B(\min_warning[4] ), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n38291)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4281_2_lut_rep_441_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i4281_2_lut_rep_441_4_lut_4_lut_else_4_lut (.A(n38143), .B(\min_warning[4] ), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n38290)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4281_2_lut_rep_441_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i3504_4_lut (.A(n37965), .B(n39473), .C(hundres_0__N_353[1]), 
         .D(n38185), .Z(hundres_0__N_361)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3504_4_lut.init = 16'hb3a0;
    LUT4 i3515_2_lut_rep_684 (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .Z(n38271)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3515_2_lut_rep_684.init = 16'heeee;
    LUT4 i3597_2_lut_rep_598_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(n38185)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3597_2_lut_rep_598_3_lut.init = 16'he0e0;
    LUT4 i14151_2_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_345[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i14151_2_lut_3_lut.init = 16'h1010;
    LUT4 i4135_3_lut_4_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_345[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4135_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4127_2_lut_rep_556_3_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(n38143)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4127_2_lut_rep_556_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4331_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[4] ), .B(n38143), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(hundres_1__N_346[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4331_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12656_2_lut_rep_474_3_lut_4_lut (.A(\min_warning[4] ), .B(n38143), 
         .C(hundres_1__N_345[1]), .D(hundres_1__N_345[2]), .Z(n38061)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i12656_2_lut_rep_474_3_lut_4_lut.init = 16'heee0;
    LUT4 i3435_3_lut_rep_528 (.A(\min_warning[4] ), .B(n38143), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(n38115)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3435_3_lut_rep_528.init = 16'hffe0;
    LUT4 i4317_3_lut_4_lut (.A(\min_warning[4] ), .B(n38143), .C(hundres_1__N_345[1]), 
         .D(hundres_1__N_345[2]), .Z(hundres_1__N_346[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4317_3_lut_4_lut.init = 16'h998c;
    LUT4 i4254_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[2] ), .B(n38028), 
         .C(hundres_1__N_347[1]), .D(hundres_1__N_347[2]), .Z(\hundres_0__N_356[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4254_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4232_2_lut_rep_395_4_lut_4_lut (.A(\min_warning[2] ), .B(n38028), 
         .C(hundres_1__N_347[1]), .D(hundres_1__N_347[2]), .Z(n37982)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4232_2_lut_rep_395_4_lut_4_lut.init = 16'h554a;
    LUT4 i4247_2_lut_3_lut_3_lut_4_lut (.A(\min_warning[2] ), .B(n38028), 
         .C(hundres_1__N_347[1]), .D(hundres_1__N_347[2]), .Z(hundres_0__N_356[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4247_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4240_3_lut_4_lut (.A(\min_warning[2] ), .B(n38028), .C(hundres_1__N_347[1]), 
         .D(hundres_1__N_347[2]), .Z(hundres_0__N_356[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4240_3_lut_4_lut.init = 16'h998c;
    PFUMX i30527 (.BLUT(n38290), .ALUT(n38291), .C0(\min_warning[3] ), 
          .Z(n38028));
    LUT4 i4204_2_lut_4_lut_4_lut (.A(n37982), .B(\min_warning[1] ), .C(hundres_0__N_356[1]), 
         .D(hundres_0__N_356[2]), .Z(\min_warning_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4204_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4226_3_lut_4_lut_3_lut_4_lut (.A(n37982), .B(\min_warning[1] ), 
         .C(hundres_0__N_356[1]), .D(hundres_0__N_356[2]), .Z(\min_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4226_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4260_2_lut_rep_386_3_lut_3_lut_4_lut (.A(n38271), .B(\min_warning[7] ), 
         .C(hundres_1__N_346[3]), .D(n38012), .Z(n37973)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4260_2_lut_rep_386_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4268_3_lut_4_lut_3_lut_4_lut (.A(n38271), .B(\min_warning[7] ), 
         .C(hundres_1__N_346[3]), .D(n38012), .Z(hundres_0__N_353[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4268_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i3593_2_lut_rep_399_3_lut_4_lut (.A(n38271), .B(\min_warning[7] ), 
         .C(hundres_1__N_346[3]), .D(n38012), .Z(n37986)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3593_2_lut_rep_399_3_lut_4_lut.init = 16'h8880;
    LUT4 i3436_3_lut_rep_449_4_lut (.A(hundres_1__N_345[1]), .B(n38061), 
         .C(hundres_1__N_346[1]), .D(n38048), .Z(n38036)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3436_3_lut_rep_449_4_lut.init = 16'hf666;
    LUT4 i4303_3_lut_rep_425_4_lut_3_lut_4_lut (.A(hundres_1__N_345[1]), .B(n38061), 
         .C(hundres_1__N_346[1]), .D(n38048), .Z(n38012)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4303_3_lut_rep_425_4_lut_3_lut_4_lut.init = 16'h9666;
    PFUMX i31135 (.BLUT(n39471), .ALUT(n39472), .C0(n38048), .Z(n39473));
    LUT4 i4296_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_345[1]), .B(n38061), 
         .C(hundres_1__N_346[1]), .D(n38048), .Z(hundres_1__N_347[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4296_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4219_2_lut_3_lut_3_lut_4_lut (.A(n37982), .B(\min_warning[1] ), 
         .C(hundres_0__N_356[1]), .D(hundres_0__N_356[2]), .Z(\min_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4219_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    
endmodule
//
// Verilog Description of module OLED12832
//

module OLED12832 (sys_clk_c, char_reg, oled_cs_c, oled_dc_c, \cnt[0] , 
            cnt_main, warning_TEM, \cnt_main[1] , \cnt_main[2] , \char_reg[3] , 
            \char_reg[2] , \char_reg[1] , n22, n1704, n22_adj_3, n1705, 
            n15, n37031, n37070, n1699, GND_net, n38129, sw1_c, 
            n2678, n38107, time_set, n38227, n37053, n1700, \cnt[1] , 
            \cnt[2] , n3815, n4193, n3437, n3059, \cnt[3] , n3816, 
            n4194, n3438, n3060, n38113, n9659, n19219, \hundres_0__N_353[1] , 
            n39479, \hundres_1__N_345[0] , \ds18b20_data[8] , \hundres_1__N_345[1] , 
            \min_ones[3] , \min_warning_ones[3] , n2677, n3054, n3810, 
            n3432, n4188, n2676, \cnt[4] , n2508, n2507, n3435, 
            n4191, n3057, n3813, n2679, n37764, n2513, n2510, 
            n2509, n4, n37975, n37969, n9367, \hundres_0__N_353[1]_adj_4 , 
            n9677, n37976, n37970, \hundres_0__N_353[1]_adj_5 , n9673, 
            \min_tens[0] , \min_warning_tens[0] , \Tem_high[2] , \min[0] , 
            \min_warning[0] , \hour[0] , \hour_warning[0] , n9380, n12746, 
            n12760, n8673, oled_mosi_c, n20808, n20810, oled_sck_c, 
            oled_res_c, n7, \Tem_lower[2] , \Tem_lower[3] , \Tem_lower[1] , 
            n8663, n3812, n4190, n36380, n3814, n4192, n3811, 
            n4189, n3055, n3433, hundres_0__N_361, hundres_0__N_361_adj_6, 
            hundres_0__N_361_adj_7, hundres_0__N_361_adj_8, \hour_ones[2] , 
            \hour_warning_ones[2] , \hour_ones[3] , \hour_warning_ones[3] , 
            \min_ones[2] , \min_warning_ones[2] , \hour_ones[1] , \hour_warning_ones[1] , 
            \min_ones[1] , \min_warning_ones[1] , n2681, \Tem_high[0] , 
            n2682, \ds18b20_data[4] , n8666, n3056, n3434, n3058, 
            n3436, n2680, \hundres_0__N_356[1] , \hundres_0__N_356[2] , 
            n37972, n37964, \sec[1] , n8692, n37985, n37971, \hundres_0__N_353[0] , 
            \sec[0] , n1703, sys_rst_n_c, n4_adj_9, recv_done_d1, 
            recv_done_d0, n21961) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output [7:0]char_reg;
    output oled_cs_c;
    output oled_dc_c;
    output \cnt[0] ;
    output [4:0]cnt_main;
    input warning_TEM;
    output \cnt_main[1] ;
    output \cnt_main[2] ;
    output \char_reg[3] ;
    output \char_reg[2] ;
    output \char_reg[1] ;
    input n22;
    input n1704;
    input n22_adj_3;
    input n1705;
    input n15;
    input n37031;
    input n37070;
    input n1699;
    input GND_net;
    output n38129;
    input sw1_c;
    input n2678;
    output n38107;
    input time_set;
    output n38227;
    input n37053;
    input n1700;
    output \cnt[1] ;
    output \cnt[2] ;
    input n3815;
    input n4193;
    input n3437;
    input n3059;
    output \cnt[3] ;
    input n3816;
    input n4194;
    input n3438;
    input n3060;
    output n38113;
    input n9659;
    input n19219;
    input \hundres_0__N_353[1] ;
    input n39479;
    input \hundres_1__N_345[0] ;
    input \ds18b20_data[8] ;
    input \hundres_1__N_345[1] ;
    input \min_ones[3] ;
    input \min_warning_ones[3] ;
    input n2677;
    input n3054;
    input n3810;
    input n3432;
    input n4188;
    input n2676;
    output \cnt[4] ;
    output n2508;
    output n2507;
    input n3435;
    input n4191;
    input n3057;
    input n3813;
    input n2679;
    input n37764;
    output n2513;
    output n2510;
    output n2509;
    input n4;
    input n37975;
    input n37969;
    output n9367;
    input \hundres_0__N_353[1]_adj_4 ;
    output n9677;
    input n37976;
    input n37970;
    input \hundres_0__N_353[1]_adj_5 ;
    output n9673;
    input \min_tens[0] ;
    input \min_warning_tens[0] ;
    input \Tem_high[2] ;
    input \min[0] ;
    input \min_warning[0] ;
    input \hour[0] ;
    input \hour_warning[0] ;
    output n9380;
    input n12746;
    input n12760;
    input n8673;
    output oled_mosi_c;
    input n20808;
    input n20810;
    output oled_sck_c;
    output oled_res_c;
    input n7;
    input \Tem_lower[2] ;
    input \Tem_lower[3] ;
    input \Tem_lower[1] ;
    input n8663;
    input n3812;
    input n4190;
    input n36380;
    input n3814;
    input n4192;
    input n3811;
    input n4189;
    input n3055;
    input n3433;
    input hundres_0__N_361;
    input hundres_0__N_361_adj_6;
    input hundres_0__N_361_adj_7;
    input hundres_0__N_361_adj_8;
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
    input n2681;
    input \Tem_high[0] ;
    input n2682;
    input \ds18b20_data[4] ;
    input n8666;
    input n3056;
    input n3434;
    input n3058;
    input n3436;
    input n2680;
    input \hundres_0__N_356[1] ;
    input \hundres_0__N_356[2] ;
    input n37972;
    input n37964;
    input \sec[1] ;
    output n8692;
    input n37985;
    input n37971;
    input \hundres_0__N_353[0] ;
    input \sec[0] ;
    input n1703;
    input sys_rst_n_c;
    input n4_adj_9;
    input recv_done_d1;
    input recv_done_d0;
    output n21961;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // d:/new porject/top-xu/oled.v(53[9:19])
    wire [5:0]state;   // d:/new porject/top-xu/oled.v(48[13:18])
    
    wire n22_c, n34093;
    wire [15:0]cnt;   // d:/new porject/top-xu/oled.v(47[35:38])
    
    wire sys_clk_c_enable_349, n21897;
    wire [15:0]n2170;
    
    wire n36399, n36400;
    wire [4:0]cnt_scan;   // d:/new porject/top-xu/oled.v(46[32:40])
    
    wire n36401;
    wire [4:0]cnt_init;   // d:/new porject/top-xu/oled.v(46[22:30])
    
    wire sys_clk_c_enable_264, n35759;
    wire [7:0]char_reg_7__N_957;
    wire [5:0]state_back;   // d:/new porject/top-xu/oled.v(48[20:30])
    wire [5:0]state_back_5__N_1039;
    
    wire sys_clk_c_enable_13, n35271, sys_clk_c_enable_14, n35121;
    wire [15:0]num_delay;   // d:/new porject/top-xu/oled.v(47[13:22])
    wire [15:0]num_delay_15__N_985;
    wire [15:0]n2144;
    
    wire oled_dcn_N_1404, n2, n20350, n37910, n37908, n37911, sys_clk_c_enable_288, 
        n42;
    wire [4:0]n2108;
    
    wire n37906, n37639, n37907;
    wire [4:0]cnt_write;   // d:/new porject/top-xu/oled.v(46[42:51])
    
    wire n38247, n4245, n10, n38211;
    wire [4:0]cnt_main_c;   // d:/new porject/top-xu/oled.v(46[12:20])
    wire [4:0]cnt_main_4__N_1052;
    wire [7:0]num;   // d:/new porject/top-xu/oled.v(45[12:15])
    
    wire sys_clk_c_enable_196;
    wire [7:0]n1;
    
    wire sys_clk_c_enable_263, n23517, n23511;
    wire [4:0]n5;
    
    wire flash_bit, n38243, flash_bit_N_1429, n6, n30115, n36431, 
        n36432, n36434, n37783, n37782, n37784;
    wire [7:0]x_ph;   // d:/new porject/top-xu/oled.v(43[17:21])
    
    wire sys_clk_c_enable_313, n37517, n37767, n37766, n37768;
    wire [7:0]char_reg_c;   // d:/new porject/top-xu/oled.v(45[17:25])
    wire [167:0]char;   // d:/new porject/top-xu/oled.v(44[19:23])
    
    wire n35554, n35820, n35553, n35555, sys_clk_c_enable_343, n35765, 
        n35768, n38110, n37382, n36316, n6_adj_1728, n6_adj_1730, 
        n38085, n6_adj_1731, n36302, n6_adj_1732, n38224, n38346, 
        n37786, n38225, n38165;
    wire [5:0]state_5__N_1344;
    
    wire n21, n38343, n37770, n32911;
    wire [7:0]n37;
    
    wire n32910, n32909, n14, n32908, n38166, n38177, n8063, n45, 
        n38226, n36429, n37046, n38056, n35821, n38362, n38167, 
        n38228, n4_c, n6_adj_1735, n35817, n4827, n38363, sys_clk_c_enable_242, 
        n21973, sys_clk_c_enable_243, n38342, n38341, n10315, n38345, 
        n38344, n39214, n6_adj_1736, n37656, n37655, n37657, n36117, 
        n6_adj_1737, n38111, n2309;
    wire [4:0]n2318;
    
    wire n38151, n38118;
    wire [4:0]cnt_scan_4__N_1062;
    
    wire n38081, n26847, n35764, n4_adj_1738, n11, n10387, n35632, 
        n38180, n39074, n39072, n39075, n38239, n23502, n32987, 
        n38263, n57, n38276, n38258, n38178, n39193, n39194, n39191, 
        n39189, n39188, n38241, n53_adj_1739, n48_adj_1740, n6_adj_1741, 
        n38146, n33295, n39213, n39212, n27, n33176, n125, n11918, 
        n33069, n11_adj_1742, n21915, n8, n6_adj_1743, n6_adj_1744, 
        n39190, n38245, n35699, n35790, n38176, sys_clk_c_enable_280, 
        n19, n16, n6_adj_1745;
    wire [4:0]n4247;
    
    wire n36109, n38246, n38259, n38109, n39422, n39423, n39424, 
        n39425;
    wire [7:0]x_pl;   // d:/new porject/top-xu/oled.v(43[23:27])
    
    wire n39426, n39427, n38248, n63, n64, n4_adj_1746, n38249, 
        n37377, n36061, n6_adj_1747, n57_adj_1748, n6_adj_1749, n38264, 
        n38133, n27_adj_1750, n63_adj_1751, n64_adj_1752, n35903, 
        n38084, n19580, n35776, n37747, n64_adj_1753, n38251, n39428, 
        n64_adj_1754, n36197, n38252, n38102, n38268, n16_adj_1755, 
        n63_adj_1756, n64_adj_1757, n14_adj_1758, n16_adj_1759, n20479;
    wire [7:0]x_ph_7__N_1080;
    
    wire n37078, n35904, n6_adj_1760, n16_adj_1761, n7_c, n27359, 
        n16_adj_1762, n38253, n38127, n4_adj_1763, n27183, n16_adj_1764, 
        n16_adj_1765, n38171, n36435, n35642, n38275, n36293, n36213, 
        n33140, sys_clk_c_enable_342, n19_adj_1766, n20, n38255, n37581, 
        n37580;
    wire [7:0]num_7__N_1096;
    
    wire n38265, n9094, n38153, n21955, n37378, n38117, n37516, 
        n38181, n21954, n37379, n37376, n37380, n18, n36385, n38090, 
        n4269, n21926;
    wire [4:0]n8688;
    
    wire n12;
    wire [3:0]n8677;
    
    wire n36384, n38164, n24439, n38135, n38134, n38179;
    wire [4:0]n8682;
    
    wire n36379, n38138, n37044;
    wire [3:0]n8667;
    
    wire n36378, n36377, n37193, n11_adj_1770, n36368, n38139, n35724, 
        n35987, n19_adj_1771, n6_adj_1772, n35989, n19_adj_1773, n6_adj_1774, 
        n9, n8_adj_1775, n34043, sys_clk_c_enable_283;
    wire [0:0]n6424;
    
    wire sys_clk_c_enable_284;
    wire [0:0]n6361;
    
    wire n61, sys_clk_c_enable_348, n21850, n36383, n15_adj_1777, 
        n32, n48_adj_1778, n61_adj_1779, n36373, n15_adj_1780, n57_adj_1781, 
        n39469, n36366, n15_adj_1782, n14_adj_1783, n3807, n12_adj_1784, 
        n35727, n37509, n37504, n35730, n12_adj_1785, n38278, n38279, 
        n12_adj_1786, n35728, n12_adj_1787, n12_adj_1788, n11_adj_1789, 
        n36131, n37106, n12_adj_1790, n12_adj_1791, n12_adj_1792, 
        n35729, n12_adj_1793, n37507, n37506, n37508, n38003, n37043, 
        n37045, n36588, n27403, n38145, n6_adj_1794, n38076, n38269, 
        n38183, n38182, n24;
    wire [15:0]cnt_delay;   // d:/new porject/top-xu/oled.v(47[24:33])
    
    wire sys_clk_c_enable_329;
    wire [15:0]n4271;
    
    wire n21912;
    wire [167:0]char_167__N_1112;
    
    wire n24_adj_1795, n32792, n3, n32791, n47, n6337, n9195, 
        n21645, n37505, n32790, n32789, n24_adj_1796;
    wire [7:0]y_p;   // d:/new porject/top-xu/oled.v(43[12:15])
    
    wire sys_clk_c_enable_301;
    wire [7:0]n8253;
    
    wire n33273, sys_clk_c_enable_341, n32788, n32787, n24_adj_1797, 
        n19_adj_1798, n35639, n15_adj_1799, n105, n38112, n35757, 
        n36034, n1477, n32786, n33080, n12_adj_1800, n6_adj_1801, 
        n24_adj_1802, n24_adj_1803, n36364, n36365, n24_adj_1804, 
        n24_adj_1805, n36367, n32785, n20536, n35, n36015, n36430;
    wire [5:0]state_back_5__N_1374;
    
    wire n36371, n36372, n24_adj_1806, n24_adj_1807, n24_adj_1808, 
        n24_adj_1809, n36381, n36382, n24_adj_1810, n24_adj_1811, 
        n24_adj_1812, n24_adj_1813, n11_adj_1814, n12_adj_1815, n36375, 
        n35795, n36233, n36386, n38186, n16_adj_1816;
    wire [15:0]num_delay_15__N_1296;
    
    wire n16_adj_1817, n16_adj_1818, n16_adj_1819, n16_adj_1820, n16_adj_1822, 
        n16_adj_1823, n36433, n16_adj_1824, n16_adj_1827, n16_adj_1828, 
        n35824, n16_adj_1829, n16_adj_1830, n4_adj_1831, n16_adj_1832, 
        n24_adj_1833, n35637, n15_adj_1834, n16_adj_1835, n37050, 
        n6_adj_1836, n26, n29, n38140, n36376, n36374, n47_adj_1837, 
        n39076, n39073, n37909, n32780, n32779, n32778, n32777, 
        n32776, n32775, n32774, n32773, n32772, n32771, n32770, 
        n32769, n32768, n32767, n32766, n32765, n50, n36571, n45_adj_1838;
    
    LUT4 i3_4_lut_4_lut (.A(state[3]), .B(n22_c), .C(state[2]), .D(state[4]), 
         .Z(n34093)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i3_4_lut_4_lut.init = 16'h0004;
    FD1P3IX cnt_i0_i9 (.D(n2170[9]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i9.GSR = "ENABLED";
    PFUMX i29561 (.BLUT(n36399), .ALUT(n36400), .C0(cnt_scan[1]), .Z(n36401));
    FD1P3AX cnt_init_i0_i0 (.D(n35759), .SP(sys_clk_c_enable_264), .CK(sys_clk_c), 
            .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    FD1S3AX char_reg_i0 (.D(char_reg_7__N_957[0]), .CK(sys_clk_c), .Q(char_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_reg_i0.GSR = "ENABLED";
    FD1S3AY state_back_i0 (.D(state_back_5__N_1039[0]), .CK(sys_clk_c), 
            .Q(state_back[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_back_i0.GSR = "ENABLED";
    FD1P3AY oled_csn_322 (.D(n35271), .SP(sys_clk_c_enable_13), .CK(sys_clk_c), 
            .Q(oled_cs_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam oled_csn_322.GSR = "ENABLED";
    FD1P3AX oled_dcn_324 (.D(n35121), .SP(sys_clk_c_enable_14), .CK(sys_clk_c), 
            .Q(oled_dc_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam oled_dcn_324.GSR = "ENABLED";
    FD1S3AY num_delay_i0 (.D(num_delay_15__N_985[0]), .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i0.GSR = "ENABLED";
    FD1P3IX cnt_i0_i8 (.D(n2170[8]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_i0_i7 (.D(n2170[7]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i7.GSR = "ENABLED";
    FD1P3IX cnt_i0_i6 (.D(n2170[6]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i6.GSR = "ENABLED";
    LUT4 i20312_2_lut (.A(n2144[3]), .B(oled_dcn_N_1404), .Z(n2170[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20312_2_lut.init = 16'h2222;
    FD1P3IX cnt_i0_i0 (.D(n2170[0]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(\cnt[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(state[5]), .B(state_back[0]), .Z(n2)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(48[13:18])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i3_4_lut (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(cnt_scan[4]), 
         .D(cnt_scan[1]), .Z(n20350)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam i3_4_lut.init = 16'hfdff;
    PFUMX i30488 (.BLUT(n37910), .ALUT(n37908), .C0(cnt_scan[3]), .Z(n37911));
    FD1P3AY state_i0_i0 (.D(n42), .SP(sys_clk_c_enable_288), .CK(sys_clk_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i3839_2_lut (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n2108[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(125[49:64])
    defparam i3839_2_lut.init = 16'h6666;
    PFUMX i30485 (.BLUT(n37906), .ALUT(n37639), .C0(cnt_scan[1]), .Z(n37907));
    LUT4 i20320_2_lut (.A(n2144[11]), .B(oled_dcn_N_1404), .Z(n2170[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20320_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut (.A(cnt_write[0]), .B(n38247), .C(cnt_write[4]), 
         .Z(n4245)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(46[42:51])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_3_lut_4_lut (.A(cnt_write[0]), .B(n38247), .C(cnt_write[4]), 
         .D(state[4]), .Z(n10)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(46[42:51])
    defparam i1_3_lut_4_lut.init = 16'h1e00;
    LUT4 i3860_3_lut_4_lut (.A(cnt_init[2]), .B(n38211), .C(cnt_init[3]), 
         .D(cnt_init[4]), .Z(n2108[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/oled.v(125[49:64])
    defparam i3860_3_lut_4_lut.init = 16'h7f80;
    LUT4 i20313_2_lut (.A(n2144[4]), .B(oled_dcn_N_1404), .Z(n2170[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20313_2_lut.init = 16'h2222;
    LUT4 i19913_3_lut (.A(cnt_main[0]), .B(cnt_main_c[4]), .C(warning_TEM), 
         .Z(cnt_main_4__N_1052[0])) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;   // d:/new porject/top-xu/oled.v(92[12:57])
    defparam i19913_3_lut.init = 16'hdede;
    FD1P3AX num_3053__i0 (.D(n1[0]), .SP(sys_clk_c_enable_196), .CK(sys_clk_c), 
            .Q(num[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053__i0.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i1 (.D(cnt_main_4__N_1052[1]), .SP(sys_clk_c_enable_263), 
            .CD(n23517), .CK(sys_clk_c), .Q(\cnt_main[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(cnt_main_4__N_1052[2]), .SP(sys_clk_c_enable_263), 
            .CD(n23517), .CK(sys_clk_c), .Q(\cnt_main[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n5[3]), .SP(sys_clk_c_enable_263), .CD(n23511), 
            .CK(sys_clk_c), .Q(cnt_main_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    FD1S3IX flash_bit_307 (.D(flash_bit_N_1429), .CK(clk_in_1Hz), .CD(n38243), 
            .Q(flash_bit)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(61[8] 66[5])
    defparam flash_bit_307.GSR = "DISABLED";
    PFUMX i14 (.BLUT(n2), .ALUT(n6), .C0(state[4]), .Z(n30115));
    PFUMX i29594 (.BLUT(n36431), .ALUT(n36432), .C0(cnt_write[2]), .Z(n36434));
    PFUMX i30405 (.BLUT(n37783), .ALUT(n37782), .C0(cnt_scan[0]), .Z(n37784));
    FD1P3AX x_ph_i0_i2 (.D(n37517), .SP(sys_clk_c_enable_313), .CK(sys_clk_c), 
            .Q(x_ph[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam x_ph_i0_i2.GSR = "ENABLED";
    PFUMX i30398 (.BLUT(n37767), .ALUT(n37766), .C0(cnt_scan[0]), .Z(n37768));
    FD1S3AX state_back_i5 (.D(state_back_5__N_1039[5]), .CK(sys_clk_c), 
            .Q(state_back[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_back_i5.GSR = "ENABLED";
    FD1S3AX state_back_i4 (.D(state_back_5__N_1039[4]), .CK(sys_clk_c), 
            .Q(state_back[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_back_i4.GSR = "ENABLED";
    FD1S3AX state_back_i3 (.D(state_back_5__N_1039[3]), .CK(sys_clk_c), 
            .Q(state_back[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_back_i3.GSR = "ENABLED";
    FD1S3AX state_back_i2 (.D(state_back_5__N_1039[2]), .CK(sys_clk_c), 
            .Q(state_back[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_back_i2.GSR = "ENABLED";
    FD1S3AX state_back_i1 (.D(state_back_5__N_1039[1]), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_back_i1.GSR = "ENABLED";
    FD1S3AX char_reg_i7 (.D(char_reg_7__N_957[7]), .CK(sys_clk_c), .Q(char_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_reg_i7.GSR = "ENABLED";
    FD1S3AX char_reg_i6 (.D(char_reg_7__N_957[6]), .CK(sys_clk_c), .Q(char_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_reg_i6.GSR = "ENABLED";
    FD1S3AX char_reg_i5 (.D(char_reg_7__N_957[5]), .CK(sys_clk_c), .Q(char_reg_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_reg_i5.GSR = "ENABLED";
    FD1S3AX char_reg_i4 (.D(char_reg_7__N_957[4]), .CK(sys_clk_c), .Q(char_reg_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_reg_i4.GSR = "ENABLED";
    FD1S3AX char_reg_i3 (.D(char_reg_7__N_957[3]), .CK(sys_clk_c), .Q(\char_reg[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_reg_i3.GSR = "ENABLED";
    FD1S3AX char_reg_i2 (.D(char_reg_7__N_957[2]), .CK(sys_clk_c), .Q(\char_reg[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_reg_i2.GSR = "ENABLED";
    FD1S3AX char_reg_i1 (.D(char_reg_7__N_957[1]), .CK(sys_clk_c), .Q(\char_reg[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_reg_i1.GSR = "ENABLED";
    FD1P3AX char_i0_i19 (.D(n35554), .SP(sys_clk_c_enable_313), .CK(sys_clk_c), 
            .Q(char[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_i0_i19.GSR = "ENABLED";
    FD1P3AX char_i0_i13 (.D(n35820), .SP(sys_clk_c_enable_313), .CK(sys_clk_c), 
            .Q(char[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_i0_i13.GSR = "ENABLED";
    FD1P3AX char_i0_i11 (.D(n35553), .SP(sys_clk_c_enable_313), .CK(sys_clk_c), 
            .Q(char[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_i0_i11.GSR = "ENABLED";
    FD1P3AX char_i0_i8 (.D(n35555), .SP(sys_clk_c_enable_313), .CK(sys_clk_c), 
            .Q(char[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_i0_i8.GSR = "ENABLED";
    FD1P3AX char_i0_i5 (.D(n35765), .SP(sys_clk_c_enable_343), .CK(sys_clk_c), 
            .Q(char[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_i0_i5.GSR = "ENABLED";
    FD1P3AX char_i0_i4 (.D(n35768), .SP(sys_clk_c_enable_313), .CK(sys_clk_c), 
            .Q(char[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_i0_i4.GSR = "ENABLED";
    FD1P3AX x_ph_i0_i4 (.D(n38110), .SP(sys_clk_c_enable_343), .CK(sys_clk_c), 
            .Q(x_ph[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam x_ph_i0_i4.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(n37382), .SP(sys_clk_c_enable_288), .CK(sys_clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1S3AX num_delay_i15 (.D(num_delay_15__N_985[15]), .CK(sys_clk_c), 
            .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i15.GSR = "ENABLED";
    FD1S3AX num_delay_i14 (.D(num_delay_15__N_985[14]), .CK(sys_clk_c), 
            .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i14.GSR = "ENABLED";
    FD1S3AX num_delay_i13 (.D(num_delay_15__N_985[13]), .CK(sys_clk_c), 
            .Q(num_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i13.GSR = "ENABLED";
    FD1S3AX num_delay_i12 (.D(num_delay_15__N_985[12]), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i12.GSR = "ENABLED";
    FD1S3AX num_delay_i11 (.D(num_delay_15__N_985[11]), .CK(sys_clk_c), 
            .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i11.GSR = "ENABLED";
    FD1S3AX num_delay_i10 (.D(num_delay_15__N_985[10]), .CK(sys_clk_c), 
            .Q(num_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i10.GSR = "ENABLED";
    FD1S3AX num_delay_i9 (.D(num_delay_15__N_985[9]), .CK(sys_clk_c), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i9.GSR = "ENABLED";
    FD1S3AX num_delay_i8 (.D(num_delay_15__N_985[8]), .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i8.GSR = "ENABLED";
    FD1S3AX num_delay_i7 (.D(num_delay_15__N_985[7]), .CK(sys_clk_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i7.GSR = "ENABLED";
    FD1S3AX num_delay_i6 (.D(num_delay_15__N_985[6]), .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i6.GSR = "ENABLED";
    FD1S3AX num_delay_i5 (.D(num_delay_15__N_985[5]), .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i5.GSR = "ENABLED";
    FD1S3AX num_delay_i4 (.D(num_delay_15__N_985[4]), .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i4.GSR = "ENABLED";
    FD1S3AX num_delay_i3 (.D(num_delay_15__N_985[3]), .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i3.GSR = "ENABLED";
    FD1S3AY num_delay_i2 (.D(num_delay_15__N_985[2]), .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i2.GSR = "ENABLED";
    FD1S3AX num_delay_i1 (.D(num_delay_15__N_985[1]), .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam num_delay_i1.GSR = "ENABLED";
    FD1P3AX num_3053__i2 (.D(n1[2]), .SP(sys_clk_c_enable_196), .CK(sys_clk_c), 
            .Q(num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n22), .B(n1704), .C(n36316), .D(state[2]), 
         .Z(n6_adj_1728)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut.init = 16'hac00;
    LUT4 i1_2_lut_4_lut_adj_21 (.A(n22_adj_3), .B(n1705), .C(n36316), 
         .D(state[2]), .Z(n6_adj_1730)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_21.init = 16'hac00;
    LUT4 i1_2_lut_4_lut_adj_22 (.A(n15), .B(n37031), .C(n38085), .D(state[2]), 
         .Z(n6_adj_1731)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_22.init = 16'hac00;
    LUT4 i1_2_lut_4_lut_adj_23 (.A(n37070), .B(n1699), .C(n36302), .D(state[2]), 
         .Z(n6_adj_1732)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_23.init = 16'hac00;
    LUT4 i2_3_lut_rep_637 (.A(num[4]), .B(num[3]), .C(num[2]), .Z(n38224)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i2_3_lut_rep_637.init = 16'hfefe;
    LUT4 n37785_bdd_2_lut_4_lut (.A(n37784), .B(n38346), .C(cnt_scan[3]), 
         .D(cnt_scan[4]), .Z(n37786)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n37785_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 i2_2_lut_rep_578_4_lut (.A(num[4]), .B(num[3]), .C(num[2]), .D(n38225), 
         .Z(n38165)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i2_2_lut_rep_578_4_lut.init = 16'hfffe;
    LUT4 i34_4_lut_4_lut (.A(state[0]), .B(state[3]), .C(state_5__N_1344[0]), 
         .D(state[1]), .Z(n21)) /* synthesis lut_function=(!(A (B+(D))+!A (B (D)+!B (C+!(D))))) */ ;
    defparam i34_4_lut_4_lut.init = 16'h0166;
    LUT4 i12976_2_lut_rep_638 (.A(num[0]), .B(num[1]), .Z(n38225)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i12976_2_lut_rep_638.init = 16'heeee;
    LUT4 n37769_bdd_2_lut_4_lut (.A(n37768), .B(n38343), .C(cnt_scan[3]), 
         .D(cnt_scan[4]), .Z(n37770)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n37769_bdd_2_lut_4_lut.init = 16'h00ca;
    CCU2D num_3053_add_4_9 (.A0(cnt_scan[3]), .B0(n20350), .C0(num[7]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32911), .S0(n37[7]));   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053_add_4_9.INIT0 = 16'he1e1;
    defparam num_3053_add_4_9.INIT1 = 16'h0000;
    defparam num_3053_add_4_9.INJECT1_0 = "NO";
    defparam num_3053_add_4_9.INJECT1_1 = "NO";
    CCU2D num_3053_add_4_7 (.A0(cnt_scan[3]), .B0(n20350), .C0(num[5]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20350), .C1(num[6]), 
          .D1(GND_net), .CIN(n32910), .COUT(n32911), .S0(n37[5]), .S1(n37[6]));   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053_add_4_7.INIT0 = 16'he1e1;
    defparam num_3053_add_4_7.INIT1 = 16'he1e1;
    defparam num_3053_add_4_7.INJECT1_0 = "NO";
    defparam num_3053_add_4_7.INJECT1_1 = "NO";
    LUT4 i20229_2_lut_rep_542_3_lut_4_lut (.A(num[0]), .B(num[1]), .C(char[1]), 
         .D(n38224), .Z(n38129)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i20229_2_lut_rep_542_3_lut_4_lut.init = 16'h0010;
    CCU2D num_3053_add_4_5 (.A0(cnt_scan[3]), .B0(n20350), .C0(num[3]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20350), .C1(num[4]), 
          .D1(GND_net), .CIN(n32909), .COUT(n32910), .S0(n37[3]), .S1(n37[4]));   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053_add_4_5.INIT0 = 16'he1e1;
    defparam num_3053_add_4_5.INIT1 = 16'he1e1;
    defparam num_3053_add_4_5.INJECT1_0 = "NO";
    defparam num_3053_add_4_5.INJECT1_1 = "NO";
    LUT4 mux_36_Mux_5_i14_4_lut_4_lut (.A(cnt_main[0]), .B(\cnt_main[1] ), 
         .C(sw1_c), .D(\cnt_main[2] ), .Z(n14)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !(D)))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam mux_36_Mux_5_i14_4_lut_4_lut.init = 16'h6011;
    CCU2D num_3053_add_4_3 (.A0(cnt_scan[3]), .B0(n20350), .C0(num[1]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20350), .C1(num[2]), 
          .D1(GND_net), .CIN(n32908), .COUT(n32909), .S0(n37[1]), .S1(n37[2]));   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053_add_4_3.INIT0 = 16'he1e1;
    defparam num_3053_add_4_3.INIT1 = 16'he1e1;
    defparam num_3053_add_4_3.INJECT1_0 = "NO";
    defparam num_3053_add_4_3.INJECT1_1 = "NO";
    LUT4 i20193_2_lut_rep_579_3_lut (.A(num[0]), .B(num[1]), .C(char[19]), 
         .Z(n38166)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i20193_2_lut_rep_579_3_lut.init = 16'h1010;
    LUT4 i2_4_lut_4_lut (.A(state[0]), .B(state[3]), .C(n38177), .D(state[1]), 
         .Z(n8063)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C+!(D))))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h0106;
    LUT4 i97_4_lut_4_lut_4_lut (.A(cnt_scan[0]), .B(x_ph[4]), .C(cnt_scan[2]), 
         .D(n2678), .Z(n45)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;   // d:/new porject/top-xu/oled.v(147[24:39])
    defparam i97_4_lut_4_lut_4_lut.init = 16'ha404;
    LUT4 i12996_2_lut_rep_639 (.A(num[3]), .B(num[4]), .Z(n38226)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i12996_2_lut_rep_639.init = 16'heeee;
    LUT4 i29589_3_lut (.A(char_reg[7]), .B(char_reg[6]), .C(cnt_write[1]), 
         .Z(n36429)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29589_3_lut.init = 16'hcaca;
    CCU2D num_3053_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20350), .C1(num[0]), 
          .D1(GND_net), .COUT(n32908), .S1(n37[0]));   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053_add_4_1.INIT0 = 16'hF000;
    defparam num_3053_add_4_1.INIT1 = 16'he1e1;
    defparam num_3053_add_4_1.INJECT1_0 = "NO";
    defparam num_3053_add_4_1.INJECT1_1 = "NO";
    LUT4 i20227_2_lut_rep_520_3_lut (.A(num[3]), .B(num[4]), .C(n37046), 
         .Z(n38107)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i20227_2_lut_rep_520_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_4_lut (.A(cnt_main[0]), .B(\cnt_main[1] ), .C(n38056), 
         .D(\cnt_main[2] ), .Z(n35821)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+!(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0108;
    LUT4 n35817_bdd_3_lut_30588 (.A(state[2]), .B(state[4]), .C(state_back[5]), 
         .Z(n38362)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n35817_bdd_3_lut_30588.init = 16'h1010;
    LUT4 i1_2_lut_rep_640 (.A(flash_bit), .B(time_set), .Z(n38227)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/oled.v(61[8] 66[5])
    defparam i1_2_lut_rep_640.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_580_3_lut (.A(flash_bit), .B(time_set), .C(sw1_c), 
         .Z(n38167)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // d:/new porject/top-xu/oled.v(61[8] 66[5])
    defparam i1_2_lut_rep_580_3_lut.init = 16'h0b0b;
    LUT4 i12290_2_lut_rep_641 (.A(cnt_main[0]), .B(\cnt_main[1] ), .Z(n38228)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i12290_2_lut_rep_641.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_adj_24 (.A(cnt_main[0]), .B(\cnt_main[1] ), .C(\cnt_main[2] ), 
         .Z(n4_c)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i1_2_lut_3_lut_adj_24.init = 16'h6060;
    LUT4 i1_2_lut_4_lut_adj_25 (.A(n37053), .B(n1700), .C(n36302), .D(state[2]), 
         .Z(n6_adj_1735)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_25.init = 16'hac00;
    LUT4 n35817_bdd_4_lut_30959 (.A(n35817), .B(n4827), .C(state[2]), 
         .D(state[4]), .Z(n38363)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam n35817_bdd_4_lut_30959.init = 16'h0aca;
    FD1P3IX num_3053__i1 (.D(n37[1]), .SP(sys_clk_c_enable_242), .CD(n21973), 
            .CK(sys_clk_c), .Q(num[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053__i1.GSR = "ENABLED";
    FD1P3IX num_3053__i3 (.D(n37[3]), .SP(sys_clk_c_enable_242), .CD(n21973), 
            .CK(sys_clk_c), .Q(num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053__i3.GSR = "ENABLED";
    FD1P3IX num_3053__i4 (.D(n37[4]), .SP(sys_clk_c_enable_242), .CD(n21973), 
            .CK(sys_clk_c), .Q(num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053__i4.GSR = "ENABLED";
    FD1P3IX num_3053__i5 (.D(n37[5]), .SP(sys_clk_c_enable_242), .CD(n21973), 
            .CK(sys_clk_c), .Q(num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053__i5.GSR = "ENABLED";
    FD1P3IX num_3053__i6 (.D(n37[6]), .SP(sys_clk_c_enable_242), .CD(n21973), 
            .CK(sys_clk_c), .Q(num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053__i6.GSR = "ENABLED";
    FD1P3AX num_3053__i7 (.D(n1[7]), .SP(sys_clk_c_enable_243), .CK(sys_clk_c), 
            .Q(num[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053__i7.GSR = "ENABLED";
    FD1P3IX cnt_i0_i1 (.D(n2170[1]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(\cnt[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_i0_i2 (.D(n2170[2]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(\cnt[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    LUT4 n37628_bdd_2_lut_30468_2_lut_then_4_lut (.A(cnt_scan[2]), .B(n3815), 
         .C(n4193), .D(cnt_scan[0]), .Z(n38342)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam n37628_bdd_2_lut_30468_2_lut_then_4_lut.init = 16'h5044;
    LUT4 n37628_bdd_2_lut_30468_2_lut_else_4_lut (.A(cnt_scan[2]), .B(n3437), 
         .C(n3059), .D(cnt_scan[0]), .Z(n38341)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n37628_bdd_2_lut_30468_2_lut_else_4_lut.init = 16'h4450;
    FD1P3IX cnt_main_i0_i4 (.D(n10315), .SP(sys_clk_c_enable_263), .CD(n23511), 
            .CK(sys_clk_c), .Q(cnt_main_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_main_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_i0_i3 (.D(n2170[3]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(\cnt[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i3.GSR = "ENABLED";
    LUT4 n37638_bdd_2_lut_30459_2_lut_then_4_lut (.A(cnt_scan[2]), .B(n3816), 
         .C(n4194), .D(cnt_scan[0]), .Z(n38345)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam n37638_bdd_2_lut_30459_2_lut_then_4_lut.init = 16'h5044;
    LUT4 n37638_bdd_2_lut_30459_2_lut_else_4_lut (.A(cnt_scan[2]), .B(n3438), 
         .C(n3060), .D(cnt_scan[0]), .Z(n38344)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n37638_bdd_2_lut_30459_2_lut_else_4_lut.init = 16'h4450;
    LUT4 i1_2_lut_4_lut_adj_26 (.A(state[2]), .B(n39214), .C(char_reg_c[5]), 
         .D(n38113), .Z(n6_adj_1736)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_26.init = 16'ha088;
    PFUMX i30324 (.BLUT(n37656), .ALUT(n37655), .C0(cnt_scan[1]), .Z(n37657));
    LUT4 i29982_4_lut (.A(n36117), .B(state[0]), .C(n6_adj_1737), .D(n38111), 
         .Z(sys_clk_c_enable_349)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam i29982_4_lut.init = 16'h50dc;
    LUT4 mux_75_i4_4_lut (.A(n2309), .B(n2318[3]), .C(n38151), .D(n38118), 
         .Z(cnt_scan_4__N_1062[3])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/new porject/top-xu/oled.v(146[16] 147[40])
    defparam mux_75_i4_4_lut.init = 16'hc505;
    LUT4 i2_4_lut (.A(n38081), .B(\cnt_main[1] ), .C(cnt_main_c[3]), .D(n26847), 
         .Z(n35764)) /* synthesis lut_function=(!(A+!(B (C)+!B !((D)+!C)))) */ ;
    defparam i2_4_lut.init = 16'h4050;
    LUT4 i20242_2_lut (.A(\cnt_main[2] ), .B(cnt_main[0]), .Z(n26847)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20242_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_27 (.A(cnt_scan[4]), .B(n4_adj_1738), .C(n11), .D(n10387), 
         .Z(n35632)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_27.init = 16'h0408;
    LUT4 i2_3_lut (.A(state[0]), .B(n38180), .C(state[2]), .Z(n6_adj_1737)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i2_3_lut.init = 16'h4848;
    LUT4 min_ones_3__bdd_4_lut (.A(n9659), .B(n19219), .C(\hundres_0__N_353[1] ), 
         .D(sw1_c), .Z(n39074)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam min_ones_3__bdd_4_lut.init = 16'h0078;
    LUT4 n8690_bdd_4_lut (.A(n39479), .B(\hundres_1__N_345[0] ), .C(\ds18b20_data[8] ), 
         .D(\hundres_1__N_345[1] ), .Z(n39072)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam n8690_bdd_4_lut.init = 16'h5400;
    LUT4 min_ones_3__bdd_3_lut (.A(\min_ones[3] ), .B(\min_warning_ones[3] ), 
         .C(sw1_c), .Z(n39075)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam min_ones_3__bdd_3_lut.init = 16'hcaca;
    LUT4 i3877_2_lut_rep_652 (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n38239)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(147[24:39])
    defparam i3877_2_lut_rep_652.init = 16'h8888;
    LUT4 i3889_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n2318[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(147[24:39])
    defparam i3889_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3891_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n10387)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(147[24:39])
    defparam i3891_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3IX cnt_init_i0_i1 (.D(n2108[1]), .SP(sys_clk_c_enable_264), .CD(n23502), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    LUT4 i3882_2_lut_3_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .Z(n2318[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(147[24:39])
    defparam i3882_2_lut_3_lut.init = 16'h7878;
    LUT4 i92_4_lut (.A(n32987), .B(n2677), .C(cnt_scan[1]), .D(n38263), 
         .Z(n57)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i92_4_lut.init = 16'hca0a;
    FD1P3IX cnt_i0_i11 (.D(n2170[11]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i11.GSR = "ENABLED";
    LUT4 n37373_bdd_4_lut_then_4_lut (.A(num[0]), .B(n38226), .C(num[1]), 
         .D(char[19]), .Z(n38276)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n37373_bdd_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i15375_4_lut (.A(sys_clk_c_enable_349), .B(n38258), .C(n38178), 
         .D(state[2]), .Z(n21897)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam i15375_4_lut.init = 16'ha8aa;
    LUT4 n39193_bdd_2_lut (.A(n39193), .B(cnt_scan[4]), .Z(n39194)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n39193_bdd_2_lut.init = 16'h2222;
    LUT4 n3054_bdd_4_lut_31095 (.A(n3054), .B(n3810), .C(cnt_scan[3]), 
         .D(cnt_scan[1]), .Z(n39191)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n3054_bdd_4_lut_31095.init = 16'hc0a0;
    LUT4 n2676_bdd_4_lut_31059 (.A(n3432), .B(n4188), .C(cnt_scan[3]), 
         .D(cnt_scan[1]), .Z(n39189)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n2676_bdd_4_lut_31059.init = 16'hc0a0;
    LUT4 n2676_bdd_3_lut (.A(n2676), .B(cnt_scan[3]), .C(cnt_scan[1]), 
         .Z(n39188)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n2676_bdd_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_654 (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n38241)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(148[7] 164[14])
    defparam i1_2_lut_rep_654.init = 16'heeee;
    LUT4 i1_4_lut (.A(state[2]), .B(n38180), .C(n53_adj_1739), .D(n48_adj_1740), 
         .Z(n6_adj_1741)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_4_lut.init = 16'ha8a0;
    LUT4 i1_3_lut_rep_559_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n38146)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/new porject/top-xu/oled.v(148[7] 164[14])
    defparam i1_3_lut_rep_559_4_lut.init = 16'hefff;
    LUT4 i2_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n33295)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(148[7] 164[14])
    defparam i2_3_lut_4_lut.init = 16'he000;
    LUT4 cnt_2__bdd_4_lut_31090 (.A(\cnt[2] ), .B(\cnt[0] ), .C(\cnt[4] ), 
         .D(\cnt[3] ), .Z(n39213)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+!(D))+!B !((D)+!C)))) */ ;
    defparam cnt_2__bdd_4_lut_31090.init = 16'h1503;
    LUT4 cnt_2__bdd_3_lut_31089 (.A(\cnt[2] ), .B(\cnt[4] ), .C(\cnt[3] ), 
         .Z(n39212)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam cnt_2__bdd_3_lut_31089.init = 16'h0202;
    LUT4 i20651_4_lut (.A(state[2]), .B(cnt_scan[4]), .C(n33295), .D(n38146), 
         .Z(n27)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i20651_4_lut.init = 16'h0111;
    LUT4 i20391_4_lut (.A(n33176), .B(n2508), .C(n125), .D(n2507), .Z(n11918)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(157[51:79])
    defparam i20391_4_lut.init = 16'hc044;
    LUT4 i2_3_lut_adj_28 (.A(n2507), .B(n125), .C(n2508), .Z(n33069)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_28.init = 16'h8080;
    FD1P3IX cnt_init_i0_i2 (.D(n2108[2]), .SP(sys_clk_c_enable_264), .CD(n23502), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i3 (.D(n2108[3]), .SP(sys_clk_c_enable_264), .CD(n23502), 
            .CK(sys_clk_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_init_i0_i3.GSR = "ENABLED";
    LUT4 i15269_3_lut_4_lut (.A(n38111), .B(n11_adj_1742), .C(state[0]), 
         .D(n4245), .Z(n21915)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C (D))))) */ ;
    defparam i15269_3_lut_4_lut.init = 16'h7240;
    LUT4 i1_3_lut (.A(state[2]), .B(state_back[3]), .C(n8), .Z(n6_adj_1743)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_adj_29 (.A(state[2]), .B(state_back[0]), .C(n8), .Z(n6_adj_1744)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_29.init = 16'h8080;
    LUT4 n39192_bdd_3_lut_4_lut (.A(n39191), .B(cnt_scan[2]), .C(cnt_scan[0]), 
         .D(n39190), .Z(n39193)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n39192_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 i19889_2_lut_rep_658 (.A(state[3]), .B(state[2]), .Z(n38245)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19889_2_lut_rep_658.init = 16'heeee;
    LUT4 i1_4_lut_adj_30 (.A(n35699), .B(n35790), .C(state[0]), .D(n38176), 
         .Z(sys_clk_c_enable_280)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_30.init = 16'hc088;
    LUT4 i1_4_lut_adj_31 (.A(state[2]), .B(n4827), .C(n19), .D(n16), 
         .Z(n6_adj_1745)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_31.init = 16'haaa8;
    LUT4 i29_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n4247[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(46[42:51])
    defparam i29_2_lut.init = 16'h6666;
    LUT4 i29272_3_lut_4_lut (.A(state[3]), .B(state[2]), .C(state[4]), 
         .D(state[0]), .Z(n36109)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29272_3_lut_4_lut.init = 16'hfffe;
    LUT4 i23616_3_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .Z(n4247[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(46[42:51])
    defparam i23616_3_lut.init = 16'h6a6a;
    LUT4 i73_2_lut_rep_659 (.A(state[2]), .B(state[3]), .Z(n38246)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i73_2_lut_rep_659.init = 16'h6666;
    LUT4 i1_2_lut_rep_522_3_lut_3_lut_4_lut (.A(state[2]), .B(state[3]), 
         .C(n38258), .D(n38259), .Z(n38109)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_522_3_lut_3_lut_4_lut.init = 16'h0600;
    LUT4 n3057_bdd_3_lut_31107 (.A(n3435), .B(n4191), .C(cnt_scan[1]), 
         .Z(n39422)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3057_bdd_3_lut_31107.init = 16'hcaca;
    LUT4 n3057_bdd_3_lut (.A(n3057), .B(n3813), .C(cnt_scan[1]), .Z(n39423)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3057_bdd_3_lut.init = 16'hcaca;
    LUT4 n39424_bdd_2_lut (.A(n39424), .B(cnt_scan[2]), .Z(n39425)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n39424_bdd_2_lut.init = 16'h2222;
    LUT4 n2679_bdd_4_lut (.A(n2679), .B(cnt_scan[2]), .C(x_pl[3]), .D(cnt_scan[1]), 
         .Z(n39426)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B+((D)+!C))) */ ;
    defparam n2679_bdd_4_lut.init = 16'h8830;
    LUT4 i2_3_lut_rep_660 (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[3]), 
         .Z(n38247)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_660.init = 16'hfefe;
    LUT4 i29462_3_lut (.A(n38113), .B(\cnt[4] ), .C(\cnt[3] ), .Z(n36302)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/oled.v(133[20] 136[14])
    defparam i29462_3_lut.init = 16'h1010;
    LUT4 gnd_bdd_2_lut_31115 (.A(n39426), .B(cnt_scan[0]), .Z(n39427)) /* synthesis lut_function=(A (B)) */ ;
    defparam gnd_bdd_2_lut_31115.init = 16'h8888;
    LUT4 i3797_2_lut_rep_661 (.A(cnt_main[0]), .B(warning_TEM), .Z(n38248)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(92[41:56])
    defparam i3797_2_lut_rep_661.init = 16'h8888;
    LUT4 i19928_3_lut_4_lut (.A(cnt_main[0]), .B(warning_TEM), .C(cnt_main_c[4]), 
         .D(\cnt_main[1] ), .Z(cnt_main_4__N_1052[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // d:/new porject/top-xu/oled.v(92[41:56])
    defparam i19928_3_lut_4_lut.init = 16'hf7f8;
    LUT4 i1_2_lut_adj_32 (.A(cnt_scan[4]), .B(n63), .Z(n64)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_32.init = 16'h4444;
    LUT4 i5176_1_lut (.A(cnt_write[0]), .Z(n4_adj_1746)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/oled.v(169[7] 189[14])
    defparam i5176_1_lut.init = 16'h5555;
    LUT4 i19996_2_lut_rep_662 (.A(state[2]), .B(state[0]), .Z(n38249)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19996_2_lut_rep_662.init = 16'heeee;
    LUT4 cnt_init_0__bdd_2_lut_30220_3_lut (.A(state[2]), .B(state[0]), 
         .C(state_back[1]), .Z(n37377)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam cnt_init_0__bdd_2_lut_30220_3_lut.init = 16'h1010;
    LUT4 i29476_3_lut (.A(n38113), .B(\cnt[4] ), .C(\cnt[3] ), .Z(n36316)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(133[20] 136[14])
    defparam i29476_3_lut.init = 16'h0404;
    LUT4 i92_4_lut_adj_33 (.A(n32987), .B(n36061), .C(cnt_scan[1]), .D(n6_adj_1747), 
         .Z(n57_adj_1748)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i92_4_lut_adj_33.init = 16'h3a0a;
    LUT4 i1_4_lut_adj_34 (.A(state[2]), .B(n37764), .C(char_reg_c[4]), 
         .D(n38113), .Z(n6_adj_1749)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_34.init = 16'ha088;
    LUT4 i23595_4_lut (.A(cnt_write[4]), .B(cnt_write[3]), .C(cnt_write[0]), 
         .D(n38264), .Z(n4247[4])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;   // d:/new porject/top-xu/oled.v(46[42:51])
    defparam i23595_4_lut.init = 16'h6aaa;
    LUT4 i1_3_lut_4_lut_adj_35 (.A(state[2]), .B(state[0]), .C(state[3]), 
         .D(n38133), .Z(n27_adj_1750)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_35.init = 16'hffe1;
    LUT4 i1_2_lut_adj_36 (.A(cnt_scan[4]), .B(n63_adj_1751), .Z(n64_adj_1752)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_36.init = 16'h4444;
    LUT4 i29224_2_lut (.A(n2513), .B(n35903), .Z(n36061)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29224_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_37 (.A(n38084), .B(n2510), .C(n2508), .D(n2509), 
         .Z(n35903)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i2_4_lut_adj_37.init = 16'hefff;
    LUT4 i2_3_lut_adj_38 (.A(n2513), .B(n2507), .C(n19580), .Z(n35776)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_38.init = 16'h8080;
    LUT4 i12957_4_lut (.A(n37747), .B(n35903), .C(cnt_scan[0]), .D(n2508), 
         .Z(n19580)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i12957_4_lut.init = 16'h3a30;
    LUT4 i1_2_lut_adj_39 (.A(cnt_scan[4]), .B(n37911), .Z(n64_adj_1753)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_39.init = 16'h4444;
    LUT4 i20318_2_lut (.A(n2144[9]), .B(oled_dcn_N_1404), .Z(n2170[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20318_2_lut.init = 16'h2222;
    LUT4 i29146_2_lut_rep_664 (.A(cnt_main_c[3]), .B(cnt_main_c[4]), .Z(n38251)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29146_2_lut_rep_664.init = 16'heeee;
    LUT4 i1_2_lut_adj_40 (.A(cnt_scan[4]), .B(n39428), .Z(n64_adj_1754)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_40.init = 16'h4444;
    LUT4 i29357_2_lut_3_lut (.A(cnt_main_c[3]), .B(cnt_main_c[4]), .C(state[0]), 
         .Z(n36197)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i29357_2_lut_3_lut.init = 16'hfefe;
    LUT4 i20436_2_lut_rep_665 (.A(cnt_main[0]), .B(\cnt_main[1] ), .Z(n38252)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i20436_2_lut_rep_665.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_41 (.A(n38102), .B(n38268), .C(num_delay[14]), 
         .D(cnt_init[0]), .Z(n16_adj_1755)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_41.init = 16'h00e0;
    LUT4 i1_2_lut_adj_42 (.A(cnt_scan[4]), .B(n63_adj_1756), .Z(n64_adj_1757)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_42.init = 16'h4444;
    LUT4 mux_33_Mux_1_i14_3_lut_4_lut_3_lut (.A(cnt_main[0]), .B(\cnt_main[1] ), 
         .C(\cnt_main[2] ), .Z(n14_adj_1758)) /* synthesis lut_function=(A ((C)+!B)+!A (B)) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam mux_33_Mux_1_i14_3_lut_4_lut_3_lut.init = 16'he6e6;
    LUT4 i1_3_lut_4_lut_adj_43 (.A(n38102), .B(n38268), .C(num_delay[13]), 
         .D(cnt_init[0]), .Z(n16_adj_1759)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_43.init = 16'h00e0;
    LUT4 i1_4_lut_adj_44 (.A(cnt_init[0]), .B(n20479), .C(state_back[2]), 
         .D(n38268), .Z(n16)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_44.init = 16'h5444;
    FD1P3IX cnt_i0_i4 (.D(n2170[4]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(\cnt[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i4.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_45 (.A(state_back[2]), .B(n38180), .C(oled_dcn_N_1404), 
         .Z(n20479)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1_3_lut_adj_45.init = 16'h8c8c;
    FD1P3IX cnt_main_i0_i0 (.D(cnt_main_4__N_1052[0]), .SP(sys_clk_c_enable_263), 
            .CD(n23517), .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i20438_3_lut (.A(n14_adj_1758), .B(cnt_main_c[4]), .C(cnt_main_c[3]), 
         .Z(x_ph_7__N_1080[1])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i20438_3_lut.init = 16'hecec;
    FD1P3IX cnt_init_i0_i4 (.D(n2108[4]), .SP(sys_clk_c_enable_264), .CD(n23502), 
            .CK(sys_clk_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_init_i0_i4.GSR = "ENABLED";
    LUT4 mux_906_Mux_23_i125_4_lut (.A(n37078), .B(n35904), .C(n2509), 
         .D(n2513), .Z(n125)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(157[51:79])
    defparam mux_906_Mux_23_i125_4_lut.init = 16'h3a0a;
    LUT4 i4_4_lut (.A(n38107), .B(n2509), .C(n2510), .D(n6_adj_1760), 
         .Z(n33176)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i4_4_lut.init = 16'hffdf;
    LUT4 i1_3_lut_4_lut_adj_46 (.A(n38102), .B(n38268), .C(num_delay[8]), 
         .D(cnt_init[0]), .Z(n16_adj_1761)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_46.init = 16'h00e0;
    LUT4 i15_2_lut_3_lut (.A(cnt_main[0]), .B(\cnt_main[1] ), .C(\cnt_main[2] ), 
         .Z(n7_c)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i15_2_lut_3_lut.init = 16'h1e1e;
    LUT4 mux_33_Mux_0_i14_3_lut_4_lut_3_lut (.A(cnt_main[0]), .B(\cnt_main[1] ), 
         .C(\cnt_main[2] ), .Z(n27359)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam mux_33_Mux_0_i14_3_lut_4_lut_3_lut.init = 16'he8e8;
    LUT4 i1_3_lut_4_lut_adj_47 (.A(n38102), .B(n38268), .C(num_delay[7]), 
         .D(cnt_init[0]), .Z(n16_adj_1762)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_47.init = 16'h00e0;
    LUT4 i1_2_lut_rep_666 (.A(state[3]), .B(state[0]), .Z(n38253)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_666.init = 16'heeee;
    LUT4 i15327_2_lut_4_lut_4_lut_4_lut (.A(state[3]), .B(state[0]), .C(n38127), 
         .D(n8063), .Z(n21973)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i15327_2_lut_4_lut_4_lut_4_lut.init = 16'h5400;
    LUT4 i20576_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(oled_dcn_N_1404), 
         .D(n4_adj_1763), .Z(n27183)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i20576_4_lut.init = 16'ha888;
    LUT4 i1_3_lut_4_lut_adj_48 (.A(n38102), .B(n38268), .C(num_delay[5]), 
         .D(cnt_init[0]), .Z(n16_adj_1764)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_48.init = 16'h00e0;
    LUT4 i1_3_lut_4_lut_adj_49 (.A(n38102), .B(n38268), .C(num_delay[3]), 
         .D(cnt_init[0]), .Z(n16_adj_1765)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_49.init = 16'h00e0;
    LUT4 i1_3_lut_4_lut_adj_50 (.A(n38102), .B(n38268), .C(cnt_init[0]), 
         .D(n38171), .Z(n8)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_3_lut_4_lut_adj_50.init = 16'hff0e;
    LUT4 i29592_3_lut (.A(\char_reg[1] ), .B(char_reg[0]), .C(cnt_write[1]), 
         .Z(n36432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29592_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_51 (.A(state[4]), .B(n36435), .C(n38176), .Z(n35642)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam i1_3_lut_adj_51.init = 16'h0808;
    LUT4 i29591_3_lut (.A(\char_reg[3] ), .B(\char_reg[2] ), .C(cnt_write[1]), 
         .Z(n36431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29591_3_lut.init = 16'hcaca;
    LUT4 n37373_bdd_4_lut_else_4_lut (.A(char[8]), .B(num[0]), .C(n38226), 
         .D(num[1]), .Z(n38275)) /* synthesis lut_function=(!((B (C)+!B (C+!(D)))+!A)) */ ;
    defparam n37373_bdd_4_lut_else_4_lut.init = 16'h0a08;
    LUT4 i29990_2_lut (.A(cnt_scan[3]), .B(cnt_scan[1]), .Z(n36293)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i29990_2_lut.init = 16'hbbbb;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n38110), .B(n36213), .C(n33140), .D(state_5__N_1344[0]), 
         .Z(sys_clk_c_enable_313)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(90[5:9])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h040c;
    LUT4 i20314_2_lut (.A(n2144[5]), .B(oled_dcn_N_1404), .Z(n2170[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20314_2_lut.init = 16'h2222;
    LUT4 i29872_3_lut_4_lut_4_lut (.A(n38110), .B(sys_clk_c_enable_263), 
         .C(n36213), .D(state_5__N_1344[0]), .Z(sys_clk_c_enable_342)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(90[5:9])
    defparam i29872_3_lut_4_lut_4_lut.init = 16'h40c0;
    LUT4 i1_4_lut_adj_52 (.A(n19_adj_1766), .B(\cnt[4] ), .C(n20), .D(n4), 
         .Z(oled_dcn_N_1404)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_52.init = 16'hfefa;
    LUT4 i19895_2_lut_rep_668 (.A(cnt_init[4]), .B(cnt_init[3]), .Z(n38255)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19895_2_lut_rep_668.init = 16'heeee;
    PFUMX i30274 (.BLUT(n37581), .ALUT(n37580), .C0(cnt_main_c[3]), .Z(num_7__N_1096[0]));
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), .C(n38265), 
         .D(state[2]), .Z(n9094)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i2_3_lut_rep_593_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), .C(cnt_init[1]), 
         .D(cnt_init[2]), .Z(n38180)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_rep_593_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_566_3_lut (.A(cnt_init[4]), .B(cnt_init[3]), .C(state[2]), 
         .Z(n38153)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_566_3_lut.init = 16'h1010;
    LUT4 i3960_3_lut_4_lut (.A(n37975), .B(n37969), .C(n9367), .D(\hundres_0__N_353[1]_adj_4 ), 
         .Z(n9677)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/oled.v(110[119:149])
    defparam i3960_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i15307_2_lut (.A(sys_clk_c_enable_288), .B(state[0]), .Z(n21955)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam i15307_2_lut.init = 16'h8888;
    LUT4 i20146_2_lut_rep_671 (.A(state[0]), .B(state[1]), .Z(n38258)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20146_2_lut_rep_671.init = 16'heeee;
    LUT4 cnt_init_0__bdd_4_lut_30221 (.A(cnt_init[0]), .B(n38180), .C(state[0]), 
         .D(state[2]), .Z(n37378)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam cnt_init_0__bdd_4_lut_30221.init = 16'h08f0;
    LUT4 i1_2_lut_rep_530_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[3]), 
         .D(state[2]), .Z(n38117)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_530_3_lut_4_lut.init = 16'hfffe;
    LUT4 n37516_bdd_2_lut_3_lut (.A(cnt_main_c[4]), .B(n38110), .C(n37516), 
         .Z(n37517)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam n37516_bdd_2_lut_3_lut.init = 16'h4040;
    LUT4 i3988_3_lut_4_lut (.A(n37976), .B(n37970), .C(n9367), .D(\hundres_0__N_353[1]_adj_5 ), 
         .Z(n9673)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/oled.v(110[119:149])
    defparam i3988_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i20319_2_lut (.A(n2144[10]), .B(oled_dcn_N_1404), .Z(n2170[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20319_2_lut.init = 16'h2222;
    LUT4 i8_4_lut (.A(cnt[5]), .B(cnt[11]), .C(cnt[10]), .D(cnt[13]), 
         .Z(n19_adj_1766)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_adj_53 (.A(cnt_main_c[4]), .B(n38110), .C(n33140), 
         .Z(n23511)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_53.init = 16'h0b0b;
    LUT4 i29359_2_lut_rep_469_3_lut (.A(cnt_main_c[4]), .B(n38110), .C(cnt_main_c[3]), 
         .Z(n38056)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i29359_2_lut_rep_469_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_594_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n38181)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_594_3_lut.init = 16'hfefe;
    LUT4 i15306_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(sys_clk_c_enable_288), 
         .Z(n21954)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i15306_2_lut_3_lut.init = 16'he0e0;
    LUT4 n37379_bdd_3_lut (.A(n37379), .B(n37376), .C(state[3]), .Z(n37380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37379_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_54 (.A(cnt_main_c[4]), .B(n38110), .C(cnt_main_c[3]), 
         .D(n14), .Z(n35765)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_54.init = 16'h4404;
    LUT4 i9_4_lut (.A(cnt[9]), .B(n18), .C(cnt[8]), .D(cnt[6]), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i29828_2_lut_rep_672 (.A(state[5]), .B(state[4]), .Z(n38259)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i29828_2_lut_rep_672.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_4_lut_adj_55 (.A(cnt_main_c[4]), .B(n38110), .C(n7_c), 
         .D(cnt_main_c[3]), .Z(n35820)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_55.init = 16'h0040;
    LUT4 i29751_3_lut (.A(\min_tens[0] ), .B(\min_warning_tens[0] ), .C(sw1_c), 
         .Z(n36385)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29751_3_lut.init = 16'hcaca;
    LUT4 i20144_2_lut_rep_590_3_lut (.A(state[5]), .B(state[4]), .C(state[2]), 
         .Z(n38177)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i20144_2_lut_rep_590_3_lut.init = 16'hfefe;
    LUT4 i15291_2_lut_3_lut_4_lut (.A(n38111), .B(n38090), .C(state[0]), 
         .D(n4269), .Z(n21926)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C (D))))) */ ;
    defparam i15291_2_lut_3_lut_4_lut.init = 16'h7240;
    LUT4 i29764_3_lut (.A(n8688[2]), .B(\Tem_high[2] ), .C(cnt_main[0]), 
         .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29764_3_lut.init = 16'hcaca;
    LUT4 mux_2442_i1_3_lut (.A(\min[0] ), .B(\min_warning[0] ), .C(sw1_c), 
         .Z(n8677[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(113[120:150])
    defparam mux_2442_i1_3_lut.init = 16'hcaca;
    LUT4 i29544_3_lut (.A(\hour[0] ), .B(\hour_warning[0] ), .C(sw1_c), 
         .Z(n36384)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29544_3_lut.init = 16'hcaca;
    LUT4 i12_2_lut_4_lut (.A(cnt_init[0]), .B(n38102), .C(n38164), .D(state[1]), 
         .Z(n24439)) /* synthesis lut_function=(!(A+(B (D)+!B (C+(D))))) */ ;   // d:/new porject/top-xu/oled.v(10[15:23])
    defparam i12_2_lut_4_lut.init = 16'h0045;
    LUT4 i1_2_lut_rep_548_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[2]), 
         .D(state[3]), .Z(n38135)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_548_3_lut_4_lut.init = 16'hfffe;
    LUT4 i20491_2_lut_rep_547_2_lut_3_lut_4_lut (.A(state[5]), .B(state[4]), 
         .C(state[1]), .D(state[0]), .Z(n38134)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i20491_2_lut_rep_547_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(cnt[7]), .B(cnt[14]), .C(cnt[12]), .D(cnt[15]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 equal_2384_i10_2_lut_rep_591_3_lut (.A(state[5]), .B(state[4]), 
         .C(state[3]), .Z(n38178)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam equal_2384_i10_2_lut_rep_591_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_592_3_lut (.A(state[5]), .B(state[4]), .C(state[1]), 
         .Z(n38179)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_592_3_lut.init = 16'hfefe;
    LUT4 i29539_3_lut (.A(n8677[1]), .B(n8682[1]), .C(cnt_main[0]), .Z(n36379)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29539_3_lut.init = 16'hcaca;
    LUT4 n2511_bdd_4_lut (.A(n38107), .B(n2510), .C(n38129), .D(n2513), 
         .Z(n37078)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;
    defparam n2511_bdd_4_lut.init = 16'h2040;
    LUT4 i1_2_lut_rep_551_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[3]), 
         .D(state[1]), .Z(n38138)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_551_3_lut_4_lut.init = 16'hfffe;
    LUT4 char_11__bdd_3_lut (.A(char[2]), .B(char[8]), .C(num[0]), .Z(n37044)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam char_11__bdd_3_lut.init = 16'hcaca;
    LUT4 i29538_4_lut (.A(n8667[1]), .B(n9380), .C(cnt_main[0]), .D(n12746), 
         .Z(n36378)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i29538_4_lut.init = 16'h3aca;
    LUT4 i29537_4_lut (.A(n38167), .B(n9367), .C(cnt_main[0]), .D(n12760), 
         .Z(n36377)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i29537_4_lut.init = 16'h3aca;
    LUT4 n9094_bdd_4_lut (.A(n9094), .B(cnt_init[2]), .C(cnt_init[1]), 
         .D(cnt_init[0]), .Z(n37193)) /* synthesis lut_function=(!((B ((D)+!C)+!B (D))+!A)) */ ;
    defparam n9094_bdd_4_lut.init = 16'h00a2;
    LUT4 mux_36_Mux_2_i11_3_lut (.A(n8677[2]), .B(n8682[2]), .C(cnt_main[0]), 
         .Z(n11_adj_1770)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam mux_36_Mux_2_i11_3_lut.init = 16'hcaca;
    LUT4 i29528_3_lut (.A(n8667[3]), .B(n8673), .C(cnt_main[0]), .Z(n36368)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29528_3_lut.init = 16'hcaca;
    LUT4 mux_75_i1_4_lut_4_lut (.A(cnt_scan[0]), .B(n38118), .C(n38151), 
         .D(n2309), .Z(cnt_scan_4__N_1062[0])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(147[24:39])
    defparam mux_75_i1_4_lut_4_lut.init = 16'h4f40;
    LUT4 i1_4_lut_4_lut_adj_56 (.A(state[0]), .B(n38139), .C(n27183), 
         .D(n38153), .Z(n35724)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(48[13:18])
    defparam i1_4_lut_4_lut_adj_56.init = 16'h0d00;
    LUT4 i1_3_lut_3_lut (.A(cnt_init[0]), .B(oled_dcn_N_1404), .C(state[4]), 
         .Z(n48_adj_1740)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(125[49:64])
    defparam i1_3_lut_3_lut.init = 16'h5151;
    LUT4 i1_4_lut_4_lut_adj_57 (.A(cnt_init[0]), .B(n35987), .C(n19_adj_1771), 
         .D(state[2]), .Z(n6_adj_1772)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(125[49:64])
    defparam i1_4_lut_4_lut_adj_57.init = 16'hf400;
    LUT4 i1_2_lut_2_lut (.A(cnt_init[0]), .B(state[0]), .Z(n4_adj_1763)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(125[49:64])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_4_lut_adj_58 (.A(cnt_init[0]), .B(n35989), .C(n19_adj_1773), 
         .D(state[2]), .Z(n6_adj_1774)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(125[49:64])
    defparam i1_4_lut_4_lut_adj_58.init = 16'hf400;
    FD1P3AX oled_dat_326 (.D(n35642), .SP(sys_clk_c_enable_280), .CK(sys_clk_c), 
            .Q(oled_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam oled_dat_326.GSR = "ENABLED";
    LUT4 mux_36_Mux_2_i9_4_lut (.A(n8667[2]), .B(n9380), .C(cnt_main[0]), 
         .D(n20808), .Z(n9)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam mux_36_Mux_2_i9_4_lut.init = 16'h3aca;
    LUT4 i20409_3_lut (.A(n9367), .B(cnt_main[0]), .C(n20810), .Z(n8_adj_1775)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i20409_3_lut.init = 16'h4848;
    FD1P3IX state_i0_i2 (.D(n34043), .SP(sys_clk_c_enable_288), .CD(n21955), 
            .CK(sys_clk_c), .Q(state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1P3AY oled_clk_325 (.D(n6424[0]), .SP(sys_clk_c_enable_283), .CK(sys_clk_c), 
            .Q(oled_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam oled_clk_325.GSR = "ENABLED";
    FD1P3AY oled_rst_323 (.D(n6361[0]), .SP(sys_clk_c_enable_284), .CK(sys_clk_c), 
            .Q(oled_res_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam oled_rst_323.GSR = "ENABLED";
    LUT4 i1_2_lut_2_lut_adj_59 (.A(cnt_scan[2]), .B(n37657), .Z(n61)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_2_lut_adj_59.init = 16'h4444;
    FD1P3IX cnt_scan_i0_i1 (.D(cnt_scan_4__N_1062[1]), .SP(sys_clk_c_enable_348), 
            .CD(n21850), .CK(sys_clk_c), .Q(cnt_scan[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_scan_i0_i1.GSR = "ENABLED";
    LUT4 mux_36_Mux_1_i15_3_lut (.A(n7), .B(n36383), .C(cnt_main_c[3]), 
         .Z(n15_adj_1777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam mux_36_Mux_1_i15_3_lut.init = 16'hcaca;
    FD1P3IX state_i0_i3 (.D(n34093), .SP(sys_clk_c_enable_288), .CD(n21955), 
            .CK(sys_clk_c), .Q(state[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_i0_i3.GSR = "ENABLED";
    LUT4 gnd_bdd_2_lut_30487_2_lut (.A(cnt_scan[2]), .B(n37907), .Z(n37908)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam gnd_bdd_2_lut_30487_2_lut.init = 16'h4444;
    FD1P3IX state_i0_i4 (.D(n32), .SP(sys_clk_c_enable_288), .CD(n21954), 
            .CK(sys_clk_c), .Q(state[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_i0_i4.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_60 (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(n35776), 
         .D(n48_adj_1778), .Z(n61_adj_1779)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_60.init = 16'h5140;
    LUT4 mux_36_Mux_3_i15_3_lut (.A(n7), .B(n36373), .C(cnt_main_c[3]), 
         .Z(n15_adj_1780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam mux_36_Mux_3_i15_3_lut.init = 16'hcaca;
    LUT4 i92_4_lut_4_lut (.A(cnt_scan[2]), .B(n36401), .C(cnt_scan[3]), 
         .D(n32987), .Z(n57_adj_1781)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i92_4_lut_4_lut.init = 16'h4f40;
    FD1P3IX state_i0_i5 (.D(n39469), .SP(sys_clk_c_enable_288), .CD(n21954), 
            .CK(sys_clk_c), .Q(state[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam state_i0_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_61 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(x_ph[4]), 
         .Z(n32987)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_61.init = 16'h1010;
    LUT4 i1_2_lut_rep_676 (.A(cnt_scan[0]), .B(cnt_scan[2]), .Z(n38263)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_676.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(n2507), 
         .Z(n6_adj_1747)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i20410_2_lut (.A(n36366), .B(cnt_main_c[3]), .Z(n15_adj_1782)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i20410_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_677 (.A(cnt_write[1]), .B(cnt_write[2]), .Z(n38264)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam i1_2_lut_rep_677.init = 16'h8888;
    LUT4 i1_3_lut_adj_62 (.A(state[4]), .B(n14_adj_1783), .C(state[3]), 
         .Z(n34043)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_3_lut_adj_62.init = 16'h0404;
    LUT4 i23605_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(n4247[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam i23605_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_3_lut_3_lut_adj_63 (.A(state[2]), .B(n3807), .C(state_back[3]), 
         .Z(n12_adj_1784)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_3_lut_3_lut_adj_63.init = 16'h5151;
    LUT4 i1_2_lut_3_lut_3_lut (.A(state[2]), .B(state_back[2]), .C(n3807), 
         .Z(n35727)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    PFUMX i30239 (.BLUT(n37509), .ALUT(n37504), .C0(num[3]), .Z(n2508));
    LUT4 i1_2_lut_3_lut_3_lut_adj_64 (.A(state[2]), .B(state_back[0]), .C(n3807), 
         .Z(n35730)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_2_lut_3_lut_3_lut_adj_64.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_65 (.A(state[2]), .B(n3807), .C(n64_adj_1757), 
         .D(char_reg_c[5]), .Z(n12_adj_1785)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_4_lut_4_lut_adj_65.init = 16'h5450;
    PFUMX i30519 (.BLUT(n38278), .ALUT(n38279), .C0(num[1]), .Z(n2513));
    LUT4 i1_4_lut_4_lut_adj_66 (.A(state[2]), .B(n3807), .C(n64_adj_1753), 
         .D(\char_reg[2] ), .Z(n12_adj_1786)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_4_lut_4_lut_adj_66.init = 16'h5450;
    LUT4 i1_2_lut_3_lut_3_lut_adj_67 (.A(state[2]), .B(state_back[4]), .C(n3807), 
         .Z(n35728)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_2_lut_3_lut_3_lut_adj_67.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_68 (.A(state[2]), .B(n3807), .C(n64_adj_1752), 
         .D(char_reg_c[4]), .Z(n12_adj_1787)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_4_lut_4_lut_adj_68.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_69 (.A(state[2]), .B(n3807), .C(n64_adj_1754), 
         .D(\char_reg[3] ), .Z(n12_adj_1788)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_4_lut_4_lut_adj_69.init = 16'h5450;
    LUT4 i27_4_lut (.A(n11_adj_1789), .B(state_back[2]), .C(state[5]), 
         .D(n36131), .Z(n14_adj_1783)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i27_4_lut.init = 16'h0aca;
    LUT4 cnt_main_0__bdd_4_lut_30243 (.A(cnt_main[0]), .B(\cnt_main[1] ), 
         .C(cnt_main_c[3]), .D(\cnt_main[2] ), .Z(n37106)) /* synthesis lut_function=(A (B (C (D)))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam cnt_main_0__bdd_4_lut_30243.init = 16'h8504;
    LUT4 i1_4_lut_4_lut_adj_70 (.A(state[2]), .B(n3807), .C(n39194), .D(char_reg[6]), 
         .Z(n12_adj_1790)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_4_lut_4_lut_adj_70.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_71 (.A(state[2]), .B(n3807), .C(n37786), .D(char_reg[0]), 
         .Z(n12_adj_1791)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_4_lut_4_lut_adj_71.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_72 (.A(state[2]), .B(n3807), .C(n37770), .D(\char_reg[1] ), 
         .Z(n12_adj_1792)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_4_lut_4_lut_adj_72.init = 16'h5450;
    LUT4 i1_2_lut_3_lut_3_lut_adj_73 (.A(state[2]), .B(state_back[5]), .C(n3807), 
         .Z(n35729)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_2_lut_3_lut_3_lut_adj_73.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_74 (.A(state[2]), .B(n3807), .C(n64), .D(char_reg[7]), 
         .Z(n12_adj_1793)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_4_lut_4_lut_adj_74.init = 16'h5450;
    PFUMX i30237 (.BLUT(n37507), .ALUT(n37506), .C0(num[2]), .Z(n37508));
    LUT4 i29302_2_lut_rep_678 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n38265)) /* synthesis lut_function=(A (B)) */ ;
    defparam i29302_2_lut_rep_678.init = 16'h8888;
    FD1P3IX cnt_i0_i15 (.D(n2170[15]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i15.GSR = "ENABLED";
    FD1P3IX cnt_i0_i14 (.D(n2170[14]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i14.GSR = "ENABLED";
    LUT4 n36028_bdd_4_lut_then_4_lut (.A(char[19]), .B(n38224), .C(char[8]), 
         .D(num[0]), .Z(n38279)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam n36028_bdd_4_lut_then_4_lut.init = 16'h2230;
    FD1P3IX cnt_i0_i13 (.D(n2170[13]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i13.GSR = "ENABLED";
    LUT4 i5848_2_lut_rep_416_4_lut (.A(n38117), .B(state[4]), .C(state[5]), 
         .D(n4269), .Z(n38003)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(166[5:10])
    defparam i5848_2_lut_rep_416_4_lut.init = 16'hffef;
    FD1P3IX cnt_i0_i12 (.D(n2170[12]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i12.GSR = "ENABLED";
    PFUMX i30014 (.BLUT(n37044), .ALUT(n37043), .C0(num[1]), .Z(n37045));
    LUT4 i29884_2_lut (.A(n8063), .B(n36588), .Z(sys_clk_c_enable_196)) /* synthesis lut_function=(A (B)) */ ;
    defparam i29884_2_lut.init = 16'h8888;
    LUT4 i29883_4_lut (.A(n27403), .B(n38145), .C(n6_adj_1794), .D(state[3]), 
         .Z(n36588)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;
    defparam i29883_4_lut.init = 16'haa2a;
    LUT4 i2_2_lut (.A(state[0]), .B(cnt_main_c[4]), .Z(n6_adj_1794)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam i2_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_681 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n38268)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_681.init = 16'hdddd;
    LUT4 i1_2_lut_rep_489_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(n38180), .D(oled_dcn_N_1404), .Z(n38076)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i1_2_lut_rep_489_3_lut_4_lut.init = 16'hfddd;
    LUT4 num_3053_mux_6_i1_4_lut (.A(num_7__N_1096[0]), .B(n37[0]), .C(state[3]), 
         .D(state[0]), .Z(n1[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053_mux_6_i1_4_lut.init = 16'hc0ca;
    LUT4 cnt_init_4__I_0_353_i7_2_lut_rep_682 (.A(cnt_init[3]), .B(cnt_init[4]), 
         .Z(n38269)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam cnt_init_4__I_0_353_i7_2_lut_rep_682.init = 16'heeee;
    LUT4 cnt_init_4__I_0_354_i8_2_lut_rep_577_3_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[2]), .Z(n38164)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam cnt_init_4__I_0_354_i8_2_lut_rep_577_3_lut.init = 16'hfefe;
    LUT4 n36028_bdd_4_lut_else_4_lut (.A(char[0]), .B(n38224), .C(char[8]), 
         .D(num[0]), .Z(n38278)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n36028_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i29864_2_lut_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n4827)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam i29864_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_rep_584_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n38171)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam i2_3_lut_rep_584_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_rep_552_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[0]), .D(cnt_init[2]), .Z(n38139)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam i1_2_lut_rep_552_3_lut_4_lut.init = 16'hfffe;
    LUT4 i29356_2_lut_rep_596_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[2]), .D(cnt_init[1]), .Z(n38183)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam i29356_2_lut_rep_596_3_lut_4_lut.init = 16'hfeee;
    LUT4 i2_2_lut_rep_595_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[1]), .D(cnt_init[2]), .Z(n38182)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(126[8:12])
    defparam i2_2_lut_rep_595_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_4_lut_adj_75 (.A(n24), .B(char_reg[0]), .C(n38134), .D(n27_adj_1750), 
         .Z(char_reg_7__N_957[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_75.init = 16'hce0a;
    FD1P3IX cnt_delay_i0_i0 (.D(n4271[0]), .SP(sys_clk_c_enable_329), .CD(n21926), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    FD1P3IX char_i0_i0 (.D(char_167__N_1112[0]), .SP(sys_clk_c_enable_343), 
            .CD(n21912), .CK(sys_clk_c), .Q(char[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_i0_i0.GSR = "ENABLED";
    LUT4 i29294_2_lut (.A(state[2]), .B(state[1]), .Z(n36131)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29294_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(state[2]), .B(state[0]), .C(state[1]), 
         .D(n38178), .Z(n33140)) /* synthesis lut_function=(A+(B (C+(D))+!B ((D)+!C))) */ ;
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'hffeb;
    LUT4 num_2__bdd_3_lut (.A(num[4]), .B(char[13]), .C(num[1]), .Z(n37506)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam num_2__bdd_3_lut.init = 16'h4c4c;
    LUT4 i1_4_lut_adj_76 (.A(n24_adj_1795), .B(state_back[0]), .C(n38134), 
         .D(n27_adj_1750), .Z(state_back_5__N_1039[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_76.init = 16'hce0a;
    CCU2D sub_2409_add_2_17 (.A0(cnt_delay[15]), .B0(num_delay[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32792), .S1(n4269));
    defparam sub_2409_add_2_17.INIT0 = 16'h5999;
    defparam sub_2409_add_2_17.INIT1 = 16'h0000;
    defparam sub_2409_add_2_17.INJECT1_0 = "NO";
    defparam sub_2409_add_2_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_77 (.A(n3), .B(n35790), .C(state[0]), .D(n38176), 
         .Z(sys_clk_c_enable_13)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_77.init = 16'hc088;
    LUT4 i1_4_lut_adj_78 (.A(state[4]), .B(n38247), .C(cnt_write[4]), 
         .D(cnt_write[0]), .Z(n3)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_4_lut_adj_78.init = 16'h2002;
    CCU2D sub_2409_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32791), .COUT(n32792));
    defparam sub_2409_add_2_15.INIT0 = 16'h5999;
    defparam sub_2409_add_2_15.INIT1 = 16'h5999;
    defparam sub_2409_add_2_15.INJECT1_0 = "NO";
    defparam sub_2409_add_2_15.INJECT1_1 = "NO";
    LUT4 i11_4_lut (.A(state[4]), .B(state[0]), .C(n38176), .D(cnt_write[4]), 
         .Z(n35271)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(48[13:18])
    defparam i11_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_79 (.A(cnt_init[2]), .B(n38269), .C(state[4]), 
         .D(cnt_init[0]), .Z(n53_adj_1739)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(128[8:12])
    defparam i1_2_lut_3_lut_4_lut_adj_79.init = 16'h0010;
    LUT4 i1_4_lut_adj_80 (.A(n10), .B(n35790), .C(state[0]), .D(n38176), 
         .Z(sys_clk_c_enable_283)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_80.init = 16'hc088;
    LUT4 i1_4_lut_adj_81 (.A(state[1]), .B(n36109), .C(state[5]), .D(n47), 
         .Z(n6337)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i1_4_lut_adj_81.init = 16'h1712;
    LUT4 char_11__bdd_3_lut_30013 (.A(char[11]), .B(char[8]), .C(num[0]), 
         .Z(n37043)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam char_11__bdd_3_lut_30013.init = 16'hacac;
    LUT4 i1_4_lut_adj_82 (.A(n6337), .B(n9195), .C(n21645), .D(n38109), 
         .Z(sys_clk_c_enable_14)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_82.init = 16'h0a88;
    LUT4 flash_bit_I_0_1_lut (.A(flash_bit), .Z(flash_bit_N_1429)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/oled.v(65[17:28])
    defparam flash_bit_I_0_1_lut.init = 16'h5555;
    LUT4 i29152_2_lut_3_lut_4_lut (.A(oled_dcn_N_1404), .B(n38180), .C(state_back[5]), 
         .D(n38268), .Z(n35987)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i29152_2_lut_3_lut_4_lut.init = 16'hf080;
    LUT4 i29153_2_lut_3_lut_4_lut (.A(oled_dcn_N_1404), .B(n38180), .C(state_back[4]), 
         .D(n38268), .Z(n35989)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i29153_2_lut_3_lut_4_lut.init = 16'hf080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_83 (.A(n38224), .B(n38225), .C(n2513), 
         .D(char[1]), .Z(n6_adj_1760)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(144[11:14])
    defparam i1_2_lut_3_lut_4_lut_adj_83.init = 16'hf1f0;
    FD1P3IX x_ph_i0_i0 (.D(x_ph_7__N_1080[0]), .SP(sys_clk_c_enable_343), 
            .CD(n21912), .CK(sys_clk_c), .Q(x_ph[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam x_ph_i0_i0.GSR = "ENABLED";
    LUT4 i24_3_lut (.A(n3807), .B(n38113), .C(state[2]), .Z(n21645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i24_3_lut.init = 16'hcaca;
    LUT4 num_2__bdd_3_lut_30236 (.A(num[2]), .B(num[4]), .C(char[13]), 
         .Z(n37505)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam num_2__bdd_3_lut_30236.init = 16'h7070;
    CCU2D sub_2409_add_2_13 (.A0(cnt_delay[11]), .B0(num_delay[11]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32790), .COUT(n32791));
    defparam sub_2409_add_2_13.INIT0 = 16'h5999;
    defparam sub_2409_add_2_13.INIT1 = 16'h5999;
    defparam sub_2409_add_2_13.INJECT1_0 = "NO";
    defparam sub_2409_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_2409_add_2_11 (.A0(cnt_delay[9]), .B0(num_delay[9]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(num_delay[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32789), .COUT(n32790));
    defparam sub_2409_add_2_11.INIT0 = 16'h5999;
    defparam sub_2409_add_2_11.INIT1 = 16'h5999;
    defparam sub_2409_add_2_11.INJECT1_0 = "NO";
    defparam sub_2409_add_2_11.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_84 (.A(cnt_scan[4]), .B(n38109), .C(state[2]), .D(n24_adj_1796), 
         .Z(n35121)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_84.init = 16'h0400;
    LUT4 num_2__bdd_2_lut (.A(num[4]), .B(char[13]), .Z(n37504)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam num_2__bdd_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_adj_85 (.A(cnt_scan[3]), .B(cnt_scan[2]), .Z(n24_adj_1796)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_3_lut_adj_85.init = 16'h6666;
    LUT4 num_2__bdd_4_lut (.A(num[4]), .B(char[5]), .C(char[13]), .D(num[1]), 
         .Z(n37507)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam num_2__bdd_4_lut.init = 16'hf0e4;
    LUT4 i1_4_lut_adj_86 (.A(cnt_scan[4]), .B(cnt_scan[2]), .C(cnt_scan[3]), 
         .D(n38239), .Z(n3807)) /* synthesis lut_function=(A+(B (C)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_86.init = 16'hebea;
    LUT4 i1_2_lut_3_lut_4_lut_adj_87 (.A(n37046), .B(n38226), .C(n2510), 
         .D(n38129), .Z(n35904)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((D)+!C)) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i1_2_lut_3_lut_4_lut_adj_87.init = 16'hff2f;
    FD1P3AX y_p_i0_i0 (.D(n8253[0]), .SP(sys_clk_c_enable_301), .CK(sys_clk_c), 
            .Q(y_p[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam y_p_i0_i0.GSR = "ENABLED";
    LUT4 n37508_bdd_3_lut (.A(n37508), .B(n37505), .C(num[0]), .Z(n37509)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37508_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_2_lut_4_lut (.A(n38135), .B(state[0]), .C(state[1]), 
         .D(n33140), .Z(n33273)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;   // d:/new porject/top-xu/oled.v(90[5:9])
    defparam i1_2_lut_2_lut_4_lut.init = 16'h00ef;
    LUT4 i29290_2_lut_rep_494_4_lut (.A(n38135), .B(state[0]), .C(state[1]), 
         .D(cnt_main_c[4]), .Z(n38081)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(90[5:9])
    defparam i29290_2_lut_rep_494_4_lut.init = 16'hffef;
    LUT4 n9_bdd_3_lut_30421_rep_493_4_lut (.A(state[1]), .B(n38135), .C(state[0]), 
         .D(n11), .Z(sys_clk_c_enable_348)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam n9_bdd_3_lut_30421_rep_493_4_lut.init = 16'h10fe;
    LUT4 cnt_main_0__bdd_4_lut_30273 (.A(cnt_main[0]), .B(\cnt_main[2] ), 
         .C(cnt_main_c[3]), .D(\cnt_main[1] ), .Z(n37516)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C)+!B !((D)+!C)))) */ ;
    defparam cnt_main_0__bdd_4_lut_30273.init = 16'h68d0;
    LUT4 i15208_2_lut_3_lut_4_lut (.A(state[1]), .B(n38135), .C(state[0]), 
         .D(n11), .Z(n21850)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam i15208_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 n9_bdd_3_lut_rep_487_4_lut (.A(state[1]), .B(n38135), .C(state[0]), 
         .D(n11_adj_1742), .Z(sys_clk_c_enable_341)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam n9_bdd_3_lut_rep_487_4_lut.init = 16'h10fe;
    LUT4 n9_bdd_3_lut_30067_rep_495_4_lut (.A(state[1]), .B(n38135), .C(state[0]), 
         .D(n38090), .Z(sys_clk_c_enable_329)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam n9_bdd_3_lut_30067_rep_495_4_lut.init = 16'h10fe;
    LUT4 n37045_bdd_3_lut_4_lut (.A(char[19]), .B(n38225), .C(num[2]), 
         .D(n37045), .Z(n37046)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam n37045_bdd_3_lut_4_lut.init = 16'h2f20;
    CCU2D sub_2409_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32788), .COUT(n32789));
    defparam sub_2409_add_2_9.INIT0 = 16'h5999;
    defparam sub_2409_add_2_9.INIT1 = 16'h5999;
    defparam sub_2409_add_2_9.INJECT1_0 = "NO";
    defparam sub_2409_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_2409_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32787), .COUT(n32788));
    defparam sub_2409_add_2_7.INIT0 = 16'h5999;
    defparam sub_2409_add_2_7.INIT1 = 16'h5999;
    defparam sub_2409_add_2_7.INJECT1_0 = "NO";
    defparam sub_2409_add_2_7.INJECT1_1 = "NO";
    LUT4 i29859_4_lut (.A(state[0]), .B(num_delay[0]), .C(n24_adj_1797), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[0])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i29859_4_lut.init = 16'h8caf;
    LUT4 i41_4_lut (.A(num_delay[0]), .B(n38138), .C(state[2]), .D(n35639), 
         .Z(n24_adj_1797)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i41_4_lut.init = 16'h3505;
    LUT4 i1_4_lut_adj_88 (.A(cnt_init[0]), .B(num_delay[0]), .C(n15_adj_1799), 
         .D(n38171), .Z(n35639)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_88.init = 16'h23af;
    LUT4 i1_4_lut_rep_525 (.A(state[0]), .B(state[1]), .C(state[2]), .D(n105), 
         .Z(n38112)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_rep_525.init = 16'hfcec;
    LUT4 i1_4_lut_adj_89 (.A(num_delay[0]), .B(n38268), .C(n38180), .D(oled_dcn_N_1404), 
         .Z(n15_adj_1799)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_89.init = 16'ha8f8;
    FD1P3IX cnt_scan_i0_i2 (.D(cnt_scan_4__N_1062[2]), .SP(sys_clk_c_enable_348), 
            .CD(n21850), .CK(sys_clk_c), .Q(cnt_scan[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_scan_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_90 (.A(cnt_init[0]), .B(oled_dcn_N_1404), .C(n38182), 
         .D(n38258), .Z(n35757)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(10[15:23])
    defparam i1_2_lut_4_lut_adj_90.init = 16'h00fe;
    LUT4 i29503_2_lut_rep_498_4_lut (.A(cnt_init[0]), .B(oled_dcn_N_1404), 
         .C(n38182), .D(\cnt[4] ), .Z(n38085)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/new porject/top-xu/oled.v(10[15:23])
    defparam i29503_2_lut_rep_498_4_lut.init = 16'h0001;
    LUT4 i20226_4_lut (.A(n36034), .B(n38224), .C(char[19]), .D(num[1]), 
         .Z(n2510)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i20226_4_lut.init = 16'h3022;
    LUT4 i29198_3_lut (.A(char[3]), .B(char[11]), .C(num[0]), .Z(n36034)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29198_3_lut.init = 16'hcaca;
    LUT4 i20214_4_lut (.A(n1477), .B(n38226), .C(n38166), .D(num[2]), 
         .Z(n2509)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i20214_4_lut.init = 16'h3022;
    CCU2D sub_2409_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32786), .COUT(n32787));
    defparam sub_2409_add_2_5.INIT0 = 16'h5999;
    defparam sub_2409_add_2_5.INIT1 = 16'h5999;
    defparam sub_2409_add_2_5.INJECT1_0 = "NO";
    defparam sub_2409_add_2_5.INJECT1_1 = "NO";
    LUT4 shift_right_77_i1477_4_lut (.A(char[4]), .B(char[11]), .C(num[1]), 
         .D(num[0]), .Z(n1477)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam shift_right_77_i1477_4_lut.init = 16'hc00a;
    LUT4 mux_2243_i1_3_lut (.A(n33080), .B(state[0]), .C(n38176), .Z(n6424[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam mux_2243_i1_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_503_4_lut (.A(state[3]), .B(n38181), .C(state[5]), 
         .D(state[4]), .Z(n38090)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(166[5:10])
    defparam i2_3_lut_rep_503_4_lut.init = 16'hffef;
    LUT4 i2_3_lut_4_lut_adj_91 (.A(state[3]), .B(n38181), .C(state[5]), 
         .D(state[4]), .Z(n11_adj_1742)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(166[5:10])
    defparam i2_3_lut_4_lut_adj_91.init = 16'hfeff;
    LUT4 i29882_3_lut_4_lut_4_lut_4_lut (.A(state[2]), .B(state[0]), .C(state[1]), 
         .D(n38178), .Z(sys_clk_c_enable_263)) /* synthesis lut_function=(!(A+(B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i29882_3_lut_4_lut_4_lut_4_lut.init = 16'h0014;
    LUT4 state_3__bdd_3_lut_4_lut (.A(cnt_scan[4]), .B(n38146), .C(n38249), 
         .D(state[5]), .Z(n37376)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam state_3__bdd_3_lut_4_lut.init = 16'h0001;
    LUT4 i19965_4_lut_4_lut_4_lut (.A(cnt_scan[4]), .B(n38146), .C(state[2]), 
         .D(n33295), .Z(n12_adj_1800)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam i19965_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i2_2_lut_3_lut_adj_92 (.A(cnt_scan[4]), .B(n38146), .C(n20350), 
         .Z(n6_adj_1801)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam i2_2_lut_3_lut_adj_92.init = 16'hf1f1;
    PFUMX mux_36_Mux_2_i31 (.BLUT(n15_adj_1782), .ALUT(\Tem_lower[2] ), 
          .C0(cnt_main_c[4]), .Z(char_167__N_1112[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;
    LUT4 cnt_main_0__bdd_4_lut_30277 (.A(cnt_main[0]), .B(cnt_main_c[4]), 
         .C(\cnt_main[2] ), .D(\cnt_main[1] ), .Z(n37581)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C+(D))+!B))) */ ;
    defparam cnt_main_0__bdd_4_lut_30277.init = 16'h2024;
    LUT4 i1_4_lut_adj_93 (.A(n24_adj_1802), .B(state_back[5]), .C(n38134), 
         .D(n27_adj_1750), .Z(state_back_5__N_1039[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_93.init = 16'hce0a;
    PFUMX mux_36_Mux_3_i31 (.BLUT(n15_adj_1780), .ALUT(\Tem_lower[3] ), 
          .C0(cnt_main_c[4]), .Z(char_167__N_1112[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;
    LUT4 cnt_main_0__bdd_1_lut_30276 (.A(cnt_main_c[4]), .Z(n37580)) /* synthesis lut_function=(!(A)) */ ;
    defparam cnt_main_0__bdd_1_lut_30276.init = 16'h5555;
    LUT4 i1_4_lut_adj_94 (.A(n24_adj_1803), .B(state_back[4]), .C(n38134), 
         .D(n27_adj_1750), .Z(state_back_5__N_1039[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_94.init = 16'hce0a;
    LUT4 i1_4_lut_4_lut_4_lut (.A(state[0]), .B(state[3]), .C(state[2]), 
         .D(state[4]), .Z(n47)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0116;
    LUT4 i2_4_lut_adj_95 (.A(n38247), .B(state[4]), .C(cnt_write[4]), 
         .D(cnt_write[0]), .Z(n33080)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam i2_4_lut_adj_95.init = 16'h0048;
    L6MUX21 i29526 (.D0(n36364), .D1(n36365), .SD(\cnt_main[2] ), .Z(n36366));
    PFUMX mux_36_Mux_1_i31 (.BLUT(n15_adj_1777), .ALUT(\Tem_lower[1] ), 
          .C0(cnt_main_c[4]), .Z(char_167__N_1112[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;
    LUT4 i1_4_lut_adj_96 (.A(n24_adj_1804), .B(state_back[3]), .C(n38134), 
         .D(n27_adj_1750), .Z(state_back_5__N_1039[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_96.init = 16'hce0a;
    PFUMX i29524 (.BLUT(n8_adj_1775), .ALUT(n9), .C0(\cnt_main[1] ), .Z(n36364));
    LUT4 i1_4_lut_adj_97 (.A(n24_adj_1805), .B(state_back[2]), .C(n38134), 
         .D(n27_adj_1750), .Z(state_back_5__N_1039[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_97.init = 16'hce0a;
    LUT4 i29527_3_lut_4_lut (.A(n38227), .B(sw1_c), .C(cnt_main[0]), .D(n8663), 
         .Z(n36367)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i29527_3_lut_4_lut.init = 16'hf202;
    CCU2D sub_2409_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32785), .COUT(n32786));
    defparam sub_2409_add_2_3.INIT0 = 16'h5999;
    defparam sub_2409_add_2_3.INIT1 = 16'h5999;
    defparam sub_2409_add_2_3.INJECT1_0 = "NO";
    defparam sub_2409_add_2_3.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_98 (.A(n20536), .B(state[2]), .C(n35), .D(n36015), 
         .Z(state_back_5__N_1039[1])) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i2_4_lut_adj_98.init = 16'hfbfa;
    LUT4 i29590_3_lut (.A(char_reg_c[5]), .B(char_reg_c[4]), .C(cnt_write[1]), 
         .Z(n36430)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29590_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_99 (.A(n6337), .B(n9195), .C(n37193), .D(n38109), 
         .Z(sys_clk_c_enable_284)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_99.init = 16'ha088;
    LUT4 i1_4_lut_adj_100 (.A(state[0]), .B(n38138), .C(state[2]), .D(state_back_5__N_1374[1]), 
         .Z(n20536)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_100.init = 16'h1202;
    L6MUX21 i29533 (.D0(n36371), .D1(n36372), .SD(\cnt_main[2] ), .Z(n36373));
    PFUMX i29531 (.BLUT(n36367), .ALUT(n36368), .C0(\cnt_main[1] ), .Z(n36371));
    LUT4 i1_4_lut_adj_101 (.A(n38259), .B(state_back[1]), .C(n24_adj_1806), 
         .D(n38258), .Z(n35)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // d:/new porject/top-xu/oled.v(48[13:18])
    defparam i1_4_lut_adj_101.init = 16'hccc4;
    LUT4 i29179_4_lut (.A(state[3]), .B(state_back[1]), .C(n3807), .D(n38134), 
         .Z(n36015)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B))) */ ;
    defparam i29179_4_lut.init = 16'h44c4;
    LUT4 i1_4_lut_adj_102 (.A(cnt_init[0]), .B(state_back[1]), .C(n38076), 
         .D(n38171), .Z(state_back_5__N_1374[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_102.init = 16'hcc40;
    LUT4 i1_2_lut_adj_103 (.A(state[3]), .B(state[2]), .Z(n24_adj_1806)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_103.init = 16'h8888;
    PFUMX i29525 (.BLUT(n11_adj_1770), .ALUT(n12), .C0(\cnt_main[1] ), 
          .Z(n36365));
    LUT4 i1_4_lut_adj_104 (.A(n24_adj_1807), .B(char_reg[7]), .C(n38134), 
         .D(n27_adj_1750), .Z(char_reg_7__N_957[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_104.init = 16'hce0a;
    LUT4 i29560_3_lut (.A(n3812), .B(n4190), .C(cnt_scan[0]), .Z(n36400)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29560_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_105 (.A(n24_adj_1808), .B(char_reg[6]), .C(n38134), 
         .D(n27_adj_1750), .Z(char_reg_7__N_957[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_105.init = 16'hce0a;
    LUT4 i1_4_lut_adj_106 (.A(n24_adj_1809), .B(char_reg_c[5]), .C(n38134), 
         .D(n27_adj_1750), .Z(char_reg_7__N_957[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_106.init = 16'hce0a;
    L6MUX21 i29543 (.D0(n36381), .D1(n36382), .SD(\cnt_main[2] ), .Z(n36383));
    LUT4 i1_4_lut_adj_107 (.A(n24_adj_1810), .B(char_reg_c[4]), .C(n38134), 
         .D(n27_adj_1750), .Z(char_reg_7__N_957[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_107.init = 16'hce0a;
    LUT4 i1_4_lut_adj_108 (.A(n24_adj_1811), .B(\char_reg[3] ), .C(n38134), 
         .D(n27_adj_1750), .Z(char_reg_7__N_957[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_108.init = 16'hce0a;
    PFUMX i30517 (.BLUT(n38275), .ALUT(n38276), .C0(num[2]), .Z(n2507));
    LUT4 i1_4_lut_adj_109 (.A(n24_adj_1812), .B(\char_reg[2] ), .C(n38134), 
         .D(n27_adj_1750), .Z(char_reg_7__N_957[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_109.init = 16'hce0a;
    LUT4 i1_4_lut_adj_110 (.A(n24_adj_1813), .B(\char_reg[1] ), .C(n38134), 
         .D(n27_adj_1750), .Z(char_reg_7__N_957[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_110.init = 16'hce0a;
    L6MUX21 i29535 (.D0(n11_adj_1814), .D1(n12_adj_1815), .SD(\cnt_main[1] ), 
            .Z(n36375));
    PFUMX i29541 (.BLUT(n36377), .ALUT(n36378), .C0(\cnt_main[1] ), .Z(n36381));
    FD1P3IX cnt_scan_i0_i3 (.D(cnt_scan_4__N_1062[3]), .SP(sys_clk_c_enable_348), 
            .CD(n21850), .CK(sys_clk_c), .Q(cnt_scan[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_scan_i0_i3.GSR = "ENABLED";
    FD1P3AX x_pl_i0_i3 (.D(n35764), .SP(sys_clk_c_enable_343), .CK(sys_clk_c), 
            .Q(x_pl[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam x_pl_i0_i3.GSR = "ENABLED";
    FD1P3IX char_i0_i1 (.D(char_167__N_1112[1]), .SP(sys_clk_c_enable_313), 
            .CD(n33273), .CK(sys_clk_c), .Q(char[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_i0_i1.GSR = "ENABLED";
    FD1P3IX char_i0_i2 (.D(char_167__N_1112[2]), .SP(sys_clk_c_enable_343), 
            .CD(n21912), .CK(sys_clk_c), .Q(char[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_i0_i2.GSR = "ENABLED";
    PFUMX i29542 (.BLUT(n36379), .ALUT(n36380), .C0(\cnt_main[1] ), .Z(n36382));
    LUT4 i2_3_lut_4_lut_adj_111 (.A(\cnt_main[2] ), .B(n38056), .C(\cnt_main[1] ), 
         .D(cnt_main[0]), .Z(n35554)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_111.init = 16'h0200;
    LUT4 i1_3_lut_rep_468_3_lut_4_lut (.A(n38145), .B(cnt_main_c[4]), .C(sys_clk_c_enable_263), 
         .D(n38110), .Z(sys_clk_c_enable_343)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B !((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i1_3_lut_rep_468_3_lut_4_lut.init = 16'h60f0;
    LUT4 i1_3_lut_rep_511_4_lut (.A(n38145), .B(cnt_main_c[4]), .C(n38253), 
         .D(n8063), .Z(sys_clk_c_enable_242)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i1_3_lut_rep_511_4_lut.init = 16'hf600;
    LUT4 i1_4_lut_adj_112 (.A(n7), .B(n38081), .C(n35795), .D(cnt_main_c[3]), 
         .Z(n35768)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_112.init = 16'h3022;
    LUT4 i15293_2_lut_4_lut_4_lut_2_lut_2_lut (.A(sys_clk_c_enable_263), .B(n38110), 
         .Z(n21912)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i15293_2_lut_4_lut_4_lut_2_lut_2_lut.init = 16'h2222;
    FD1P3IX char_i0_i3 (.D(char_167__N_1112[3]), .SP(sys_clk_c_enable_313), 
            .CD(n33273), .CK(sys_clk_c), .Q(char[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam char_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i1 (.D(n4271[1]), .SP(sys_clk_c_enable_329), .CD(n21926), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_scan_i0_i4 (.D(n35632), .SP(sys_clk_c_enable_348), .CK(sys_clk_c), 
            .Q(cnt_scan[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_scan_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i2 (.D(n4271[2]), .SP(sys_clk_c_enable_329), .CD(n21926), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    LUT4 i4_4_lut_adj_113 (.A(n36233), .B(n35757), .C(state[2]), .D(cnt_init[0]), 
         .Z(n35759)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam i4_4_lut_adj_113.init = 16'h0040;
    LUT4 i1_2_lut_rep_497_3_lut_4_lut (.A(char[1]), .B(n38165), .C(n38226), 
         .D(n37046), .Z(n38084)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(157[59:71])
    defparam i1_2_lut_rep_497_3_lut_4_lut.init = 16'h2f22;
    FD1P3IX cnt_delay_i0_i3 (.D(n4271[3]), .SP(sys_clk_c_enable_329), .CD(n21926), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i4 (.D(n4271[4]), .SP(sys_clk_c_enable_329), .CD(n21926), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n4271[5]), .SP(sys_clk_c_enable_329), .CD(n21926), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n4271[6]), .SP(sys_clk_c_enable_329), .CD(n21926), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    LUT4 n3814_bdd_3_lut_30311 (.A(n3814), .B(n4192), .C(cnt_scan[0]), 
         .Z(n37639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3814_bdd_3_lut_30311.init = 16'hcaca;
    FD1P3IX cnt_delay_i0_i7 (.D(n4271[7]), .SP(sys_clk_c_enable_329), .CD(n21926), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i8 (.D(n4271[8]), .SP(sys_clk_c_enable_329), .CD(n21926), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n4271[9]), .SP(sys_clk_c_enable_329), .CD(n21926), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n4271[10]), .SP(sys_clk_c_enable_329), 
            .CD(n21926), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i11 (.D(n4271[11]), .SP(sys_clk_c_enable_329), 
            .CD(n21926), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n4271[12]), .SP(sys_clk_c_enable_329), 
            .CD(n21926), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    PFUMX i29546 (.BLUT(n36384), .ALUT(n36385), .C0(cnt_main[0]), .Z(n36386));
    FD1P3IX cnt_delay_i0_i13 (.D(n4271[13]), .SP(sys_clk_c_enable_329), 
            .CD(n21926), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    PFUMX mux_36_Mux_0_i11 (.BLUT(n8677[0]), .ALUT(n8682[0]), .C0(cnt_main[0]), 
          .Z(n11_adj_1814)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;
    FD1P3IX cnt_delay_i0_i14 (.D(n4271[14]), .SP(sys_clk_c_enable_329), 
            .CD(n21926), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt_main[0]), .B(n38186), .C(sw1_c), 
         .D(n38227), .Z(n35795)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0100;
    FD1P3IX cnt_delay_i0_i15 (.D(n4271[15]), .SP(sys_clk_c_enable_329), 
            .CD(n21926), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_114 (.A(state[2]), .B(n38179), .C(state[0]), 
         .D(state[3]), .Z(n19_adj_1798)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i1_2_lut_4_lut_adj_114.init = 16'hffec;
    LUT4 n38363_bdd_4_lut (.A(n38363), .B(n38362), .C(state[5]), .D(state[3]), 
         .Z(n39469)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n38363_bdd_4_lut.init = 16'h00ca;
    LUT4 n3811_bdd_3_lut_30323 (.A(n3811), .B(n4189), .C(cnt_scan[0]), 
         .Z(n37655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3811_bdd_3_lut_30323.init = 16'hcaca;
    LUT4 n3811_bdd_3_lut (.A(n3055), .B(n3433), .C(cnt_scan[0]), .Z(n37656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3811_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_115 (.A(state[0]), .B(num_delay[15]), .C(n16_adj_1816), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_115.init = 16'hdc50;
    LUT4 i33_4_lut (.A(num_delay[15]), .B(num_delay_15__N_1296[15]), .C(state[2]), 
         .D(n38138), .Z(n16_adj_1816)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_116 (.A(cnt_init[0]), .B(num_delay[15]), .C(n38076), 
         .D(n38171), .Z(num_delay_15__N_1296[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_116.init = 16'hcc40;
    PFUMX i30165 (.BLUT(n37378), .ALUT(n37377), .C0(state[5]), .Z(n37379));
    LUT4 i29925_3_lut_rep_523_4_lut (.A(state[2]), .B(n38178), .C(state[1]), 
         .D(state[0]), .Z(n38110)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(90[5:9])
    defparam i29925_3_lut_rep_523_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_117 (.A(state[0]), .B(num_delay[14]), .C(n16_adj_1817), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[14])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_117.init = 16'hdc50;
    LUT4 i33_4_lut_adj_118 (.A(num_delay[14]), .B(num_delay_15__N_1296[14]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1817)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_118.init = 16'h0aca;
    LUT4 i1_4_lut_adj_119 (.A(n4827), .B(num_delay[14]), .C(n16_adj_1755), 
         .D(n38171), .Z(num_delay_15__N_1296[14])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_119.init = 16'hfefa;
    LUT4 i1_4_lut_adj_120 (.A(state[0]), .B(num_delay[13]), .C(n16_adj_1818), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[13])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_120.init = 16'hdc50;
    LUT4 i33_4_lut_adj_121 (.A(num_delay[13]), .B(num_delay_15__N_1296[13]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1818)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_121.init = 16'h0aca;
    LUT4 i1_4_lut_adj_122 (.A(n4827), .B(num_delay[13]), .C(n16_adj_1759), 
         .D(n38171), .Z(num_delay_15__N_1296[13])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_122.init = 16'hfefa;
    LUT4 i1_4_lut_adj_123 (.A(state[0]), .B(num_delay[12]), .C(n16_adj_1819), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_123.init = 16'hdc50;
    LUT4 i33_4_lut_adj_124 (.A(num_delay[12]), .B(num_delay_15__N_1296[12]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1819)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_124.init = 16'h0aca;
    LUT4 i1_4_lut_adj_125 (.A(cnt_init[0]), .B(num_delay[12]), .C(n38076), 
         .D(n38171), .Z(num_delay_15__N_1296[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_125.init = 16'hcc40;
    CCU2D sub_2409_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n32785));
    defparam sub_2409_add_2_1.INIT0 = 16'h0000;
    defparam sub_2409_add_2_1.INIT1 = 16'h5999;
    defparam sub_2409_add_2_1.INJECT1_0 = "NO";
    defparam sub_2409_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_126 (.A(state[0]), .B(num_delay[11]), .C(n16_adj_1820), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_126.init = 16'hdc50;
    PFUMX mux_3412_i1 (.BLUT(hundres_0__N_361), .ALUT(hundres_0__N_361_adj_6), 
          .C0(sw1_c), .Z(n9367));
    LUT4 i33_4_lut_adj_127 (.A(num_delay[11]), .B(num_delay_15__N_1296[11]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1820)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_127.init = 16'h0aca;
    LUT4 i1_4_lut_adj_128 (.A(cnt_init[0]), .B(num_delay[11]), .C(n38076), 
         .D(n38171), .Z(num_delay_15__N_1296[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_128.init = 16'hcc40;
    LUT4 i1_4_lut_adj_129 (.A(state[0]), .B(num_delay[10]), .C(n16_adj_1822), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_129.init = 16'hdc50;
    LUT4 i33_4_lut_adj_130 (.A(num_delay[10]), .B(num_delay_15__N_1296[10]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1822)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_130.init = 16'h0aca;
    LUT4 i1_4_lut_adj_131 (.A(cnt_init[0]), .B(num_delay[10]), .C(n38076), 
         .D(n38171), .Z(num_delay_15__N_1296[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_131.init = 16'hcc40;
    LUT4 i1_4_lut_adj_132 (.A(state[0]), .B(num_delay[9]), .C(n16_adj_1823), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_132.init = 16'hdc50;
    LUT4 i33_4_lut_adj_133 (.A(num_delay[9]), .B(num_delay_15__N_1296[9]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1823)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_133.init = 16'h0aca;
    L6MUX21 i29595 (.D0(n36433), .D1(n36434), .SD(cnt_write[3]), .Z(n36435));
    LUT4 i1_4_lut_adj_134 (.A(cnt_init[0]), .B(num_delay[9]), .C(n38076), 
         .D(n38171), .Z(num_delay_15__N_1296[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_134.init = 16'hcc40;
    LUT4 i20317_2_lut (.A(n2144[8]), .B(oled_dcn_N_1404), .Z(n2170[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20317_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_135 (.A(state[0]), .B(num_delay[8]), .C(n16_adj_1824), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_135.init = 16'hdc50;
    PFUMX mux_3408_i1 (.BLUT(hundres_0__N_361_adj_7), .ALUT(hundres_0__N_361_adj_8), 
          .C0(sw1_c), .Z(n9380));
    LUT4 i33_4_lut_adj_136 (.A(num_delay[8]), .B(num_delay_15__N_1296[8]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1824)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_136.init = 16'h0aca;
    LUT4 i1_4_lut_adj_137 (.A(n4827), .B(num_delay[8]), .C(n16_adj_1761), 
         .D(n38171), .Z(num_delay_15__N_1296[8])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/oled.v(128[8:12])
    defparam i1_4_lut_adj_137.init = 16'hfefa;
    LUT4 i1_4_lut_adj_138 (.A(state[0]), .B(num_delay[7]), .C(n16_adj_1827), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_138.init = 16'hdc50;
    PFUMX mux_2440_i3 (.BLUT(\hour_ones[2] ), .ALUT(\hour_warning_ones[2] ), 
          .C0(sw1_c), .Z(n8667[2]));
    LUT4 i33_4_lut_adj_139 (.A(num_delay[7]), .B(num_delay_15__N_1296[7]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1827)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_139.init = 16'h0aca;
    LUT4 i1_4_lut_adj_140 (.A(n4827), .B(num_delay[7]), .C(n16_adj_1762), 
         .D(n38171), .Z(num_delay_15__N_1296[7])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_140.init = 16'hfefa;
    LUT4 i1_4_lut_adj_141 (.A(state[0]), .B(num_delay[6]), .C(n16_adj_1828), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_141.init = 16'hdc50;
    LUT4 i33_4_lut_adj_142 (.A(num_delay[6]), .B(num_delay_15__N_1296[6]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1828)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_142.init = 16'h0aca;
    LUT4 i2_3_lut_4_lut_adj_143 (.A(cnt_main[0]), .B(n38186), .C(state[1]), 
         .D(n38251), .Z(n35824)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_143.init = 16'h0010;
    LUT4 i1_4_lut_adj_144 (.A(cnt_init[0]), .B(num_delay[6]), .C(n38076), 
         .D(n38171), .Z(num_delay_15__N_1296[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_144.init = 16'hcc40;
    PFUMX mux_2440_i4 (.BLUT(\hour_ones[3] ), .ALUT(\hour_warning_ones[3] ), 
          .C0(sw1_c), .Z(n8667[3]));
    LUT4 i1_4_lut_adj_145 (.A(state[0]), .B(num_delay[5]), .C(n16_adj_1829), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_145.init = 16'hdc50;
    FD1P3IX cnt_write_i0_i1 (.D(n4247[1]), .SP(sys_clk_c_enable_341), .CD(n21915), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    PFUMX mux_2442_i3 (.BLUT(\min_ones[2] ), .ALUT(\min_warning_ones[2] ), 
          .C0(sw1_c), .Z(n8677[2]));
    LUT4 i33_4_lut_adj_146 (.A(num_delay[5]), .B(num_delay_15__N_1296[5]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1829)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_146.init = 16'h0aca;
    LUT4 i1_4_lut_adj_147 (.A(n4827), .B(num_delay[5]), .C(n16_adj_1764), 
         .D(n38171), .Z(num_delay_15__N_1296[5])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_147.init = 16'hfefa;
    LUT4 i1_4_lut_adj_148 (.A(state[0]), .B(num_delay[4]), .C(n16_adj_1830), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_148.init = 16'hdc50;
    LUT4 mux_2195_i1_4_lut (.A(n9195), .B(n9094), .C(n38109), .D(n4_adj_1831), 
         .Z(n6361[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam mux_2195_i1_4_lut.init = 16'hca0a;
    LUT4 i33_4_lut_adj_149 (.A(num_delay[4]), .B(num_delay_15__N_1296[4]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1830)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_149.init = 16'h0aca;
    LUT4 i1_4_lut_adj_150 (.A(cnt_init[0]), .B(num_delay[4]), .C(n38076), 
         .D(n38171), .Z(num_delay_15__N_1296[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_150.init = 16'hcc40;
    PFUMX mux_2440_i2 (.BLUT(\hour_ones[1] ), .ALUT(\hour_warning_ones[1] ), 
          .C0(sw1_c), .Z(n8667[1]));
    LUT4 i1_4_lut_adj_151 (.A(state[0]), .B(num_delay[3]), .C(n16_adj_1832), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_151.init = 16'hdc50;
    LUT4 i33_4_lut_adj_152 (.A(num_delay[3]), .B(num_delay_15__N_1296[3]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1832)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_152.init = 16'h0aca;
    LUT4 i1_4_lut_adj_153 (.A(n4827), .B(num_delay[3]), .C(n16_adj_1765), 
         .D(n38171), .Z(num_delay_15__N_1296[3])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_153.init = 16'hfefa;
    LUT4 n2512_bdd_4_lut (.A(n38129), .B(n2509), .C(n2510), .D(n38107), 
         .Z(n37747)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n2512_bdd_4_lut.init = 16'h0240;
    FD1P3IX cnt_write_i0_i2 (.D(n4247[2]), .SP(sys_clk_c_enable_341), .CD(n21915), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    LUT4 i29856_4_lut (.A(state[0]), .B(num_delay[2]), .C(n24_adj_1833), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[2])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i29856_4_lut.init = 16'h8caf;
    LUT4 i41_4_lut_adj_154 (.A(num_delay[2]), .B(n38138), .C(state[2]), 
         .D(n35637), .Z(n24_adj_1833)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i41_4_lut_adj_154.init = 16'h3505;
    LUT4 i1_4_lut_adj_155 (.A(cnt_init[0]), .B(num_delay[2]), .C(n15_adj_1834), 
         .D(n38171), .Z(n35637)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_155.init = 16'h23af;
    LUT4 i1_4_lut_adj_156 (.A(num_delay[2]), .B(n38268), .C(n38180), .D(oled_dcn_N_1404), 
         .Z(n15_adj_1834)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_156.init = 16'ha8f8;
    LUT4 i1_4_lut_adj_157 (.A(state[0]), .B(num_delay[1]), .C(n16_adj_1835), 
         .D(n19_adj_1798), .Z(num_delay_15__N_985[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_157.init = 16'hdc50;
    LUT4 i33_4_lut_adj_158 (.A(num_delay[1]), .B(num_delay_15__N_1296[1]), 
         .C(state[2]), .D(n38138), .Z(n16_adj_1835)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_158.init = 16'h0aca;
    LUT4 i1_4_lut_adj_159 (.A(cnt_init[0]), .B(num_delay[1]), .C(n38076), 
         .D(n38171), .Z(num_delay_15__N_1296[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_159.init = 16'hcc40;
    PFUMX mux_2442_i2 (.BLUT(\min_ones[1] ), .ALUT(\min_warning_ones[1] ), 
          .C0(sw1_c), .Z(n8677[1]));
    LUT4 i24075_4_lut (.A(n36197), .B(n37[2]), .C(state[3]), .D(n4_c), 
         .Z(n1[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(48[13:18])
    defparam i24075_4_lut.init = 16'hc5c0;
    PFUMX i47 (.BLUT(n6_adj_1732), .ALUT(n12_adj_1793), .C0(state[3]), 
          .Z(n24_adj_1807));
    LUT4 n2681_bdd_3_lut_30469 (.A(n2681), .B(cnt_scan[2]), .C(cnt_scan[1]), 
         .Z(n37766)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2681_bdd_3_lut_30469.init = 16'h8080;
    FD1P3IX cnt_write_i0_i0 (.D(n4_adj_1746), .SP(sys_clk_c_enable_341), 
            .CD(n21915), .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_160 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n4_adj_1831)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_160.init = 16'h4444;
    LUT4 n2681_bdd_4_lut_30470 (.A(y_p[1]), .B(cnt_scan[2]), .C(x_ph[1]), 
         .D(cnt_scan[1]), .Z(n37767)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n2681_bdd_4_lut_30470.init = 16'h3022;
    LUT4 i14195_2_lut_rep_540_4_lut (.A(n38186), .B(cnt_main[0]), .C(cnt_main_c[3]), 
         .D(cnt_main_c[4]), .Z(n38127)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i14195_2_lut_rep_540_4_lut.init = 16'h01fe;
    PFUMX mux_36_Mux_0_i12 (.BLUT(n8688[0]), .ALUT(\Tem_high[0] ), .C0(cnt_main[0]), 
          .Z(n12_adj_1815)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;
    LUT4 i19993_2_lut_4_lut (.A(n38186), .B(cnt_main[0]), .C(cnt_main_c[3]), 
         .D(cnt_main_c[4]), .Z(state_5__N_1344[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i19993_2_lut_4_lut.init = 16'hfe00;
    LUT4 i2_2_lut_rep_531_4_lut (.A(cnt_scan[2]), .B(n38241), .C(cnt_scan[3]), 
         .D(cnt_scan[4]), .Z(n38118)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/new porject/top-xu/oled.v(161[8:13])
    defparam i2_2_lut_rep_531_4_lut.init = 16'hffdf;
    FD1P3IX cnt_write_i0_i3 (.D(n4247[3]), .SP(sys_clk_c_enable_341), .CD(n21915), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    PFUMX i47_adj_161 (.BLUT(n6_adj_1731), .ALUT(n12_adj_1791), .C0(state[3]), 
          .Z(n24));
    LUT4 n2682_bdd_4_lut_30461 (.A(y_p[0]), .B(cnt_scan[2]), .C(x_ph[0]), 
         .D(cnt_scan[1]), .Z(n37783)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n2682_bdd_4_lut_30461.init = 16'h3022;
    LUT4 n2682_bdd_3_lut_30460 (.A(n2682), .B(cnt_scan[2]), .C(cnt_scan[1]), 
         .Z(n37782)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2682_bdd_3_lut_30460.init = 16'h8080;
    LUT4 i29392_4_lut (.A(cnt_write[4]), .B(state[0]), .C(n38247), .D(state[5]), 
         .Z(n6)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(D)))) */ ;
    defparam i29392_4_lut.init = 16'h0013;
    PFUMX i47_adj_162 (.BLUT(n6_adj_1730), .ALUT(n12_adj_1792), .C0(state[3]), 
          .Z(n24_adj_1813));
    LUT4 cnt_3__bdd_4_lut (.A(\cnt[3] ), .B(\cnt[0] ), .C(\cnt[2] ), .D(\cnt[1] ), 
         .Z(n37050)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam cnt_3__bdd_4_lut.init = 16'h1a09;
    FD1P3IX cnt_write_i0_i4 (.D(n4247[4]), .SP(sys_clk_c_enable_341), .CD(n21915), 
            .CK(sys_clk_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    PFUMX i47_adj_163 (.BLUT(n6_adj_1749), .ALUT(n12_adj_1787), .C0(state[3]), 
          .Z(n24_adj_1810));
    LUT4 i1_2_lut_rep_564 (.A(cnt_scan[3]), .B(n20350), .Z(n38151)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_564.init = 16'hdddd;
    LUT4 num_3053_mux_6_i8_4_lut (.A(n7_c), .B(n37[7]), .C(state[3]), 
         .D(n36197), .Z(n1[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam num_3053_mux_6_i8_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_164 (.A(cnt_scan[3]), .B(n20350), .C(n38146), 
         .D(cnt_scan[4]), .Z(n4_adj_1738)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_164.init = 16'hddd0;
    PFUMX i91 (.BLUT(n57_adj_1748), .ALUT(n61_adj_1779), .C0(cnt_scan[3]), 
          .Z(n63));
    LUT4 i20310_2_lut (.A(n2144[1]), .B(oled_dcn_N_1404), .Z(n2170[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20310_2_lut.init = 16'h2222;
    PFUMX i47_adj_165 (.BLUT(n6_adj_1728), .ALUT(n12_adj_1786), .C0(state[3]), 
          .Z(n24_adj_1812));
    LUT4 i20311_2_lut (.A(n2144[2]), .B(oled_dcn_N_1404), .Z(n2170[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20311_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_4_lut_adj_166 (.A(\cnt_main[2] ), .B(n38056), .C(\cnt_main[1] ), 
         .D(cnt_main[0]), .Z(n35553)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_166.init = 16'h0020;
    LUT4 i20316_2_lut (.A(n2144[7]), .B(oled_dcn_N_1404), .Z(n2170[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20316_2_lut.init = 16'h2222;
    LUT4 i20315_2_lut (.A(n2144[6]), .B(oled_dcn_N_1404), .Z(n2170[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20315_2_lut.init = 16'h2222;
    PFUMX i47_adj_167 (.BLUT(n6_adj_1836), .ALUT(n12_adj_1788), .C0(state[3]), 
          .Z(n24_adj_1811));
    FD1P3AX y_p_i0_i1 (.D(n35821), .SP(sys_clk_c_enable_342), .CK(sys_clk_c), 
            .Q(y_p[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam y_p_i0_i1.GSR = "ENABLED";
    LUT4 mux_75_i2_4_lut (.A(n2309), .B(n2318[1]), .C(n38151), .D(n38118), 
         .Z(cnt_scan_4__N_1062[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(146[16] 147[40])
    defparam mux_75_i2_4_lut.init = 16'hca0a;
    PFUMX i47_adj_168 (.BLUT(n6_adj_1736), .ALUT(n12_adj_1785), .C0(state[3]), 
          .Z(n24_adj_1809));
    PFUMX i31110 (.BLUT(n39427), .ALUT(n39425), .C0(cnt_scan[3]), .Z(n39428));
    LUT4 i1_2_lut_4_lut_adj_169 (.A(cnt_init[2]), .B(n38269), .C(cnt_init[0]), 
         .D(state_back[2]), .Z(n19)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_169.init = 16'hec00;
    PFUMX i47_adj_170 (.BLUT(n6_adj_1735), .ALUT(n12_adj_1790), .C0(state[3]), 
          .Z(n24_adj_1808));
    PFUMX i31108 (.BLUT(n39423), .ALUT(n39422), .C0(cnt_scan[0]), .Z(n39424));
    LUT4 i1_2_lut_4_lut_adj_171 (.A(cnt_init[2]), .B(n38269), .C(cnt_init[0]), 
         .D(state_back[4]), .Z(n19_adj_1773)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_171.init = 16'hec00;
    LUT4 i1_2_lut_4_lut_adj_172 (.A(cnt_init[2]), .B(n38269), .C(cnt_init[0]), 
         .D(state_back[5]), .Z(n19_adj_1771)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_172.init = 16'hec00;
    LUT4 i3875_2_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n2318[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(147[24:39])
    defparam i3875_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_173 (.A(num[6]), .B(num[5]), .C(n38165), .D(num[7]), 
         .Z(n2309)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(144[11:14])
    defparam i3_4_lut_adj_173.init = 16'hfffe;
    LUT4 i35_4_lut (.A(state[5]), .B(state[1]), .C(state_back[3]), .D(n38127), 
         .Z(n22_c)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i35_4_lut.init = 16'h6420;
    PFUMX i47_adj_174 (.BLUT(n6_adj_1745), .ALUT(n35727), .C0(state[3]), 
          .Z(n24_adj_1805));
    LUT4 i1_4_lut_adj_175 (.A(n26), .B(n29), .C(n38259), .D(n38245), 
         .Z(n32)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i1_4_lut_adj_175.init = 16'ha0ec;
    LUT4 i48_4_lut (.A(state[4]), .B(state[5]), .C(n4245), .D(state_back[4]), 
         .Z(n29)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i48_4_lut.init = 16'h4602;
    PFUMX i47_adj_176 (.BLUT(n6_adj_1744), .ALUT(n35730), .C0(state[3]), 
          .Z(n24_adj_1795));
    PFUMX i47_adj_177 (.BLUT(n6_adj_1743), .ALUT(n12_adj_1784), .C0(state[3]), 
          .Z(n24_adj_1804));
    LUT4 i2_4_lut_rep_589 (.A(state[0]), .B(n38259), .C(state[1]), .D(n38245), 
         .Z(n38176)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i2_4_lut_rep_589.init = 16'h0048;
    LUT4 i20324_2_lut (.A(n2144[15]), .B(oled_dcn_N_1404), .Z(n2170[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20324_2_lut.init = 16'h2222;
    LUT4 i2866_2_lut_4_lut (.A(state[0]), .B(n38259), .C(state[1]), .D(n38245), 
         .Z(n9195)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2866_2_lut_4_lut.init = 16'h0008;
    FD1P3IX x_ph_i0_i1 (.D(x_ph_7__N_1080[1]), .SP(sys_clk_c_enable_343), 
            .CD(n21912), .CK(sys_clk_c), .Q(x_ph[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam x_ph_i0_i1.GSR = "ENABLED";
    PFUMX i47_adj_178 (.BLUT(n6_adj_1774), .ALUT(n35728), .C0(state[3]), 
          .Z(n24_adj_1803));
    LUT4 i19927_3_lut_4_lut (.A(\cnt_main[1] ), .B(n38248), .C(cnt_main_c[4]), 
         .D(\cnt_main[2] ), .Z(cnt_main_4__N_1052[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // d:/new porject/top-xu/oled.v(92[41:56])
    defparam i19927_3_lut_4_lut.init = 16'hf7f8;
    LUT4 i3817_2_lut_3_lut_4_lut (.A(\cnt_main[1] ), .B(n38248), .C(cnt_main_c[3]), 
         .D(\cnt_main[2] ), .Z(n5[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(92[41:56])
    defparam i3817_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3819_2_lut_3_lut_4_lut (.A(\cnt_main[1] ), .B(n38248), .C(cnt_main_c[3]), 
         .D(\cnt_main[2] ), .Z(n10315)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(92[41:56])
    defparam i3819_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n38259), .B(n38246), .C(n6337), 
         .D(n38258), .Z(n35790)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hf070;
    PFUMX i47_adj_179 (.BLUT(n6_adj_1772), .ALUT(n35729), .C0(state[3]), 
          .Z(n24_adj_1802));
    LUT4 i20323_2_lut (.A(n2144[14]), .B(oled_dcn_N_1404), .Z(n2170[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20323_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_4_lut_adj_180 (.A(n38259), .B(state[2]), .C(n21), .D(n27403), 
         .Z(sys_clk_c_enable_243)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_180.init = 16'h2000;
    LUT4 i20322_2_lut (.A(n2144[13]), .B(oled_dcn_N_1404), .Z(n2170[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20322_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_4_lut_adj_181 (.A(\cnt_main[2] ), .B(n38251), .C(n38252), 
         .D(n38253), .Z(n27403)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_181.init = 16'hfffe;
    LUT4 i29373_3_lut_3_lut_4_lut (.A(\cnt_main[2] ), .B(n38251), .C(n38252), 
         .D(n38110), .Z(n36213)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i29373_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_3_lut_4_lut_adj_182 (.A(state[3]), .B(n38259), .C(n38182), 
         .D(cnt_init[0]), .Z(n105)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(81[5:9])
    defparam i1_3_lut_4_lut_adj_182.init = 16'h4044;
    LUT4 i20321_2_lut (.A(n2144[12]), .B(oled_dcn_N_1404), .Z(n2170[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20321_2_lut.init = 16'h2222;
    LUT4 i2_2_lut_3_lut_4_lut_adj_183 (.A(state[3]), .B(n38259), .C(n36131), 
         .D(n38181), .Z(n23517)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(81[5:9])
    defparam i2_2_lut_3_lut_4_lut_adj_183.init = 16'h0400;
    PFUMX i96 (.BLUT(n33069), .ALUT(n11918), .C0(cnt_scan[0]), .Z(n48_adj_1778));
    LUT4 i1_2_lut_rep_524_3_lut_4_lut (.A(state[3]), .B(n38259), .C(state[1]), 
         .D(state[2]), .Z(n38111)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/new porject/top-xu/oled.v(81[5:9])
    defparam i1_2_lut_rep_524_3_lut_4_lut.init = 16'hfffb;
    LUT4 i29887_2_lut_2_lut_3_lut_4_lut (.A(state[3]), .B(n38259), .C(n38112), 
         .D(n38181), .Z(n23502)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(81[5:9])
    defparam i29887_2_lut_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_3_lut_rep_546_4_lut (.A(state[1]), .B(n38259), .C(state[0]), 
         .D(state[2]), .Z(n38133)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;
    defparam i1_3_lut_rep_546_4_lut.init = 16'hfbbb;
    LUT4 i29280_2_lut_3_lut_4_lut (.A(state[1]), .B(n38259), .C(cnt_init[0]), 
         .D(state[3]), .Z(n36117)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i29280_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i90_2_lut_rep_515_4_lut (.A(n38255), .B(cnt_init[2]), .C(cnt_init[1]), 
         .D(oled_dcn_N_1404), .Z(n38102)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(124[7] 140[14])
    defparam i90_2_lut_rep_515_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_553_3_lut_4_lut (.A(state[2]), .B(n38258), .C(n38259), 
         .D(state[3]), .Z(n38140)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_553_3_lut_4_lut.init = 16'h00e0;
    LUT4 mux_36_Mux_0_i31_4_lut (.A(n36376), .B(\ds18b20_data[4] ), .C(cnt_main_c[4]), 
         .D(cnt_main_c[3]), .Z(char_167__N_1112[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam mux_36_Mux_0_i31_4_lut.init = 16'hcac0;
    LUT4 i29536_3_lut (.A(n36374), .B(n36375), .C(\cnt_main[2] ), .Z(n36376)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29536_3_lut.init = 16'hcaca;
    LUT4 i29534_4_lut (.A(n8666), .B(n36386), .C(\cnt_main[1] ), .D(cnt_main[0]), 
         .Z(n36374)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i29534_4_lut.init = 16'hcac0;
    LUT4 i2_3_lut_4_lut_adj_184 (.A(state[2]), .B(n38258), .C(n38259), 
         .D(state[3]), .Z(n11)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_184.init = 16'hefff;
    LUT4 i20102_2_lut (.A(n2144[0]), .B(oled_dcn_N_1404), .Z(n2170[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam i20102_2_lut.init = 16'h2222;
    PFUMX i73 (.BLUT(n35724), .ALUT(n27), .C0(state[3]), .Z(n47_adj_1837));
    LUT4 i29184_3_lut_rep_526_4_lut (.A(n38269), .B(n38268), .C(oled_dcn_N_1404), 
         .D(cnt_init[0]), .Z(n38113)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(138[8:12])
    defparam i29184_3_lut_rep_526_4_lut.init = 16'hfffe;
    LUT4 i29393_2_lut_3_lut_4_lut (.A(n38269), .B(n38265), .C(n38259), 
         .D(state[3]), .Z(n36233)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i29393_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i19900_3_lut (.A(n27359), .B(cnt_main_c[4]), .C(cnt_main_c[3]), 
         .Z(x_ph_7__N_1080[0])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i19900_3_lut.init = 16'hdcdc;
    PFUMX i91_adj_185 (.BLUT(n45), .ALUT(n57_adj_1781), .C0(n36293), .Z(n63_adj_1751));
    PFUMX i47_adj_186 (.BLUT(n6_adj_1741), .ALUT(n12_adj_1800), .C0(state[3]), 
          .Z(n26));
    PFUMX i30988 (.BLUT(n39213), .ALUT(n39212), .C0(\cnt[1] ), .Z(n39214));
    LUT4 i29870_4_lut (.A(sys_clk_c_enable_263), .B(n38110), .C(n38145), 
         .D(cnt_main_c[4]), .Z(sys_clk_c_enable_301)) /* synthesis lut_function=(!((B (C (D)+!C !(D)))+!A)) */ ;
    defparam i29870_4_lut.init = 16'h2aa2;
    PFUMX i30976 (.BLUT(n39189), .ALUT(n39188), .C0(cnt_scan[2]), .Z(n39190));
    LUT4 i14135_2_lut_rep_599 (.A(\cnt_main[1] ), .B(\cnt_main[2] ), .Z(n38186)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i14135_2_lut_rep_599.init = 16'heeee;
    LUT4 i20067_3_lut (.A(n37106), .B(n38110), .C(cnt_main_c[4]), .Z(n8253[0])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i20067_3_lut.init = 16'hc8c8;
    PFUMX i28 (.BLUT(n35824), .ALUT(n24439), .C0(state[2]), .Z(n11_adj_1789));
    LUT4 i2_3_lut_rep_558_4_lut (.A(\cnt_main[1] ), .B(\cnt_main[2] ), .C(cnt_main_c[3]), 
         .D(cnt_main[0]), .Z(n38145)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(93[7] 121[14])
    defparam i2_3_lut_rep_558_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_187 (.A(state[4]), .B(cnt_write[0]), .C(n38247), 
         .D(cnt_write[4]), .Z(n35817)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_187.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_adj_188 (.A(state[4]), .B(cnt_write[0]), .C(cnt_write[4]), 
         .Z(n35699)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_188.init = 16'h0808;
    FD1P3IX cnt_i0_i5 (.D(n2170[5]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i5.GSR = "ENABLED";
    PFUMX i91_adj_189 (.BLUT(n57), .ALUT(n61), .C0(cnt_scan[3]), .Z(n63_adj_1756));
    LUT4 mux_75_i3_4_lut (.A(n2309), .B(n2318[2]), .C(n38151), .D(n38118), 
         .Z(cnt_scan_4__N_1062[2])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/new porject/top-xu/oled.v(146[16] 147[40])
    defparam mux_75_i3_4_lut.init = 16'hc505;
    LUT4 i29559_3_lut (.A(n3056), .B(n3434), .C(cnt_scan[0]), .Z(n36399)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29559_3_lut.init = 16'hcaca;
    L6MUX21 i30920 (.D0(n39076), .D1(n39073), .SD(\cnt_main[1] ), .Z(n36372));
    PFUMX i30918 (.BLUT(n39075), .ALUT(n39074), .C0(cnt_main[0]), .Z(n39076));
    PFUMX i30916 (.BLUT(n8688[3]), .ALUT(n39072), .C0(cnt_main[0]), .Z(n39073));
    FD1P3IX cnt_scan_i0_i0 (.D(cnt_scan_4__N_1062[0]), .SP(sys_clk_c_enable_348), 
            .CD(n21850), .CK(sys_clk_c), .Q(cnt_scan[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_scan_i0_i0.GSR = "ENABLED";
    LUT4 n37639_bdd_3_lut (.A(n3058), .B(n3436), .C(cnt_scan[0]), .Z(n37906)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37639_bdd_3_lut.init = 16'hcaca;
    LUT4 n37381_bdd_2_lut_3_lut (.A(n37380), .B(state[4]), .C(state[1]), 
         .Z(n37382)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n37381_bdd_2_lut_3_lut.init = 16'h0202;
    LUT4 n2680_bdd_4_lut_30634 (.A(n2680), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .D(x_ph[2]), .Z(n37909)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A !(B+(C+!(D)))) */ ;
    defparam n2680_bdd_4_lut_30634.init = 16'h8380;
    LUT4 gnd_bdd_2_lut_30492 (.A(n37909), .B(cnt_scan[1]), .Z(n37910)) /* synthesis lut_function=(A (B)) */ ;
    defparam gnd_bdd_2_lut_30492.init = 16'h8888;
    LUT4 i19921_3_lut_4_lut_4_lut_4_lut (.A(sw1_c), .B(\hundres_0__N_356[1] ), 
         .C(\hundres_0__N_356[2] ), .D(n37972), .Z(n8688[3])) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i19921_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i19923_3_lut_3_lut (.A(sw1_c), .B(n37964), .C(\sec[1] ), .Z(n8692)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i19923_3_lut_3_lut.init = 16'h1414;
    LUT4 i19922_4_lut_4_lut (.A(sw1_c), .B(\sec[1] ), .C(n37964), .D(n37985), 
         .Z(n8688[2])) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i19922_4_lut_4_lut.init = 16'h4510;
    LUT4 i19926_3_lut_3_lut (.A(sw1_c), .B(n9659), .C(n37971), .Z(n8682[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i19926_3_lut_3_lut.init = 16'h1414;
    CCU2D add_117_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32780), .S0(n4271[15]));   // d:/new porject/top-xu/oled.v(194[29:45])
    defparam add_117_17.INIT0 = 16'h5aaa;
    defparam add_117_17.INIT1 = 16'h0000;
    defparam add_117_17.INJECT1_0 = "NO";
    defparam add_117_17.INJECT1_1 = "NO";
    LUT4 i19925_4_lut_4_lut (.A(sw1_c), .B(n37971), .C(n9659), .D(\hundres_0__N_353[0] ), 
         .Z(n8682[2])) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i19925_4_lut_4_lut.init = 16'h4510;
    LUT4 i19914_4_lut_4_lut_4_lut (.A(sw1_c), .B(\hundres_0__N_356[1] ), 
         .C(\hundres_0__N_356[2] ), .D(n37972), .Z(n8682[0])) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i19914_4_lut_4_lut_4_lut.init = 16'h1450;
    CCU2D add_117_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32779), .COUT(n32780), .S0(n4271[13]), 
          .S1(n4271[14]));   // d:/new porject/top-xu/oled.v(194[29:45])
    defparam add_117_15.INIT0 = 16'h5aaa;
    defparam add_117_15.INIT1 = 16'h5aaa;
    defparam add_117_15.INJECT1_0 = "NO";
    defparam add_117_15.INJECT1_1 = "NO";
    LUT4 i19915_2_lut_2_lut (.A(sw1_c), .B(\sec[0] ), .Z(n8688[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/top.v(10[8:11])
    defparam i19915_2_lut_2_lut.init = 16'h4444;
    CCU2D add_117_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32778), .COUT(n32779), .S0(n4271[11]), 
          .S1(n4271[12]));   // d:/new porject/top-xu/oled.v(194[29:45])
    defparam add_117_13.INIT0 = 16'h5aaa;
    defparam add_117_13.INIT1 = 16'h5aaa;
    defparam add_117_13.INJECT1_0 = "NO";
    defparam add_117_13.INJECT1_1 = "NO";
    FD1P3IX cnt_i0_i10 (.D(n2170[10]), .SP(sys_clk_c_enable_349), .CD(n21897), 
            .CK(sys_clk_c), .Q(cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=375, LSE_RLINE=406 */ ;   // d:/new porject/top-xu/oled.v(79[12] 199[6])
    defparam cnt_i0_i10.GSR = "ENABLED";
    CCU2D add_117_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32777), .COUT(n32778), .S0(n4271[9]), .S1(n4271[10]));   // d:/new porject/top-xu/oled.v(194[29:45])
    defparam add_117_11.INIT0 = 16'h5aaa;
    defparam add_117_11.INIT1 = 16'h5aaa;
    defparam add_117_11.INJECT1_0 = "NO";
    defparam add_117_11.INJECT1_1 = "NO";
    CCU2D add_117_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32776), .COUT(n32777), .S0(n4271[7]), .S1(n4271[8]));   // d:/new porject/top-xu/oled.v(194[29:45])
    defparam add_117_9.INIT0 = 16'h5aaa;
    defparam add_117_9.INIT1 = 16'h5aaa;
    defparam add_117_9.INJECT1_0 = "NO";
    defparam add_117_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_190 (.A(n37050), .B(n1703), .C(n38085), .D(state[2]), 
         .Z(n6_adj_1836)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_190.init = 16'hac00;
    CCU2D add_117_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32775), .COUT(n32776), .S0(n4271[5]), .S1(n4271[6]));   // d:/new porject/top-xu/oled.v(194[29:45])
    defparam add_117_7.INIT0 = 16'h5aaa;
    defparam add_117_7.INIT1 = 16'h5aaa;
    defparam add_117_7.INJECT1_0 = "NO";
    defparam add_117_7.INJECT1_1 = "NO";
    CCU2D add_117_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32774), .COUT(n32775), .S0(n4271[3]), .S1(n4271[4]));   // d:/new porject/top-xu/oled.v(194[29:45])
    defparam add_117_5.INIT0 = 16'h5aaa;
    defparam add_117_5.INIT1 = 16'h5aaa;
    defparam add_117_5.INJECT1_0 = "NO";
    defparam add_117_5.INJECT1_1 = "NO";
    CCU2D add_117_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32773), .COUT(n32774), .S0(n4271[1]), .S1(n4271[2]));   // d:/new porject/top-xu/oled.v(194[29:45])
    defparam add_117_3.INIT0 = 16'h5aaa;
    defparam add_117_3.INIT1 = 16'h5aaa;
    defparam add_117_3.INJECT1_0 = "NO";
    defparam add_117_3.INJECT1_1 = "NO";
    CCU2D add_117_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32773), .S1(n4271[0]));   // d:/new porject/top-xu/oled.v(194[29:45])
    defparam add_117_1.INIT0 = 16'hF000;
    defparam add_117_1.INIT1 = 16'h5555;
    defparam add_117_1.INJECT1_0 = "NO";
    defparam add_117_1.INJECT1_1 = "NO";
    CCU2D add_43_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32772), 
          .S0(n2144[15]));   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam add_43_17.INIT0 = 16'h5aaa;
    defparam add_43_17.INIT1 = 16'h0000;
    defparam add_43_17.INJECT1_0 = "NO";
    defparam add_43_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_191 (.A(n38112), .B(n38140), .C(n38183), .D(n35757), 
         .Z(sys_clk_c_enable_264)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(48[13:18])
    defparam i1_4_lut_adj_191.init = 16'h4c44;
    CCU2D add_43_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32771), 
          .COUT(n32772), .S0(n2144[13]), .S1(n2144[14]));   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam add_43_15.INIT0 = 16'h5aaa;
    defparam add_43_15.INIT1 = 16'h5aaa;
    defparam add_43_15.INJECT1_0 = "NO";
    defparam add_43_15.INJECT1_1 = "NO";
    CCU2D add_43_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32770), 
          .COUT(n32771), .S0(n2144[11]), .S1(n2144[12]));   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam add_43_13.INIT0 = 16'h5aaa;
    defparam add_43_13.INIT1 = 16'h5aaa;
    defparam add_43_13.INJECT1_0 = "NO";
    defparam add_43_13.INJECT1_1 = "NO";
    CCU2D add_43_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32769), 
          .COUT(n32770), .S0(n2144[9]), .S1(n2144[10]));   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam add_43_11.INIT0 = 16'h5aaa;
    defparam add_43_11.INIT1 = 16'h5aaa;
    defparam add_43_11.INJECT1_0 = "NO";
    defparam add_43_11.INJECT1_1 = "NO";
    LUT4 i3841_2_lut_rep_624 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n38211)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(125[49:64])
    defparam i3841_2_lut_rep_624.init = 16'h8888;
    LUT4 i3846_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(n2108[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(125[49:64])
    defparam i3846_2_lut_3_lut.init = 16'h7878;
    PFUMX i30563 (.BLUT(n38344), .ALUT(n38345), .C0(cnt_scan[1]), .Z(n38346));
    CCU2D add_43_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32768), 
          .COUT(n32769), .S0(n2144[7]), .S1(n2144[8]));   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam add_43_9.INIT0 = 16'h5aaa;
    defparam add_43_9.INIT1 = 16'h5aaa;
    defparam add_43_9.INJECT1_0 = "NO";
    defparam add_43_9.INJECT1_1 = "NO";
    LUT4 i3853_2_lut_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[3]), 
         .D(cnt_init[2]), .Z(n2108[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(125[49:64])
    defparam i3853_2_lut_3_lut_4_lut.init = 16'h78f0;
    CCU2D add_43_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32767), 
          .COUT(n32768), .S0(n2144[5]), .S1(n2144[6]));   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam add_43_7.INIT0 = 16'h5aaa;
    defparam add_43_7.INIT1 = 16'h5aaa;
    defparam add_43_7.INJECT1_0 = "NO";
    defparam add_43_7.INJECT1_1 = "NO";
    PFUMX i30561 (.BLUT(n38341), .ALUT(n38342), .C0(cnt_scan[1]), .Z(n38343));
    CCU2D add_43_5 (.A0(\cnt[3] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[4] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32766), 
          .COUT(n32767), .S0(n2144[3]), .S1(n2144[4]));   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam add_43_5.INIT0 = 16'h5aaa;
    defparam add_43_5.INIT1 = 16'h5aaa;
    defparam add_43_5.INJECT1_0 = "NO";
    defparam add_43_5.INJECT1_1 = "NO";
    CCU2D add_43_3 (.A0(\cnt[1] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[2] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32765), 
          .COUT(n32766), .S0(n2144[1]), .S1(n2144[2]));   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam add_43_3.INIT0 = 16'h5aaa;
    defparam add_43_3.INIT1 = 16'h5aaa;
    defparam add_43_3.INJECT1_0 = "NO";
    defparam add_43_3.INJECT1_1 = "NO";
    CCU2D add_43_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n32765), 
          .S1(n2144[0]));   // d:/new porject/top-xu/oled.v(134[19:29])
    defparam add_43_1.INIT0 = 16'hF000;
    defparam add_43_1.INIT1 = 16'h5555;
    defparam add_43_1.INJECT1_0 = "NO";
    defparam add_43_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_192 (.A(cnt_main_c[3]), .B(n38081), .C(n38228), 
         .D(\cnt_main[2] ), .Z(n35555)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_192.init = 16'h1000;
    LUT4 i20616_4_lut (.A(n11), .B(n38003), .C(n6_adj_1801), .D(cnt_scan[3]), 
         .Z(sys_clk_c_enable_288)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i20616_4_lut.init = 16'hccc8;
    LUT4 i29867_4_lut (.A(n50), .B(n36571), .C(n38245), .D(n38258), 
         .Z(n42)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i29867_4_lut.init = 16'hccc4;
    LUT4 i1_3_lut_adj_193 (.A(n30115), .B(state[5]), .C(n35817), .Z(n50)) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i1_3_lut_adj_193.init = 16'hbaba;
    LUT4 i29866_4_lut (.A(n45_adj_1838), .B(n38259), .C(n47_adj_1837), 
         .D(n38258), .Z(n36571)) /* synthesis lut_function=(!(A (B)+!A !(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i29866_4_lut.init = 16'h7737;
    PFUMX i29593 (.BLUT(n36429), .ALUT(n36430), .C0(cnt_write[2]), .Z(n36433));
    LUT4 i2_4_lut_adj_194 (.A(state[0]), .B(n38245), .C(state_5__N_1344[0]), 
         .D(state[1]), .Z(n45_adj_1838)) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 198[11])
    defparam i2_4_lut_adj_194.init = 16'h0122;
    \divide(WIDTH=32,N=12000000)  divide_1Hz (.sys_clk_c(sys_clk_c), .clk_in_1Hz(clk_in_1Hz), 
            .GND_net(GND_net), .sys_rst_n_c(sys_rst_n_c), .n38243(n38243), 
            .n4(n4_adj_9), .recv_done_d1(recv_done_d1), .recv_done_d0(recv_done_d0), 
            .n21961(n21961)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/oled.v(55[36] 59[5])
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000) 
//

module \divide(WIDTH=32,N=12000000)  (sys_clk_c, clk_in_1Hz, GND_net, 
            sys_rst_n_c, n38243, n4, recv_done_d1, recv_done_d0, n21961) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output clk_in_1Hz;
    input GND_net;
    input sys_rst_n_c;
    output n38243;
    input n4;
    input recv_done_d1;
    input recv_done_d0;
    output n21961;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // d:/new porject/top-xu/oled.v(53[9:19])
    wire [31:0]n200;
    
    wire n21896;
    wire [31:0]n101;
    
    wire clkout_N_299, n32961, n32960;
    wire [31:0]cnt_p;   // d:/new porject/top-xu/clock.v(11[19:24])
    
    wire n32959, n32958, n32957, n32956, n32955, n32954, n32953, 
        n32952, n32951, n32950, n32927, n32926, n32925, n32924, 
        n32923, n32922, n32921, n32920, n32919, n32918, n32917, 
        n32916, n32915, n32914, n32913, n32912, n36147, n36546, 
        n36153, n36151, n17, n30_adj_1724, n26_adj_1725, n18, n27_adj_1726, 
        n24, n36191;
    
    FD1S3IX cnt_p_3054__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n21896), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i0.GSR = "ENABLED";
    FD1S3AX clk_p_29 (.D(clkout_N_299), .CK(sys_clk_c), .Q(clk_in_1Hz)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=36, LSE_RCOL=5, LSE_LLINE=55, LSE_RLINE=59 */ ;   // d:/new porject/top-xu/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D add_26050_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32961), 
          .S0(clkout_N_299));
    defparam add_26050_cout.INIT0 = 16'h0000;
    defparam add_26050_cout.INIT1 = 16'h0000;
    defparam add_26050_cout.INJECT1_0 = "NO";
    defparam add_26050_cout.INJECT1_1 = "NO";
    CCU2D add_26050_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32960), .COUT(n32961));
    defparam add_26050_24.INIT0 = 16'h5555;
    defparam add_26050_24.INIT1 = 16'h5555;
    defparam add_26050_24.INJECT1_0 = "NO";
    defparam add_26050_24.INJECT1_1 = "NO";
    CCU2D add_26050_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32959), .COUT(n32960));
    defparam add_26050_22.INIT0 = 16'h5555;
    defparam add_26050_22.INIT1 = 16'h5555;
    defparam add_26050_22.INJECT1_0 = "NO";
    defparam add_26050_22.INJECT1_1 = "NO";
    CCU2D add_26050_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32958), .COUT(n32959));
    defparam add_26050_20.INIT0 = 16'h5555;
    defparam add_26050_20.INIT1 = 16'h5555;
    defparam add_26050_20.INJECT1_0 = "NO";
    defparam add_26050_20.INJECT1_1 = "NO";
    CCU2D add_26050_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32957), .COUT(n32958));
    defparam add_26050_18.INIT0 = 16'h5555;
    defparam add_26050_18.INIT1 = 16'h5555;
    defparam add_26050_18.INJECT1_0 = "NO";
    defparam add_26050_18.INJECT1_1 = "NO";
    CCU2D add_26050_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32956), .COUT(n32957));
    defparam add_26050_16.INIT0 = 16'h5aaa;
    defparam add_26050_16.INIT1 = 16'h5555;
    defparam add_26050_16.INJECT1_0 = "NO";
    defparam add_26050_16.INJECT1_1 = "NO";
    CCU2D add_26050_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32955), .COUT(n32956));
    defparam add_26050_14.INIT0 = 16'h5aaa;
    defparam add_26050_14.INIT1 = 16'h5555;
    defparam add_26050_14.INJECT1_0 = "NO";
    defparam add_26050_14.INJECT1_1 = "NO";
    CCU2D add_26050_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32954), .COUT(n32955));
    defparam add_26050_12.INIT0 = 16'h5555;
    defparam add_26050_12.INIT1 = 16'h5aaa;
    defparam add_26050_12.INJECT1_0 = "NO";
    defparam add_26050_12.INJECT1_1 = "NO";
    CCU2D add_26050_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32953), .COUT(n32954));
    defparam add_26050_10.INIT0 = 16'h5aaa;
    defparam add_26050_10.INIT1 = 16'h5aaa;
    defparam add_26050_10.INJECT1_0 = "NO";
    defparam add_26050_10.INJECT1_1 = "NO";
    CCU2D add_26050_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32952), .COUT(n32953));
    defparam add_26050_8.INIT0 = 16'h5555;
    defparam add_26050_8.INIT1 = 16'h5aaa;
    defparam add_26050_8.INJECT1_0 = "NO";
    defparam add_26050_8.INJECT1_1 = "NO";
    CCU2D add_26050_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32951), .COUT(n32952));
    defparam add_26050_6.INIT0 = 16'h5555;
    defparam add_26050_6.INIT1 = 16'h5555;
    defparam add_26050_6.INJECT1_0 = "NO";
    defparam add_26050_6.INJECT1_1 = "NO";
    CCU2D add_26050_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32950), .COUT(n32951));
    defparam add_26050_4.INIT0 = 16'h5aaa;
    defparam add_26050_4.INIT1 = 16'h5aaa;
    defparam add_26050_4.INJECT1_0 = "NO";
    defparam add_26050_4.INJECT1_1 = "NO";
    CCU2D add_26050_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n32950));
    defparam add_26050_2.INIT0 = 16'h7000;
    defparam add_26050_2.INIT1 = 16'h5555;
    defparam add_26050_2.INJECT1_0 = "NO";
    defparam add_26050_2.INJECT1_1 = "NO";
    FD1S3IX cnt_p_3054__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n21896), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n21896), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n21896), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n21896), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n21896), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n21896), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_3054__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n21896), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054__i1.GSR = "ENABLED";
    CCU2D cnt_p_3054_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32927), .S0(n101[31]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_3054_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32926), .COUT(n32927), .S0(n101[29]), 
          .S1(n101[30]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32925), .COUT(n32926), .S0(n101[27]), 
          .S1(n101[28]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32924), .COUT(n32925), .S0(n101[25]), 
          .S1(n101[26]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32923), .COUT(n32924), .S0(n101[23]), 
          .S1(n101[24]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32922), .COUT(n32923), .S0(n101[21]), 
          .S1(n101[22]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32921), .COUT(n32922), .S0(n101[19]), 
          .S1(n101[20]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32920), .COUT(n32921), .S0(n101[17]), 
          .S1(n101[18]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32919), .COUT(n32920), .S0(n101[15]), 
          .S1(n101[16]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32918), .COUT(n32919), .S0(n101[13]), 
          .S1(n101[14]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32917), .COUT(n32918), .S0(n101[11]), 
          .S1(n101[12]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32916), .COUT(n32917), .S0(n101[9]), .S1(n101[10]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32915), .COUT(n32916), .S0(n101[7]), .S1(n101[8]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32914), .COUT(n32915), .S0(n101[5]), .S1(n101[6]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32913), .COUT(n32914), .S0(n101[3]), .S1(n101[4]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32912), .COUT(n32913), .S0(n101[1]), .S1(n101[2]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_3054_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_3054_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_3054_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32912), .S1(n101[0]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3054_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_3054_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_3054_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_3054_add_4_1.INJECT1_1 = "NO";
    LUT4 rst_n_in_I_0_1_lut_rep_656 (.A(sys_rst_n_c), .Z(n38243)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/beep.v(81[5:14])
    defparam rst_n_in_I_0_1_lut_rep_656.init = 16'h5555;
    LUT4 i1_3_lut_4_lut_4_lut (.A(sys_rst_n_c), .B(n4), .C(recv_done_d1), 
         .D(recv_done_d0), .Z(n21961)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/beep.v(81[5:14])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h2022;
    LUT4 i29842_4_lut (.A(n36147), .B(n36546), .C(n36153), .D(n36151), 
         .Z(n21896)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i29842_4_lut.init = 16'h8000;
    LUT4 i29309_4_lut (.A(cnt_p[16]), .B(n200[6]), .C(n200[5]), .D(n200[3]), 
         .Z(n36147)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29309_4_lut.init = 16'h8000;
    LUT4 i29841_4_lut (.A(n17), .B(n30_adj_1724), .C(n26_adj_1725), .D(n18), 
         .Z(n36546)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i29841_4_lut.init = 16'h0001;
    LUT4 i29315_4_lut (.A(n200[0]), .B(n200[2]), .C(cnt_p[18]), .D(cnt_p[11]), 
         .Z(n36153)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29315_4_lut.init = 16'h8000;
    LUT4 i29313_4_lut (.A(cnt_p[9]), .B(cnt_p[17]), .C(cnt_p[7]), .D(n200[1]), 
         .Z(n36151)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29313_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(cnt_p[28]), .B(cnt_p[8]), .Z(n17)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i14_4_lut (.A(n27_adj_1726), .B(cnt_p[29]), .C(n24), .D(cnt_p[13]), 
         .Z(n30_adj_1724)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_p[24]), .B(cnt_p[30]), .C(cnt_p[27]), .D(cnt_p[14]), 
         .Z(n26_adj_1725)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(cnt_p[25]), .B(cnt_p[26]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i11_4_lut (.A(cnt_p[19]), .B(cnt_p[10]), .C(cnt_p[22]), .D(cnt_p[15]), 
         .Z(n27_adj_1726)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(cnt_p[31]), .B(n200[4]), .C(n36191), .D(cnt_p[20]), 
         .Z(n24)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i8_4_lut.init = 16'hbfff;
    LUT4 i29352_3_lut (.A(cnt_p[23]), .B(cnt_p[21]), .C(cnt_p[12]), .Z(n36191)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i29352_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module KEY
//

module KEY (sys_clk_c, key_sec_pre, key_sec, key3_c, n38231, n39470, 
            n38234, n181, \key_mode[2] , \key_mode[1] , n35675, key_sec_adj_1, 
            key_sec_pre_adj_2, n38156, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key3_c;
    output n38231;
    input n39470;
    input n38234;
    output n181;
    input \key_mode[2] ;
    input \key_mode[1] ;
    output n35675;
    input key_sec_adj_1;
    input key_sec_pre_adj_2;
    output n38156;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire key_rst_pre, key_rst, sys_clk_c_enable_8;
    wire [17:0]cnt;   // d:/new porject/top-xu/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire n32861, n32860, n32859, n21, n34, n30, n22, n31, n28, 
        n32858, n32857, n32856, n32855, n32854, n32853;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key3_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1P3AY key_sec_29 (.D(key3_c), .SP(sys_clk_c_enable_8), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    FD1S3IX cnt_3043__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i0.GSR = "ENABLED";
    FD1S3IX cnt_3043__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i17.GSR = "ENABLED";
    FD1S3IX cnt_3043__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i16.GSR = "ENABLED";
    FD1S3IX cnt_3043__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i15.GSR = "ENABLED";
    FD1S3IX cnt_3043__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i14.GSR = "ENABLED";
    FD1S3IX cnt_3043__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i13.GSR = "ENABLED";
    FD1S3IX cnt_3043__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i12.GSR = "ENABLED";
    FD1S3IX cnt_3043__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i11.GSR = "ENABLED";
    FD1S3IX cnt_3043__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i10.GSR = "ENABLED";
    FD1S3IX cnt_3043__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i9.GSR = "ENABLED";
    FD1S3IX cnt_3043__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i8.GSR = "ENABLED";
    FD1S3IX cnt_3043__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i7.GSR = "ENABLED";
    FD1S3IX cnt_3043__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i6.GSR = "ENABLED";
    FD1S3IX cnt_3043__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i5.GSR = "ENABLED";
    FD1S3IX cnt_3043__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i4.GSR = "ENABLED";
    FD1S3IX cnt_3043__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i3.GSR = "ENABLED";
    FD1S3IX cnt_3043__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i2.GSR = "ENABLED";
    FD1S3IX cnt_3043__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043__i1.GSR = "ENABLED";
    LUT4 key_sec_pre_I_0_2_lut_rep_644 (.A(key_sec_pre), .B(key_sec), .Z(n38231)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_644.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(n39470), 
         .D(n38234), .Z(n181)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h00d0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_20 (.A(key_sec_pre), .B(key_sec), .C(\key_mode[2] ), 
         .D(\key_mode[1] ), .Z(n35675)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_3_lut_4_lut_adj_20.init = 16'h0200;
    LUT4 i1_2_lut_rep_569_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(key_sec_adj_1), 
         .D(key_sec_pre_adj_2), .Z(n38156)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_rep_569_3_lut_4_lut.init = 16'h2022;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    CCU2D cnt_3043_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32861), .S0(n77[17]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_3043_add_4_19.INIT1 = 16'h0000;
    defparam cnt_3043_add_4_19.INJECT1_0 = "NO";
    defparam cnt_3043_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_3043_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32860), .COUT(n32861), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_3043_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_3043_add_4_17.INJECT1_0 = "NO";
    defparam cnt_3043_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_3043_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32859), .COUT(n32860), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_3043_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_3043_add_4_15.INJECT1_0 = "NO";
    defparam cnt_3043_add_4_15.INJECT1_1 = "NO";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_8)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(cnt[13]), .B(cnt[8]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i16_4_lut (.A(n31), .B(cnt[9]), .C(n28), .D(cnt[2]), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    CCU2D cnt_3043_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32858), .COUT(n32859), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_3043_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_3043_add_4_13.INJECT1_0 = "NO";
    defparam cnt_3043_add_4_13.INJECT1_1 = "NO";
    LUT4 i12_4_lut (.A(cnt[3]), .B(cnt[10]), .C(cnt[5]), .D(cnt[0]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(cnt[7]), .B(cnt[12]), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i13_4_lut (.A(cnt[17]), .B(cnt[15]), .C(cnt[16]), .D(cnt[4]), 
         .Z(n31)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    CCU2D cnt_3043_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32857), .COUT(n32858), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_3043_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_3043_add_4_11.INJECT1_0 = "NO";
    defparam cnt_3043_add_4_11.INJECT1_1 = "NO";
    LUT4 i10_4_lut (.A(cnt[1]), .B(cnt[6]), .C(cnt[14]), .D(cnt[11]), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    CCU2D cnt_3043_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32856), 
          .COUT(n32857), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_3043_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_3043_add_4_9.INJECT1_0 = "NO";
    defparam cnt_3043_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_3043_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32855), 
          .COUT(n32856), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_3043_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_3043_add_4_7.INJECT1_0 = "NO";
    defparam cnt_3043_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_3043_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32854), 
          .COUT(n32855), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_3043_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_3043_add_4_5.INJECT1_0 = "NO";
    defparam cnt_3043_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_3043_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32853), 
          .COUT(n32854), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_3043_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_3043_add_4_3.INJECT1_0 = "NO";
    defparam cnt_3043_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_3043_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32853), .S1(n77[0]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3043_add_4_1.INIT0 = 16'hF000;
    defparam cnt_3043_add_4_1.INIT1 = 16'h0555;
    defparam cnt_3043_add_4_1.INJECT1_0 = "NO";
    defparam cnt_3043_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module KEY_U1
//

module KEY_U1 (sys_clk_c, key1_c, GND_net, sw1_c, n38089, n6, n181, 
            sys_clk_c_enable_155, key_mode, n39470, n850, n831, clk_1s_enable_16, 
            sys_clk_c_enable_308, n38175, n38198, n25994, sys_clk_c_enable_295, 
            n36679, sys_clk_c_enable_147, n38231, n38234, n38216, 
            n26000, n38170, n167, \hour_t[0] , \hour_7__N_19[0] , 
            n4, sys_clk_c_enable_163, n38163, min, n5415, sec, n5405, 
            n35667, n5235, n35743, n5295, hour, n5395, n38347) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input key1_c;
    input GND_net;
    input sw1_c;
    output n38089;
    input n6;
    input n181;
    output sys_clk_c_enable_155;
    input [2:0]key_mode;
    input n39470;
    input n850;
    input n831;
    output clk_1s_enable_16;
    output sys_clk_c_enable_308;
    output n38175;
    output n38198;
    output n25994;
    output sys_clk_c_enable_295;
    input n36679;
    output sys_clk_c_enable_147;
    input n38231;
    input n38234;
    input n38216;
    output n26000;
    input n38170;
    output n167;
    input \hour_t[0] ;
    output \hour_7__N_19[0] ;
    input n4;
    output sys_clk_c_enable_163;
    input n38163;
    input [7:0]min;
    output [7:0]n5415;
    input [7:0]sec;
    output [7:0]n5405;
    input n35667;
    output n5235;
    input n35743;
    output n5295;
    input [7:0]hour;
    output [7:0]n5395;
    input n38347;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire key_rst_pre, key_rst, key_sec_pre, key_sec, n32843;
    wire [17:0]cnt;   // d:/new porject/top-xu/key.v(37[16:19])
    wire [17:0]n77;
    
    wire n32842, n32841, n32840, n32839, sys_clk_c_enable_41, n32838, 
        n32837, key_edge, n32836, n32835, n38349, n38348, n21, 
        n34, n30, n22, n31, n28;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key1_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    CCU2D cnt_3041_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32843), .S0(n77[17]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_3041_add_4_19.INIT1 = 16'h0000;
    defparam cnt_3041_add_4_19.INJECT1_0 = "NO";
    defparam cnt_3041_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_3041_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32842), .COUT(n32843), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_3041_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_3041_add_4_17.INJECT1_0 = "NO";
    defparam cnt_3041_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_3041_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32841), .COUT(n32842), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_3041_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_3041_add_4_15.INJECT1_0 = "NO";
    defparam cnt_3041_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_3041_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32840), .COUT(n32841), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_3041_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_3041_add_4_13.INJECT1_0 = "NO";
    defparam cnt_3041_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_3041_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32839), .COUT(n32840), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_3041_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_3041_add_4_11.INJECT1_0 = "NO";
    defparam cnt_3041_add_4_11.INJECT1_1 = "NO";
    FD1P3AY key_sec_29 (.D(key1_c), .SP(sys_clk_c_enable_41), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    CCU2D cnt_3041_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32838), 
          .COUT(n32839), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_3041_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_3041_add_4_9.INJECT1_0 = "NO";
    defparam cnt_3041_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_3041_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32837), 
          .COUT(n32838), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_3041_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_3041_add_4_7.INJECT1_0 = "NO";
    defparam cnt_3041_add_4_7.INJECT1_1 = "NO";
    FD1S3IX cnt_3041__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i0.GSR = "ENABLED";
    CCU2D cnt_3041_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32836), 
          .COUT(n32837), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_3041_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_3041_add_4_5.INJECT1_0 = "NO";
    defparam cnt_3041_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_3041_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32835), 
          .COUT(n32836), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_3041_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_3041_add_4_3.INJECT1_0 = "NO";
    defparam cnt_3041_add_4_3.INJECT1_1 = "NO";
    LUT4 i29969_4_lut (.A(sw1_c), .B(n38089), .C(n6), .D(n181), .Z(sys_clk_c_enable_155)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))))) */ ;
    defparam i29969_4_lut.init = 16'h3337;
    CCU2D cnt_3041_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32835), .S1(n77[0]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041_add_4_1.INIT0 = 16'hF000;
    defparam cnt_3041_add_4_1.INIT1 = 16'h0555;
    defparam cnt_3041_add_4_1.INJECT1_0 = "NO";
    defparam cnt_3041_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_3041__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i17.GSR = "ENABLED";
    FD1S3IX cnt_3041__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i16.GSR = "ENABLED";
    FD1S3IX cnt_3041__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i15.GSR = "ENABLED";
    FD1S3IX cnt_3041__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i14.GSR = "ENABLED";
    FD1S3IX cnt_3041__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i13.GSR = "ENABLED";
    FD1S3IX cnt_3041__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i12.GSR = "ENABLED";
    FD1S3IX cnt_3041__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i11.GSR = "ENABLED";
    FD1S3IX cnt_3041__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i10.GSR = "ENABLED";
    FD1S3IX cnt_3041__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i9.GSR = "ENABLED";
    FD1S3IX cnt_3041__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i8.GSR = "ENABLED";
    FD1S3IX cnt_3041__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i7.GSR = "ENABLED";
    FD1S3IX cnt_3041__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i6.GSR = "ENABLED";
    FD1S3IX cnt_3041__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i5.GSR = "ENABLED";
    FD1S3IX cnt_3041__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i4.GSR = "ENABLED";
    FD1S3IX cnt_3041__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i3.GSR = "ENABLED";
    FD1S3IX cnt_3041__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i2.GSR = "ENABLED";
    FD1S3IX cnt_3041__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3041__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_mode[0]), .B(n39470), .C(n850), 
         .D(n831), .Z(clk_1s_enable_16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 key_sec_pre_I_0_2_lut_rep_643 (.A(key_sec_pre), .B(key_sec), .Z(sys_clk_c_enable_308)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_643.init = 16'h2222;
    LUT4 i1_2_lut_rep_588_3_lut (.A(key_sec_pre), .B(key_sec), .C(key_mode[0]), 
         .Z(n38175)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_rep_588_3_lut.init = 16'hf2f2;
    LUT4 i1_2_lut_2_lut_3_lut (.A(key_sec_pre), .B(key_sec), .C(n38198), 
         .Z(n25994)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h0202;
    LUT4 i29972_2_lut_3_lut (.A(key_sec_pre), .B(key_sec), .C(n38349), 
         .Z(sys_clk_c_enable_295)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i29972_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i29975_2_lut_3_lut (.A(key_sec_pre), .B(key_sec), .C(n36679), 
         .Z(sys_clk_c_enable_147)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i29975_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i29971_4_lut_then_4_lut (.A(n38231), .B(n38234), .C(n38216), 
         .D(sw1_c), .Z(n38348)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i29971_4_lut_then_4_lut.init = 16'h000e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_17 (.A(key_mode[0]), .B(n39470), .C(n850), 
         .D(n831), .Z(n26000)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/new porject/top-xu/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut_adj_17.init = 16'h1110;
    LUT4 i1_2_lut_3_lut_4_lut_adj_18 (.A(key_mode[0]), .B(n39470), .C(sys_clk_c_enable_308), 
         .D(n38170), .Z(n167)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // d:/new porject/top-xu/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut_adj_18.init = 16'hf0fe;
    LUT4 hour_7__I_0_i1_3_lut_4_lut (.A(key_mode[0]), .B(n39470), .C(\hour_t[0] ), 
         .D(n850), .Z(\hour_7__N_19[0] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // d:/new porject/top-xu/top.v(65[16:24])
    defparam hour_7__I_0_i1_3_lut_4_lut.init = 16'he0f1;
    LUT4 i1_2_lut_rep_502_3_lut_4_lut (.A(key_mode[0]), .B(n39470), .C(sys_clk_c_enable_308), 
         .D(n38170), .Z(n38089)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/top.v(65[16:24])
    defparam i1_2_lut_rep_502_3_lut_4_lut.init = 16'hfffe;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    LUT4 i29850_4_lut_4_lut (.A(sys_clk_c_enable_308), .B(n38170), .C(n4), 
         .D(sw1_c), .Z(sys_clk_c_enable_163)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i29850_4_lut_4_lut.init = 16'h0400;
    LUT4 i20232_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(min[5]), 
         .D(sys_clk_c_enable_308), .Z(n5415[5])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20232_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20217_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(sec[5]), 
         .D(sys_clk_c_enable_308), .Z(n5405[5])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20217_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20218_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(sec[4]), 
         .D(sys_clk_c_enable_308), .Z(n5405[4])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20218_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut (.A(n38163), .B(n38170), .C(n35667), .D(sys_clk_c_enable_308), 
         .Z(n5235)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h00f1;
    LUT4 i1_3_lut_4_lut_adj_19 (.A(n38163), .B(n38170), .C(n35743), .D(sys_clk_c_enable_308), 
         .Z(n5295)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_19.init = 16'h00f1;
    LUT4 i20235_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(min[2]), 
         .D(sys_clk_c_enable_308), .Z(n5415[2])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20235_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20234_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(min[3]), 
         .D(sys_clk_c_enable_308), .Z(n5415[3])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20234_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i19932_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(min[0]), 
         .D(sys_clk_c_enable_308), .Z(n5415[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i19932_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20236_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(min[1]), 
         .D(sys_clk_c_enable_308), .Z(n5415[1])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20236_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20216_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(sec[6]), 
         .D(sys_clk_c_enable_308), .Z(n5405[6])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20216_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20215_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(sec[7]), 
         .D(sys_clk_c_enable_308), .Z(n5405[7])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20215_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20233_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(min[4]), 
         .D(sys_clk_c_enable_308), .Z(n5415[4])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20233_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20223_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(min[7]), 
         .D(sys_clk_c_enable_308), .Z(n5415[7])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20223_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20224_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(min[6]), 
         .D(sys_clk_c_enable_308), .Z(n5415[6])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20224_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20221_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(sec[1]), 
         .D(sys_clk_c_enable_308), .Z(n5405[1])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20221_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20002_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(sec[0]), 
         .D(sys_clk_c_enable_308), .Z(n5405[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20002_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20219_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(sec[3]), 
         .D(sys_clk_c_enable_308), .Z(n5405[3])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20219_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20220_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(sec[2]), 
         .D(sys_clk_c_enable_308), .Z(n5405[2])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20220_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20349_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(hour[6]), 
         .D(sys_clk_c_enable_308), .Z(n5395[6])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20349_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20350_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(hour[7]), 
         .D(sys_clk_c_enable_308), .Z(n5395[7])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20350_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20347_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(hour[4]), 
         .D(sys_clk_c_enable_308), .Z(n5395[4])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20347_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20348_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(hour[5]), 
         .D(sys_clk_c_enable_308), .Z(n5395[5])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20348_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20345_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(hour[2]), 
         .D(sys_clk_c_enable_308), .Z(n5395[2])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20345_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20346_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(hour[3]), 
         .D(sys_clk_c_enable_308), .Z(n5395[3])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20346_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20103_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(hour[0]), 
         .D(sys_clk_c_enable_308), .Z(n5395[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20103_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i20344_2_lut_3_lut_4_lut_4_lut (.A(n38163), .B(n38170), .C(hour[1]), 
         .D(sys_clk_c_enable_308), .Z(n5395[1])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20344_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
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
    LUT4 i29986_4_lut_rep_611 (.A(key_mode[2]), .B(sw1_c), .C(key_mode[1]), 
         .D(key_mode[0]), .Z(n38198)) /* synthesis lut_function=(!(A+(B (C)+!B (C (D))))) */ ;
    defparam i29986_4_lut_rep_611.init = 16'h0515;
    PFUMX i30565 (.BLUT(n38347), .ALUT(n38348), .C0(key_mode[0]), .Z(n38349));
    
endmodule
