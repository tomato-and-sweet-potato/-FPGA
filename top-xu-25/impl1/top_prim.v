// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Thu Feb 25 22:27:20 2021
//
// Verilog Description of module top
//

module top (sys_clk, sys_rst_n, sw1, sw2, beep, uart_txd, one_wire, 
            uart_rxd, oled_res, key1, key2, key3, oled_cs, oled_dc, 
            oled_sck, oled_mosi, led) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(1[8:11])
    input sys_clk;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    input sys_rst_n;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(4[8:17])
    input sw1;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    input sw2;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(11[8:11])
    output beep;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(19[18:22])
    output uart_txd;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(20[10:18])
    inout one_wire;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(23[8:16])
    input uart_rxd;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(12[18:26])
    output oled_res;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(14[9:17])
    input key1;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(5[8:12])
    input key2;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(6[8:12])
    input key3;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(7[8:12])
    output oled_cs;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(15[9:16])
    output oled_dc;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(16[9:16])
    output oled_sck;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(17[9:17])
    output oled_mosi;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(18[9:18])
    output led;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(9[13:16])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    wire clk_1s /* synthesis is_clock=1, SET_AS_NETWORK=clk_1s */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(29[7:13])
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=\u_DS18B20Z/clk_1mhz */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(36[10:18])
    
    wire GND_net, VCC_net, sys_rst_n_c, key1_c, key2_c, key3_c, 
        sw1_c, sw2_c, uart_rxd_c, oled_res_c, oled_cs_c, oled_dc_c, 
        oled_sck_c, oled_mosi_c, beep_c, uart_txd_c;
    wire [7:0]sec;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(25[14:17])
    wire [7:0]min;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(26[14:17])
    wire [7:0]hour;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(27[14:18])
    wire [7:0]sec_t;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(62[16:21])
    wire [7:0]min_t;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(63[16:21])
    wire [7:0]hour_t;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(64[16:22])
    wire [2:0]key_mode;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    wire [7:0]min_warning;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(67[16:27])
    wire [7:0]hour_warning;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(68[16:28])
    wire [7:0]min_waning_t;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(69[16:28])
    wire [7:0]hour_waning_t;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(70[16:29])
    
    wire warning, time_set;
    wire [7:0]warning_time;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(74[16:28])
    wire [3:0]min_tens;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(231[15:23])
    wire [3:0]min_ones;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(232[15:23])
    wire [3:0]hour_tens;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(234[15:24])
    wire [3:0]hour_ones;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(235[15:24])
    wire [3:0]min_warning_tens;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(238[15:31])
    wire [3:0]min_warning_ones;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(239[15:31])
    wire [3:0]hour_warning_tens;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(241[15:32])
    wire [3:0]hour_warning_ones;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(242[15:32])
    wire [15:0]ds18b20_data;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(286[14:26])
    wire [3:0]Tem_high;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(288[13:21])
    wire [7:0]Temp_H;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(307[11:17])
    
    wire uart_en;
    wire [7:0]uart_send_data;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(345[12:26])
    
    wire warning_TEM, uart_recv_done;
    wire [7:0]uart_recv_data;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(403[13:27])
    wire [7:0]music_tone;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(404[13:23])
    
    wire n5301, n32998, n5199, n5387, n5386, n5385, n5250, n5377, 
        n5376, n5375, n5374, n19240, n5367, n5366, n5365, n5364, 
        n5363, warning_time_7__N_176, warning_N_213, n739, n740, n741, 
        n742, n743, n744, n745, n746, n782, n783, n784, n785, 
        n786, n787, n788, n789, n792, n793, n794, n795, n796, 
        n797, n798, n799, n837;
    wire [7:0]sec_7__N_1;
    wire [7:0]min_7__N_11;
    wire [7:0]hour_7__N_19;
    
    wire key_sec_pre, key_sec, n8539;
    wire [3:0]hundres_0__N_346;
    wire [3:0]hundres_0__N_349;
    wire [3:0]hundres_1__N_339_adj_1966;
    wire [3:0]hundres_0__N_346_adj_1970;
    
    wire hundres_0__N_354;
    wire [3:0]hundres_0__N_349_adj_1998;
    
    wire hundres_0__N_354_adj_1913;
    wire [3:0]hundres_1__N_340_adj_2020;
    wire [3:0]hundres_0__N_346_adj_2022;
    wire [3:0]hundres_0__N_349_adj_2024;
    
    wire hundres_0__N_354_adj_1917, sys_clk_c_enable_49;
    wire [3:0]hundres_0__N_349_adj_2050;
    
    wire hundres_0__N_354_adj_1919;
    wire [3:0]hundres_1__N_338_adj_2068;
    wire [3:0]hundres_0__N_349_adj_2076;
    
    wire n38158;
    wire [2:0]state;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    
    wire n38297;
    wire [2:0]state_back_2__N_515;
    
    wire one_wire_N_664, n8454, n33008, n32562, n32561;
    wire [4:0]cnt_main_adj_2093;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[12:20])
    wire [15:0]cnt_adj_2098;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(47[35:38])
    
    wire n24954, n24958, sys_clk_c_enable_379, sys_clk_c_enable_278, 
        n20600, n8449, n19395, n7446, n7443, n19, n18, n7450, 
        n83, n7453, n32932, n31, n32931, n32930, n32929, n32924, 
        n32923, n21, n32922, n32921, n7472, n7470, n32916, n32915, 
        n32914, n32913, n5975, n5974, n5973, n5972, n5971, n5970, 
        n5969, n5968, n5958, n5957, n5956, n5955, n5954, n5953, 
        n5952, n5951, n5941, n5940, n5939, n5938, n5937, n5936, 
        n5935, n5934, n5924, n5923, n5922, n5921, n5920, n5919, 
        n5918, n5917, n5907, n5906, n5905, n5904, n5903, n5902, 
        n5901, n38295, n5900, n2720, n2721, n2722, n2724, n2889, 
        n2890, n2891, n2892, n2893, n2894, n2895, n3267, n3268, 
        n3269, n3270, n3271, n3272, n3273, n3645, n3646, n3647, 
        n3648, n3649, n3650, n3651, n4023, n4024, n4025, n4026, 
        n4027, n4028, n4029, n4401, n4402, n4403, n4404, n4405, 
        n4406, n4407, n6, n35802, n35865, n38292, n6_adj_1921, 
        rx_flag, n18056;
    wire [7:0]cnt_run;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(36[11:18])
    wire [4:0]state_adj_2121;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(41[11:16])
    wire [2:0]state_back_adj_2122;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(42[12:22])
    wire [8:0]music_cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(47[11:20])
    
    wire recv_done_d0, recv_done_d1, uart_music_mode, n123, n124, 
        n125, n126, n35608, n10323, n7951, n8155, n381, n44, 
        n8142, clk_1s_enable_9, n36252, n36250;
    wire [7:0]music_tone_7__N_1634;
    
    wire n8535, n8533, n5362, n5361, n5360, n5371, n36238, n5370, 
        n5373, n5372, n36236, n5381, n36234, n5380, n5383, n5382, 
        n38188, n36180, n36176, sys_clk_c_enable_336, n36170, n36164, 
        n38284, n36125, n37310, n38278, n38186, n4, n35932, n24, 
        n20, n30, n34, n35810, n36527, n31_adj_1923, n4_adj_1924, 
        n36101, n32746, n30_adj_1925, n37997, n32745, n8, n6_adj_1926, 
        n4_adj_1927, n44_adj_1928, n33, n8445, n38157, sys_clk_c_enable_140, 
        n38260, n38213, sys_clk_c_enable_265, sys_clk_c_enable_27, n38258, 
        n8440, n8458, n37254, n35789, n38199, one_wire_out, n36061, 
        n35942, n33195, n33309, n38178, n35970, n4_adj_1929, n19398, 
        n38176, n4_adj_1930, n4_adj_1931, n6_adj_1932, n36390, n4_adj_1933, 
        n38174, n36381, sys_clk_c_enable_30, n35611, n32744, n4_adj_1934, 
        n32743, n32742, n38171, n38604, n38603, n35698, n38166, 
        n36359, n38163, n32741, n38162, sys_clk_c_enable_240, n32564, 
        n35798, n14608, clk_1s_enable_16, sys_clk_c_enable_380, n38428, 
        n38427, n38426, n38423, n32563, sys_clk_c_enable_149, n32740, 
        n32739, n33370, n6_adj_1935, n39780, n4_adj_1936, n23, n38408, 
        n32738, n32737, n32736, n32735, n37683, n37682, n10, n37681, 
        n12, n4_adj_1937, n37162, n38602, n6_adj_1938, sys_clk_c_enable_36, 
        n38389, n4_adj_1939, sys_clk_c_enable_84, n32724, n38219, 
        n4_adj_1940, n32723, n32722, n4_adj_1941, n32721, n10603, 
        n38366, n32714, n32715, n38354, sys_clk_c_enable_58, sys_clk_c_enable_132, 
        n38346, n38345, n38343, n38342, n38340, n38339, n38334, 
        n4_adj_1942, n38328, n35839, n6_adj_1943, n38313, n29419, 
        n11619, n32716, n32713, n29421, n4_adj_1944, n38303;
    
    VHI i32510 (.Z(VCC_net));
    FD1P3AX hour_waning_t_i0_i4 (.D(hour_warning[4]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(hour_waning_t[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i4.GSR = "ENABLED";
    FD1P3AX min_t_i0_i0 (.D(n5907), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i0.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i0 (.D(n5924), .SP(sys_clk_c_enable_132), .CK(sys_clk_c), 
            .Q(sec_t[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i0.GSR = "ENABLED";
    FD1P3AY min_waning_t_i0_i0 (.D(min_warning[0]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(min_waning_t[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i0.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i0 (.D(hour_warning[0]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(hour_waning_t[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i0.GSR = "ENABLED";
    FD1S3AX sec_i0 (.D(sec_7__N_1[0]), .CK(clk_1s), .Q(sec[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i0.GSR = "ENABLED";
    FD1S3AX min_i0 (.D(min_7__N_11[0]), .CK(clk_1s), .Q(min[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam min_i0.GSR = "ENABLED";
    FD1P3AX hour_i0 (.D(hour_7__N_19[0]), .SP(clk_1s_enable_16), .CK(clk_1s), 
            .Q(hour[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i0.GSR = "ENABLED";
    FD1P3AX Temp_H_i0 (.D(ds18b20_data[4]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam Temp_H_i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(warning_time[1]), .B(warning_time[4]), .C(warning_time[3]), 
         .D(warning_time[2]), .Z(n6_adj_1943)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    FD1P3AX hour_waning_t_i0_i3 (.D(hour_warning[3]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(hour_waning_t[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i3.GSR = "ENABLED";
    FD1S3AY min_warning__i0 (.D(n24), .CK(sys_clk_c), .Q(min_warning[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i0.GSR = "ENABLED";
    FD1P3IX warning_time__i0 (.D(n746), .SP(clk_1s_enable_9), .CD(n8533), 
            .CK(clk_1s), .Q(warning_time[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i0.GSR = "ENABLED";
    LUT4 i13_4_lut (.A(uart_music_mode), .B(uart_recv_data[4]), .C(sys_clk_c_enable_84), 
         .D(warning), .Z(music_tone_7__N_1634[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hc0c5;
    ROM128X1A mux_889_Mux_24 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3273)) /* synthesis initstate=0x001010012C1F82FDC3AD02CC0000FBAD */ ;
    defparam mux_889_Mux_24.initval = 128'h001010012C1F82FDC3AD02CC0000FBAD;
    ROM128X1A mux_889_Mux_28 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3269)) /* synthesis initstate=0x001808620D0000023C91810800000491 */ ;
    defparam mux_889_Mux_28.initval = 128'h001808620D0000023C91810800000491;
    ROM128X1A mux_889_Mux_25 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3272)) /* synthesis initstate=0x00100040580020020C42001C00000442 */ ;
    defparam mux_889_Mux_25.initval = 128'h00100040580020020C42001C00000442;
    ROM128X1A mux_889_Mux_26 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3271)) /* synthesis initstate=0x041BA2FA090040003C3001AC00000030 */ ;
    defparam mux_889_Mux_26.initval = 128'h041BA2FA090040003C3001AC00000030;
    FD1P3IX warning_time__i7 (.D(n739), .SP(clk_1s_enable_9), .CD(n8533), 
            .CK(clk_1s), .Q(warning_time[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i7.GSR = "ENABLED";
    FD1P3IX warning_time__i6 (.D(n740), .SP(clk_1s_enable_9), .CD(n8533), 
            .CK(clk_1s), .Q(warning_time[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i6.GSR = "ENABLED";
    FD1P3IX warning_time__i5 (.D(n741), .SP(clk_1s_enable_9), .CD(n8533), 
            .CK(clk_1s), .Q(warning_time[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i5.GSR = "ENABLED";
    FD1P3IX warning_time__i4 (.D(n742), .SP(clk_1s_enable_9), .CD(n8533), 
            .CK(clk_1s), .Q(warning_time[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i4.GSR = "ENABLED";
    FD1P3IX warning_time__i3 (.D(n743), .SP(clk_1s_enable_9), .CD(n8533), 
            .CK(clk_1s), .Q(warning_time[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i3.GSR = "ENABLED";
    FD1P3IX warning_time__i2 (.D(n744), .SP(clk_1s_enable_9), .CD(n8533), 
            .CK(clk_1s), .Q(warning_time[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i2.GSR = "ENABLED";
    FD1P3IX warning_time__i1 (.D(n745), .SP(clk_1s_enable_9), .CD(n8533), 
            .CK(clk_1s), .Q(warning_time[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i1.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i2 (.D(n5922), .SP(sys_clk_c_enable_132), .CK(sys_clk_c), 
            .Q(sec_t[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i2.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i1 (.D(n5923), .SP(sys_clk_c_enable_132), .CK(sys_clk_c), 
            .Q(sec_t[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i1.GSR = "ENABLED";
    FD1P3AX min_t_i0_i7 (.D(n5900), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i7.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i3 (.D(n5921), .SP(sys_clk_c_enable_132), .CK(sys_clk_c), 
            .Q(sec_t[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i3.GSR = "ENABLED";
    ROM128X1A mux_889_Mux_39 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2889)) /* synthesis initstate=0x050D6D04950D7976000400200000EC04 */ ;
    defparam mux_889_Mux_39.initval = 128'h050D6D04950D7976000400200000EC04;
    ROM128X1A mux_889_Mux_37 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2890)) /* synthesis initstate=0x00A5E93E05A7FDFF016980700000FD69 */ ;
    defparam mux_889_Mux_37.initval = 128'h00A5E93E05A7FDFF016980700000FD69;
    ROM128X1A mux_889_Mux_30 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3267)) /* synthesis initstate=0x04A8927EACAA96BD4BEF426800007BEF */ ;
    defparam mux_889_Mux_30.initval = 128'h04A8927EACAA96BD4BEF426800007BEF;
    ROM128X1A mux_889_Mux_22 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3645)) /* synthesis initstate=0x0478923EBE7A96BD836F405000007B6F */ ;
    defparam mux_889_Mux_22.initval = 128'h0478923EBE7A96BD836F405000007B6F;
    ROM128X1A mux_889_Mux_21 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3646)) /* synthesis initstate=0x02831A80029002005C025F1200000002 */ ;
    defparam mux_889_Mux_21.initval = 128'h02831A80029002005C025F1200000002;
    ROM128X1A mux_889_Mux_20 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3647)) /* synthesis initstate=0x0588322212960A03AC160C5800000416 */ ;
    defparam mux_889_Mux_20.initval = 128'h0588322212960A03AC160C5800000416;
    ROM128X1A mux_889_Mux_19 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3648)) /* synthesis initstate=0x00003A40059D63E503C3AC320000CBC3 */ ;
    defparam mux_889_Mux_19.initval = 128'h00003A40059D63E503C3AC320000CBC3;
    ROM128X1A mux_889_Mux_18 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3649)) /* synthesis initstate=0x041FD7BE10102A002C2A0C5A0000002A */ ;
    defparam mux_889_Mux_18.initval = 128'h041FD7BE10102A002C2A0C5A0000002A;
    FD1P3IX min_warning__i7 (.D(n5968), .SP(sys_clk_c_enable_27), .CD(n8539), 
            .CK(sys_clk_c), .Q(min_warning[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i7.GSR = "ENABLED";
    FD1P3IX min_warning__i6 (.D(n5969), .SP(sys_clk_c_enable_27), .CD(n8539), 
            .CK(sys_clk_c), .Q(min_warning[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i6.GSR = "ENABLED";
    FD1P3IX min_warning__i5 (.D(n5970), .SP(sys_clk_c_enable_27), .CD(n8539), 
            .CK(sys_clk_c), .Q(min_warning[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i5.GSR = "ENABLED";
    FD1P3IX min_warning__i4 (.D(n5971), .SP(sys_clk_c_enable_27), .CD(n8539), 
            .CK(sys_clk_c), .Q(min_warning[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i4.GSR = "ENABLED";
    FD1P3IX min_warning__i3 (.D(n5972), .SP(sys_clk_c_enable_27), .CD(n8539), 
            .CK(sys_clk_c), .Q(min_warning[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i3.GSR = "ENABLED";
    FD1S3AY min_warning__i2 (.D(n20), .CK(sys_clk_c), .Q(min_warning[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i2.GSR = "ENABLED";
    FD1P3IX min_warning__i1 (.D(n5974), .SP(sys_clk_c_enable_27), .CD(n8539), 
            .CK(sys_clk_c), .Q(min_warning[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i1.GSR = "ENABLED";
    FD1P3AX min_t_i0_i6 (.D(n5901), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i6.GSR = "ENABLED";
    FD1P3AX min_t_i0_i5 (.D(n5902), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i5.GSR = "ENABLED";
    CCU2D add_1909_5 (.A0(n5301), .B0(n38427), .C0(n5385), .D0(hour_t[2]), 
          .A1(n5301), .B1(n38427), .C1(n21), .D1(hour_t[3]), .CIN(n32714), 
          .COUT(n32715), .S0(n5956), .S1(n5955));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1909_5.INIT0 = 16'he4b1;
    defparam add_1909_5.INIT1 = 16'he4b1;
    defparam add_1909_5.INJECT1_0 = "NO";
    defparam add_1909_5.INJECT1_1 = "NO";
    FD1P3AX sec_t_i0_i7 (.D(n5917), .SP(sys_clk_c_enable_132), .CK(sys_clk_c), 
            .Q(sec_t[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i7.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i2 (.D(hour_warning[2]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(hour_waning_t[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i2.GSR = "ENABLED";
    FD1P3AX min_t_i0_i4 (.D(n5903), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i4.GSR = "ENABLED";
    CCU2D add_1891_9 (.A0(n5199), .B0(n38427), .C0(n5371), .D0(sec_t[6]), 
          .A1(n5199), .B1(n38427), .C1(n5370), .D1(sec_t[7]), .CIN(n32932), 
          .S0(n5918), .S1(n5917));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1891_9.INIT0 = 16'he4b1;
    defparam add_1891_9.INIT1 = 16'he4b1;
    defparam add_1891_9.INJECT1_0 = "NO";
    defparam add_1891_9.INJECT1_1 = "NO";
    CCU2D add_1891_7 (.A0(n5199), .B0(n38427), .C0(n5373), .D0(sec_t[4]), 
          .A1(n5199), .B1(n38427), .C1(n5372), .D1(sec_t[5]), .CIN(n32931), 
          .COUT(n32932), .S0(n5920), .S1(n5919));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1891_7.INIT0 = 16'he4b1;
    defparam add_1891_7.INIT1 = 16'he4b1;
    defparam add_1891_7.INJECT1_0 = "NO";
    defparam add_1891_7.INJECT1_1 = "NO";
    FD1P3AX hour_t_i0_i0 (.D(n5958), .SP(sys_clk_c_enable_149), .CK(sys_clk_c), 
            .Q(hour_t[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i0.GSR = "ENABLED";
    FD1P3AX Temp_H_i6 (.D(hundres_1__N_338_adj_2068[1]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam Temp_H_i6.GSR = "ENABLED";
    CCU2D add_1891_5 (.A0(n5199), .B0(n38427), .C0(n5375), .D0(sec_t[2]), 
          .A1(n5199), .B1(n38427), .C1(n5374), .D1(sec_t[3]), .CIN(n32930), 
          .COUT(n32931), .S0(n5922), .S1(n5921));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1891_5.INIT0 = 16'he4b1;
    defparam add_1891_5.INIT1 = 16'he4b1;
    defparam add_1891_5.INJECT1_0 = "NO";
    defparam add_1891_5.INJECT1_1 = "NO";
    CCU2D add_1891_3 (.A0(n38427), .B0(n5199), .C0(n5377), .D0(sec_t[0]), 
          .A1(n5199), .B1(n38427), .C1(n5376), .D1(sec_t[1]), .CIN(n32929), 
          .COUT(n32930), .S0(n5924), .S1(n5923));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1891_3.INIT0 = 16'hd1e2;
    defparam add_1891_3.INIT1 = 16'he4b1;
    defparam add_1891_3.INJECT1_0 = "NO";
    defparam add_1891_3.INJECT1_1 = "NO";
    FD1P3AX Temp_H_i5 (.D(hundres_1__N_338_adj_2068[0]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam Temp_H_i5.GSR = "ENABLED";
    FD1P3AX Temp_H_i4 (.D(ds18b20_data[8]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam Temp_H_i4.GSR = "ENABLED";
    FD1P3AX Temp_H_i3 (.D(ds18b20_data[7]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam Temp_H_i3.GSR = "ENABLED";
    FD1P3AX Temp_H_i2 (.D(ds18b20_data[6]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam Temp_H_i2.GSR = "ENABLED";
    FD1P3AX Temp_H_i1 (.D(ds18b20_data[5]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam Temp_H_i1.GSR = "ENABLED";
    CCU2D add_1891_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5199), .B1(n38427), .C1(GND_net), .D1(GND_net), .COUT(n32929));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1891_1.INIT0 = 16'hF000;
    defparam add_1891_1.INIT1 = 16'heeee;
    defparam add_1891_1.INJECT1_0 = "NO";
    defparam add_1891_1.INJECT1_1 = "NO";
    FD1S3AX min_i7 (.D(min_7__N_11[7]), .CK(clk_1s), .Q(min[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam min_i7.GSR = "ENABLED";
    FD1S3AX min_i6 (.D(min_7__N_11[6]), .CK(clk_1s), .Q(min[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam min_i6.GSR = "ENABLED";
    FD1S3AX min_i5 (.D(min_7__N_11[5]), .CK(clk_1s), .Q(min[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam min_i5.GSR = "ENABLED";
    FD1S3AX min_i4 (.D(min_7__N_11[4]), .CK(clk_1s), .Q(min[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam min_i4.GSR = "ENABLED";
    FD1S3AX min_i3 (.D(min_7__N_11[3]), .CK(clk_1s), .Q(min[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam min_i3.GSR = "ENABLED";
    FD1S3AX min_i2 (.D(min_7__N_11[2]), .CK(clk_1s), .Q(min[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam min_i2.GSR = "ENABLED";
    FD1S3AX min_i1 (.D(min_7__N_11[1]), .CK(clk_1s), .Q(min[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam min_i1.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i1 (.D(hour_warning[1]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(hour_waning_t[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_256 (.A(n38303), .B(n38343), .C(n35810), .D(n4_adj_1942), 
         .Z(n5250)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_256.init = 16'h5111;
    FD1P3AX min_t_i0_i3 (.D(n5904), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_257 (.A(sw1_c), .B(n36238), .C(n23), .D(n35789), 
         .Z(n4_adj_1942)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_257.init = 16'h5150;
    CCU2D add_1882_9 (.A0(n5250), .B0(n38427), .C0(n5361), .D0(min_t[6]), 
          .A1(n5250), .B1(n38427), .C1(n5360), .D1(min_t[7]), .CIN(n32924), 
          .S0(n5901), .S1(n5900));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1882_9.INIT0 = 16'he4b1;
    defparam add_1882_9.INIT1 = 16'he4b1;
    defparam add_1882_9.INJECT1_0 = "NO";
    defparam add_1882_9.INJECT1_1 = "NO";
    CCU2D add_1882_7 (.A0(n5250), .B0(n38427), .C0(n5363), .D0(min_t[4]), 
          .A1(n5250), .B1(n38427), .C1(n5362), .D1(min_t[5]), .CIN(n32923), 
          .COUT(n32924), .S0(n5903), .S1(n5902));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1882_7.INIT0 = 16'he4b1;
    defparam add_1882_7.INIT1 = 16'he4b1;
    defparam add_1882_7.INJECT1_0 = "NO";
    defparam add_1882_7.INJECT1_1 = "NO";
    FD1P3AX min_t_i0_i2 (.D(n5905), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i2.GSR = "ENABLED";
    CCU2D add_1882_5 (.A0(n5250), .B0(n38427), .C0(n5365), .D0(min_t[2]), 
          .A1(n5250), .B1(n38427), .C1(n5364), .D1(min_t[3]), .CIN(n32922), 
          .COUT(n32923), .S0(n5905), .S1(n5904));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1882_5.INIT0 = 16'he4b1;
    defparam add_1882_5.INIT1 = 16'he4b1;
    defparam add_1882_5.INJECT1_0 = "NO";
    defparam add_1882_5.INJECT1_1 = "NO";
    CCU2D add_1882_3 (.A0(n38427), .B0(n5250), .C0(n5367), .D0(min_t[0]), 
          .A1(n5250), .B1(n38427), .C1(n5366), .D1(min_t[1]), .CIN(n32921), 
          .COUT(n32922), .S0(n5907), .S1(n5906));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1882_3.INIT0 = 16'hd1e2;
    defparam add_1882_3.INIT1 = 16'he4b1;
    defparam add_1882_3.INJECT1_0 = "NO";
    defparam add_1882_3.INJECT1_1 = "NO";
    LUT4 i30563_4_lut (.A(min_t[7]), .B(n36176), .C(n35970), .D(min_t[4]), 
         .Z(n36238)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30563_4_lut.init = 16'hfffe;
    CCU2D add_1882_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5250), .B1(n38427), .C1(GND_net), .D1(GND_net), .COUT(n32921));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1882_1.INIT0 = 16'hF000;
    defparam add_1882_1.INIT1 = 16'heeee;
    defparam add_1882_1.INJECT1_0 = "NO";
    defparam add_1882_1.INJECT1_1 = "NO";
    ROM128X1A mux_889_Mux_17 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3650)) /* synthesis initstate=0x00001001001002005C120F9200000012 */ ;
    defparam mux_889_Mux_17.initval = 128'h00001001001002005C120F9200000012;
    LUT4 i1_4_lut_adj_258 (.A(n38427), .B(min_t[6]), .C(min_t[7]), .D(n32998), 
         .Z(n23)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_258.init = 16'haaa8;
    FD1P3JX uart_send_data_i0_i1 (.D(Temp_H[1]), .SP(sys_clk_c_enable_379), 
            .PD(n29421), .CK(sys_clk_c), .Q(uart_send_data[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i1.GSR = "DISABLED";
    IB sw2_pad (.I(sw2), .O(sw2_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(11[8:11])
    IB sw1_pad (.I(sw1), .O(sw1_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(4[8:17])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    LUT4 i3_4_lut (.A(min_t[4]), .B(min_t[3]), .C(min_t[5]), .D(n30), 
         .Z(n32998)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(63[16:21])
    defparam i3_4_lut.init = 16'h8000;
    OB led_pad (.I(GND_net), .O(led));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(9[13:16])
    CCU2D add_1918_9 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[6]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[7]), 
          .D1(GND_net), .CIN(n32916), .S0(n5969), .S1(n5968));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1918_9.INIT0 = 16'h2d2d;
    defparam add_1918_9.INIT1 = 16'h2d2d;
    defparam add_1918_9.INJECT1_0 = "NO";
    defparam add_1918_9.INJECT1_1 = "NO";
    OB oled_mosi_pad (.I(oled_mosi_c), .O(oled_mosi));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(18[9:18])
    OB oled_sck_pad (.I(oled_sck_c), .O(oled_sck));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(17[9:17])
    OB oled_dc_pad (.I(oled_dc_c), .O(oled_dc));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(16[9:16])
    FD1P3AX min_t_i0_i1 (.D(n5906), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i1.GSR = "ENABLED";
    CCU2D add_1918_7 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[4]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[5]), 
          .D1(GND_net), .CIN(n32915), .COUT(n32916), .S0(n5971), .S1(n5970));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1918_7.INIT0 = 16'h2d2d;
    defparam add_1918_7.INIT1 = 16'h2d2d;
    defparam add_1918_7.INJECT1_0 = "NO";
    defparam add_1918_7.INJECT1_1 = "NO";
    FD1S3AX sec_i4 (.D(sec_7__N_1[4]), .CK(clk_1s), .Q(sec[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i4.GSR = "ENABLED";
    CCU2D add_1918_5 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[2]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[3]), 
          .D1(GND_net), .CIN(n32914), .COUT(n32915), .S0(n5973), .S1(n5972));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1918_5.INIT0 = 16'h2d2d;
    defparam add_1918_5.INIT1 = 16'h2d2d;
    defparam add_1918_5.INJECT1_0 = "NO";
    defparam add_1918_5.INJECT1_1 = "NO";
    OB oled_cs_pad (.I(oled_cs_c), .O(oled_cs));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(15[9:16])
    OB oled_res_pad (.I(oled_res_c), .O(oled_res));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(14[9:17])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(20[10:18])
    LUT4 i30501_4_lut (.A(min_t[2]), .B(min_t[0]), .C(min_t[5]), .D(min_t[6]), 
         .Z(n36176)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30501_4_lut.init = 16'hfffe;
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(19[18:22])
    CCU2D add_1918_3 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[0]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[1]), 
          .D1(GND_net), .CIN(n32913), .COUT(n32914), .S0(n5975), .S1(n5974));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1918_3.INIT0 = 16'hd2d2;
    defparam add_1918_3.INIT1 = 16'h2d2d;
    defparam add_1918_3.INJECT1_0 = "NO";
    defparam add_1918_3.INJECT1_1 = "NO";
    CCU2D add_1918_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre), .B1(key_sec), .C1(GND_net), .D1(GND_net), 
          .COUT(n32913));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1918_1.INIT0 = 16'hF000;
    defparam add_1918_1.INIT1 = 16'h2222;
    defparam add_1918_1.INJECT1_0 = "NO";
    defparam add_1918_1.INJECT1_1 = "NO";
    FD1P3JX uart_send_data_i0_i2 (.D(Temp_H[2]), .SP(sys_clk_c_enable_379), 
            .PD(n29421), .CK(sys_clk_c), .Q(uart_send_data[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i2.GSR = "DISABLED";
    ROM128X1A mux_889_Mux_29 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3268)) /* synthesis initstate=0x075300C0184000000484403800000084 */ ;
    defparam mux_889_Mux_29.initval = 128'h075300C0184000000484403800000084;
    LUT4 i30300_2_lut (.A(min_t[3]), .B(min_t[1]), .Z(n35970)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30300_2_lut.init = 16'heeee;
    LUT4 i1_3_lut (.A(min_t[1]), .B(min_t[2]), .C(min_t[0]), .Z(n30)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(63[16:21])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 mux_3190_i2_3_lut (.A(hundres_0__N_349_adj_1998[3]), .B(hundres_0__N_349_adj_2024[3]), 
         .C(sw1_c), .Z(n11619)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(111[119:149])
    defparam mux_3190_i2_3_lut.init = 16'hcaca;
    LUT4 i31145_3_lut_4_lut (.A(clk_1mhz), .B(n38354), .C(state[0]), .D(state_back_2__N_515[2]), 
         .Z(sys_clk_c_enable_240)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i31145_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_259 (.A(n33370), .B(n38313), .C(n36125), .D(n4_adj_1940), 
         .Z(sys_clk_c_enable_30)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam i1_4_lut_adj_259.init = 16'h4c0c;
    LUT4 i1_2_lut (.A(n381), .B(state_adj_2121[0]), .Z(n4_adj_1940)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    ROM128X1A mux_889_Mux_32 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2895)) /* synthesis initstate=0x0000090417F5797400A800000000E8A8 */ ;
    defparam mux_889_Mux_32.initval = 128'h0000090417F5797400A800000000E8A8;
    ROM128X1A mux_889_Mux_33 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2894)) /* synthesis initstate=0x0000090403EFF9FD832500600000FB25 */ ;
    defparam mux_889_Mux_33.initval = 128'h0000090403EFF9FD832500600000FB25;
    ROM128X1A mux_889_Mux_34 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2893)) /* synthesis initstate=0x07F5690452EFF9FE236104580000FF61 */ ;
    defparam mux_889_Mux_34.initval = 128'h07F5690452EFF9FE236104580000FF61;
    ROM128X1A mux_889_Mux_35 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2892)) /* synthesis initstate=0x02EFE9FC00E7F9FE105128000000FC51 */ ;
    defparam mux_889_Mux_35.initval = 128'h02EFE9FC00E7F9FE105128000000FC51;
    ROM128X1A mux_889_Mux_36 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2891)) /* synthesis initstate=0x02E7E9BC10E7F9FF215104480000FD51 */ ;
    defparam mux_889_Mux_36.initval = 128'h02E7E9BC10E7F9FF215104480000FD51;
    LUT4 i31039_2_lut_3_lut (.A(clk_1mhz), .B(n38354), .C(n36527), .Z(sys_clk_c_enable_336)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i31039_2_lut_3_lut.init = 16'h4040;
    CCU2D add_133_9 (.A0(sec[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32746), 
          .S0(n792));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(216[14:24])
    defparam add_133_9.INIT0 = 16'h5aaa;
    defparam add_133_9.INIT1 = 16'h0000;
    defparam add_133_9.INJECT1_0 = "NO";
    defparam add_133_9.INJECT1_1 = "NO";
    CCU2D add_133_7 (.A0(sec[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32745), 
          .COUT(n32746), .S0(n794), .S1(n793));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(216[14:24])
    defparam add_133_7.INIT0 = 16'h5aaa;
    defparam add_133_7.INIT1 = 16'h5aaa;
    defparam add_133_7.INJECT1_0 = "NO";
    defparam add_133_7.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(Temp_H[5]), .B(Temp_H[4]), .C(Temp_H[6]), .D(n4_adj_1933), 
         .Z(n29419)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i1226_2_lut_rep_483_3_lut (.A(clk_1mhz), .B(n38354), .C(sys_rst_n_c), 
         .Z(n38297)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1226_2_lut_rep_483_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_adj_260 (.A(Temp_H[3]), .B(Temp_H[2]), .Z(n4_adj_1933)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam i1_2_lut_adj_260.init = 16'h8888;
    FD1S3AX sec_i5 (.D(sec_7__N_1[5]), .CK(clk_1s), .Q(sec[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i5.GSR = "ENABLED";
    FD1S3AX sec_i6 (.D(sec_7__N_1[6]), .CK(clk_1s), .Q(sec[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i6.GSR = "ENABLED";
    FD1S3AX sec_i7 (.D(sec_7__N_1[7]), .CK(clk_1s), .Q(sec[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i7.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i6 (.D(n5918), .SP(sys_clk_c_enable_132), .CK(sys_clk_c), 
            .Q(sec_t[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i6.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i7 (.D(min_warning[7]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(min_waning_t[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i7.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i5 (.D(n5919), .SP(sys_clk_c_enable_132), .CK(sys_clk_c), 
            .Q(sec_t[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i5.GSR = "ENABLED";
    ROM128X1A mux_889_Mux_16 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3651)) /* synthesis initstate=0x000012407C1F86FF83EF00D20000FFEF */ ;
    defparam mux_889_Mux_16.initval = 128'h000012407C1F86FF83EF00D20000FFEF;
    FD1P3AX min_waning_t_i0_i6 (.D(min_warning[6]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(min_waning_t[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i6.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i5 (.D(min_warning[5]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(min_waning_t[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i5.GSR = "ENABLED";
    CCU2D add_133_5 (.A0(sec[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32744), 
          .COUT(n32745), .S0(n796), .S1(n795));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(216[14:24])
    defparam add_133_5.INIT0 = 16'h5aaa;
    defparam add_133_5.INIT1 = 16'h5aaa;
    defparam add_133_5.INJECT1_0 = "NO";
    defparam add_133_5.INJECT1_1 = "NO";
    ROM128X1A mux_889_Mux_14 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4023)) /* synthesis initstate=0x04989E3EACA892AD117F11080000597F */ ;
    defparam mux_889_Mux_14.initval = 128'h04989E3EACA892AD117F11080000597F;
    CCU2D add_133_3 (.A0(sec[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32743), 
          .COUT(n32744), .S0(n798), .S1(n797));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(216[14:24])
    defparam add_133_3.INIT0 = 16'h5aaa;
    defparam add_133_3.INIT1 = 16'h5aaa;
    defparam add_133_3.INJECT1_0 = "NO";
    defparam add_133_3.INJECT1_1 = "NO";
    FD1P3AX min_waning_t_i0_i4 (.D(min_warning[4]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(min_waning_t[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i4.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i3 (.D(min_warning[3]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(min_waning_t[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i3.GSR = "ENABLED";
    LUT4 sec_7__I_0_i5_4_lut (.A(n795), .B(sec_t[4]), .C(n38345), .D(n33195), 
         .Z(sec_7__N_1[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i5_4_lut.init = 16'hc0ca;
    ROM128X1A mux_889_Mux_6 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4401)) /* synthesis initstate=0x07226192950679A20004004000004404 */ ;
    defparam mux_889_Mux_6.initval = 128'h07226192950679A20004004000004404;
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(12[18:26])
    ROM128X1A mux_889_Mux_4 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4403)) /* synthesis initstate=0x02E3E1B610EAE1972379045800002F79 */ ;
    defparam mux_889_Mux_4.initval = 128'h02E3E1B610EAE1972379045800002F79;
    ROM128X1A mux_889_Mux_3 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4404)) /* synthesis initstate=0x02E7E1B600E2E1934221280000002621 */ ;
    defparam mux_889_Mux_3.initval = 128'h02E7E1B600E2E1934221280000002621;
    ROM128X1A mux_890_Mux_3 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n124)) /* synthesis initstate=0x0000000091DC0303010384C3F70384C3 */ ;
    defparam mux_890_Mux_3.initval = 128'h0000000091DC0303010384C3F70384C3;
    LUT4 i1_2_lut_rep_464_3_lut_4_lut (.A(clk_1mhz), .B(n38354), .C(state_back_2__N_515[2]), 
         .D(n38334), .Z(n38278)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_464_3_lut_4_lut.init = 16'h4404;
    CCU2D add_133_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n32743), 
          .S1(n799));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(216[14:24])
    defparam add_133_1.INIT0 = 16'hF000;
    defparam add_133_1.INIT1 = 16'h5555;
    defparam add_133_1.INJECT1_0 = "NO";
    defparam add_133_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_261 (.A(state_back_adj_2122[0]), .B(state_adj_2121[0]), 
         .C(n4_adj_1934), .D(n381), .Z(n7951)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam i1_4_lut_adj_261.init = 16'h3233;
    LUT4 i1_2_lut_adj_262 (.A(state_adj_2121[1]), .B(n33370), .Z(n4_adj_1934)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_262.init = 16'hdddd;
    ROM128X1A mux_889_Mux_27 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3270)) /* synthesis initstate=0x011441441A0D096503402D580000CB40 */ ;
    defparam mux_889_Mux_27.initval = 128'h011441441A0D096503402D580000CB40;
    LUT4 i1_3_lut_4_lut (.A(n38428), .B(n38427), .C(sys_clk_c_enable_380), 
         .D(sw1_c), .Z(n35608)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0e00;
    FD1P3IX hour_warning__i7 (.D(n5934), .SP(sys_clk_c_enable_265), .CD(n8535), 
            .CK(sys_clk_c), .Q(hour_warning[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i7.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_489_4_lut (.A(n38428), .B(n38427), .C(sys_clk_c_enable_380), 
         .D(n38345), .Z(n38303)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_rep_489_4_lut.init = 16'hf1f0;
    FD1P3IX hour_warning__i6 (.D(n5935), .SP(sys_clk_c_enable_265), .CD(n8535), 
            .CK(sys_clk_c), .Q(hour_warning[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i6.GSR = "ENABLED";
    LUT4 mux_3189_i2_3_lut (.A(n38186), .B(hundres_0__N_349_adj_2050[3]), 
         .C(sw1_c), .Z(n14608)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(113[119:148])
    defparam mux_3189_i2_3_lut.init = 16'hcaca;
    BB one_wire_pad (.I(one_wire_N_664), .T(n10323), .B(one_wire), .O(one_wire_out));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(63[2] 264[5])
    ROM128X1A mux_890_Mux_1 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n126)) /* synthesis initstate=0x00000000054D4A4A014A244A954A244A */ ;
    defparam mux_890_Mux_1.initval = 128'h00000000054D4A4A014A244A954A244A;
    ROM128X1A mux_890_Mux_2 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n125)) /* synthesis initstate=0x000000005994949451139113B7139113 */ ;
    defparam mux_890_Mux_2.initval = 128'h000000005994949451139113B7139113;
    LUT4 i1_2_lut_rep_444_3_lut_3_lut_4_lut (.A(n38428), .B(n38427), .C(sys_clk_c_enable_380), 
         .D(n38345), .Z(n38258)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_444_3_lut_3_lut_4_lut.init = 16'hfffe;
    FD1S3AX sec_i3 (.D(sec_7__N_1[3]), .CK(clk_1s), .Q(sec[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i3.GSR = "ENABLED";
    CCU2D add_132_9 (.A0(min[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32742), 
          .S0(n782));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(214[14:24])
    defparam add_132_9.INIT0 = 16'h5aaa;
    defparam add_132_9.INIT1 = 16'h0000;
    defparam add_132_9.INJECT1_0 = "NO";
    defparam add_132_9.INJECT1_1 = "NO";
    CCU2D add_132_7 (.A0(min[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32741), 
          .COUT(n32742), .S0(n784), .S1(n783));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(214[14:24])
    defparam add_132_7.INIT0 = 16'h5aaa;
    defparam add_132_7.INIT1 = 16'h5aaa;
    defparam add_132_7.INJECT1_0 = "NO";
    defparam add_132_7.INJECT1_1 = "NO";
    LUT4 i31077_3_lut_3_lut_4_lut (.A(n38428), .B(n38427), .C(sys_clk_c_enable_380), 
         .D(n38345), .Z(sys_clk_c_enable_140)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i31077_3_lut_3_lut_4_lut.init = 16'h0001;
    CCU2D add_132_5 (.A0(min[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32740), 
          .COUT(n32741), .S0(n786), .S1(n785));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(214[14:24])
    defparam add_132_5.INIT0 = 16'h5aaa;
    defparam add_132_5.INIT1 = 16'h5aaa;
    defparam add_132_5.INJECT1_0 = "NO";
    defparam add_132_5.INJECT1_1 = "NO";
    CCU2D add_132_3 (.A0(min[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32739), 
          .COUT(n32740), .S0(n788), .S1(n787));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(214[14:24])
    defparam add_132_3.INIT0 = 16'h5aaa;
    defparam add_132_3.INIT1 = 16'h5aaa;
    defparam add_132_3.INJECT1_0 = "NO";
    defparam add_132_3.INJECT1_1 = "NO";
    FD1P3IX hour_warning__i5 (.D(n5936), .SP(sys_clk_c_enable_265), .CD(n8535), 
            .CK(sys_clk_c), .Q(hour_warning[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i5.GSR = "ENABLED";
    CCU2D add_132_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[0]), .B1(sec[7]), .C1(n18056), .D1(sec[6]), .COUT(n32739), 
          .S1(n789));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(214[14:24])
    defparam add_132_1.INIT0 = 16'hF000;
    defparam add_132_1.INIT1 = 16'h5556;
    defparam add_132_1.INJECT1_0 = "NO";
    defparam add_132_1.INJECT1_1 = "NO";
    CCU2D add_122_9 (.A0(warning_time[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32738), .S0(n739));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(191[22:41])
    defparam add_122_9.INIT0 = 16'h5aaa;
    defparam add_122_9.INIT1 = 16'h0000;
    defparam add_122_9.INJECT1_0 = "NO";
    defparam add_122_9.INJECT1_1 = "NO";
    FD1S3AX sec_i2 (.D(sec_7__N_1[2]), .CK(clk_1s), .Q(sec[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i2.GSR = "ENABLED";
    CCU2D add_122_7 (.A0(warning_time[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32737), .COUT(n32738), .S0(n741), .S1(n740));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(191[22:41])
    defparam add_122_7.INIT0 = 16'h5aaa;
    defparam add_122_7.INIT1 = 16'h5aaa;
    defparam add_122_7.INJECT1_0 = "NO";
    defparam add_122_7.INJECT1_1 = "NO";
    CCU2D add_122_5 (.A0(warning_time[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32736), .COUT(n32737), .S0(n743), .S1(n742));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(191[22:41])
    defparam add_122_5.INIT0 = 16'h5aaa;
    defparam add_122_5.INIT1 = 16'h5aaa;
    defparam add_122_5.INJECT1_0 = "NO";
    defparam add_122_5.INJECT1_1 = "NO";
    FD1P3AX warning_184 (.D(warning_N_213), .SP(warning_time_7__N_176), 
            .CK(clk_1s), .Q(warning));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_184.GSR = "ENABLED";
    FD1S3AX sec_i1 (.D(sec_7__N_1[1]), .CK(clk_1s), .Q(sec[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i1.GSR = "ENABLED";
    CCU2D add_122_3 (.A0(warning_time[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32735), .COUT(n32736), .S0(n745), .S1(n744));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(191[22:41])
    defparam add_122_3.INIT0 = 16'h5aaa;
    defparam add_122_3.INIT1 = 16'h5aaa;
    defparam add_122_3.INJECT1_0 = "NO";
    defparam add_122_3.INJECT1_1 = "NO";
    CCU2D add_122_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(warning_time[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32735), .S1(n746));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(191[22:41])
    defparam add_122_1.INIT0 = 16'hF000;
    defparam add_122_1.INIT1 = 16'h5555;
    defparam add_122_1.INJECT1_0 = "NO";
    defparam add_122_1.INJECT1_1 = "NO";
    FD1P3AX uart_send_data_i0_i7 (.D(n38284), .SP(sys_clk_c_enable_379), 
            .CK(sys_clk_c), .Q(uart_send_data[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i7.GSR = "DISABLED";
    FD1P3AX time_set_174 (.D(n38366), .SP(sys_clk_c_enable_380), .CK(sys_clk_c), 
            .Q(time_set));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam time_set_174.GSR = "ENABLED";
    ROM128X1A mux_890_Mux_5 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n123)) /* synthesis initstate=0x00000000CE03DFDF44DCF5DC48DCF5DC */ ;
    defparam mux_890_Mux_5.initval = 128'h00000000CE03DFDF44DCF5DC48DCF5DC;
    ROM128X1A mux_889_Mux_1 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4406)) /* synthesis initstate=0x0000005007E7E18D8385803000001B85 */ ;
    defparam mux_889_Mux_1.initval = 128'h0000005007E7E18D8385803000001B85;
    ROM128X1A mux_889_Mux_2 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4405)) /* synthesis initstate=0x07E2009052E7E117A305040800002F05 */ ;
    defparam mux_889_Mux_2.initval = 128'h07E2009052E7E117A305040800002F05;
    FD1P3IX hour_warning__i4 (.D(n5937), .SP(sys_clk_c_enable_265), .CD(n8535), 
            .CK(sys_clk_c), .Q(hour_warning[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i4.GSR = "ENABLED";
    FD1P3IX hour_warning__i3 (.D(n5938), .SP(sys_clk_c_enable_265), .CD(n8535), 
            .CK(sys_clk_c), .Q(hour_warning[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i3.GSR = "ENABLED";
    ROM128X1A mux_889_Mux_5 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4402)) /* synthesis initstate=0x02BAE19E01A8E18F0169002000001D69 */ ;
    defparam mux_889_Mux_5.initval = 128'h02BAE19E01A8E18F0169002000001D69;
    ROM128X1A mux_889_Mux_0 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4407)) /* synthesis initstate=0x0000001017F86D6000A800200000C0A8 */ ;
    defparam mux_889_Mux_0.initval = 128'h0000001017F86D6000A800200000C0A8;
    FD1P3IX hour_warning__i2 (.D(n5939), .SP(sys_clk_c_enable_265), .CD(n8535), 
            .CK(sys_clk_c), .Q(hour_warning[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i2.GSR = "ENABLED";
    FD1P3IX hour_warning__i1 (.D(n5940), .SP(sys_clk_c_enable_265), .CD(n8535), 
            .CK(sys_clk_c), .Q(hour_warning[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i1.GSR = "ENABLED";
    CCU2D add_1900_9 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[6]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[7]), 
          .D1(GND_net), .CIN(n32724), .S0(n5935), .S1(n5934));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1900_9.INIT0 = 16'h2d2d;
    defparam add_1900_9.INIT1 = 16'h2d2d;
    defparam add_1900_9.INJECT1_0 = "NO";
    defparam add_1900_9.INJECT1_1 = "NO";
    CCU2D add_1900_7 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[4]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[5]), 
          .D1(GND_net), .CIN(n32723), .COUT(n32724), .S0(n5937), .S1(n5936));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1900_7.INIT0 = 16'h2d2d;
    defparam add_1900_7.INIT1 = 16'h2d2d;
    defparam add_1900_7.INJECT1_0 = "NO";
    defparam add_1900_7.INJECT1_1 = "NO";
    ROM128X1A mux_889_Mux_8 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4029)) /* synthesis initstate=0x000004402C1F86ED93FD012C0000DBFD */ ;
    defparam mux_889_Mux_8.initval = 128'h000004402C1F86ED93FD012C0000DBFD;
    ROM128X1A mux_889_Mux_9 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4028)) /* synthesis initstate=0x0000000070002C120018007C00002418 */ ;
    defparam mux_889_Mux_9.initval = 128'h0000000070002C120018007C00002418;
    ROM128X1A mux_889_Mux_10 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4027)) /* synthesis initstate=0x040DEDAF2500040060B1820C000000B1 */ ;
    defparam mux_889_Mux_10.initval = 128'h040DEDAF2500040060B1820C000000B1;
    ROM128X1A mux_889_Mux_11 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4026)) /* synthesis initstate=0x05020410320D05E4835C2E180000CB5C */ ;
    defparam mux_889_Mux_11.initval = 128'h05020410320D05E4835C2E180000CB5C;
    ROM128X1A mux_889_Mux_12 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4025)) /* synthesis initstate=0x000A0422210044036010022800000410 */ ;
    defparam mux_889_Mux_12.initval = 128'h000A0422210044036010022800000410;
    ROM128X1A mux_889_Mux_13 (.AD0(n38342), .AD1(n38346), .AD2(n2724), 
            .AD3(n38339), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4024)) /* synthesis initstate=0x0361048030460C100210105800002210 */ ;
    defparam mux_889_Mux_13.initval = 128'h0361048030460C100210105800002210;
    CCU2D add_1900_5 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[2]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[3]), 
          .D1(GND_net), .CIN(n32722), .COUT(n32723), .S0(n5939), .S1(n5938));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1900_5.INIT0 = 16'h2d2d;
    defparam add_1900_5.INIT1 = 16'h2d2d;
    defparam add_1900_5.INJECT1_0 = "NO";
    defparam add_1900_5.INJECT1_1 = "NO";
    FD1P3JX uart_send_data_i0_i3 (.D(Temp_H[3]), .SP(sys_clk_c_enable_379), 
            .PD(n29421), .CK(sys_clk_c), .Q(uart_send_data[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i3.GSR = "DISABLED";
    CCU2D add_1900_3 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[0]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[1]), 
          .D1(GND_net), .CIN(n32721), .COUT(n32722), .S0(n5941), .S1(n5940));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1900_3.INIT0 = 16'hd2d2;
    defparam add_1900_3.INIT1 = 16'h2d2d;
    defparam add_1900_3.INJECT1_0 = "NO";
    defparam add_1900_3.INJECT1_1 = "NO";
    LUT4 i19_1_lut (.A(key_mode[0]), .Z(n6)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(91[11:24])
    defparam i19_1_lut.init = 16'h5555;
    LUT4 cnt_1__bdd_3_lut (.A(cnt_adj_2098[1]), .B(cnt_adj_2098[2]), .C(cnt_adj_2098[0]), 
         .Z(n37997)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam cnt_1__bdd_3_lut.init = 16'h2c2c;
    CCU2D add_1900_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre), .B1(key_sec), .C1(GND_net), .D1(GND_net), 
          .COUT(n32721));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1900_1.INIT0 = 16'hF000;
    defparam add_1900_1.INIT1 = 16'h2222;
    defparam add_1900_1.INJECT1_0 = "NO";
    defparam add_1900_1.INJECT1_1 = "NO";
    LUT4 n11048_bdd_3_lut_31378_4_lut (.A(cnt_adj_2098[1]), .B(cnt_adj_2098[2]), 
         .C(cnt_adj_2098[3]), .D(cnt_adj_2098[0]), .Z(n37162)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam n11048_bdd_3_lut_31378_4_lut.init = 16'h011f;
    LUT4 cnt_0__bdd_3_lut_31543_4_lut (.A(cnt_adj_2098[1]), .B(cnt_adj_2098[2]), 
         .C(cnt_adj_2098[4]), .D(cnt_adj_2098[0]), .Z(n37254)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam cnt_0__bdd_3_lut_31543_4_lut.init = 16'h001e;
    LUT4 n11048_bdd_3_lut_31517_4_lut (.A(cnt_adj_2098[1]), .B(cnt_adj_2098[2]), 
         .C(cnt_adj_2098[3]), .D(cnt_adj_2098[0]), .Z(n37310)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam n11048_bdd_3_lut_31517_4_lut.init = 16'h001f;
    FD1P3JX uart_send_data_i0_i4 (.D(Temp_H[4]), .SP(sys_clk_c_enable_379), 
            .PD(n29421), .CK(sys_clk_c), .Q(uart_send_data[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i4.GSR = "DISABLED";
    FD1P3JX uart_send_data_i0_i5 (.D(Temp_H[5]), .SP(sys_clk_c_enable_379), 
            .PD(n29421), .CK(sys_clk_c), .Q(uart_send_data[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i5.GSR = "DISABLED";
    CCU2D equal_2971_16 (.A0(hour[1]), .B0(hour_waning_t[1]), .C0(hour[0]), 
          .D0(hour_waning_t[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32564), .S1(warning_time_7__N_176));
    defparam equal_2971_16.INIT0 = 16'h9009;
    defparam equal_2971_16.INIT1 = 16'hFFFF;
    defparam equal_2971_16.INJECT1_0 = "YES";
    defparam equal_2971_16.INJECT1_1 = "NO";
    CCU2D equal_2971_11 (.A0(min[5]), .B0(min_waning_t[5]), .C0(min[4]), 
          .D0(min_waning_t[4]), .A1(min[3]), .B1(min_waning_t[3]), .C1(min[2]), 
          .D1(min_waning_t[2]), .CIN(n32561), .COUT(n32562));
    defparam equal_2971_11.INIT0 = 16'h9009;
    defparam equal_2971_11.INIT1 = 16'h9009;
    defparam equal_2971_11.INJECT1_0 = "YES";
    defparam equal_2971_11.INJECT1_1 = "YES";
    CCU2D equal_2971_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[7]), .B1(min_waning_t[7]), .C1(min[6]), .D1(min_waning_t[6]), 
          .COUT(n32561));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(188[7:28])
    defparam equal_2971_0.INIT0 = 16'hF000;
    defparam equal_2971_0.INIT1 = 16'h9009;
    defparam equal_2971_0.INJECT1_0 = "NO";
    defparam equal_2971_0.INJECT1_1 = "YES";
    LUT4 i3492_4_lut_3_lut_4_lut (.A(n38219), .B(n83), .C(n38176), .D(hundres_1__N_339_adj_1966[3]), 
         .Z(hundres_0__N_354)) /* synthesis lut_function=(A (C (D))+!A !(B (D)+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(26[14:17])
    defparam i3492_4_lut_3_lut_4_lut.init = 16'hb044;
    LUT4 i20722_2_lut_rep_385_3_lut (.A(n38219), .B(n83), .C(hundres_1__N_339_adj_1966[3]), 
         .Z(n38199)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(26[14:17])
    defparam i20722_2_lut_rep_385_3_lut.init = 16'hb0b0;
    FD1P3AX sec_t_i0_i4 (.D(n5920), .SP(sys_clk_c_enable_132), .CK(sys_clk_c), 
            .Q(sec_t[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i4.GSR = "ENABLED";
    IB key3_pad (.I(key3), .O(key3_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(7[8:12])
    IB key2_pad (.I(key2), .O(key2_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(6[8:12])
    IB key1_pad (.I(key1), .O(key1_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(5[8:12])
    LUT4 i1_4_lut_3_lut (.A(n38219), .B(n83), .C(hundres_1__N_339_adj_1966[3]), 
         .Z(hundres_0__N_346_adj_1970[0])) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(26[14:17])
    defparam i1_4_lut_3_lut.init = 16'h6262;
    FD1P3AY min_waning_t_i0_i2 (.D(min_warning[2]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(min_waning_t[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i2.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i1 (.D(min_warning[1]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(min_waning_t[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i1.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i7 (.D(hour_warning[7]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(hour_waning_t[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i7.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i6 (.D(hour_warning[6]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(hour_waning_t[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i6.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i5 (.D(hour_warning[5]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .Q(hour_waning_t[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i5.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i1 (.D(n5957), .SP(sys_clk_c_enable_149), .CK(sys_clk_c), 
            .Q(hour_t[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i1.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i2 (.D(n5956), .SP(sys_clk_c_enable_149), .CK(sys_clk_c), 
            .Q(hour_t[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i2.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i3 (.D(n5955), .SP(sys_clk_c_enable_149), .CK(sys_clk_c), 
            .Q(hour_t[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i3.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i4 (.D(n5954), .SP(sys_clk_c_enable_149), .CK(sys_clk_c), 
            .Q(hour_t[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i4.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i5 (.D(n5953), .SP(sys_clk_c_enable_149), .CK(sys_clk_c), 
            .Q(hour_t[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i5.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i6 (.D(n5952), .SP(sys_clk_c_enable_149), .CK(sys_clk_c), 
            .Q(hour_t[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i6.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i7 (.D(n5951), .SP(sys_clk_c_enable_149), .CK(sys_clk_c), 
            .Q(hour_t[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i7.GSR = "ENABLED";
    CCU2D add_1909_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5301), .B1(n38427), .C1(GND_net), .D1(GND_net), .COUT(n32713));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1909_1.INIT0 = 16'hF000;
    defparam add_1909_1.INIT1 = 16'heeee;
    defparam add_1909_1.INJECT1_0 = "NO";
    defparam add_1909_1.INJECT1_1 = "NO";
    CCU2D add_1909_9 (.A0(n5301), .B0(n38427), .C0(n5381), .D0(hour_t[6]), 
          .A1(n5301), .B1(n38427), .C1(n5380), .D1(hour_t[7]), .CIN(n32716), 
          .S0(n5952), .S1(n5951));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1909_9.INIT0 = 16'he4b1;
    defparam add_1909_9.INIT1 = 16'he4b1;
    defparam add_1909_9.INJECT1_0 = "NO";
    defparam add_1909_9.INJECT1_1 = "NO";
    LUT4 n12_bdd_4_lut_4_lut_then_4_lut (.A(cnt_adj_2098[4]), .B(cnt_adj_2098[1]), 
         .C(cnt_adj_2098[2]), .D(cnt_adj_2098[3]), .Z(n38603)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam n12_bdd_4_lut_4_lut_then_4_lut.init = 16'h0082;
    LUT4 n12_bdd_4_lut_4_lut_else_4_lut (.A(cnt_adj_2098[4]), .B(cnt_adj_2098[1]), 
         .C(cnt_adj_2098[2]), .D(cnt_adj_2098[3]), .Z(n38602)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B+(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam n12_bdd_4_lut_4_lut_else_4_lut.init = 16'h547e;
    PFUMX i31544 (.BLUT(n37682), .ALUT(n37681), .C0(cnt_adj_2098[4]), 
          .Z(n37683));
    LUT4 i1_2_lut_rep_609 (.A(key_mode[1]), .B(key_mode[2]), .Z(n38423)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_rep_609.init = 16'h2222;
    LUT4 i1_2_lut_3_lut (.A(key_mode[1]), .B(key_mode[2]), .C(key_mode[0]), 
         .Z(n35839)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut_adj_263 (.A(key_mode[1]), .B(key_mode[2]), .C(key_mode[0]), 
         .Z(n35810)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_3_lut_adj_263.init = 16'h0202;
    LUT4 i1_2_lut_rep_612 (.A(key_mode[1]), .B(key_mode[2]), .Z(n38426)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_612.init = 16'heeee;
    LUT4 i1_2_lut_rep_531_3_lut (.A(key_mode[1]), .B(key_mode[2]), .C(key_mode[0]), 
         .Z(n38345)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_531_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_264 (.A(key_mode[1]), .B(key_mode[2]), .C(sw1_c), 
         .Z(n4_adj_1944)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_264.init = 16'hefef;
    LUT4 i31083_4_lut_4_lut (.A(n38343), .B(sys_clk_c_enable_380), .C(n35839), 
         .D(sw1_c), .Z(sys_clk_c_enable_27)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i31083_4_lut_4_lut.init = 16'h0200;
    LUT4 i31080_4_lut_4_lut (.A(n38343), .B(sys_clk_c_enable_380), .C(n4_adj_1944), 
         .D(key_mode[0]), .Z(sys_clk_c_enable_265)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i31080_4_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_470 (.A(warning_TEM), .B(n29419), .Z(n38284)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam i1_2_lut_rep_470.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_3_lut (.A(warning_TEM), .B(n29419), .C(warning), 
         .Z(sys_clk_c_enable_278)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hb8b8;
    LUT4 sec_7__I_0_i1_4_lut (.A(n799), .B(sec_t[0]), .C(n38345), .D(n33195), 
         .Z(sec_7__N_1[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i1_4_lut.init = 16'hc0ca;
    LUT4 i2_3_lut (.A(sec[7]), .B(sec[6]), .C(n18056), .Z(n33195)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut_adj_265 (.A(n6_adj_1921), .B(sec[5]), .C(sec[4]), .D(sec[3]), 
         .Z(n18056)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_265.init = 16'h8000;
    LUT4 n35752_bdd_4_lut (.A(n38389), .B(n29419), .C(warning_TEM), .D(warning), 
         .Z(sys_clk_c_enable_379)) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;
    defparam n35752_bdd_4_lut.init = 16'ha280;
    LUT4 i3529_3_lut (.A(sec[0]), .B(sec[2]), .C(sec[1]), .Z(n6_adj_1921)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i3529_3_lut.init = 16'hecec;
    FD1P3JX uart_send_data_i0_i6 (.D(Temp_H[6]), .SP(sys_clk_c_enable_379), 
            .PD(n29421), .CK(sys_clk_c), .Q(uart_send_data[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i6.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_266 (.A(n33309), .B(min[6]), .C(n789), .D(min[7]), 
         .Z(n35698)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_266.init = 16'h0010;
    FD1P3IX key_mode_2973__i1 (.D(n19), .SP(sys_clk_c_enable_380), .CD(n24954), 
            .CK(sys_clk_c), .Q(key_mode[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam key_mode_2973__i1.GSR = "ENABLED";
    FD1P3IX key_mode_2973__i2 (.D(n18), .SP(sys_clk_c_enable_380), .CD(n24954), 
            .CK(sys_clk_c), .Q(key_mode[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam key_mode_2973__i2.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_267 (.A(min[5]), .B(min[4]), .C(n6_adj_1926), .D(min[3]), 
         .Z(n33309)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_267.init = 16'h8000;
    LUT4 i20850_4_lut (.A(min_warning[2]), .B(n8539), .C(n5973), .D(sys_clk_c_enable_27), 
         .Z(n20)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i20850_4_lut.init = 16'h3022;
    LUT4 i2_3_lut_rep_481 (.A(min[7]), .B(n33309), .C(min[6]), .Z(n38295)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(26[14:17])
    defparam i2_3_lut_rep_481.init = 16'hfefe;
    BCD_U5 bcd_hour_warning (.\hour_warning[2] (hour_warning[2]), .\hour_warning[1] (hour_warning[1]), 
           .n4(n4), .n8142(n8142), .\hundres_0__N_349[3] (hundres_0__N_349_adj_2024[3]), 
           .n4_adj_10(n4_adj_1927), .\hour_warning[3] (hour_warning[3]), 
           .\hour_warning[4] (hour_warning[4]), .\hundres_0__N_346[1] (hundres_0__N_346_adj_2022[1]), 
           .hundres_0__N_354(hundres_0__N_354_adj_1917), .\hundres_1__N_340[1] (hundres_1__N_340_adj_2020[1]), 
           .n38157(n38157), .\hour_warning_ones[2] (hour_warning_ones[2]), 
           .\hour_warning[7] (hour_warning[7]), .n38163(n38163), .n38174(n38174), 
           .\hundres_0__N_349[1] (hundres_0__N_349_adj_2024[1]), .\hour_warning[5] (hour_warning[5]), 
           .\hour_warning[6] (hour_warning[6])) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(269[7] 275[3])
    LUT4 i2_3_lut_rep_446_4_lut (.A(sys_rst_n_c), .B(n38340), .C(state_back_2__N_515[2]), 
         .D(n35865), .Z(n38260)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_rep_446_4_lut.init = 16'hffdf;
    FD1P3IX hour_warning__i0 (.D(n5941), .SP(sys_clk_c_enable_265), .CD(n8535), 
            .CK(sys_clk_c), .Q(hour_warning[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i0.GSR = "ENABLED";
    LUT4 i3526_3_lut (.A(min[0]), .B(min[2]), .C(min[1]), .Z(n6_adj_1926)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i3526_3_lut.init = 16'hecec;
    LUT4 i2_4_lut_adj_268 (.A(hour[7]), .B(n8), .C(n38408), .D(hour[4]), 
         .Z(n837)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_268.init = 16'hfefa;
    LUT4 i31019_2_lut_2_lut (.A(warning_time_7__N_176), .B(warning_N_213), 
         .Z(clk_1s_enable_9)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i31019_2_lut_2_lut.init = 16'hdddd;
    KEY_U1 key_1 (.sys_clk_c(sys_clk_c), .key1_c(key1_c), .n38258(n38258), 
           .n38423(n38423), .sys_clk_c_enable_132(sys_clk_c_enable_132), 
           .GND_net(GND_net), .\key_mode[0] (key_mode[0]), .n38426(n38426), 
           .n38427(n38427), .n38428(n38428), .\min_t[0] (min_t[0]), .n35698(n35698), 
           .\min_7__N_11[0] (min_7__N_11[0]), .\hour_t[0] (hour_t[0]), .n837(n837), 
           .\hour_7__N_19[0] (hour_7__N_19[0]), .n38295(n38295), .clk_1s_enable_16(clk_1s_enable_16), 
           .n24958(n24958), .n35839(n35839), .n38343(n38343), .sys_clk_c_enable_380(sys_clk_c_enable_380), 
           .n38366(n38366), .n24954(n24954), .sw1_c(sw1_c), .n38303(n38303), 
           .sys_clk_c_enable_149(sys_clk_c_enable_149), .n38345(n38345), 
           .sys_clk_c_enable_58(sys_clk_c_enable_58), .min({min}), .n5359({n5360, 
           n5361, n5362, n5363, n5364, n5365, n5366, n5367}), 
           .sec({sec}), .n5369({n5370, n5371, n5372, n5373, n5374, 
           n5375, n5376, n5377}), .hour({hour}), .n5385(n5385), .n21(n21), 
           .n5381(n5381), .n5380(n5380), .n5383(n5383), .n5382(n5382), 
           .n5387(n5387), .n5386(n5386)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(39[6] 44[3])
    \divide(WIDTH=32,N=12000000)_U2  devide_1s (.clk_1s(clk_1s), .sys_clk_c(sys_clk_c), 
            .GND_net(GND_net), .n20600(n20600)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(30[37] 36[3])
    LUT4 i31049_4_lut (.A(n38292), .B(rx_flag), .C(n31), .D(n38328), 
         .Z(sys_clk_c_enable_49)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam i31049_4_lut.init = 16'h3f3b;
    LUT4 i27262_2_lut (.A(key_mode[1]), .B(key_mode[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i27262_2_lut.init = 16'h6666;
    LUT4 i27269_3_lut (.A(key_mode[2]), .B(key_mode[1]), .C(key_mode[0]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i27269_3_lut.init = 16'h6a6a;
    LUT4 i1_4_lut_adj_269 (.A(n38303), .B(n38343), .C(n35802), .D(n4_adj_1939), 
         .Z(n5301)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_269.init = 16'h5111;
    CCU2D equal_2971_15 (.A0(hour[5]), .B0(hour_waning_t[5]), .C0(hour[4]), 
          .D0(hour_waning_t[4]), .A1(hour[3]), .B1(hour_waning_t[3]), 
          .C1(hour[2]), .D1(hour_waning_t[2]), .CIN(n32563), .COUT(n32564));
    defparam equal_2971_15.INIT0 = 16'h9009;
    defparam equal_2971_15.INIT1 = 16'h9009;
    defparam equal_2971_15.INJECT1_0 = "YES";
    defparam equal_2971_15.INJECT1_1 = "YES";
    CCU2D equal_2971_13 (.A0(min[1]), .B0(min_waning_t[1]), .C0(min[0]), 
          .D0(min_waning_t[0]), .A1(hour[7]), .B1(hour_waning_t[7]), .C1(hour[6]), 
          .D1(hour_waning_t[6]), .CIN(n32562), .COUT(n32563));
    defparam equal_2971_13.INIT0 = 16'h9009;
    defparam equal_2971_13.INIT1 = 16'h9009;
    defparam equal_2971_13.INJECT1_0 = "YES";
    defparam equal_2971_13.INJECT1_1 = "YES";
    LUT4 i1_4_lut_adj_270 (.A(n38426), .B(n33), .C(n36236), .D(n35789), 
         .Z(n4_adj_1939)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_270.init = 16'h4544;
    LUT4 i1_4_lut_adj_271 (.A(n38427), .B(n36061), .C(hour_t[6]), .D(n44_adj_1928), 
         .Z(n33)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_271.init = 16'haaa8;
    LUT4 i30561_4_lut (.A(n36061), .B(n36170), .C(hour_t[3]), .D(hour_t[1]), 
         .Z(n36236)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30561_4_lut.init = 16'hfffe;
    FD1P3IX uart_en_188 (.D(n39780), .SP(sys_clk_c_enable_278), .CD(n20600), 
            .CK(sys_clk_c), .Q(uart_en));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_en_188.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_272 (.A(hour_t[4]), .B(hour_t[3]), .C(hour_t[2]), 
         .D(n4_adj_1936), .Z(n44_adj_1928)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_272.init = 16'ha888;
    LUT4 i1_2_lut_adj_273 (.A(hour_t[1]), .B(hour_t[0]), .Z(n4_adj_1936)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_273.init = 16'h8888;
    LUT4 i30495_4_lut (.A(hour_t[2]), .B(hour_t[4]), .C(hour_t[0]), .D(hour_t[6]), 
         .Z(n36170)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30495_4_lut.init = 16'hfffe;
    LUT4 i30387_2_lut (.A(hour_t[5]), .B(hour_t[7]), .Z(n36061)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30387_2_lut.init = 16'heeee;
    FD1P3IX hour_i1 (.D(hour_t[1]), .SP(clk_1s_enable_16), .CD(n24958), 
            .CK(clk_1s), .Q(hour[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_274 (.A(sw1_c), .B(key_mode[0]), .Z(n35802)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_274.init = 16'h4444;
    KEY_U0 key_2 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre), .key_sec(key_sec), 
           .key2_c(key2_c), .GND_net(GND_net), .n38427(n38427)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(47[6] 52[3])
    LUT4 i3_3_lut_4_lut (.A(warning), .B(sys_clk_c_enable_84), .C(n36125), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_36)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam i3_3_lut_4_lut.init = 16'h0200;
    LUT4 i30451_4_lut (.A(state_adj_2121[1]), .B(state_adj_2121[0]), .C(n19240), 
         .D(cnt_run[0]), .Z(n36125)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;
    defparam i30451_4_lut.init = 16'heaee;
    LUT4 cnt_0__bdd_4_lut_31736 (.A(cnt_adj_2098[0]), .B(cnt_adj_2098[3]), 
         .C(cnt_adj_2098[1]), .D(cnt_adj_2098[2]), .Z(n37681)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_31736.init = 16'h0311;
    LUT4 i1_4_lut_adj_275 (.A(n38303), .B(n38343), .C(n38423), .D(n6_adj_1938), 
         .Z(n5199)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_275.init = 16'h5111;
    LUT4 i2_4_lut_adj_276 (.A(n34), .B(n35802), .C(n36234), .D(n35789), 
         .Z(n6_adj_1938)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_276.init = 16'h8c88;
    LUT4 i1_4_lut_adj_277 (.A(n38427), .B(n31_adj_1923), .C(sec_t[7]), 
         .D(sec_t[6]), .Z(n34)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_277.init = 16'haaa8;
    LUT4 i30559_4_lut (.A(sec_t[1]), .B(n36164), .C(n35942), .D(sec_t[0]), 
         .Z(n36234)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30559_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_278 (.A(sec_t[3]), .B(sec_t[4]), .C(sec_t[5]), .D(n30_adj_1925), 
         .Z(n31_adj_1923)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_278.init = 16'h8000;
    LUT4 i1_3_lut_adj_279 (.A(sec_t[2]), .B(sec_t[1]), .C(sec_t[0]), .Z(n30_adj_1925)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut_adj_279.init = 16'heaea;
    LUT4 i30489_4_lut (.A(sec_t[2]), .B(sec_t[4]), .C(sec_t[7]), .D(sec_t[6]), 
         .Z(n36164)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30489_4_lut.init = 16'hfffe;
    LUT4 i30279_2_lut (.A(sec_t[3]), .B(sec_t[5]), .Z(n35942)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30279_2_lut.init = 16'heeee;
    LUT4 cnt_0__bdd_3_lut_31737 (.A(cnt_adj_2098[0]), .B(cnt_adj_2098[1]), 
         .C(cnt_adj_2098[2]), .Z(n37682)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam cnt_0__bdd_3_lut_31737.init = 16'h4040;
    FD1P3IX hour_i2 (.D(hour_t[2]), .SP(clk_1s_enable_16), .CD(n24958), 
            .CK(clk_1s), .Q(hour[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i2.GSR = "ENABLED";
    FD1P3IX hour_i3 (.D(hour_t[3]), .SP(clk_1s_enable_16), .CD(n24958), 
            .CK(clk_1s), .Q(hour[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i3.GSR = "ENABLED";
    FD1P3IX hour_i4 (.D(hour_t[4]), .SP(clk_1s_enable_16), .CD(n24958), 
            .CK(clk_1s), .Q(hour[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i4.GSR = "ENABLED";
    FD1P3IX hour_i5 (.D(hour_t[5]), .SP(clk_1s_enable_16), .CD(n24958), 
            .CK(clk_1s), .Q(hour[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i5.GSR = "ENABLED";
    FD1P3IX hour_i6 (.D(hour_t[6]), .SP(clk_1s_enable_16), .CD(n24958), 
            .CK(clk_1s), .Q(hour[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i6.GSR = "ENABLED";
    FD1P3IX hour_i7 (.D(hour_t[7]), .SP(clk_1s_enable_16), .CD(n24958), 
            .CK(clk_1s), .Q(hour[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i7.GSR = "ENABLED";
    LUT4 i19033_4_lut (.A(n38295), .B(min_t[7]), .C(n38345), .D(n782), 
         .Z(min_7__N_11[7])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(25[14:17])
    defparam i19033_4_lut.init = 16'hc5c0;
    LUT4 i19028_4_lut (.A(n38295), .B(min_t[6]), .C(n38345), .D(n783), 
         .Z(min_7__N_11[6])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(25[14:17])
    defparam i19028_4_lut.init = 16'hc5c0;
    LUT4 i19032_4_lut (.A(n38295), .B(min_t[5]), .C(n38345), .D(n784), 
         .Z(min_7__N_11[5])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(25[14:17])
    defparam i19032_4_lut.init = 16'hc5c0;
    LUT4 i19030_4_lut (.A(n38295), .B(min_t[4]), .C(n38345), .D(n785), 
         .Z(min_7__N_11[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(25[14:17])
    defparam i19030_4_lut.init = 16'hc5c0;
    LUT4 i19027_4_lut (.A(n38295), .B(min_t[3]), .C(n38345), .D(n786), 
         .Z(min_7__N_11[3])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(25[14:17])
    defparam i19027_4_lut.init = 16'hc5c0;
    LUT4 i19031_4_lut (.A(n38295), .B(min_t[2]), .C(n38345), .D(n787), 
         .Z(min_7__N_11[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(25[14:17])
    defparam i19031_4_lut.init = 16'hc5c0;
    LUT4 i19029_4_lut (.A(n38295), .B(min_t[1]), .C(n38345), .D(n788), 
         .Z(min_7__N_11[1])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(25[14:17])
    defparam i19029_4_lut.init = 16'hc5c0;
    LUT4 i1_3_lut_adj_280 (.A(min[7]), .B(min[5]), .C(min[6]), .Z(n83)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(26[14:17])
    defparam i1_3_lut_adj_280.init = 16'ha8a8;
    LUT4 sec_7__I_0_i6_4_lut (.A(n794), .B(sec_t[5]), .C(n38345), .D(n33195), 
         .Z(sec_7__N_1[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i6_4_lut.init = 16'hc0ca;
    LUT4 i25895_4_lut (.A(n793), .B(sec_t[6]), .C(n38345), .D(n33195), 
         .Z(sec_7__N_1[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(25[14:17])
    defparam i25895_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i8_4_lut (.A(n792), .B(sec_t[7]), .C(n38345), .D(n33195), 
         .Z(sec_7__N_1[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i8_4_lut.init = 16'hc0ca;
    LUT4 i20529_4_lut (.A(min_warning[0]), .B(n8539), .C(n5975), .D(sys_clk_c_enable_27), 
         .Z(n24)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i20529_4_lut.init = 16'h3022;
    LUT4 i3_4_lut_adj_281 (.A(n35608), .B(n44), .C(key_mode[0]), .D(n38423), 
         .Z(n8539)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i3_4_lut_adj_281.init = 16'h0800;
    PFUMX mux_3189_i4 (.BLUT(n8445), .ALUT(n8449), .C0(sw1_c), .Z(n7453));
    PFUMX mux_3189_i3 (.BLUT(n4_adj_1941), .ALUT(n4_adj_1931), .C0(sw1_c), 
          .Z(n19398));
    LUT4 i1_4_lut_adj_282 (.A(n35798), .B(n38427), .C(min_warning[7]), 
         .D(n4_adj_1930), .Z(n44)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_282.init = 16'heeea;
    LUT4 i6_4_lut (.A(n35789), .B(n36250), .C(min_warning[5]), .D(min_warning[2]), 
         .Z(n35798)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i6_4_lut.init = 16'h0002;
    PFUMX mux_3190_i4 (.BLUT(n8454), .ALUT(n8458), .C0(sw1_c), .Z(n7443));
    PFUMX mux_3190_i3 (.BLUT(n4_adj_1929), .ALUT(n4_adj_1927), .C0(sw1_c), 
          .Z(n19395));
    LUT4 i31123_4_lut_rep_552 (.A(key_mode[2]), .B(sw1_c), .C(key_mode[1]), 
         .D(key_mode[0]), .Z(n38366)) /* synthesis lut_function=(!(A+(B (C)+!B (C (D))))) */ ;
    defparam i31123_4_lut_rep_552.init = 16'h0515;
    LUT4 i1_4_lut_adj_283 (.A(min_warning[5]), .B(min_warning[6]), .C(n6_adj_1932), 
         .D(min_warning[3]), .Z(n4_adj_1930)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_283.init = 16'heccc;
    LUT4 i30575_4_lut (.A(min_warning[3]), .B(min_warning[4]), .C(min_warning[1]), 
         .D(n36101), .Z(n36250)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30575_4_lut.init = 16'hfffe;
    PFUMX mux_3190_i1 (.BLUT(hour_tens[0]), .ALUT(hour_warning_tens[0]), 
          .C0(sw1_c), .Z(n7446));
    LUT4 i1_3_lut_4_lut_adj_284 (.A(cnt_adj_2098[0]), .B(cnt_adj_2098[1]), 
         .C(cnt_adj_2098[2]), .D(cnt_adj_2098[3]), .Z(n4_adj_1937)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam i1_3_lut_4_lut_adj_284.init = 16'hfe00;
    LUT4 i1_2_lut_rep_575 (.A(clk_1s), .B(sys_rst_n_c), .Z(n38389)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam i1_2_lut_rep_575.init = 16'h8888;
    LUT4 i30427_3_lut (.A(min_warning[7]), .B(min_warning[6]), .C(min_warning[0]), 
         .Z(n36101)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30427_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_adj_285 (.A(min_warning[4]), .B(min_warning[2]), .C(min_warning[1]), 
         .D(min_warning[0]), .Z(n6_adj_1932)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i2_4_lut_adj_285.init = 16'ha888;
    LUT4 i2_2_lut_3_lut_4_lut (.A(clk_1s), .B(sys_rst_n_c), .C(n29419), 
         .D(warning_TEM), .Z(n29421)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 m1_lut (.Z(n39780)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i3_4_lut_adj_286 (.A(n38426), .B(n35608), .C(n12), .D(key_mode[0]), 
         .Z(n8535)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i3_4_lut_adj_286.init = 16'h4000;
    LUT4 i1_4_lut_adj_287 (.A(n35789), .B(n10), .C(n36252), .D(n35932), 
         .Z(n12)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_287.init = 16'hccce;
    LUT4 i1_4_lut_adj_288 (.A(hour_warning[7]), .B(n38427), .C(n6_adj_1935), 
         .D(hour_warning[6]), .Z(n10)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_288.init = 16'hccc8;
    LUT4 i30577_4_lut (.A(hour_warning[4]), .B(hour_warning[2]), .C(hour_warning[3]), 
         .D(n36180), .Z(n36252)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30577_4_lut.init = 16'hfffe;
    LUT4 i30269_2_lut (.A(hour_warning[1]), .B(hour_warning[5]), .Z(n35932)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30269_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_289 (.A(hour_warning[5]), .B(hour_warning[4]), .C(hour_warning[3]), 
         .D(n33008), .Z(n6_adj_1935)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i2_4_lut_adj_289.init = 16'heeea;
    LUT4 i2_3_lut_adj_290 (.A(hour_warning[2]), .B(hour_warning[0]), .C(hour_warning[1]), 
         .Z(n33008)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i2_3_lut_adj_290.init = 16'h8080;
    LUT4 i30505_3_lut (.A(hour_warning[7]), .B(hour_warning[0]), .C(hour_warning[6]), 
         .Z(n36180)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30505_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_adj_291 (.A(recv_done_d0), .B(warning), .C(recv_done_d1), 
         .D(sys_rst_n_c), .Z(n35611)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam i2_4_lut_adj_291.init = 16'hc400;
    LUT4 sec_7__I_0_i4_4_lut (.A(n796), .B(sec_t[3]), .C(n38345), .D(n33195), 
         .Z(sec_7__N_1[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i4_4_lut.init = 16'hc0ca;
    PFUMX i31930 (.BLUT(n38602), .ALUT(n38603), .C0(cnt_adj_2098[0]), 
          .Z(n38604));
    LUT4 sec_7__I_0_i3_4_lut (.A(n797), .B(sec_t[2]), .C(n38345), .D(n33195), 
         .Z(sec_7__N_1[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i3_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i2_4_lut (.A(n798), .B(sec_t[1]), .C(n38345), .D(n33195), 
         .Z(sec_7__N_1[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i2_4_lut.init = 16'hc0ca;
    BCD_U6 bcd_hour (.n4(n4), .n38174(n38174), .\hundres_0__N_349[1] (hundres_0__N_349_adj_2024[1]), 
           .\hundres_1__N_340[1] (hundres_1__N_340_adj_2020[1]), .n38157(n38157), 
           .\hour_warning_ones[3] (hour_warning_ones[3]), .\hour_warning_tens[0] (hour_warning_tens[0]), 
           .n8142(n8142), .\hundres_0__N_349[3] (hundres_0__N_349_adj_1998[3]), 
           .n4_adj_9(n4_adj_1929), .hour({hour}), .\hour_ones[3] (hour_ones[3]), 
           .\hour_tens[0] (hour_tens[0]), .n38408(n38408), .\hour_ones[2] (hour_ones[2]), 
           .\hour_warning[1] (hour_warning[1]), .hundres_0__N_354(hundres_0__N_354_adj_1913), 
           .\min_tens[0] (min_tens[0]), .\min_warning_tens[0] (min_warning_tens[0]), 
           .sw1_c(sw1_c), .\hour_warning[0] (hour_warning[0]), .n8(n8), 
           .n8454(n8454), .\cnt_main[0] (cnt_main_adj_2093[0]), .n36390(n36390), 
           .n7450(n7450)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(261[6] 267[3])
    BCD_U3 bcd_min_warning (.\min_warning[5] (min_warning[5]), .\min_warning[6] (min_warning[6]), 
           .\min_warning[7] (min_warning[7]), .\min_warning[2] (min_warning[2]), 
           .\hundres_0__N_349[3] (hundres_0__N_349_adj_2050[3]), .\min_warning[3] (min_warning[3]), 
           .hundres_0__N_354(hundres_0__N_354_adj_1919), .\min_warning[4] (min_warning[4]), 
           .n8155(n8155), .n4(n4_adj_1931), .n8449(n8449), .\min_warning[1] (min_warning[1]), 
           .\min_warning_ones[3] (min_warning_ones[3]), .\min_warning_ones[1] (min_warning_ones[1]), 
           .\min_warning_tens[0] (min_warning_tens[0]), .\min_warning_ones[2] (min_warning_ones[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(277[7] 283[3])
    BCD_U7 bcd_T (.\cnt_main[0] (cnt_main_adj_2093[0]), .n7470(n7470), .n36381(n36381), 
           .n38213(n38213), .\ds18b20_data[5] (ds18b20_data[5]), .\hundres_0__N_349[1] (hundres_0__N_349_adj_2076[1]), 
           .n10603(n10603), .n38188(n38188), .n38178(n38178), .\ds18b20_data[8] (ds18b20_data[8]), 
           .\hundres_1__N_338[0] (hundres_1__N_338_adj_2068[0]), .\hundres_1__N_338[1] (hundres_1__N_338_adj_2068[1]), 
           .\Tem_high[0] (Tem_high[0]), .\ds18b20_data[7] (ds18b20_data[7]), 
           .\ds18b20_data[6] (ds18b20_data[6]), .\Tem_high[2] (Tem_high[2]), 
           .n7472(n7472), .n36359(n36359)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(292[5] 298[3])
    BCD_U4 bcd_min (.n38186(n38186), .\hundres_0__N_346[0] (hundres_0__N_346_adj_1970[0]), 
           .n8155(n8155), .n38199(n38199), .n8445(n8445), .\min[1] (min[1]), 
           .\min_ones[1] (min_ones[1]), .\min_ones[3] (min_ones[3]), .\min_tens[0] (min_tens[0]), 
           .\min_ones[2] (min_ones[2]), .n38176(n38176), .\min[4] (min[4]), 
           .\min[6] (min[6]), .\min[5] (min[5]), .\min[7] (min[7]), .\hundres_1__N_339[3] (hundres_1__N_339_adj_1966[3]), 
           .\min[2] (min[2]), .\min[3] (min[3]), .n38219(n38219)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(253[6] 259[3])
    CCU2D add_1909_7 (.A0(n5301), .B0(n38427), .C0(n5383), .D0(hour_t[4]), 
          .A1(n5301), .B1(n38427), .C1(n5382), .D1(hour_t[5]), .CIN(n32715), 
          .COUT(n32716), .S0(n5954), .S1(n5953));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1909_7.INIT0 = 16'he4b1;
    defparam add_1909_7.INIT1 = 16'he4b1;
    defparam add_1909_7.INJECT1_0 = "NO";
    defparam add_1909_7.INJECT1_1 = "NO";
    CCU2D add_1909_3 (.A0(n38427), .B0(n5301), .C0(n5387), .D0(hour_t[0]), 
          .A1(n5301), .B1(n38427), .C1(n5386), .D1(hour_t[1]), .CIN(n32713), 
          .COUT(n32714), .S0(n5958), .S1(n5957));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1909_3.INIT0 = 16'hd1e2;
    defparam add_1909_3.INIT1 = 16'he4b1;
    defparam add_1909_3.INJECT1_0 = "NO";
    defparam add_1909_3.INJECT1_1 = "NO";
    Beeper m_beep (.GND_net(GND_net), .beep_c(beep_c), .sys_clk_c(sys_clk_c), 
           .\music_tone[3] (music_tone[3]), .\music_tone[1] (music_tone[1]), 
           .\music_tone[2] (music_tone[2]), .\music_tone[4] (music_tone[4]), 
           .\music_tone[0] (music_tone[0]), .sw2_c(sw2_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(420[9] 426[2])
    FD1P3JX uart_send_data_i0_i0 (.D(Temp_H[0]), .SP(sys_clk_c_enable_379), 
            .PD(n29421), .CK(sys_clk_c), .Q(uart_send_data[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i0.GSR = "DISABLED";
    GSR GSR_INST (.GSR(sys_rst_n_c));
    FD1P3IX key_mode_2973__i0 (.D(n6), .SP(sys_clk_c_enable_380), .CD(n24954), 
            .CK(sys_clk_c), .Q(key_mode[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam key_mode_2973__i0.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    LUT4 i3194_1_lut (.A(warning_time_7__N_176), .Z(n8533)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(188[7:28])
    defparam i3194_1_lut.init = 16'h5555;
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i31187_4_lut (.A(warning_time[5]), .B(warning_time[7]), .C(warning_time[6]), 
         .D(n6_adj_1943), .Z(warning_N_213)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i31187_4_lut.init = 16'h0001;
    music_play m_music_play (.\state[0] (state_adj_2121[0]), .sys_clk_c(sys_clk_c), 
            .sys_clk_c_enable_30(sys_clk_c_enable_30), .n7951(n7951), .recv_done_d1(recv_done_d1), 
            .recv_done_d0(recv_done_d0), .\cnt_run[0] (cnt_run[0]), .\state[1] (state_adj_2121[1]), 
            .\music_tone[0] (music_tone[0]), .\state_back[0] (state_back_adj_2122[0]), 
            .sys_clk_c_enable_36(sys_clk_c_enable_36), .uart_recv_done(uart_recv_done), 
            .n33370(n33370), .n381(n381), .GND_net(GND_net), .warning_TEM(warning_TEM), 
            .sys_clk_c_enable_84(sys_clk_c_enable_84), .uart_music_mode(uart_music_mode), 
            .\music_tone[4] (music_tone[4]), .\music_tone_7__N_1634[4] (music_tone_7__N_1634[4]), 
            .\music_tone[3] (music_tone[3]), .\music_tone[2] (music_tone[2]), 
            .\music_tone[1] (music_tone[1]), .n39780(n39780), .n19240(n19240), 
            .music_cnt({Open_0, Open_1, Open_2, Open_3, music_cnt[4:0]}), 
            .n125(n125), .warning(warning), .\music_cnt[5] (music_cnt[5]), 
            .\music_cnt[6] (music_cnt[6]), .n38313(n38313), .n126(n126), 
            .uart_recv_data({uart_recv_data}), .n35611(n35611), .n123(n123), 
            .sys_rst_n_c(sys_rst_n_c), .n124(n124)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(437[13] 450[6])
    KEY key_3 (.GND_net(GND_net), .sys_clk_c(sys_clk_c), .key3_c(key3_c), 
        .n38428(n38428), .key_sec(key_sec), .key_sec_pre(key_sec_pre), 
        .n35789(n35789), .n38343(n38343)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(55[6] 60[3])
    DS18B20Z u_DS18B20Z (.\state[0] (state[0]), .GND_net(GND_net), .\state_back_2__N_515[2] (state_back_2__N_515[2]), 
            .clk_1mhz(clk_1mhz), .sys_clk_c(sys_clk_c), .n38297(n38297), 
            .n38260(n38260), .one_wire_N_664(one_wire_N_664), .n38354(n38354), 
            .n38334(n38334), .n35865(n35865), .\hundres_1__N_338[1] (hundres_1__N_338_adj_2068[1]), 
            .\hundres_1__N_338[0] (hundres_1__N_338_adj_2068[0]), .\ds18b20_data[8] (ds18b20_data[8]), 
            .\ds18b20_data[7] (ds18b20_data[7]), .\ds18b20_data[6] (ds18b20_data[6]), 
            .\ds18b20_data[5] (ds18b20_data[5]), .\ds18b20_data[4] (ds18b20_data[4]), 
            .sys_clk_c_enable_240(sys_clk_c_enable_240), .one_wire_out(one_wire_out), 
            .n38340(n38340), .sys_rst_n_c(sys_rst_n_c), .n38278(n38278), 
            .n36527(n36527), .n10323(n10323), .sys_clk_c_enable_336(sys_clk_c_enable_336)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(300[11] 306[2])
    BCD bcd_sec (.\hundres_0__N_346[0] (hundres_0__N_346[0]), .n4(n4_adj_1924), 
        .\sec[1] (sec[1]), .n38171(n38171), .\hundres_0__N_349[1] (hundres_0__N_349[1]), 
        .\hundres_0__N_349[2] (hundres_0__N_349[2]), .n38158(n38158), .\sec[5] (sec[5]), 
        .\sec[6] (sec[6]), .\sec[7] (sec[7]), .\sec[2] (sec[2]), .n38166(n38166), 
        .\sec[3] (sec[3]), .\sec[4] (sec[4]), .n8440(n8440), .n38162(n38162), 
        .\hundres_0__N_346[1] (hundres_0__N_346[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(245[6] 251[3])
    uart_send u_uart_send (.sys_clk_c(sys_clk_c), .uart_en(uart_en), .uart_txd_c(uart_txd_c), 
            .uart_send_data({uart_send_data}), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(347[11] 356[2])
    \uart_recv(CLK_FREQ=12000000)  u_uart_recv (.sys_clk_c(sys_clk_c), .sys_clk_c_enable_49(sys_clk_c_enable_49), 
            .rx_flag(rx_flag), .uart_recv_done(uart_recv_done), .uart_rxd_c(uart_rxd_c), 
            .n38292(n38292), .n38328(n38328), .uart_recv_data({uart_recv_data}), 
            .n31(n31), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(411[1] 418[6])
    OLED12832 oled1 (.sys_clk_c(sys_clk_c), .n37162(n37162), .cnt({Open_4, 
            Open_5, Open_6, Open_7, Open_8, Open_9, Open_10, Open_11, 
            Open_12, Open_13, Open_14, cnt_adj_2098[4:0]}), .oled_cs_c(oled_cs_c), 
            .oled_dc_c(oled_dc_c), .GND_net(GND_net), .\cnt_main[0] (cnt_main_adj_2093[0]), 
            .sw1_c(sw1_c), .n4028(n4028), .n4406(n4406), .n3267(n3267), 
            .n4023(n4023), .n3645(n3645), .n4401(n4401), .\hundres_0__N_349[1] (hundres_0__N_349[1]), 
            .\hundres_0__N_349[2] (hundres_0__N_349[2]), .n38162(n38162), 
            .n38158(n38158), .\sec[1] (sec[1]), .n7472(n7472), .n7470(n7470), 
            .n38171(n38171), .\sec[0] (sec[0]), .n38166(n38166), .n8440(n8440), 
            .\hundres_0__N_346[0] (hundres_0__N_346[0]), .n4(n4_adj_1924), 
            .\hundres_0__N_346[1] (hundres_0__N_346[1]), .n3272(n3272), 
            .n3650(n3650), .n4024(n4024), .n4402(n4402), .n3646(n3646), 
            .n3268(n3268), .n4403(n4403), .n4025(n4025), .n3269(n3269), 
            .n3647(n3647), .n2720(n2720), .n2889(n2889), .n2724(n2724), 
            .n2721(n2721), .n2891(n2891), .n38342(n38342), .n38339(n38339), 
            .n38346(n38346), .n2722(n2722), .warning_TEM(warning_TEM), 
            .n38604(n38604), .n4029(n4029), .n4407(n4407), .n2894(n2894), 
            .n3273(n3273), .n3651(n3651), .\Tem_high[2] (Tem_high[2]), 
            .\min[0] (min[0]), .\min_warning[0] (min_warning[0]), .n2893(n2893), 
            .n3271(n3271), .n3649(n3649), .n4027(n4027), .n4405(n4405), 
            .n7450(n7450), .n8155(n8155), .n14608(n14608), .n8142(n8142), 
            .n11619(n11619), .\hundres_0__N_346[0]_adj_1 (hundres_0__N_346_adj_1970[0]), 
            .n38186(n38186), .n4_adj_2(n4_adj_1941), .n7453(n7453), .n19398(n19398), 
            .n19395(n19395), .n38188(n38188), .\ds18b20_data[5] (ds18b20_data[5]), 
            .\hundres_0__N_349[1]_adj_3 (hundres_0__N_349_adj_2076[1]), .n38178(n38178), 
            .n38213(n38213), .n10603(n10603), .n2895(n2895), .n4026(n4026), 
            .n4404(n4404), .n37997(n37997), .n38163(n38163), .\hundres_0__N_349[3] (hundres_0__N_349_adj_2024[3]), 
            .\hundres_0__N_346[1]_adj_4 (hundres_0__N_346_adj_2022[1]), .n8458(n8458), 
            .\ds18b20_data[4] (ds18b20_data[4]), .n7443(n7443), .n37310(n37310), 
            .n7446(n7446), .n36390(n36390), .n37254(n37254), .n2890(n2890), 
            .n36381(n36381), .n36359(n36359), .n3270(n3270), .n3648(n3648), 
            .n2892(n2892), .\hour_ones[2] (hour_ones[2]), .\hour_warning_ones[2] (hour_warning_ones[2]), 
            .\hour_ones[3] (hour_ones[3]), .\hour_warning_ones[3] (hour_warning_ones[3]), 
            .\min_ones[2] (min_ones[2]), .\min_warning_ones[2] (min_warning_ones[2]), 
            .\min_ones[3] (min_ones[3]), .\min_warning_ones[3] (min_warning_ones[3]), 
            .hundres_0__N_354(hundres_0__N_354_adj_1913), .hundres_0__N_354_adj_5(hundres_0__N_354_adj_1917), 
            .hundres_0__N_354_adj_6(hundres_0__N_354), .hundres_0__N_354_adj_7(hundres_0__N_354_adj_1919), 
            .\min_ones[1] (min_ones[1]), .\min_warning_ones[1] (min_warning_ones[1]), 
            .n4_adj_8(n4_adj_1937), .\Tem_high[0] (Tem_high[0]), .time_set(time_set), 
            .n37683(n37683), .oled_mosi_c(oled_mosi_c), .oled_sck_c(oled_sck_c), 
            .oled_res_c(oled_res_c), .sys_rst_n_c(sys_rst_n_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(363[12] 394[3])
    
endmodule
//
// Verilog Description of module BCD_U5
//

module BCD_U5 (\hour_warning[2] , \hour_warning[1] , n4, n8142, \hundres_0__N_349[3] , 
            n4_adj_10, \hour_warning[3] , \hour_warning[4] , \hundres_0__N_346[1] , 
            hundres_0__N_354, \hundres_1__N_340[1] , n38157, \hour_warning_ones[2] , 
            \hour_warning[7] , n38163, n38174, \hundres_0__N_349[1] , 
            \hour_warning[5] , \hour_warning[6] ) /* synthesis syn_module_defined=1 */ ;
    input \hour_warning[2] ;
    input \hour_warning[1] ;
    output n4;
    input n8142;
    output \hundres_0__N_349[3] ;
    output n4_adj_10;
    input \hour_warning[3] ;
    input \hour_warning[4] ;
    output \hundres_0__N_346[1] ;
    output hundres_0__N_354;
    output \hundres_1__N_340[1] ;
    input n38157;
    output \hour_warning_ones[2] ;
    input \hour_warning[7] ;
    output n38163;
    output n38174;
    output \hundres_0__N_349[1] ;
    input \hour_warning[5] ;
    input \hour_warning[6] ;
    
    
    wire n38194, n39773, n39774, n38225, n39775, n38191, n38172;
    wire [3:0]hundres_1__N_339;
    
    wire n38317, n38159;
    wire [3:0]hundres_1__N_338;
    
    wire n38570, n38569, n38285, n38238, n38268, n38215;
    wire [3:0]hundres_1__N_340;
    
    wire n38390, n38206;
    
    LUT4 i3460_2_lut_3_lut (.A(\hour_warning[2] ), .B(n38194), .C(\hour_warning[1] ), 
         .Z(n4)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3460_2_lut_3_lut.init = 16'hf6f6;
    PFUMX i32506 (.BLUT(n39773), .ALUT(n39774), .C0(n38225), .Z(n39775));
    LUT4 i1_3_lut_4_lut (.A(n38191), .B(n38172), .C(n8142), .D(\hundres_0__N_349[3] ), 
         .Z(n4_adj_10)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i3901_2_lut_rep_345_3_lut_4_lut_4_lut (.A(hundres_1__N_339[3]), .B(n38191), 
         .C(\hundres_0__N_349[3] ), .D(n38317), .Z(n38159)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i3901_2_lut_rep_345_3_lut_4_lut_4_lut.init = 16'hf2fc;
    LUT4 i4378_2_lut_rep_392_4_lut_4_lut_then_4_lut (.A(\hour_warning[3] ), 
         .B(\hour_warning[4] ), .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), 
         .Z(n38570)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4378_2_lut_rep_392_4_lut_4_lut_then_4_lut.init = 16'h2524;
    LUT4 i4378_2_lut_rep_392_4_lut_4_lut_else_4_lut (.A(\hour_warning[3] ), 
         .B(\hour_warning[4] ), .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), 
         .Z(n38569)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4378_2_lut_rep_392_4_lut_4_lut_else_4_lut.init = 16'h959a;
    LUT4 i4428_3_lut_4_lut_3_lut_4_lut (.A(n38285), .B(\hour_warning[4] ), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(hundres_1__N_339[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4428_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3462_4_lut (.A(n38159), .B(n39775), .C(\hundres_0__N_346[1] ), 
         .D(n38317), .Z(hundres_0__N_354)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3462_4_lut.init = 16'hb3a0;
    LUT4 i12190_2_lut_rep_424_3_lut_4_lut (.A(n38285), .B(\hour_warning[4] ), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(n38238)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i12190_2_lut_rep_424_3_lut_4_lut.init = 16'heee0;
    LUT4 i3370_3_lut_rep_454 (.A(n38285), .B(\hour_warning[4] ), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(n38268)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3370_3_lut_rep_454.init = 16'hffe0;
    LUT4 i4414_3_lut_4_lut (.A(n38285), .B(\hour_warning[4] ), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(hundres_1__N_339[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4414_3_lut_4_lut.init = 16'h998a;
    LUT4 i4370_2_lut_rep_366_4_lut_4_lut_then_4_lut (.A(\hour_warning[4] ), 
         .B(n38285), .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), 
         .Z(n39774)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i4370_2_lut_rep_366_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    LUT4 i4370_2_lut_rep_366_4_lut_4_lut_else_4_lut (.A(\hour_warning[4] ), 
         .B(n38285), .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), 
         .Z(n39773)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4370_2_lut_rep_366_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i3373_3_lut_rep_401_4_lut (.A(hundres_1__N_338[1]), .B(n38238), 
         .C(hundres_1__N_339[1]), .D(n38225), .Z(n38215)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3373_3_lut_rep_401_4_lut.init = 16'hf666;
    LUT4 i4400_3_lut_rep_377_4_lut_3_lut_4_lut (.A(hundres_1__N_338[1]), .B(n38238), 
         .C(hundres_1__N_339[1]), .D(n38225), .Z(n38191)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4400_3_lut_rep_377_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4393_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_338[1]), .B(n38238), 
         .C(hundres_1__N_339[1]), .D(n38225), .Z(hundres_1__N_340[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4393_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4391_2_lut_rep_411_3_lut (.A(\hour_warning[4] ), .B(n38268), .C(\hour_warning[3] ), 
         .Z(n38225)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4391_2_lut_rep_411_3_lut.init = 16'hf6f6;
    LUT4 i4386_3_lut_4_lut (.A(\hour_warning[4] ), .B(n38268), .C(\hour_warning[3] ), 
         .D(n38215), .Z(\hundres_1__N_340[1] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4386_3_lut_4_lut.init = 16'h6966;
    LUT4 i4309_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38194), .C(\hour_warning[1] ), 
         .D(n38157), .Z(\hour_warning_ones[2] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4309_3_lut_4_lut.init = 16'h6966;
    LUT4 i4357_2_lut_rep_349_3_lut_3_lut_4_lut (.A(n38390), .B(\hour_warning[7] ), 
         .C(n38191), .D(hundres_1__N_339[3]), .Z(n38163)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i4357_2_lut_rep_349_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i4365_3_lut_4_lut_3_lut_4_lut (.A(n38390), .B(\hour_warning[7] ), 
         .C(n38191), .D(hundres_1__N_339[3]), .Z(\hundres_0__N_346[1] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4365_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i3533_2_lut_rep_358_3_lut_4_lut (.A(n38390), .B(\hour_warning[7] ), 
         .C(n38191), .D(hundres_1__N_339[3]), .Z(n38172)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3533_2_lut_rep_358_3_lut_4_lut.init = 16'h8880;
    LUT4 i12196_2_lut_rep_360_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38206), 
         .C(\hundres_1__N_340[1] ), .D(hundres_1__N_340[2]), .Z(n38174)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i12196_2_lut_rep_360_3_lut_4_lut.init = 16'heee0;
    LUT4 i4351_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38206), 
         .C(\hundres_1__N_340[1] ), .D(hundres_1__N_340[2]), .Z(\hundres_0__N_349[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4351_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3375_3_lut_rep_380 (.A(\hour_warning[2] ), .B(n38206), .C(\hundres_1__N_340[1] ), 
         .D(hundres_1__N_340[2]), .Z(n38194)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3375_3_lut_rep_380.init = 16'hffe0;
    LUT4 i4337_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38206), .C(\hundres_1__N_340[1] ), 
         .D(hundres_1__N_340[2]), .Z(\hundres_0__N_349[1] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4337_3_lut_4_lut.init = 16'h998c;
    LUT4 i3473_2_lut_rep_576 (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .Z(n38390)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3473_2_lut_rep_576.init = 16'heeee;
    LUT4 i4288_3_lut_4_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_338[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4288_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i3535_2_lut_rep_503_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n38317)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3535_2_lut_rep_503_3_lut.init = 16'he0e0;
    LUT4 i13963_2_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_338[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i13963_2_lut_3_lut.init = 16'h1010;
    LUT4 i4280_2_lut_rep_471_3_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n38285)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4280_2_lut_rep_471_3_lut_3_lut.init = 16'h4a4a;
    PFUMX i31908 (.BLUT(n38569), .ALUT(n38570), .C0(n38285), .Z(n38206));
    
endmodule
//
// Verilog Description of module KEY_U1
//

module KEY_U1 (sys_clk_c, key1_c, n38258, n38423, sys_clk_c_enable_132, 
            GND_net, \key_mode[0] , n38426, n38427, n38428, \min_t[0] , 
            n35698, \min_7__N_11[0] , \hour_t[0] , n837, \hour_7__N_19[0] , 
            n38295, clk_1s_enable_16, n24958, n35839, n38343, sys_clk_c_enable_380, 
            n38366, n24954, sw1_c, n38303, sys_clk_c_enable_149, n38345, 
            sys_clk_c_enable_58, min, n5359, sec, n5369, hour, n5385, 
            n21, n5381, n5380, n5383, n5382, n5387, n5386) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input key1_c;
    input n38258;
    input n38423;
    output sys_clk_c_enable_132;
    input GND_net;
    input \key_mode[0] ;
    input n38426;
    input n38427;
    input n38428;
    input \min_t[0] ;
    input n35698;
    output \min_7__N_11[0] ;
    input \hour_t[0] ;
    input n837;
    output \hour_7__N_19[0] ;
    input n38295;
    output clk_1s_enable_16;
    output n24958;
    input n35839;
    input n38343;
    output sys_clk_c_enable_380;
    input n38366;
    output n24954;
    input sw1_c;
    input n38303;
    output sys_clk_c_enable_149;
    input n38345;
    output sys_clk_c_enable_58;
    input [7:0]min;
    output [7:0]n5359;
    input [7:0]sec;
    output [7:0]n5369;
    input [7:0]hour;
    output n5385;
    output n21;
    output n5381;
    output n5380;
    output n5383;
    output n5382;
    output n5387;
    output n5386;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire key_rst_pre, key_rst, key_sec_pre, key_sec, n38302, n35847;
    wire [17:0]cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire n32801, n32800, n32799, n32798, n32797, n32796, n32795, 
        n32794, n32793, n38341, n36554, sys_clk_c_enable_234, n21_c, 
        n34, n30, n22, n31, n28;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key1_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    LUT4 i31064_4_lut_4_lut (.A(n38258), .B(n38302), .C(n38423), .D(n35847), 
         .Z(sys_clk_c_enable_132)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam i31064_4_lut_4_lut.init = 16'h5575;
    FD1S3IX cnt_2975__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i0.GSR = "ENABLED";
    CCU2D cnt_2975_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32801), .S0(n77[17]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2975_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2975_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2975_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2975_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32800), .COUT(n32801), .S0(n77[15]), .S1(n77[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2975_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2975_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2975_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2975_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32799), .COUT(n32800), .S0(n77[13]), .S1(n77[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2975_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2975_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2975_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_2975_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32798), .COUT(n32799), .S0(n77[11]), .S1(n77[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2975_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2975_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2975_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_2975_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32797), .COUT(n32798), .S0(n77[9]), .S1(n77[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2975_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2975_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2975_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2975_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32796), 
          .COUT(n32797), .S0(n77[7]), .S1(n77[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2975_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2975_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2975_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2975_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32795), 
          .COUT(n32796), .S0(n77[5]), .S1(n77[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2975_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2975_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2975_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_2975_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32794), 
          .COUT(n32795), .S0(n77[3]), .S1(n77[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2975_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2975_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2975_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_2975_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32793), 
          .COUT(n32794), .S0(n77[1]), .S1(n77[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2975_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2975_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2975_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_2975_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32793), .S1(n77[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2975_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2975_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2975_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_488_3_lut_4_lut (.A(\key_mode[0] ), .B(n38426), .C(n38427), 
         .D(n38428), .Z(n38302)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i1_2_lut_rep_488_3_lut_4_lut.init = 16'h000e;
    LUT4 i16263_3_lut_4_lut (.A(\key_mode[0] ), .B(n38426), .C(\min_t[0] ), 
         .D(n35698), .Z(\min_7__N_11[0] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i16263_3_lut_4_lut.init = 16'hf1e0;
    FD1S3IX cnt_2975__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i17.GSR = "ENABLED";
    FD1S3IX cnt_2975__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i16.GSR = "ENABLED";
    FD1S3IX cnt_2975__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i15.GSR = "ENABLED";
    FD1S3IX cnt_2975__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i14.GSR = "ENABLED";
    FD1S3IX cnt_2975__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i13.GSR = "ENABLED";
    FD1S3IX cnt_2975__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i12.GSR = "ENABLED";
    FD1S3IX cnt_2975__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i11.GSR = "ENABLED";
    FD1S3IX cnt_2975__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i10.GSR = "ENABLED";
    FD1S3IX cnt_2975__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i9.GSR = "ENABLED";
    FD1S3IX cnt_2975__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i8.GSR = "ENABLED";
    FD1S3IX cnt_2975__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i7.GSR = "ENABLED";
    FD1S3IX cnt_2975__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i6.GSR = "ENABLED";
    FD1S3IX cnt_2975__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i5.GSR = "ENABLED";
    FD1S3IX cnt_2975__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i4.GSR = "ENABLED";
    FD1S3IX cnt_2975__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i3.GSR = "ENABLED";
    FD1S3IX cnt_2975__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i2.GSR = "ENABLED";
    FD1S3IX cnt_2975__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2975__i1.GSR = "ENABLED";
    LUT4 hour_7__I_0_i1_3_lut_4_lut (.A(\key_mode[0] ), .B(n38426), .C(\hour_t[0] ), 
         .D(n837), .Z(\hour_7__N_19[0] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam hour_7__I_0_i1_3_lut_4_lut.init = 16'he0f1;
    LUT4 i2_2_lut_3_lut_4_lut (.A(\key_mode[0] ), .B(n38426), .C(n837), 
         .D(n38295), .Z(clk_1s_enable_16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\key_mode[0] ), .B(n38426), .C(n837), 
         .D(n38295), .Z(n24958)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 i31065_4_lut (.A(n35839), .B(n38426), .C(n38341), .D(n38343), 
         .Z(n36554)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C)))) */ ;
    defparam i31065_4_lut.init = 16'h0501;
    LUT4 key_sec_pre_I_0_2_lut_rep_615 (.A(key_sec_pre), .B(key_sec), .Z(sys_clk_c_enable_380)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_615.init = 16'h2222;
    LUT4 i1_2_lut_2_lut_3_lut (.A(key_sec_pre), .B(key_sec), .C(n38366), 
         .Z(n24954)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_527_3_lut (.A(key_sec_pre), .B(key_sec), .C(sw1_c), 
         .Z(n38341)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam i1_2_lut_rep_527_3_lut.init = 16'hf2f2;
    LUT4 i1_2_lut_3_lut_4_lut_adj_249 (.A(key_sec_pre), .B(key_sec), .C(\key_mode[0] ), 
         .D(sw1_c), .Z(n35847)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((D)+!C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam i1_2_lut_3_lut_4_lut_adj_249.init = 16'hff2f;
    FD1P3AY key_sec_29 (.D(key1_c), .SP(sys_clk_c_enable_234), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    LUT4 n35847_bdd_4_lut_32093 (.A(n35847), .B(n38303), .C(n38426), .D(n38343), 
         .Z(sys_clk_c_enable_149)) /* synthesis lut_function=(!(A (B+(D))+!A (B (C+!(D))+!B (C (D))))) */ ;
    defparam n35847_bdd_4_lut_32093.init = 16'h0533;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    LUT4 i31067_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(n36554), 
         .D(sys_clk_c_enable_380), .Z(sys_clk_c_enable_58)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i31067_2_lut_3_lut_4_lut_4_lut.init = 16'hf0f1;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(min[7]), .Z(n5359[7])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20710_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(sec[0]), .Z(n5369[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i20710_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_250 (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(hour[2]), .Z(n5385)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_250.init = 16'h0100;
    LUT4 i21278_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(min[4]), .Z(n5359[4])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21278_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21100_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(sec[2]), .Z(n5369[2])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21100_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21101_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(sec[3]), .Z(n5369[3])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21101_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21103_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(sec[5]), .Z(n5369[5])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21103_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21102_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(sec[4]), .Z(n5369[4])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21102_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i17_4_lut (.A(n21_c), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_234)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(cnt[13]), .B(cnt[8]), .Z(n21_c)) /* synthesis lut_function=(A (B)) */ ;
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
    LUT4 i21105_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(sec[7]), .Z(n5369[7])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21105_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21104_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(sec[6]), .Z(n5369[6])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21104_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_251 (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(hour[3]), .Z(n21)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_251.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_252 (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(min[6]), .Z(n5359[6])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_252.init = 16'h0100;
    LUT4 i21276_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(min[2]), .Z(n5359[2])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21276_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21099_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(sec[1]), .Z(n5369[1])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21099_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_253 (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(min[5]), .Z(n5359[5])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_253.init = 16'h0100;
    LUT4 i21277_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(min[3]), .Z(n5359[3])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21277_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20769_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(min[0]), .Z(n5359[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i20769_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21275_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(min[1]), .Z(n5359[1])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i21275_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20812_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(hour[6]), .Z(n5381)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i20812_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20811_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(hour[7]), .Z(n5380)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i20811_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20814_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(hour[4]), .Z(n5383)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i20814_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20813_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(hour[5]), .Z(n5382)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i20813_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_254 (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(hour[0]), .Z(n5387)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_254.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_255 (.A(n38345), .B(n38343), .C(sys_clk_c_enable_380), 
         .D(hour[1]), .Z(n5386)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(65[16:24])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_255.init = 16'h0100;
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000)_U2 
//

module \divide(WIDTH=32,N=12000000)_U2  (clk_1s, sys_clk_c, GND_net, n20600) /* synthesis syn_module_defined=1 */ ;
    output clk_1s;
    input sys_clk_c;
    input GND_net;
    output n20600;
    
    wire clk_1s /* synthesis is_clock=1, SET_AS_NETWORK=clk_1s */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(29[7:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire clkout_N_292, n32792;
    wire [31:0]cnt_p;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(11[19:24])
    wire [31:0]n101;
    
    wire n32791, n32790, n32789, n32788, n32787, n32786, n32785, 
        n32784, n32783, n32782, n32781, n32780, n32779;
    wire [31:0]n200;
    
    wire n32778, n32777, n20572, n36212, n36529, n36210, n36208, 
        n28_adj_1907, n19, n27_adj_1908, n25, n26_adj_1909, n24, 
        n32957, n32956, n32955, n32954, n32953, n32952, n32951, 
        n32950, n32949, n32948, n32947, n32946;
    
    FD1S3AX clk_p_29 (.D(clkout_N_292), .CK(sys_clk_c), .Q(clk_1s)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=37, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D cnt_p_2974_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32792), .S0(n101[31]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_2974_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32791), .COUT(n32792), .S0(n101[29]), 
          .S1(n101[30]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32790), .COUT(n32791), .S0(n101[27]), 
          .S1(n101[28]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32789), .COUT(n32790), .S0(n101[25]), 
          .S1(n101[26]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32788), .COUT(n32789), .S0(n101[23]), 
          .S1(n101[24]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32787), .COUT(n32788), .S0(n101[21]), 
          .S1(n101[22]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32786), .COUT(n32787), .S0(n101[19]), 
          .S1(n101[20]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32785), .COUT(n32786), .S0(n101[17]), 
          .S1(n101[18]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32784), .COUT(n32785), .S0(n101[15]), 
          .S1(n101[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32783), .COUT(n32784), .S0(n101[13]), 
          .S1(n101[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32782), .COUT(n32783), .S0(n101[11]), 
          .S1(n101[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32781), .COUT(n32782), .S0(n101[9]), .S1(n101[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32780), .COUT(n32781), .S0(n101[7]), .S1(n101[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32779), .COUT(n32780), .S0(n101[5]), .S1(n101[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32778), .COUT(n32779), .S0(n101[3]), .S1(n101[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32777), .COUT(n32778), .S0(n101[1]), .S1(n101[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_2974_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_2974_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_2974_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32777), .S1(n101[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_2974_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_2974_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_2974_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_p_2974__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n20572), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n20572), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n20572), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n20572), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n20572), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n20572), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_2974__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n20572), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i1.GSR = "ENABLED";
    LUT4 i31041_3_lut (.A(n36212), .B(n36529), .C(n36210), .Z(n20572)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i31041_3_lut.init = 16'h8080;
    LUT4 i30537_4_lut (.A(n200[1]), .B(cnt_p[11]), .C(n200[2]), .D(n200[3]), 
         .Z(n36212)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30537_4_lut.init = 16'h8000;
    LUT4 i31040_4_lut (.A(n36208), .B(n200[0]), .C(n28_adj_1907), .D(cnt_p[16]), 
         .Z(n36529)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i31040_4_lut.init = 16'h0800;
    LUT4 i30535_4_lut (.A(n200[5]), .B(cnt_p[17]), .C(cnt_p[12]), .D(cnt_p[20]), 
         .Z(n36210)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30535_4_lut.init = 16'h8000;
    LUT4 i30533_4_lut (.A(cnt_p[23]), .B(cnt_p[21]), .C(cnt_p[7]), .D(cnt_p[9]), 
         .Z(n36208)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30533_4_lut.init = 16'h8000;
    LUT4 i10_3_lut (.A(n19), .B(n200[6]), .C(cnt_p[18]), .Z(n28_adj_1907)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i10_3_lut.init = 16'hbfbf;
    LUT4 i1_4_lut (.A(n27_adj_1908), .B(n200[4]), .C(n25), .D(n26_adj_1909), 
         .Z(n19)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i12_4_lut (.A(cnt_p[19]), .B(n24), .C(cnt_p[8]), .D(cnt_p[14]), 
         .Z(n27_adj_1908)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_p[30]), .B(cnt_p[22]), .C(cnt_p[13]), .D(cnt_p[25]), 
         .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(cnt_p[28]), .B(cnt_p[15]), .C(cnt_p[31]), .D(cnt_p[29]), 
         .Z(n26_adj_1909)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt_p[26]), .B(cnt_p[24]), .C(cnt_p[10]), .D(cnt_p[27]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i15111_1_lut (.A(clk_1s), .Z(n20600)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(30[9] 33[14])
    defparam i15111_1_lut.init = 16'h5555;
    FD1S3IX cnt_p_2974__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n20572), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2974__i0.GSR = "ENABLED";
    CCU2D add_27199_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32957), 
          .S0(clkout_N_292));
    defparam add_27199_cout.INIT0 = 16'h0000;
    defparam add_27199_cout.INIT1 = 16'h0000;
    defparam add_27199_cout.INJECT1_0 = "NO";
    defparam add_27199_cout.INJECT1_1 = "NO";
    CCU2D add_27199_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32956), .COUT(n32957));
    defparam add_27199_24.INIT0 = 16'h5555;
    defparam add_27199_24.INIT1 = 16'h5555;
    defparam add_27199_24.INJECT1_0 = "NO";
    defparam add_27199_24.INJECT1_1 = "NO";
    CCU2D add_27199_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32955), .COUT(n32956));
    defparam add_27199_22.INIT0 = 16'h5555;
    defparam add_27199_22.INIT1 = 16'h5555;
    defparam add_27199_22.INJECT1_0 = "NO";
    defparam add_27199_22.INJECT1_1 = "NO";
    CCU2D add_27199_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32954), .COUT(n32955));
    defparam add_27199_20.INIT0 = 16'h5555;
    defparam add_27199_20.INIT1 = 16'h5555;
    defparam add_27199_20.INJECT1_0 = "NO";
    defparam add_27199_20.INJECT1_1 = "NO";
    CCU2D add_27199_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32953), .COUT(n32954));
    defparam add_27199_18.INIT0 = 16'h5555;
    defparam add_27199_18.INIT1 = 16'h5555;
    defparam add_27199_18.INJECT1_0 = "NO";
    defparam add_27199_18.INJECT1_1 = "NO";
    CCU2D add_27199_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32952), .COUT(n32953));
    defparam add_27199_16.INIT0 = 16'h5aaa;
    defparam add_27199_16.INIT1 = 16'h5555;
    defparam add_27199_16.INJECT1_0 = "NO";
    defparam add_27199_16.INJECT1_1 = "NO";
    CCU2D add_27199_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32951), .COUT(n32952));
    defparam add_27199_14.INIT0 = 16'h5aaa;
    defparam add_27199_14.INIT1 = 16'h5555;
    defparam add_27199_14.INJECT1_0 = "NO";
    defparam add_27199_14.INJECT1_1 = "NO";
    CCU2D add_27199_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32950), .COUT(n32951));
    defparam add_27199_12.INIT0 = 16'h5555;
    defparam add_27199_12.INIT1 = 16'h5aaa;
    defparam add_27199_12.INJECT1_0 = "NO";
    defparam add_27199_12.INJECT1_1 = "NO";
    CCU2D add_27199_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32949), .COUT(n32950));
    defparam add_27199_10.INIT0 = 16'h5aaa;
    defparam add_27199_10.INIT1 = 16'h5aaa;
    defparam add_27199_10.INJECT1_0 = "NO";
    defparam add_27199_10.INJECT1_1 = "NO";
    CCU2D add_27199_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32948), .COUT(n32949));
    defparam add_27199_8.INIT0 = 16'h5555;
    defparam add_27199_8.INIT1 = 16'h5aaa;
    defparam add_27199_8.INJECT1_0 = "NO";
    defparam add_27199_8.INJECT1_1 = "NO";
    CCU2D add_27199_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32947), .COUT(n32948));
    defparam add_27199_6.INIT0 = 16'h5555;
    defparam add_27199_6.INIT1 = 16'h5555;
    defparam add_27199_6.INJECT1_0 = "NO";
    defparam add_27199_6.INJECT1_1 = "NO";
    CCU2D add_27199_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32946), .COUT(n32947));
    defparam add_27199_4.INIT0 = 16'h5aaa;
    defparam add_27199_4.INIT1 = 16'h5aaa;
    defparam add_27199_4.INJECT1_0 = "NO";
    defparam add_27199_4.INJECT1_1 = "NO";
    CCU2D add_27199_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n32946));
    defparam add_27199_2.INIT0 = 16'h7000;
    defparam add_27199_2.INIT1 = 16'h5555;
    defparam add_27199_2.INJECT1_0 = "NO";
    defparam add_27199_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module KEY_U0
//

module KEY_U0 (sys_clk_c, key_sec_pre, key_sec, key2_c, GND_net, n38427) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key2_c;
    input GND_net;
    output n38427;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire key_rst_pre, key_rst;
    wire [17:0]cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire n32810, n32809, n32808, n32807, n32806, n32805, n32804, 
        n32803, n32802, sys_clk_c_enable_232, n21, n34, n30, n22, 
        n31, n28;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key2_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1S3IX cnt_2976__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i0.GSR = "ENABLED";
    CCU2D cnt_2976_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32810), .S0(n77[17]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2976_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2976_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2976_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2976_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32809), .COUT(n32810), .S0(n77[15]), .S1(n77[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2976_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2976_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2976_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2976_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32808), .COUT(n32809), .S0(n77[13]), .S1(n77[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2976_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2976_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2976_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_2976_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32807), .COUT(n32808), .S0(n77[11]), .S1(n77[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2976_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2976_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2976_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_2976_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32806), .COUT(n32807), .S0(n77[9]), .S1(n77[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2976_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2976_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2976_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2976_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32805), 
          .COUT(n32806), .S0(n77[7]), .S1(n77[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2976_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2976_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2976_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2976_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32804), 
          .COUT(n32805), .S0(n77[5]), .S1(n77[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2976_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2976_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2976_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_2976_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32803), 
          .COUT(n32804), .S0(n77[3]), .S1(n77[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2976_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2976_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2976_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_2976_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32802), 
          .COUT(n32803), .S0(n77[1]), .S1(n77[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2976_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2976_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2976_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_2976_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32802), .S1(n77[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2976_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2976_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2976_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_2976__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i17.GSR = "ENABLED";
    FD1S3IX cnt_2976__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i16.GSR = "ENABLED";
    FD1S3IX cnt_2976__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i15.GSR = "ENABLED";
    FD1S3IX cnt_2976__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i14.GSR = "ENABLED";
    FD1S3IX cnt_2976__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i13.GSR = "ENABLED";
    FD1S3IX cnt_2976__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i12.GSR = "ENABLED";
    FD1S3IX cnt_2976__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i11.GSR = "ENABLED";
    FD1S3IX cnt_2976__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i10.GSR = "ENABLED";
    FD1S3IX cnt_2976__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i9.GSR = "ENABLED";
    FD1S3IX cnt_2976__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i8.GSR = "ENABLED";
    FD1S3IX cnt_2976__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i7.GSR = "ENABLED";
    FD1S3IX cnt_2976__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i6.GSR = "ENABLED";
    FD1S3IX cnt_2976__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i5.GSR = "ENABLED";
    FD1S3IX cnt_2976__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i4.GSR = "ENABLED";
    FD1S3IX cnt_2976__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i3.GSR = "ENABLED";
    FD1S3IX cnt_2976__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i2.GSR = "ENABLED";
    FD1S3IX cnt_2976__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2976__i1.GSR = "ENABLED";
    LUT4 key_sec_pre_I_0_2_lut_rep_613 (.A(key_sec_pre), .B(key_sec), .Z(n38427)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_613.init = 16'h2222;
    FD1P3AY key_sec_29 (.D(key2_c), .SP(sys_clk_c_enable_232), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_232)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(cnt[13]), .B(cnt[8]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
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
// Verilog Description of module BCD_U6
//

module BCD_U6 (n4, n38174, \hundres_0__N_349[1] , \hundres_1__N_340[1] , 
            n38157, \hour_warning_ones[3] , \hour_warning_tens[0] , n8142, 
            \hundres_0__N_349[3] , n4_adj_9, hour, \hour_ones[3] , \hour_tens[0] , 
            n38408, \hour_ones[2] , \hour_warning[1] , hundres_0__N_354, 
            \min_tens[0] , \min_warning_tens[0] , sw1_c, \hour_warning[0] , 
            n8, n8454, \cnt_main[0] , n36390, n7450) /* synthesis syn_module_defined=1 */ ;
    input n4;
    input n38174;
    input \hundres_0__N_349[1] ;
    input \hundres_1__N_340[1] ;
    output n38157;
    output \hour_warning_ones[3] ;
    output \hour_warning_tens[0] ;
    input n8142;
    output \hundres_0__N_349[3] ;
    output n4_adj_9;
    input [7:0]hour;
    output \hour_ones[3] ;
    output \hour_tens[0] ;
    output n38408;
    output \hour_ones[2] ;
    input \hour_warning[1] ;
    output hundres_0__N_354;
    input \min_tens[0] ;
    input \min_warning_tens[0] ;
    input sw1_c;
    input \hour_warning[0] ;
    output n8;
    output n8454;
    input \cnt_main[0] ;
    output n36390;
    output n7450;
    
    
    wire n39776, n39777, n38223, n39778, n38192, n38173, n38170;
    wire [3:0]hundres_0__N_349;
    
    wire n24815;
    wire [3:0]hundres_1__N_339;
    
    wire n38315, n38160;
    wire [3:0]hundres_1__N_338;
    
    wire n38576, n38575, n38283, n38236, n38266, n24821;
    wire [3:0]hundres_0__N_346;
    
    wire n36389, n36388, n38214;
    wire [3:0]hundres_1__N_340;
    
    wire n38164, n38204;
    
    PFUMX i32508 (.BLUT(n39776), .ALUT(n39777), .C0(n38223), .Z(n39778));
    LUT4 i1_4_lut_rep_343 (.A(n4), .B(n38174), .C(\hundres_0__N_349[1] ), 
         .D(\hundres_1__N_340[1] ), .Z(n38157)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (D)+!B !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(3[21:28])
    defparam i1_4_lut_rep_343.init = 16'hb3ec;
    LUT4 i16_2_lut_3_lut_4_lut (.A(n4), .B(n38174), .C(\hundres_0__N_349[1] ), 
         .D(\hundres_1__N_340[1] ), .Z(\hour_warning_ones[3] )) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(3[21:28])
    defparam i16_2_lut_3_lut_4_lut.init = 16'h5258;
    LUT4 i13_4_lut_4_lut (.A(n4), .B(n38174), .C(\hundres_0__N_349[1] ), 
         .D(\hundres_1__N_340[1] ), .Z(\hour_warning_tens[0] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(3[21:28])
    defparam i13_4_lut_4_lut.init = 16'h936c;
    LUT4 i1_3_lut_4_lut (.A(n38192), .B(n38173), .C(n8142), .D(\hundres_0__N_349[3] ), 
         .Z(n4_adj_9)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i5_2_lut_4_lut_4_lut (.A(n38170), .B(hour[1]), .C(hundres_0__N_349[1]), 
         .D(hundres_0__N_349[2]), .Z(n24815)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i5_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4470_2_lut_3_lut_4_lut (.A(n38170), .B(hour[1]), .C(hundres_0__N_349[1]), 
         .D(hundres_0__N_349[2]), .Z(\hour_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4470_2_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i3478_2_lut_rep_346_3_lut_4_lut_4_lut (.A(hundres_1__N_339[3]), .B(n38192), 
         .C(\hundres_0__N_349[3] ), .D(n38315), .Z(n38160)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i3478_2_lut_rep_346_3_lut_4_lut_4_lut.init = 16'hf2fc;
    LUT4 i4477_3_lut_3_lut_4_lut (.A(n38170), .B(hour[1]), .C(hundres_0__N_349[1]), 
         .D(hundres_0__N_349[2]), .Z(\hour_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4477_3_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4532_2_lut_rep_390_4_lut_4_lut_then_4_lut (.A(hour[3]), .B(hour[4]), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(n38576)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4532_2_lut_rep_390_4_lut_4_lut_then_4_lut.init = 16'h2524;
    LUT4 i4532_2_lut_rep_390_4_lut_4_lut_else_4_lut (.A(hour[3]), .B(hour[4]), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(n38575)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4532_2_lut_rep_390_4_lut_4_lut_else_4_lut.init = 16'h959a;
    LUT4 i4447_2_lut_rep_594 (.A(hour[6]), .B(hour[5]), .Z(n38408)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4447_2_lut_rep_594.init = 16'heeee;
    LUT4 i3532_2_lut_rep_501_3_lut (.A(hour[6]), .B(hour[5]), .C(hour[7]), 
         .Z(n38315)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3532_2_lut_rep_501_3_lut.init = 16'he0e0;
    LUT4 i13957_2_lut_3_lut (.A(hour[6]), .B(hour[5]), .C(hour[7]), .Z(hundres_1__N_338[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i13957_2_lut_3_lut.init = 16'h1010;
    LUT4 i4434_2_lut_rep_469_3_lut_3_lut (.A(hour[6]), .B(hour[5]), .C(hour[7]), 
         .Z(n38283)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4434_2_lut_rep_469_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i4442_3_lut_4_lut_3_lut (.A(hour[6]), .B(hour[5]), .C(hour[7]), 
         .Z(hundres_1__N_338[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4442_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i4582_3_lut_4_lut_3_lut_4_lut (.A(n38283), .B(hour[4]), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(hundres_1__N_339[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4582_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12178_2_lut_rep_422_3_lut_4_lut (.A(n38283), .B(hour[4]), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(n38236)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i12178_2_lut_rep_422_3_lut_4_lut.init = 16'heee0;
    LUT4 i3398_3_lut_rep_452 (.A(n38283), .B(hour[4]), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(n38266)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3398_3_lut_rep_452.init = 16'hffe0;
    LUT4 i4568_3_lut_4_lut (.A(n38283), .B(hour[4]), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(hundres_1__N_339[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4568_3_lut_4_lut.init = 16'h998a;
    LUT4 i4463_3_lut_4_lut (.A(n38170), .B(hour[1]), .C(hundres_0__N_349[1]), 
         .D(hundres_0__N_349[2]), .Z(\hour_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4463_3_lut_4_lut.init = 16'h998a;
    LUT4 i7_2_lut (.A(n38157), .B(\hour_warning[1] ), .Z(n24821)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(68[16:28])
    defparam i7_2_lut.init = 16'h6666;
    LUT4 i3477_4_lut (.A(n38160), .B(n39778), .C(hundres_0__N_346[1]), 
         .D(n38315), .Z(hundres_0__N_354)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3477_4_lut.init = 16'hb3a0;
    LUT4 i30972_3_lut (.A(\min_tens[0] ), .B(\min_warning_tens[0] ), .C(sw1_c), 
         .Z(n36389)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30972_3_lut.init = 16'hcaca;
    LUT4 i30713_3_lut (.A(hour[0]), .B(\hour_warning[0] ), .C(sw1_c), 
         .Z(n36388)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30713_3_lut.init = 16'hcaca;
    LUT4 i3399_3_lut_rep_400_4_lut (.A(hundres_1__N_338[1]), .B(n38236), 
         .C(hundres_1__N_339[1]), .D(n38223), .Z(n38214)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3399_3_lut_rep_400_4_lut.init = 16'hf666;
    LUT4 i4547_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_338[1]), .B(n38236), 
         .C(hundres_1__N_339[1]), .D(n38223), .Z(hundres_1__N_340[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4547_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4554_3_lut_rep_378_4_lut_3_lut_4_lut (.A(hundres_1__N_338[1]), .B(n38236), 
         .C(hundres_1__N_339[1]), .D(n38223), .Z(n38192)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4554_3_lut_rep_378_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1_4_lut (.A(hour[1]), .B(hour[3]), .C(hour[0]), .D(hour[2]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(27[14:18])
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i4545_2_lut_rep_409_3_lut (.A(hour[4]), .B(n38266), .C(hour[3]), 
         .Z(n38223)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4545_2_lut_rep_409_3_lut.init = 16'hf6f6;
    LUT4 i4540_3_lut_4_lut (.A(hour[4]), .B(n38266), .C(hour[3]), .D(n38214), 
         .Z(hundres_1__N_340[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4540_3_lut_4_lut.init = 16'h6966;
    LUT4 i4511_2_lut_rep_350_3_lut_3_lut_4_lut (.A(n38408), .B(hour[7]), 
         .C(n38192), .D(hundres_1__N_339[3]), .Z(n38164)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i4511_2_lut_rep_350_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i4519_3_lut_4_lut_3_lut_4_lut (.A(n38408), .B(hour[7]), .C(n38192), 
         .D(hundres_1__N_339[3]), .Z(hundres_0__N_346[1])) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4519_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i3543_2_lut_rep_359_3_lut_4_lut (.A(n38408), .B(hour[7]), .C(n38192), 
         .D(hundres_1__N_339[3]), .Z(n38173)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3543_2_lut_rep_359_3_lut_4_lut.init = 16'h8880;
    LUT4 i3931_3_lut_4_lut (.A(\hundres_0__N_349[3] ), .B(n38164), .C(n8142), 
         .D(hundres_0__N_346[1]), .Z(n8454)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i3931_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4498_2_lut_3_lut_3_lut_4_lut (.A(n38204), .B(hour[2]), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(hundres_0__N_349[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4498_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4483_2_lut_rep_356_4_lut_4_lut (.A(n38204), .B(hour[2]), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(n38170)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4483_2_lut_rep_356_4_lut_4_lut.init = 16'h332c;
    LUT4 i4505_3_lut_4_lut_3_lut_4_lut (.A(n38204), .B(hour[2]), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(\hundres_0__N_349[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4505_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4491_3_lut_4_lut (.A(n38204), .B(hour[2]), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(hundres_0__N_349[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4491_3_lut_4_lut.init = 16'h998a;
    PFUMX i30715 (.BLUT(n36388), .ALUT(n36389), .C0(\cnt_main[0] ), .Z(n36390));
    PFUMX i19376 (.BLUT(n24815), .ALUT(n24821), .C0(sw1_c), .Z(n7450));
    LUT4 i4524_2_lut_rep_367_4_lut_4_lut_then_4_lut (.A(hour[4]), .B(n38283), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(n39777)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i4524_2_lut_rep_367_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    PFUMX i31912 (.BLUT(n38575), .ALUT(n38576), .C0(n38283), .Z(n38204));
    LUT4 i4524_2_lut_rep_367_4_lut_4_lut_else_4_lut (.A(hour[4]), .B(n38283), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(n39776)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4524_2_lut_rep_367_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    
endmodule
//
// Verilog Description of module BCD_U3
//

module BCD_U3 (\min_warning[5] , \min_warning[6] , \min_warning[7] , \min_warning[2] , 
            \hundres_0__N_349[3] , \min_warning[3] , hundres_0__N_354, 
            \min_warning[4] , n8155, n4, n8449, \min_warning[1] , 
            \min_warning_ones[3] , \min_warning_ones[1] , \min_warning_tens[0] , 
            \min_warning_ones[2] ) /* synthesis syn_module_defined=1 */ ;
    input \min_warning[5] ;
    input \min_warning[6] ;
    input \min_warning[7] ;
    input \min_warning[2] ;
    output \hundres_0__N_349[3] ;
    input \min_warning[3] ;
    output hundres_0__N_354;
    input \min_warning[4] ;
    input n8155;
    output n4;
    output n8449;
    input \min_warning[1] ;
    output \min_warning_ones[3] ;
    output \min_warning_ones[1] ;
    output \min_warning_tens[0] ;
    output \min_warning_ones[2] ;
    
    wire [3:0]hundres_1__N_338;
    
    wire n38207;
    wire [3:0]hundres_1__N_340;
    
    wire n38287;
    wire [3:0]hundres_0__N_349;
    
    wire n38588, n38587, n38161, n38589;
    wire [3:0]hundres_0__N_346;
    
    wire n38318, n38239;
    wire [3:0]hundres_1__N_339;
    
    wire n38197, n38175, n38392, n38165, n38167;
    
    LUT4 i13965_2_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_338[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i13965_2_lut_3_lut.init = 16'h1010;
    LUT4 i4197_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[2] ), .B(n38207), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(\hundres_0__N_349[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4197_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4078_3_lut_4_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_338[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4078_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4070_2_lut_rep_473_3_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(n38287)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4070_2_lut_rep_473_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4183_3_lut_4_lut (.A(\min_warning[2] ), .B(n38207), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(hundres_0__N_349[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4183_3_lut_4_lut.init = 16'h998c;
    LUT4 i3452_2_lut_rep_371_4_lut_4_lut_then_4_lut (.A(hundres_1__N_338[2]), 
         .B(hundres_1__N_338[1]), .C(n38287), .D(\min_warning[3] ), .Z(n38588)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C))) */ ;
    defparam i3452_2_lut_rep_371_4_lut_4_lut_then_4_lut.init = 16'hf676;
    LUT4 i3452_2_lut_rep_371_4_lut_4_lut_else_4_lut (.A(hundres_1__N_338[2]), 
         .B(hundres_1__N_338[1]), .C(n38287), .D(\min_warning[3] ), .Z(n38587)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C (D))))) */ ;
    defparam i3452_2_lut_rep_371_4_lut_4_lut_else_4_lut.init = 16'h7e6e;
    LUT4 i3447_4_lut (.A(n38161), .B(n38589), .C(hundres_0__N_346[1]), 
         .D(n38318), .Z(hundres_0__N_354)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3447_4_lut.init = 16'hb3a0;
    LUT4 i4252_2_lut_rep_425_4_lut_4_lut (.A(\min_warning[4] ), .B(n38287), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(n38239)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4252_2_lut_rep_425_4_lut_4_lut.init = 16'h554a;
    LUT4 i4267_2_lut_3_lut_3_lut_4_lut (.A(\min_warning[4] ), .B(n38287), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(hundres_1__N_339[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4267_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4274_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[4] ), .B(n38287), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(hundres_1__N_339[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4274_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4260_3_lut_4_lut (.A(\min_warning[4] ), .B(n38287), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(hundres_1__N_339[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4260_3_lut_4_lut.init = 16'h998c;
    LUT4 i1_3_lut_4_lut (.A(n38197), .B(n38175), .C(n8155), .D(\hundres_0__N_349[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i3448_2_lut_rep_347_3_lut_4_lut_4_lut (.A(n38197), .B(hundres_1__N_339[3]), 
         .C(\hundres_0__N_349[3] ), .D(n38318), .Z(n38161)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i3448_2_lut_rep_347_3_lut_4_lut_4_lut.init = 16'hf4fa;
    LUT4 i4239_2_lut_3_lut_3_lut_4_lut (.A(\min_warning[3] ), .B(n38239), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4239_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4224_2_lut_rep_393_4_lut_4_lut (.A(\min_warning[3] ), .B(n38239), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n38207)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4224_2_lut_rep_393_4_lut_4_lut.init = 16'h554a;
    LUT4 i4246_3_lut_rep_383_4_lut_3_lut_4_lut (.A(\min_warning[3] ), .B(n38239), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n38197)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4246_3_lut_rep_383_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4232_3_lut_4_lut (.A(\min_warning[3] ), .B(n38239), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4232_3_lut_4_lut.init = 16'h998c;
    LUT4 i4211_3_lut_4_lut_3_lut_4_lut (.A(n38392), .B(\min_warning[7] ), 
         .C(hundres_1__N_339[3]), .D(n38197), .Z(hundres_0__N_346[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4211_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4203_2_lut_rep_351_3_lut_3_lut_4_lut (.A(n38392), .B(\min_warning[7] ), 
         .C(hundres_1__N_339[3]), .D(n38197), .Z(n38165)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4203_2_lut_rep_351_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i3537_2_lut_rep_361_3_lut_4_lut (.A(n38392), .B(\min_warning[7] ), 
         .C(hundres_1__N_339[3]), .D(n38197), .Z(n38175)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3537_2_lut_rep_361_3_lut_4_lut.init = 16'h8880;
    LUT4 i3959_3_lut_4_lut (.A(\hundres_0__N_349[3] ), .B(n38165), .C(n8155), 
         .D(hundres_0__N_346[1]), .Z(n8449)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i3959_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4162_2_lut_3_lut_3_lut_4_lut (.A(n38167), .B(\min_warning[1] ), 
         .C(hundres_0__N_349[1]), .D(hundres_0__N_349[2]), .Z(\min_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4162_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4147_2_lut_4_lut_4_lut (.A(n38167), .B(\min_warning[1] ), .C(hundres_0__N_349[1]), 
         .D(hundres_0__N_349[2]), .Z(\min_warning_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4147_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4169_3_lut_4_lut_3_lut_4_lut (.A(n38167), .B(\min_warning[1] ), 
         .C(hundres_0__N_349[1]), .D(hundres_0__N_349[2]), .Z(\min_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4169_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4175_2_lut_rep_353_4_lut_4_lut (.A(\min_warning[2] ), .B(n38207), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(n38167)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4175_2_lut_rep_353_4_lut_4_lut.init = 16'h554a;
    PFUMX i31920 (.BLUT(n38587), .ALUT(n38588), .C0(\min_warning[4] ), 
          .Z(n38589));
    LUT4 i3458_2_lut_rep_578 (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .Z(n38392)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3458_2_lut_rep_578.init = 16'heeee;
    LUT4 i3540_2_lut_rep_504_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(n38318)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3540_2_lut_rep_504_3_lut.init = 16'he0e0;
    LUT4 i4155_3_lut_4_lut (.A(n38167), .B(\min_warning[1] ), .C(hundres_0__N_349[1]), 
         .D(hundres_0__N_349[2]), .Z(\min_warning_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4155_3_lut_4_lut.init = 16'h998a;
    LUT4 i4190_2_lut_3_lut_3_lut_4_lut (.A(\min_warning[2] ), .B(n38207), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(hundres_0__N_349[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4190_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    
endmodule
//
// Verilog Description of module BCD_U7
//

module BCD_U7 (\cnt_main[0] , n7470, n36381, n38213, \ds18b20_data[5] , 
            \hundres_0__N_349[1] , n10603, n38188, n38178, \ds18b20_data[8] , 
            \hundres_1__N_338[0] , \hundres_1__N_338[1] , \Tem_high[0] , 
            \ds18b20_data[7] , \ds18b20_data[6] , \Tem_high[2] , n7472, 
            n36359) /* synthesis syn_module_defined=1 */ ;
    input \cnt_main[0] ;
    input n7470;
    output n36381;
    output n38213;
    input \ds18b20_data[5] ;
    output \hundres_0__N_349[1] ;
    output n10603;
    output n38188;
    output n38178;
    input \ds18b20_data[8] ;
    input \hundres_1__N_338[0] ;
    input \hundres_1__N_338[1] ;
    output \Tem_high[0] ;
    input \ds18b20_data[7] ;
    input \ds18b20_data[6] ;
    output \Tem_high[2] ;
    input n7472;
    output n36359;
    
    
    wire n39772, n38325;
    wire [3:0]hundres_0__N_349;
    
    wire n38397;
    wire [3:0]hundres_1__N_339;
    
    wire n38291, n39771, n39770, n38561, n38560;
    wire [3:0]hundres_0__N_346;
    
    wire n38244, n38274;
    wire [3:0]hundres_1__N_340;
    
    wire n38233, n38221, n38190, n38169;
    
    LUT4 i30982_3_lut_4_lut (.A(n39772), .B(n38325), .C(\cnt_main[0] ), 
         .D(n7470), .Z(n36381)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i30982_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_4_lut_4_lut (.A(n38213), .B(\ds18b20_data[5] ), .C(\hundres_0__N_349[1] ), 
         .D(hundres_0__N_349[2]), .Z(n10603)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h3320;
    LUT4 i1_3_lut_rep_374_4_lut (.A(n38213), .B(\ds18b20_data[5] ), .C(\hundres_0__N_349[1] ), 
         .D(hundres_0__N_349[2]), .Z(n38188)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i1_3_lut_rep_374_4_lut.init = 16'hffe0;
    LUT4 i12175_2_lut_rep_364_3_lut_4_lut (.A(n38213), .B(\ds18b20_data[5] ), 
         .C(\hundres_0__N_349[1] ), .D(hundres_0__N_349[2]), .Z(n38178)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i12175_2_lut_rep_364_3_lut_4_lut.init = 16'heee0;
    LUT4 i3441_2_lut_rep_583 (.A(\ds18b20_data[8] ), .B(\hundres_1__N_338[0] ), 
         .Z(n38397)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3441_2_lut_rep_583.init = 16'heeee;
    LUT4 i3562_2_lut_rep_511_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_338[0] ), 
         .C(\hundres_1__N_338[1] ), .Z(n38325)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3562_2_lut_rep_511_3_lut.init = 16'he0e0;
    LUT4 i13961_2_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_338[0] ), 
         .C(\hundres_1__N_338[1] ), .Z(hundres_1__N_339[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i13961_2_lut_3_lut.init = 16'h1010;
    LUT4 i8_3_lut_4_lut_3_lut_4_lut (.A(n38213), .B(\ds18b20_data[5] ), 
         .C(\hundres_0__N_349[1] ), .D(hundres_0__N_349[2]), .Z(\Tem_high[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i8_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4119_2_lut_rep_477_3_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_338[0] ), 
         .C(\hundres_1__N_338[1] ), .Z(n38291)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4119_2_lut_rep_477_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4127_3_lut_4_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_338[0] ), 
         .C(\hundres_1__N_338[1] ), .Z(hundres_1__N_339[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4127_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4034_2_lut_rep_365_4_lut_4_lut_then_4_lut (.A(n38291), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n39771)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i4034_2_lut_rep_365_4_lut_4_lut_then_4_lut.init = 16'h9ffa;
    LUT4 i4034_2_lut_rep_365_4_lut_4_lut_else_4_lut (.A(n38291), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n39770)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4034_2_lut_rep_365_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i4042_2_lut_rep_399_4_lut_4_lut_then_4_lut (.A(\ds18b20_data[6] ), 
         .B(n38291), .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), 
         .Z(n38561)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4042_2_lut_rep_399_4_lut_4_lut_then_4_lut.init = 16'h2526;
    LUT4 i4042_2_lut_rep_399_4_lut_4_lut_else_4_lut (.A(\ds18b20_data[6] ), 
         .B(n38291), .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), 
         .Z(n38560)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4042_2_lut_rep_399_4_lut_4_lut_else_4_lut.init = 16'h9592;
    LUT4 i4113_3_lut_4_lut_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38291), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(hundres_0__N_346[0])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4113_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12197_2_lut_rep_430_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38291), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n38244)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i12197_2_lut_rep_430_3_lut_4_lut.init = 16'heee0;
    LUT4 i3389_3_lut_rep_460 (.A(\ds18b20_data[7] ), .B(n38291), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(n38274)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3389_3_lut_rep_460.init = 16'hffe0;
    LUT4 i4099_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38291), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4099_3_lut_4_lut.init = 16'h998c;
    LUT4 i3390_3_lut_rep_407_4_lut (.A(hundres_1__N_339[1]), .B(n38244), 
         .C(hundres_1__N_340[1]), .D(n38233), .Z(n38221)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3390_3_lut_rep_407_4_lut.init = 16'hf666;
    LUT4 i4057_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_339[1]), .B(n38244), 
         .C(hundres_1__N_340[1]), .D(n38233), .Z(hundres_0__N_349[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4057_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4064_3_lut_rep_376_4_lut_3_lut_4_lut (.A(hundres_1__N_339[1]), .B(n38244), 
         .C(hundres_1__N_340[1]), .D(n38233), .Z(n38190)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4064_3_lut_rep_376_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4050_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38274), .C(\ds18b20_data[6] ), 
         .D(n38221), .Z(\hundres_0__N_349[1] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4050_3_lut_4_lut.init = 16'h6966;
    LUT4 i4055_2_lut_rep_419_3_lut (.A(\ds18b20_data[7] ), .B(n38274), .C(\ds18b20_data[6] ), 
         .Z(n38233)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4055_2_lut_rep_419_3_lut.init = 16'hf6f6;
    LUT4 i4029_3_lut_4_lut_3_lut_4_lut (.A(n38397), .B(\hundres_1__N_338[1] ), 
         .C(n38190), .D(hundres_0__N_346[0]), .Z(\Tem_high[2] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4029_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i3559_2_lut_rep_355_3_lut_4_lut (.A(n38397), .B(\hundres_1__N_338[1] ), 
         .C(n38190), .D(hundres_0__N_346[0]), .Z(n38169)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3559_2_lut_rep_355_3_lut_4_lut.init = 16'h8880;
    LUT4 i30977_3_lut_4_lut (.A(n38190), .B(n38169), .C(\cnt_main[0] ), 
         .D(n7472), .Z(n36359)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i30977_3_lut_4_lut.init = 16'h6f60;
    PFUMX i31902 (.BLUT(n38560), .ALUT(n38561), .C0(\ds18b20_data[7] ), 
          .Z(n38213));
    PFUMX i32504 (.BLUT(n39770), .ALUT(n39771), .C0(n38233), .Z(n39772));
    
endmodule
//
// Verilog Description of module BCD_U4
//

module BCD_U4 (n38186, \hundres_0__N_346[0] , n8155, n38199, n8445, 
            \min[1] , \min_ones[1] , \min_ones[3] , \min_tens[0] , \min_ones[2] , 
            n38176, \min[4] , \min[6] , \min[5] , \min[7] , \hundres_1__N_339[3] , 
            \min[2] , \min[3] , n38219) /* synthesis syn_module_defined=1 */ ;
    output n38186;
    input \hundres_0__N_346[0] ;
    input n8155;
    input n38199;
    output n8445;
    input \min[1] ;
    output \min_ones[1] ;
    output \min_ones[3] ;
    output \min_tens[0] ;
    output \min_ones[2] ;
    output n38176;
    input \min[4] ;
    input \min[6] ;
    input \min[5] ;
    input \min[7] ;
    output \hundres_1__N_339[3] ;
    input \min[2] ;
    input \min[3] ;
    output n38219;
    
    
    wire n38189;
    wire [3:0]hundres_0__N_349;
    
    wire n38217;
    wire [3:0]hundres_1__N_340;
    
    wire n38272;
    wire [3:0]hundres_1__N_339;
    
    wire n38228, n38252;
    
    LUT4 i3987_3_lut_4_lut (.A(n38186), .B(\hundres_0__N_346[0] ), .C(n8155), 
         .D(n38199), .Z(n8445)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i3987_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4609_2_lut_4_lut_4_lut (.A(\min[1] ), .B(n38189), .C(hundres_0__N_349[1]), 
         .D(hundres_0__N_349[2]), .Z(\min_ones[1] )) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4609_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 i4624_2_lut_3_lut_3_lut_4_lut (.A(\min[1] ), .B(n38189), .C(hundres_0__N_349[1]), 
         .D(hundres_0__N_349[2]), .Z(\min_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4624_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4631_3_lut_4_lut_3_lut_4_lut (.A(\min[1] ), .B(n38189), .C(hundres_0__N_349[1]), 
         .D(hundres_0__N_349[2]), .Z(\min_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4631_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4617_3_lut_4_lut (.A(\min[1] ), .B(n38189), .C(hundres_0__N_349[1]), 
         .D(hundres_0__N_349[2]), .Z(\min_ones[2] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4617_3_lut_4_lut.init = 16'h998c;
    LUT4 i3493_2_lut_rep_362_4_lut_4_lut (.A(n38217), .B(hundres_1__N_340[2]), 
         .C(hundres_1__N_340[1]), .D(\hundres_0__N_346[0] ), .Z(n38176)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i3493_2_lut_rep_362_4_lut_4_lut.init = 16'hff6c;
    LUT4 min_4__bdd_4_lut_32113 (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), 
         .D(\min[7] ), .Z(n38272)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam min_4__bdd_4_lut_32113.init = 16'h2962;
    LUT4 min_4__bdd_4_lut (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), .D(\min[7] ), 
         .Z(hundres_1__N_339[2])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam min_4__bdd_4_lut.init = 16'h4204;
    LUT4 min_4__bdd_4_lut_32112 (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), 
         .D(\min[7] ), .Z(\hundres_1__N_339[3] )) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam min_4__bdd_4_lut_32112.init = 16'h83c8;
    LUT4 min_4__bdd_4_lut_32111 (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), 
         .D(\min[7] ), .Z(hundres_1__N_339[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam min_4__bdd_4_lut_32111.init = 16'h0db0;
    LUT4 i4659_3_lut_rep_372_4_lut_3_lut_4_lut (.A(\min[2] ), .B(n38228), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(n38186)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4659_3_lut_rep_372_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4652_2_lut_3_lut_3_lut_4_lut (.A(\min[2] ), .B(n38228), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(hundres_0__N_349[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4652_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4686_2_lut_rep_414_4_lut_4_lut (.A(\min[3] ), .B(n38272), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(n38228)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4686_2_lut_rep_414_4_lut_4_lut.init = 16'h554a;
    LUT4 i4637_2_lut_rep_375_4_lut_4_lut (.A(\min[2] ), .B(n38228), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(n38189)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4637_2_lut_rep_375_4_lut_4_lut.init = 16'h554a;
    LUT4 i4645_3_lut_4_lut (.A(\min[2] ), .B(n38228), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(hundres_0__N_349[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4645_3_lut_4_lut.init = 16'h998c;
    LUT4 i4701_2_lut_3_lut_3_lut_4_lut (.A(\min[3] ), .B(n38272), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4701_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i30997_3_lut_rep_405_4_lut_3_lut_4_lut (.A(\min[3] ), .B(n38272), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n38219)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i30997_3_lut_rep_405_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3495_2_lut_rep_403_3_lut (.A(\min[3] ), .B(n38252), .C(\min[2] ), 
         .Z(n38217)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3495_2_lut_rep_403_3_lut.init = 16'hf6f6;
    LUT4 i1_3_lut_rep_438 (.A(\min[3] ), .B(n38272), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(n38252)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_3_lut_rep_438.init = 16'hffe0;
    LUT4 i4694_3_lut_4_lut (.A(\min[3] ), .B(n38272), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4694_3_lut_4_lut.init = 16'h998c;
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (GND_net, beep_c, sys_clk_c, \music_tone[3] , \music_tone[1] , 
            \music_tone[2] , \music_tone[4] , \music_tone[0] , sw2_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output beep_c;
    input sys_clk_c;
    input \music_tone[3] ;
    input \music_tone[1] ;
    input \music_tone[2] ;
    input \music_tone[4] ;
    input \music_tone[0] ;
    input sw2_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire n32731;
    wire [17:0]time_cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(65[12:20])
    wire [15:0]time_end;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(31[12:20])
    wire [17:0]n5995;
    
    wire n32732, piano_out_N_1536, n3675;
    wire [17:0]n77;
    
    wire n32730, n32729, n32728, n32727, n32726, n32734, n6014, 
        n32733, n38468, n38467, n38504, n38503, n38507, n38506, 
        n38525, n38524, n38528, n38527, n38531, n38530, n38534, 
        n38533, n38537, n38536, n37663, n38546, n38545, n38579, 
        n38578, n38585, n38584, n37094, n37093, n39767, n39768, 
        n37233, n37258, n37664, n29, n34, n30, n31, n28, n32844, 
        n32843, n32842, n32841, n37232, n37259, n32840, n32839, 
        n32838, n32837, n32836;
    
    CCU2D add_1920_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32731), .COUT(n32732), .S0(n5995[11]), 
          .S1(n5995[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1920_13.INIT0 = 16'h5999;
    defparam add_1920_13.INIT1 = 16'h5999;
    defparam add_1920_13.INJECT1_0 = "NO";
    defparam add_1920_13.INJECT1_1 = "NO";
    FD1S3AX piano_out_20 (.D(piano_out_N_1536), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=420, LSE_RLINE=426 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i0.GSR = "ENABLED";
    CCU2D add_1920_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32730), .COUT(n32731), .S0(n5995[9]), 
          .S1(n5995[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1920_11.INIT0 = 16'h5999;
    defparam add_1920_11.INIT1 = 16'h5999;
    defparam add_1920_11.INJECT1_0 = "NO";
    defparam add_1920_11.INJECT1_1 = "NO";
    CCU2D add_1920_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32729), .COUT(n32730), .S0(n5995[7]), 
          .S1(n5995[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1920_9.INIT0 = 16'h5999;
    defparam add_1920_9.INIT1 = 16'h5999;
    defparam add_1920_9.INJECT1_0 = "NO";
    defparam add_1920_9.INJECT1_1 = "NO";
    CCU2D add_1920_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32728), .COUT(n32729), .S0(n5995[5]), 
          .S1(n5995[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1920_7.INIT0 = 16'h5999;
    defparam add_1920_7.INIT1 = 16'h5999;
    defparam add_1920_7.INJECT1_0 = "NO";
    defparam add_1920_7.INJECT1_1 = "NO";
    CCU2D add_1920_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32727), .COUT(n32728), .S0(n5995[3]), 
          .S1(n5995[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1920_5.INIT0 = 16'h5999;
    defparam add_1920_5.INIT1 = 16'h5999;
    defparam add_1920_5.INJECT1_0 = "NO";
    defparam add_1920_5.INJECT1_1 = "NO";
    CCU2D add_1920_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32726), .COUT(n32727), .S0(n5995[1]), 
          .S1(n5995[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1920_3.INIT0 = 16'h5999;
    defparam add_1920_3.INIT1 = 16'h5999;
    defparam add_1920_3.INJECT1_0 = "NO";
    defparam add_1920_3.INJECT1_1 = "NO";
    CCU2D add_1920_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n32726), .S1(n5995[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1920_1.INIT0 = 16'h0000;
    defparam add_1920_1.INIT1 = 16'h5999;
    defparam add_1920_1.INJECT1_0 = "NO";
    defparam add_1920_1.INJECT1_1 = "NO";
    CCU2D add_1920_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32734), .S0(n5995[17]), .S1(n6014));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1920_19.INIT0 = 16'h5555;
    defparam add_1920_19.INIT1 = 16'h0000;
    defparam add_1920_19.INJECT1_0 = "NO";
    defparam add_1920_19.INJECT1_1 = "NO";
    CCU2D add_1920_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32733), .COUT(n32734), .S0(n5995[15]), 
          .S1(n5995[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1920_17.INIT0 = 16'h5999;
    defparam add_1920_17.INIT1 = 16'h5555;
    defparam add_1920_17.INJECT1_0 = "NO";
    defparam add_1920_17.INJECT1_1 = "NO";
    CCU2D add_1920_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32732), .COUT(n32733), .S0(n5995[13]), 
          .S1(n5995[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1920_15.INIT0 = 16'h5999;
    defparam add_1920_15.INIT1 = 16'h5999;
    defparam add_1920_15.INJECT1_0 = "NO";
    defparam add_1920_15.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_11_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38468)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_then_4_lut.init = 16'hfe71;
    LUT4 tone_4__I_0_Mux_11_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38467)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_else_4_lut.init = 16'hba27;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38504)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_then_4_lut.init = 16'ha899;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38503)) /* synthesis lut_function=(A (B)+!A !(B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_else_4_lut.init = 16'h8999;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38507)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(C (D)+!C !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_then_4_lut.init = 16'hadf0;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38506)) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_else_4_lut.init = 16'ha4f1;
    LUT4 tone_4__I_0_Mux_12_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38525)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_then_4_lut.init = 16'hfa93;
    LUT4 tone_4__I_0_Mux_12_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38524)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_else_4_lut.init = 16'hfa4b;
    LUT4 tone_4__I_0_Mux_6_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38528)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (C+(D))) */ ;
    defparam tone_4__I_0_Mux_6_i31_then_4_lut.init = 16'hffd2;
    LUT4 tone_4__I_0_Mux_6_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38527)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C (D))+!B !((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_6_i31_else_4_lut.init = 16'hbf67;
    LUT4 i31192_4_lut_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n38531)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam i31192_4_lut_then_4_lut.init = 16'hfcaa;
    LUT4 i31192_4_lut_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n38530)) /* synthesis lut_function=(A (B+(C))+!A !(B+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam i31192_4_lut_else_4_lut.init = 16'ha8b9;
    LUT4 tone_4__I_0_Mux_2_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38534)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_2_i31_then_4_lut.init = 16'hfb8b;
    LUT4 tone_4__I_0_Mux_2_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38533)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C)+!B (D))) */ ;
    defparam tone_4__I_0_Mux_2_i31_else_4_lut.init = 16'hae3d;
    LUT4 i31190_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n38537)) /* synthesis lut_function=(A (B+(D))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam i31190_4_lut_then_4_lut.init = 16'hafcc;
    LUT4 i31190_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n38536)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam i31190_4_lut_else_4_lut.init = 16'hefff;
    LUT4 n6_bdd_4_lut_31525_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n37663)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam n6_bdd_4_lut_31525_4_lut.init = 16'hff6a;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38546)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_then_4_lut.init = 16'hffbc;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38545)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C)+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_else_4_lut.init = 16'hc9db;
    FD1S3IX time_cnt_2983__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i17.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_2983__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n3675), 
            .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983__i1.GSR = "ENABLED";
    LUT4 n37308_bdd_3_lut_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[0] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38579)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B)) */ ;
    defparam n37308_bdd_3_lut_then_4_lut.init = 16'hee64;
    LUT4 n37308_bdd_3_lut_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[0] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38578)) /* synthesis lut_function=(A (D)+!A ((C (D)+!C !(D))+!B)) */ ;
    defparam n37308_bdd_3_lut_else_4_lut.init = 16'hfb15;
    LUT4 n37293_bdd_3_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38585)) /* synthesis lut_function=(A (B+(C))+!A (B ((D)+!C)+!B !((D)+!C))) */ ;
    defparam n37293_bdd_3_lut_then_4_lut.init = 16'hecbc;
    LUT4 n37293_bdd_3_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38584)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam n37293_bdd_3_lut_else_4_lut.init = 16'hf6b5;
    PFUMX i31263 (.BLUT(n37094), .ALUT(n37093), .C0(\music_tone[4] ), 
          .Z(time_end[3]));
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n39767)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_else_4_lut.init = 16'hc0c1;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n39768)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_then_4_lut.init = 16'he0c0;
    LUT4 n4_bdd_4_lut_31363 (.A(\music_tone[0] ), .B(\music_tone[1] ), .C(\music_tone[2] ), 
         .D(\music_tone[3] ), .Z(n37233)) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;
    defparam n4_bdd_4_lut_31363.init = 16'h02cb;
    LUT4 music_tone_1__bdd_4_lut_31349 (.A(\music_tone[1] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[0] ), .Z(n37258)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam music_tone_1__bdd_4_lut_31349.init = 16'hfddd;
    PFUMX i31526 (.BLUT(n37664), .ALUT(n37663), .C0(\music_tone[3] ), 
          .Z(time_end[0]));
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_1536)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n5995[1]), .B(n5995[6]), .C(n5995[16]), .D(n5995[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n5995[5]), .C(n28), .D(n5995[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n5995[10]), .B(n5995[4]), .C(n5995[8]), .D(n5995[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n5995[14]), .B(n5995[17]), .C(n5995[15]), .D(n5995[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n5995[12]), .B(n5995[7]), .C(n5995[0]), .D(n5995[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    CCU2D time_cnt_2983_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32844), .S0(n77[17]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_2983_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_2983_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_2983_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_2983_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32843), .COUT(n32844), .S0(n77[15]), .S1(n77[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_2983_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_2983_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_2983_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_2983_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32842), .COUT(n32843), .S0(n77[13]), .S1(n77[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_2983_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_2983_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_2983_add_4_15.INJECT1_1 = "NO";
    CCU2D time_cnt_2983_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32841), .COUT(n32842), .S0(n77[11]), .S1(n77[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_2983_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_2983_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_2983_add_4_13.INJECT1_1 = "NO";
    LUT4 i1206_2_lut (.A(n6014), .B(sw2_c), .Z(n3675)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[11] 76[5])
    defparam i1206_2_lut.init = 16'hbbbb;
    LUT4 n6_bdd_4_lut_31532 (.A(\music_tone[0] ), .B(\music_tone[1] ), .C(\music_tone[4] ), 
         .D(\music_tone[2] ), .Z(n37664)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C+!(D))+!B (C (D)))) */ ;
    defparam n6_bdd_4_lut_31532.init = 16'h8fbb;
    LUT4 n4_bdd_4_lut_31335_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[1] ), .Z(n37232)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam n4_bdd_4_lut_31335_4_lut_4_lut.init = 16'hedcd;
    PFUMX i31350 (.BLUT(n37259), .ALUT(n37258), .C0(\music_tone[4] ), 
          .Z(time_end[8]));
    LUT4 music_tone_4__bdd_3_lut_31371 (.A(\music_tone[2] ), .B(\music_tone[3] ), 
         .C(\music_tone[0] ), .Z(n37093)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam music_tone_4__bdd_3_lut_31371.init = 16'hecec;
    CCU2D time_cnt_2983_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32840), .COUT(n32841), .S0(n77[9]), .S1(n77[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_2983_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_2983_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_2983_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_2983_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32839), .COUT(n32840), .S0(n77[7]), .S1(n77[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_2983_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_2983_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_2983_add_4_9.INJECT1_1 = "NO";
    PFUMX i31336 (.BLUT(n37233), .ALUT(n37232), .C0(\music_tone[4] ), 
          .Z(time_end[1]));
    CCU2D time_cnt_2983_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32838), .COUT(n32839), .S0(n77[5]), .S1(n77[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_2983_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_2983_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_2983_add_4_7.INJECT1_1 = "NO";
    LUT4 music_tone_4__bdd_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[1] ), .Z(n37094)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam music_tone_4__bdd_4_lut_4_lut.init = 16'hcf35;
    LUT4 music_tone_1__bdd_4_lut_31367_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n37259)) /* synthesis lut_function=(!(A (C (D))+!A !(B+((D)+!C)))) */ ;
    defparam music_tone_1__bdd_4_lut_31367_4_lut_4_lut.init = 16'h5fef;
    PFUMX i31918 (.BLUT(n38584), .ALUT(n38585), .C0(\music_tone[0] ), 
          .Z(time_end[10]));
    PFUMX i31914 (.BLUT(n38578), .ALUT(n38579), .C0(\music_tone[1] ), 
          .Z(time_end[4]));
    CCU2D time_cnt_2983_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32837), .COUT(n32838), .S0(n77[3]), .S1(n77[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_2983_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_2983_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_2983_add_4_5.INJECT1_1 = "NO";
    PFUMX i31892 (.BLUT(n38545), .ALUT(n38546), .C0(\music_tone[0] ), 
          .Z(time_end[9]));
    PFUMX i31886 (.BLUT(n38536), .ALUT(n38537), .C0(\music_tone[2] ), 
          .Z(time_end[7]));
    PFUMX i31884 (.BLUT(n38533), .ALUT(n38534), .C0(\music_tone[0] ), 
          .Z(time_end[2]));
    PFUMX i31882 (.BLUT(n38530), .ALUT(n38531), .C0(\music_tone[0] ), 
          .Z(time_end[5]));
    PFUMX i31880 (.BLUT(n38527), .ALUT(n38528), .C0(\music_tone[0] ), 
          .Z(time_end[6]));
    PFUMX i31878 (.BLUT(n38524), .ALUT(n38525), .C0(\music_tone[0] ), 
          .Z(time_end[12]));
    PFUMX i32502 (.BLUT(n39767), .ALUT(n39768), .C0(\music_tone[1] ), 
          .Z(time_end[15]));
    CCU2D time_cnt_2983_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32836), .COUT(n32837), .S0(n77[1]), .S1(n77[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_2983_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_2983_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_2983_add_4_3.INJECT1_1 = "NO";
    PFUMX i31866 (.BLUT(n38506), .ALUT(n38507), .C0(\music_tone[0] ), 
          .Z(time_end[13]));
    PFUMX i31864 (.BLUT(n38503), .ALUT(n38504), .C0(\music_tone[0] ), 
          .Z(time_end[14]));
    CCU2D time_cnt_2983_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32836), .S1(n77[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2983_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_2983_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_2983_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_2983_add_4_1.INJECT1_1 = "NO";
    PFUMX i31840 (.BLUT(n38467), .ALUT(n38468), .C0(\music_tone[0] ), 
          .Z(time_end[11]));
    
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
// Verilog Description of module music_play
//

module music_play (\state[0] , sys_clk_c, sys_clk_c_enable_30, n7951, 
            recv_done_d1, recv_done_d0, \cnt_run[0] , \state[1] , \music_tone[0] , 
            \state_back[0] , sys_clk_c_enable_36, uart_recv_done, n33370, 
            n381, GND_net, warning_TEM, sys_clk_c_enable_84, uart_music_mode, 
            \music_tone[4] , \music_tone_7__N_1634[4] , \music_tone[3] , 
            \music_tone[2] , \music_tone[1] , n39780, n19240, music_cnt, 
            n125, warning, \music_cnt[5] , \music_cnt[6] , n38313, 
            n126, uart_recv_data, n35611, n123, sys_rst_n_c, n124) /* synthesis syn_module_defined=1 */ ;
    output \state[0] ;
    input sys_clk_c;
    input sys_clk_c_enable_30;
    input n7951;
    output recv_done_d1;
    output recv_done_d0;
    output \cnt_run[0] ;
    output \state[1] ;
    output \music_tone[0] ;
    output \state_back[0] ;
    input sys_clk_c_enable_36;
    input uart_recv_done;
    output n33370;
    output n381;
    input GND_net;
    output warning_TEM;
    output sys_clk_c_enable_84;
    output uart_music_mode;
    output \music_tone[4] ;
    input \music_tone_7__N_1634[4] ;
    output \music_tone[3] ;
    output \music_tone[2] ;
    output \music_tone[1] ;
    input n39780;
    output n19240;
    output [8:0]music_cnt;
    input n125;
    input warning;
    output \music_cnt[5] ;
    output \music_cnt[6] ;
    output n38313;
    input n126;
    input [7:0]uart_recv_data;
    input n35611;
    input n123;
    input sys_rst_n_c;
    input n124;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    wire [15:0]n121;
    
    wire sys_clk_c_enable_347, n20672;
    wire [15:0]n69;
    wire [15:0]cnt_delay;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(44[12:21])
    wire [7:0]cnt_run;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(36[11:18])
    
    wire n36202, n38335, n36222, sys_clk_c_enable_129, n36256, sys_clk_c_enable_122;
    wire [7:0]music_tone_7__N_1634;
    
    wire sys_clk_c_enable_372, n32909, n38378, n38380, n26889, n32908, 
        n32907, n32906, n32905, n32904;
    wire [15:0]clk_cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(49[13:20])
    
    wire n17, n18, uart_data_busy_N_1703, n38307, n16, n36146, n36144, 
        n32776;
    wire [7:0]n131;
    
    wire n32775, n32774, n32773, n32865;
    wire [15:0]n69_adj_1903;
    
    wire n32864, n32863, n32862, n32861, n32860, n32859, n32858, 
        sys_clk_c_enable_123, sys_clk_c_enable_124, sys_clk_c_enable_125, 
        sys_clk_c_enable_126, sys_clk_c_enable_127, sys_clk_c_enable_128, 
        n26989, n32857, n32856, n32855, n38416, n38293, n32854, 
        n38424, n19153, n35595, n20, n15;
    wire [7:0]n670;
    
    wire n36230, n22, n36192;
    wire [8:0]music_cnt_c;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(47[11:20])
    
    wire n22_adj_1895, n25, n25_adj_1896, n33045, n38338, n33521, 
        n15_adj_1897, n14_adj_1898, n33058, n33225, n32853, n32852, 
        n32851, n32850, n32848;
    wire [8:0]n41;
    
    wire n54, n32847, n32846, n52, n32845, n4, n10, n7, n19195, 
        sys_clk_c_enable_328, n20687, n9;
    
    FD1P3AX state__i0 (.D(n7951), .SP(sys_clk_c_enable_30), .CK(sys_clk_c), 
            .Q(\state[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam state__i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_2985__i2 (.D(n69[2]), .SP(sys_clk_c_enable_347), .CD(n20672), 
            .CK(sys_clk_c), .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i2.GSR = "DISABLED";
    FD1P3IX cnt_delay_2985__i3 (.D(n69[3]), .SP(sys_clk_c_enable_347), .CD(n20672), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i3.GSR = "DISABLED";
    LUT4 i30541_2_lut_rep_521 (.A(cnt_run[5]), .B(n36202), .Z(n38335)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30541_2_lut_rep_521.init = 16'heeee;
    LUT4 i30547_3_lut_4_lut (.A(cnt_run[5]), .B(n36202), .C(cnt_run[6]), 
         .D(cnt_run[1]), .Z(n36222)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30547_3_lut_4_lut.init = 16'hfffe;
    FD1S3AX recv_done_d1_586 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam recv_done_d1_586.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i0 (.D(n36256), .SP(sys_clk_c_enable_129), .CK(sys_clk_c), 
            .Q(\cnt_run[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    FD1P3AX state__i1 (.D(\state[0] ), .SP(sys_clk_c_enable_30), .CK(sys_clk_c), 
            .Q(\state[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam state__i1.GSR = "ENABLED";
    FD1P3AX music_tone__i1 (.D(music_tone_7__N_1634[0]), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(\music_tone[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam music_tone__i1.GSR = "DISABLED";
    FD1P3AX state_back_i0_i0 (.D(\state[0] ), .SP(sys_clk_c_enable_36), 
            .CK(sys_clk_c), .Q(\state_back[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    FD1S3AX recv_done_d0_585 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam recv_done_d0_585.GSR = "ENABLED";
    FD1P3IX cnt_delay_2985__i4 (.D(n69[4]), .SP(sys_clk_c_enable_347), .CD(n20672), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i4.GSR = "DISABLED";
    LUT4 i15196_2_lut_3_lut (.A(sys_clk_c_enable_372), .B(n33370), .C(n381), 
         .Z(n20672)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam i15196_2_lut_3_lut.init = 16'h2020;
    CCU2D sub_2357_add_2_14 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32909), .S1(n381));
    defparam sub_2357_add_2_14.INIT0 = 16'h5555;
    defparam sub_2357_add_2_14.INIT1 = 16'h0000;
    defparam sub_2357_add_2_14.INJECT1_0 = "NO";
    defparam sub_2357_add_2_14.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(n38378), .B(n38380), .C(\cnt_run[0] ), .D(cnt_run[3]), 
         .Z(n26889)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    CCU2D sub_2357_add_2_12 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32908), .COUT(n32909));
    defparam sub_2357_add_2_12.INIT0 = 16'h5555;
    defparam sub_2357_add_2_12.INIT1 = 16'h5555;
    defparam sub_2357_add_2_12.INJECT1_0 = "NO";
    defparam sub_2357_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_2357_add_2_10 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32907), .COUT(n32908));
    defparam sub_2357_add_2_10.INIT0 = 16'h5555;
    defparam sub_2357_add_2_10.INIT1 = 16'h5555;
    defparam sub_2357_add_2_10.INJECT1_0 = "NO";
    defparam sub_2357_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_2357_add_2_8 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32906), .COUT(n32907));
    defparam sub_2357_add_2_8.INIT0 = 16'h5555;
    defparam sub_2357_add_2_8.INIT1 = 16'h5555;
    defparam sub_2357_add_2_8.INJECT1_0 = "NO";
    defparam sub_2357_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_2357_add_2_6 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32905), .COUT(n32906));
    defparam sub_2357_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_2357_add_2_6.INIT1 = 16'h5555;
    defparam sub_2357_add_2_6.INJECT1_0 = "NO";
    defparam sub_2357_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_2357_add_2_4 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32904), .COUT(n32905));
    defparam sub_2357_add_2_4.INIT0 = 16'h5555;
    defparam sub_2357_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_2357_add_2_4.INJECT1_0 = "NO";
    defparam sub_2357_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_2357_add_2_2 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32904));
    defparam sub_2357_add_2_2.INIT0 = 16'h5000;
    defparam sub_2357_add_2_2.INIT1 = 16'h5555;
    defparam sub_2357_add_2_2.INJECT1_0 = "NO";
    defparam sub_2357_add_2_2.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_2985__i5 (.D(n69[5]), .SP(sys_clk_c_enable_347), .CD(n20672), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i5.GSR = "DISABLED";
    FD1P3IX cnt_delay_2985__i6 (.D(n69[6]), .SP(sys_clk_c_enable_347), .CD(n20672), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i6.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(clk_cnt[9]), .B(n17), .C(clk_cnt[5]), .D(n18), 
         .Z(n33370)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    FD1P3IX cnt_delay_2985__i7 (.D(n69[7]), .SP(sys_clk_c_enable_347), .CD(n20672), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i7.GSR = "DISABLED";
    LUT4 i7_4_lut (.A(clk_cnt[12]), .B(clk_cnt[2]), .C(clk_cnt[8]), .D(clk_cnt[4]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    FD1P3AY uart_data_busy_591 (.D(uart_data_busy_N_1703), .SP(sys_clk_c_enable_84), 
            .CK(sys_clk_c), .Q(warning_TEM)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam uart_data_busy_591.GSR = "ENABLED";
    FD1P3AX uart_music_mode_589 (.D(n38307), .SP(sys_clk_c_enable_84), .CK(sys_clk_c), 
            .Q(uart_music_mode)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam uart_music_mode_589.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(clk_cnt[1]), .B(n16), .C(n36146), .D(n36144), 
         .Z(n18)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i8_4_lut.init = 16'hefff;
    CCU2D add_114_9 (.A0(cnt_run[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32776), 
          .S0(n131[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(263[17:29])
    defparam add_114_9.INIT0 = 16'h5aaa;
    defparam add_114_9.INIT1 = 16'h0000;
    defparam add_114_9.INJECT1_0 = "NO";
    defparam add_114_9.INJECT1_1 = "NO";
    CCU2D add_114_7 (.A0(cnt_run[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32775), .COUT(n32776), .S0(n131[5]), .S1(n131[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(263[17:29])
    defparam add_114_7.INIT0 = 16'h5aaa;
    defparam add_114_7.INIT1 = 16'h5aaa;
    defparam add_114_7.INJECT1_0 = "NO";
    defparam add_114_7.INJECT1_1 = "NO";
    CCU2D add_114_5 (.A0(cnt_run[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32774), .COUT(n32775), .S0(n131[3]), .S1(n131[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(263[17:29])
    defparam add_114_5.INIT0 = 16'h5aaa;
    defparam add_114_5.INIT1 = 16'h5aaa;
    defparam add_114_5.INJECT1_0 = "NO";
    defparam add_114_5.INJECT1_1 = "NO";
    CCU2D add_114_3 (.A0(cnt_run[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32773), .COUT(n32774), .S0(n131[1]), .S1(n131[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(263[17:29])
    defparam add_114_3.INIT0 = 16'h5aaa;
    defparam add_114_3.INIT1 = 16'h5aaa;
    defparam add_114_3.INJECT1_0 = "NO";
    defparam add_114_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_2986_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32865), .S0(n69_adj_1903[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_2986_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_2986_add_4_17.INJECT1_1 = "NO";
    CCU2D add_114_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt_run[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32773), .S1(n131[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(263[17:29])
    defparam add_114_1.INIT0 = 16'hF000;
    defparam add_114_1.INIT1 = 16'h5555;
    defparam add_114_1.INJECT1_0 = "NO";
    defparam add_114_1.INJECT1_1 = "NO";
    CCU2D clk_cnt_2986_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32864), .COUT(n32865), .S0(n69_adj_1903[13]), 
          .S1(n69_adj_1903[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_2986_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_2986_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32863), .COUT(n32864), .S0(n69_adj_1903[11]), 
          .S1(n69_adj_1903[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_2986_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_2986_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32862), .COUT(n32863), .S0(n69_adj_1903[9]), 
          .S1(n69_adj_1903[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_2986_add_4_11.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_2985__i8 (.D(n69[8]), .SP(sys_clk_c_enable_347), .CD(n20672), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i8.GSR = "DISABLED";
    CCU2D clk_cnt_2986_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32861), .COUT(n32862), .S0(n69_adj_1903[7]), 
          .S1(n69_adj_1903[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_2986_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_2986_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32860), .COUT(n32861), .S0(n69_adj_1903[5]), 
          .S1(n69_adj_1903[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_2986_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_2986_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32859), .COUT(n32860), .S0(n69_adj_1903[3]), 
          .S1(n69_adj_1903[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_2986_add_4_5.INJECT1_1 = "NO";
    FD1P3AX music_tone__i5 (.D(\music_tone_7__N_1634[4] ), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(\music_tone[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam music_tone__i5.GSR = "DISABLED";
    CCU2D clk_cnt_2986_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32858), .COUT(n32859), .S0(n69_adj_1903[1]), 
          .S1(n69_adj_1903[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_2986_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_2986_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_2986_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32858), .S1(n69_adj_1903[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_2986_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_2986_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_2986_add_4_1.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_2985__i9 (.D(n69[9]), .SP(sys_clk_c_enable_347), .CD(n20672), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i9.GSR = "DISABLED";
    FD1P3IX cnt_delay_2985__i10 (.D(n69[10]), .SP(sys_clk_c_enable_347), 
            .CD(n20672), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i10.GSR = "DISABLED";
    FD1P3AX music_tone__i4 (.D(music_tone_7__N_1634[3]), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(\music_tone[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam music_tone__i4.GSR = "DISABLED";
    FD1P3AX music_tone__i3 (.D(music_tone_7__N_1634[2]), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(\music_tone[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam music_tone__i3.GSR = "DISABLED";
    FD1P3AX music_tone__i2 (.D(music_tone_7__N_1634[1]), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(\music_tone[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam music_tone__i2.GSR = "DISABLED";
    FD1P3AX cnt_run_i0_i7 (.D(n39780), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .Q(cnt_run[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i6 (.D(n39780), .SP(sys_clk_c_enable_124), .CK(sys_clk_c), 
            .Q(cnt_run[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n39780), .SP(sys_clk_c_enable_125), .CK(sys_clk_c), 
            .Q(cnt_run[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i4 (.D(n39780), .SP(sys_clk_c_enable_126), .CK(sys_clk_c), 
            .Q(cnt_run[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n39780), .SP(sys_clk_c_enable_127), .CK(sys_clk_c), 
            .Q(cnt_run[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i2 (.D(n39780), .SP(sys_clk_c_enable_128), .CK(sys_clk_c), 
            .Q(cnt_run[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i1 (.D(n26989), .SP(sys_clk_c_enable_129), .CK(sys_clk_c), 
            .Q(cnt_run[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    CCU2D cnt_delay_2985_add_4_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32857), .S0(n69[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_17.INIT1 = 16'h0000;
    defparam cnt_delay_2985_add_4_17.INJECT1_0 = "NO";
    defparam cnt_delay_2985_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_delay_2985_add_4_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32856), .COUT(n32857), .S0(n69[13]), .S1(n69[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_15.INJECT1_0 = "NO";
    defparam cnt_delay_2985_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_delay_2985_add_4_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32855), .COUT(n32856), .S0(n69[11]), .S1(n69[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_13.INJECT1_0 = "NO";
    defparam cnt_delay_2985_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_602 (.A(\state[0] ), .B(\state[1] ), .Z(n38416)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i1_2_lut_rep_602.init = 16'h2222;
    LUT4 i2_3_lut_rep_479_4_lut (.A(\state[0] ), .B(\state[1] ), .C(\cnt_run[0] ), 
         .D(n19240), .Z(n38293)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i2_3_lut_rep_479_4_lut.init = 16'h0002;
    FD1P3IX cnt_delay_2985__i11 (.D(n69[11]), .SP(sys_clk_c_enable_347), 
            .CD(n20672), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i11.GSR = "DISABLED";
    CCU2D cnt_delay_2985_add_4_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32854), .COUT(n32855), .S0(n69[9]), .S1(n69[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_11.INJECT1_0 = "NO";
    defparam cnt_delay_2985_add_4_11.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_2985__i12 (.D(n69[12]), .SP(sys_clk_c_enable_347), 
            .CD(n20672), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i12.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_610 (.A(cnt_run[1]), .B(\cnt_run[0] ), .Z(n38424)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_610.init = 16'h2222;
    LUT4 i1_2_lut_3_lut (.A(cnt_run[1]), .B(\cnt_run[0] ), .C(cnt_run[2]), 
         .Z(n19153)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i3_3_lut_4_lut (.A(music_cnt[0]), .B(music_cnt[2]), .C(n35595), 
         .D(music_cnt[1]), .Z(n20)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i3_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut (.A(music_cnt[0]), .B(music_cnt[2]), .C(music_cnt[1]), 
         .D(n35595), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 i6_4_lut (.A(clk_cnt[15]), .B(clk_cnt[0]), .C(clk_cnt[3]), .D(clk_cnt[14]), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i17219_4_lut (.A(uart_music_mode), .B(n125), .C(warning), .D(n38293), 
         .Z(n670[1])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(72[10:17])
    defparam i17219_4_lut.init = 16'hc505;
    LUT4 i13938_4_lut (.A(sys_clk_c_enable_129), .B(n36230), .C(cnt_run[4]), 
         .D(n22), .Z(sys_clk_c_enable_123)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i13938_4_lut.init = 16'h0200;
    LUT4 i33_4_lut (.A(n131[7]), .B(n20), .C(cnt_run[7]), .D(cnt_run[1]), 
         .Z(n22)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(260[6] 287[13])
    defparam i33_4_lut.init = 16'hc0ca;
    LUT4 i30555_4_lut (.A(cnt_run[6]), .B(cnt_run[5]), .C(cnt_run[2]), 
         .D(cnt_run[3]), .Z(n36230)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30555_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(music_cnt[3]), .B(n38424), .C(n36192), .D(music_cnt[4]), 
         .Z(n35595)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut.init = 16'h0800;
    LUT4 i30517_4_lut (.A(music_cnt_c[7]), .B(\music_cnt[5] ), .C(music_cnt_c[8]), 
         .D(\music_cnt[6] ), .Z(n36192)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i30517_4_lut.init = 16'hfeff;
    LUT4 i33_4_lut_adj_238 (.A(n131[6]), .B(n20), .C(cnt_run[6]), .D(cnt_run[1]), 
         .Z(n22_adj_1895)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(260[6] 287[13])
    defparam i33_4_lut_adj_238.init = 16'hc0ca;
    LUT4 i3_4_lut (.A(sys_clk_c_enable_129), .B(n25), .C(cnt_run[6]), 
         .D(n36202), .Z(sys_clk_c_enable_125)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i3_4_lut.init = 16'h0008;
    LUT4 i36_4_lut (.A(n131[5]), .B(n15), .C(cnt_run[5]), .D(cnt_run[1]), 
         .Z(n25)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i36_4_lut.init = 16'hc0ca;
    LUT4 i3_4_lut_adj_239 (.A(sys_clk_c_enable_129), .B(n25_adj_1896), .C(cnt_run[7]), 
         .D(n36230), .Z(sys_clk_c_enable_126)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i3_4_lut_adj_239.init = 16'h0008;
    LUT4 i36_4_lut_adj_240 (.A(n131[4]), .B(n15), .C(cnt_run[4]), .D(cnt_run[1]), 
         .Z(n25_adj_1896)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i36_4_lut_adj_240.init = 16'hc0ca;
    FD1P3IX cnt_delay_2985__i13 (.D(n69[13]), .SP(sys_clk_c_enable_347), 
            .CD(n20672), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i13.GSR = "DISABLED";
    LUT4 i13930_4_lut (.A(sys_clk_c_enable_129), .B(n19240), .C(n33045), 
         .D(n131[3]), .Z(sys_clk_c_enable_127)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i13930_4_lut.init = 16'ha2a0;
    LUT4 i3_4_lut_adj_241 (.A(n19153), .B(cnt_run[3]), .C(n38338), .D(n33521), 
         .Z(n33045)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(260[6] 287[13])
    defparam i3_4_lut_adj_241.init = 16'h0008;
    LUT4 i8_4_lut_adj_242 (.A(n15_adj_1897), .B(music_cnt[2]), .C(n14_adj_1898), 
         .D(music_cnt[4]), .Z(n33521)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i8_4_lut_adj_242.init = 16'hfbff;
    LUT4 i6_4_lut_adj_243 (.A(music_cnt_c[7]), .B(music_cnt[0]), .C(\music_cnt[6] ), 
         .D(music_cnt[3]), .Z(n15_adj_1897)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i6_4_lut_adj_243.init = 16'hbfff;
    LUT4 i5_3_lut (.A(music_cnt[1]), .B(\music_cnt[5] ), .C(music_cnt_c[8]), 
         .Z(n14_adj_1898)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i5_3_lut.init = 16'hfdfd;
    LUT4 i13928_4_lut (.A(sys_clk_c_enable_129), .B(n19240), .C(n33058), 
         .D(n131[2]), .Z(sys_clk_c_enable_128)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i13928_4_lut.init = 16'ha2a0;
    LUT4 i3_4_lut_adj_244 (.A(n26889), .B(cnt_run[2]), .C(cnt_run[1]), 
         .D(n33521), .Z(n33058)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(260[6] 287[13])
    defparam i3_4_lut_adj_244.init = 16'h0040;
    LUT4 i21537_4_lut (.A(n19240), .B(n33225), .C(n131[1]), .D(cnt_run[1]), 
         .Z(n26989)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i21537_4_lut.init = 16'hdc50;
    LUT4 i2_4_lut_adj_245 (.A(cnt_run[2]), .B(n26889), .C(cnt_run[1]), 
         .D(n33521), .Z(n33225)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i2_4_lut_adj_245.init = 16'heefe;
    FD1P3IX cnt_delay_2985__i14 (.D(n69[14]), .SP(sys_clk_c_enable_347), 
            .CD(n20672), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i14.GSR = "DISABLED";
    FD1P3IX cnt_delay_2985__i15 (.D(n69[15]), .SP(sys_clk_c_enable_347), 
            .CD(n20672), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i15.GSR = "DISABLED";
    CCU2D cnt_delay_2985_add_4_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32853), .COUT(n32854), .S0(n69[7]), .S1(n69[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_9.INJECT1_0 = "NO";
    defparam cnt_delay_2985_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_delay_2985_add_4_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32852), .COUT(n32853), .S0(n69[5]), .S1(n69[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_7.INJECT1_0 = "NO";
    defparam cnt_delay_2985_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_delay_2985_add_4_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32851), .COUT(n32852), .S0(n69[3]), .S1(n69[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_5.INJECT1_0 = "NO";
    defparam cnt_delay_2985_add_4_5.INJECT1_1 = "NO";
    LUT4 i30471_2_lut (.A(clk_cnt[11]), .B(clk_cnt[10]), .Z(n36146)) /* synthesis lut_function=(A (B)) */ ;
    defparam i30471_2_lut.init = 16'h8888;
    CCU2D cnt_delay_2985_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32850), .COUT(n32851), .S0(n69[1]), .S1(n69[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_delay_2985_add_4_3.INJECT1_0 = "NO";
    defparam cnt_delay_2985_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_delay_2985_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32850), .S1(n69[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985_add_4_1.INIT0 = 16'hF000;
    defparam cnt_delay_2985_add_4_1.INIT1 = 16'h0555;
    defparam cnt_delay_2985_add_4_1.INJECT1_0 = "NO";
    defparam cnt_delay_2985_add_4_1.INJECT1_1 = "NO";
    LUT4 i30469_3_lut (.A(clk_cnt[7]), .B(clk_cnt[13]), .C(clk_cnt[6]), 
         .Z(n36144)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i30469_3_lut.init = 16'h8080;
    CCU2D music_cnt_2984_add_4_9 (.A0(music_cnt_c[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt_c[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32848), .S0(n41[7]), .S1(n41[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984_add_4_9.INIT0 = 16'hfaaa;
    defparam music_cnt_2984_add_4_9.INIT1 = 16'hfaaa;
    defparam music_cnt_2984_add_4_9.INJECT1_0 = "NO";
    defparam music_cnt_2984_add_4_9.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_2986__i1 (.D(n69_adj_1903[1]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut (.A(n19240), .B(n38416), .C(\cnt_run[0] ), .D(warning), 
         .Z(n54)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0400;
    FD1P3IX clk_cnt_2986__i2 (.D(n69_adj_1903[2]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i2.GSR = "DISABLED";
    FD1P3IX clk_cnt_2986__i3 (.D(n69_adj_1903[3]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i3.GSR = "DISABLED";
    FD1P3IX clk_cnt_2986__i4 (.D(n69_adj_1903[4]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i4.GSR = "DISABLED";
    LUT4 i30581_4_lut (.A(n19240), .B(n36222), .C(n131[0]), .D(\cnt_run[0] ), 
         .Z(n36256)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i30581_4_lut.init = 16'hdc50;
    LUT4 i30527_4_lut (.A(cnt_run[2]), .B(cnt_run[7]), .C(cnt_run[4]), 
         .D(cnt_run[3]), .Z(n36202)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30527_4_lut.init = 16'hfffe;
    FD1P3IX clk_cnt_2986__i5 (.D(n69_adj_1903[5]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i5.GSR = "DISABLED";
    LUT4 i13936_3_lut_4_lut (.A(n38416), .B(n38313), .C(n38335), .D(n22_adj_1895), 
         .Z(sys_clk_c_enable_124)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(58[25:55])
    defparam i13936_3_lut_4_lut.init = 16'h0800;
    FD1P3IX clk_cnt_2986__i6 (.D(n69_adj_1903[6]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i6.GSR = "DISABLED";
    CCU2D music_cnt_2984_add_4_7 (.A0(\music_cnt[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\music_cnt[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32847), .COUT(n32848), .S0(n41[5]), .S1(n41[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984_add_4_7.INIT0 = 16'hfaaa;
    defparam music_cnt_2984_add_4_7.INIT1 = 16'hfaaa;
    defparam music_cnt_2984_add_4_7.INJECT1_0 = "NO";
    defparam music_cnt_2984_add_4_7.INJECT1_1 = "NO";
    CCU2D music_cnt_2984_add_4_5 (.A0(music_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32846), .COUT(n32847), .S0(n41[3]), .S1(n41[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984_add_4_5.INIT0 = 16'hfaaa;
    defparam music_cnt_2984_add_4_5.INIT1 = 16'hfaaa;
    defparam music_cnt_2984_add_4_5.INJECT1_0 = "NO";
    defparam music_cnt_2984_add_4_5.INJECT1_1 = "NO";
    LUT4 i57_3_lut (.A(uart_music_mode), .B(n38293), .C(warning), .Z(n52)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(72[10:17])
    defparam i57_3_lut.init = 16'hc5c5;
    LUT4 mux_3284_i1_4_lut (.A(n126), .B(uart_recv_data[0]), .C(sys_clk_c_enable_84), 
         .D(n54), .Z(music_tone_7__N_1634[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(102[7] 324[5])
    defparam mux_3284_i1_4_lut.init = 16'hcac0;
    LUT4 i2_3_lut_rep_490 (.A(n35611), .B(\state[0] ), .C(\state[1] ), 
         .Z(sys_clk_c_enable_372)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i2_3_lut_rep_490.init = 16'h2020;
    CCU2D music_cnt_2984_add_4_3 (.A0(music_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32845), .COUT(n32846), .S0(n41[1]), .S1(n41[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984_add_4_3.INIT0 = 16'hfaaa;
    defparam music_cnt_2984_add_4_3.INIT1 = 16'hfaaa;
    defparam music_cnt_2984_add_4_3.INJECT1_0 = "NO";
    defparam music_cnt_2984_add_4_3.INJECT1_1 = "NO";
    LUT4 i15181_2_lut_rep_447_4_lut (.A(n35611), .B(\state[0] ), .C(\state[1] ), 
         .D(n33370), .Z(sys_clk_c_enable_347)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i15181_2_lut_rep_447_4_lut.init = 16'h0020;
    CCU2D music_cnt_2984_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32845), .S1(n41[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984_add_4_1.INIT0 = 16'hF000;
    defparam music_cnt_2984_add_4_1.INIT1 = 16'h0555;
    defparam music_cnt_2984_add_4_1.INJECT1_0 = "NO";
    defparam music_cnt_2984_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_4_lut_rep_493 (.A(uart_recv_data[7]), .B(n4), .C(n10), .D(uart_recv_data[1]), 
         .Z(n38307)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_4_lut_rep_493.init = 16'hfeff;
    LUT4 uart_recv_data_7__I_0_i16_1_lut_4_lut (.A(uart_recv_data[7]), .B(n4), 
         .C(n10), .D(uart_recv_data[1]), .Z(uart_data_busy_N_1703)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam uart_recv_data_7__I_0_i16_1_lut_4_lut.init = 16'h0100;
    LUT4 i5_4_lut (.A(cnt_run[3]), .B(n7), .C(n38380), .D(n38378), .Z(n19240)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(cnt_run[2]), .B(cnt_run[1]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX clk_cnt_2986__i7 (.D(n69_adj_1903[7]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i7.GSR = "DISABLED";
    FD1P3IX clk_cnt_2986__i8 (.D(n69_adj_1903[8]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i8.GSR = "DISABLED";
    LUT4 mux_3284_i4_4_lut (.A(n123), .B(uart_recv_data[3]), .C(sys_clk_c_enable_84), 
         .D(n54), .Z(music_tone_7__N_1634[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(102[7] 324[5])
    defparam mux_3284_i4_4_lut.init = 16'hcac0;
    LUT4 i4_4_lut (.A(n38416), .B(n35611), .C(n19195), .D(n38378), .Z(sys_clk_c_enable_328)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i2_4_lut_adj_246 (.A(n19153), .B(cnt_run[5]), .C(cnt_run[4]), 
         .D(cnt_run[3]), .Z(n19195)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(260[6] 287[13])
    defparam i2_4_lut_adj_246.init = 16'h0002;
    LUT4 i15204_2_lut (.A(sys_clk_c_enable_328), .B(n33521), .Z(n20687)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam i15204_2_lut.init = 16'h2222;
    LUT4 i20736_2_lut_rep_564 (.A(cnt_run[7]), .B(cnt_run[6]), .Z(n38378)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20736_2_lut_rep_564.init = 16'heeee;
    FD1P3IX music_cnt_2984__i1 (.D(n41[1]), .SP(sys_clk_c_enable_328), .CD(n20687), 
            .CK(sys_clk_c), .Q(music_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984__i1.GSR = "DISABLED";
    FD1P3IX music_cnt_2984__i2 (.D(n41[2]), .SP(sys_clk_c_enable_328), .CD(n20687), 
            .CK(sys_clk_c), .Q(music_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984__i2.GSR = "DISABLED";
    FD1P3IX music_cnt_2984__i3 (.D(n41[3]), .SP(sys_clk_c_enable_328), .CD(n20687), 
            .CK(sys_clk_c), .Q(music_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984__i3.GSR = "DISABLED";
    FD1P3IX clk_cnt_2986__i9 (.D(n69_adj_1903[9]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i9.GSR = "DISABLED";
    FD1P3IX music_cnt_2984__i4 (.D(n41[4]), .SP(sys_clk_c_enable_328), .CD(n20687), 
            .CK(sys_clk_c), .Q(music_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984__i4.GSR = "DISABLED";
    FD1P3IX music_cnt_2984__i5 (.D(n41[5]), .SP(sys_clk_c_enable_328), .CD(n20687), 
            .CK(sys_clk_c), .Q(\music_cnt[5] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984__i5.GSR = "DISABLED";
    FD1P3IX clk_cnt_2986__i10 (.D(n69_adj_1903[10]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i10.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_566 (.A(cnt_run[4]), .B(cnt_run[5]), .Z(n38380)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i1_2_lut_rep_566.init = 16'heeee;
    LUT4 i1_2_lut_rep_524_3_lut_4_lut (.A(cnt_run[4]), .B(cnt_run[5]), .C(cnt_run[6]), 
         .D(cnt_run[7]), .Z(n38338)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i1_2_lut_rep_524_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX clk_cnt_2986__i0 (.D(n69_adj_1903[0]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i0.GSR = "DISABLED";
    FD1P3IX cnt_delay_2985__i0 (.D(n69[0]), .SP(sys_clk_c_enable_347), .CD(n20672), 
            .CK(sys_clk_c), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i0.GSR = "DISABLED";
    FD1P3IX music_cnt_2984__i6 (.D(n41[6]), .SP(sys_clk_c_enable_328), .CD(n20687), 
            .CK(sys_clk_c), .Q(\music_cnt[6] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984__i6.GSR = "DISABLED";
    FD1P3IX music_cnt_2984__i7 (.D(n41[7]), .SP(sys_clk_c_enable_328), .CD(n20687), 
            .CK(sys_clk_c), .Q(music_cnt_c[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984__i7.GSR = "DISABLED";
    FD1P3IX clk_cnt_2986__i11 (.D(n69_adj_1903[11]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i11.GSR = "DISABLED";
    LUT4 recv_done_flag_I_0_2_lut_rep_568 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_84)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(58[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_568.init = 16'h4444;
    LUT4 mux_3284_i2_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[1]), 
         .D(n670[1]), .Z(music_tone_7__N_1634[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(58[25:55])
    defparam mux_3284_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 i22_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[2]), 
         .D(n9), .Z(music_tone_7__N_1634[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(58[25:55])
    defparam i22_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_499_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(warning), 
         .Z(n38313)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(58[25:55])
    defparam i1_2_lut_rep_499_3_lut.init = 16'hb0b0;
    LUT4 i91_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(n52), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_122)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(58[25:55])
    defparam i91_3_lut_4_lut.init = 16'hf400;
    LUT4 i1_2_lut_rep_485_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(n38416), .D(warning), .Z(sys_clk_c_enable_129)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(58[25:55])
    defparam i1_2_lut_rep_485_3_lut_4_lut.init = 16'hb000;
    FD1P3IX music_cnt_2984__i0 (.D(n41[0]), .SP(sys_clk_c_enable_328), .CD(n20687), 
            .CK(sys_clk_c), .Q(music_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984__i0.GSR = "DISABLED";
    FD1P3IX clk_cnt_2986__i12 (.D(n69_adj_1903[12]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i12.GSR = "DISABLED";
    FD1P3IX music_cnt_2984__i8 (.D(n41[8]), .SP(sys_clk_c_enable_328), .CD(n20687), 
            .CK(sys_clk_c), .Q(music_cnt_c[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2984__i8.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_247 (.A(uart_recv_data[0]), .B(uart_recv_data[3]), 
         .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_247.init = 16'heeee;
    LUT4 i4_4_lut_adj_248 (.A(uart_recv_data[6]), .B(uart_recv_data[4]), 
         .C(uart_recv_data[2]), .D(uart_recv_data[5]), .Z(n10)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i4_4_lut_adj_248.init = 16'hffbf;
    FD1P3IX cnt_delay_2985__i1 (.D(n69[1]), .SP(sys_clk_c_enable_347), .CD(n20672), 
            .CK(sys_clk_c), .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2985__i1.GSR = "DISABLED";
    FD1P3IX clk_cnt_2986__i13 (.D(n69_adj_1903[13]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i13.GSR = "DISABLED";
    FD1P3IX clk_cnt_2986__i14 (.D(n69_adj_1903[14]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i14.GSR = "DISABLED";
    FD1P3IX clk_cnt_2986__i15 (.D(n69_adj_1903[15]), .SP(sys_clk_c_enable_372), 
            .CD(sys_clk_c_enable_347), .CK(sys_clk_c), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2986__i15.GSR = "DISABLED";
    LUT4 i23_4_lut (.A(uart_music_mode), .B(n124), .C(warning), .D(n38293), 
         .Z(n9)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i23_4_lut.init = 16'hc505;
    
endmodule
//
// Verilog Description of module KEY
//

module KEY (GND_net, sys_clk_c, key3_c, n38428, key_sec, key_sec_pre, 
            n35789, n38343) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_c;
    input key3_c;
    output n38428;
    input key_sec;
    input key_sec_pre;
    output n35789;
    output n38343;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire n32819;
    wire [17:0]cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(37[16:19])
    wire [17:0]n77;
    
    wire n32818, n32817, n32816, key_rst_pre, key_rst, key_sec_pre_c, 
        key_sec_c, key_edge, n32815, n32814, n32813, n32812, n32811, 
        sys_clk_c_enable_258, n21, n34, n30, n22, n31, n28;
    
    CCU2D cnt_2977_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32819), .S0(n77[17]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2977_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2977_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2977_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2977_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32818), .COUT(n32819), .S0(n77[15]), .S1(n77[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2977_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2977_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2977_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2977_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32817), .COUT(n32818), .S0(n77[13]), .S1(n77[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2977_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2977_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2977_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_2977_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32816), .COUT(n32817), .S0(n77[11]), .S1(n77[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2977_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2977_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2977_add_4_13.INJECT1_1 = "NO";
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec_c), .CK(sys_clk_c), .Q(key_sec_pre_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key3_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1S3IX cnt_2977__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i0.GSR = "ENABLED";
    CCU2D cnt_2977_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32815), .COUT(n32816), .S0(n77[9]), .S1(n77[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2977_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2977_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2977_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2977_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32814), 
          .COUT(n32815), .S0(n77[7]), .S1(n77[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2977_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2977_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2977_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2977_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32813), 
          .COUT(n32814), .S0(n77[5]), .S1(n77[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2977_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2977_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2977_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_2977_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32812), 
          .COUT(n32813), .S0(n77[3]), .S1(n77[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2977_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2977_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2977_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_2977_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32811), 
          .COUT(n32812), .S0(n77[1]), .S1(n77[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2977_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2977_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2977_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_2977_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32811), .S1(n77[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2977_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2977_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2977_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_2977__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i17.GSR = "ENABLED";
    FD1S3IX cnt_2977__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i16.GSR = "ENABLED";
    FD1S3IX cnt_2977__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i15.GSR = "ENABLED";
    FD1S3IX cnt_2977__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i14.GSR = "ENABLED";
    FD1S3IX cnt_2977__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i13.GSR = "ENABLED";
    FD1S3IX cnt_2977__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i12.GSR = "ENABLED";
    FD1S3IX cnt_2977__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i11.GSR = "ENABLED";
    FD1S3IX cnt_2977__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i10.GSR = "ENABLED";
    FD1S3IX cnt_2977__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i9.GSR = "ENABLED";
    FD1S3IX cnt_2977__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i8.GSR = "ENABLED";
    FD1S3IX cnt_2977__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i7.GSR = "ENABLED";
    FD1S3IX cnt_2977__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i6.GSR = "ENABLED";
    FD1S3IX cnt_2977__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i5.GSR = "ENABLED";
    FD1S3IX cnt_2977__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i4.GSR = "ENABLED";
    FD1S3IX cnt_2977__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i3.GSR = "ENABLED";
    FD1S3IX cnt_2977__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i2.GSR = "ENABLED";
    FD1S3IX cnt_2977__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2977__i1.GSR = "ENABLED";
    LUT4 key_sec_pre_I_0_2_lut_rep_614 (.A(key_sec_pre_c), .B(key_sec_c), 
         .Z(n38428)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_614.init = 16'h2222;
    LUT4 i1_3_lut_4_lut (.A(key_sec_pre_c), .B(key_sec_c), .C(key_sec), 
         .D(key_sec_pre), .Z(n35789)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam i1_3_lut_4_lut.init = 16'h2022;
    LUT4 i20770_2_lut_rep_529_3_lut_4_lut (.A(key_sec_pre_c), .B(key_sec_c), 
         .C(key_sec), .D(key_sec_pre), .Z(n38343)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam i20770_2_lut_rep_529_3_lut_4_lut.init = 16'h2f22;
    FD1P3AY key_sec_29 (.D(key3_c), .SP(sys_clk_c_enable_258), .CK(sys_clk_c), 
            .Q(key_sec_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_258)) /* synthesis lut_function=(A (B (C (D)))) */ ;
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
// Verilog Description of module DS18B20Z
//

module DS18B20Z (\state[0] , GND_net, \state_back_2__N_515[2] , clk_1mhz, 
            sys_clk_c, n38297, n38260, one_wire_N_664, n38354, n38334, 
            n35865, \hundres_1__N_338[1] , \hundres_1__N_338[0] , \ds18b20_data[8] , 
            \ds18b20_data[7] , \ds18b20_data[6] , \ds18b20_data[5] , \ds18b20_data[4] , 
            sys_clk_c_enable_240, one_wire_out, n38340, sys_rst_n_c, 
            n38278, n36527, n10323, sys_clk_c_enable_336) /* synthesis syn_module_defined=1 */ ;
    output \state[0] ;
    input GND_net;
    output \state_back_2__N_515[2] ;
    output clk_1mhz;
    input sys_clk_c;
    input n38297;
    input n38260;
    output one_wire_N_664;
    output n38354;
    output n38334;
    output n35865;
    output \hundres_1__N_338[1] ;
    output \hundres_1__N_338[0] ;
    output \ds18b20_data[8] ;
    output \ds18b20_data[7] ;
    output \ds18b20_data[6] ;
    output \ds18b20_data[5] ;
    output \ds18b20_data[4] ;
    input sys_clk_c_enable_240;
    input one_wire_out;
    output n38340;
    input sys_rst_n_c;
    input n38278;
    output n36527;
    output n10323;
    input sys_clk_c_enable_336;
    
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=\u_DS18B20Z/clk_1mhz */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(36[10:18])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire n6, n13, n11, n32749;
    wire [19:0]cnt_delay;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(55[15:24])
    wire [19:0]n263;
    
    wire n32750, n32748, n38413;
    wire [5:0]cnt_read;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(58[14:22])
    
    wire n38412, n38298, clk_1mhz_N_666, n38247, n38386, sys_clk_c_enable_136, 
        n38415, n38350;
    wire [3:0]cnt_main;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(51[14:22])
    
    wire n38257, n38286, n4, n38246, one_wire_N_667, sys_clk_c_enable_345, 
        n11366, n38316, sys_clk_c_enable_116;
    wire [19:0]num_delay;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(56[15:24])
    
    wire sys_clk_c_enable_31, sys_clk_c_enable_33;
    wire [19:0]num_delay_19__N_604;
    wire [2:0]cnt_1mhz;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(37[14:22])
    wire [2:0]n17;
    
    wire sys_clk_c_enable_40, n32747, n8, n33404, n8_adj_1862, n38327, 
        n38329, n29, n36454, n36455, n38430, n35899, n38263, n16, 
        n38363, sys_clk_c_enable_91, n35761, sys_clk_c_enable_98, n38267, 
        n6_adj_1863, n20478, n36412, n38129;
    wire [5:0]cnt_write;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(57[14:23])
    wire [19:0]n3000;
    
    wire n32903, n261, n32902, n32901, n32900, n32899, n32898, 
        n32897, n32896, n32895, n32894, n35882;
    wire [2:0]state;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    wire [2:0]state_back_2__N_515;
    
    wire n35563, n12148, n36012, n26799, n36014, one_wire_N_665, 
        one_wire_N_672, one_wire_N_677, n17979, n16945, n38356, n9, 
        n20528, n38511, n3;
    wire [2:0]cnt_init;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(54[14:22])
    
    wire n38396;
    wire [7:0]data_wr;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(52[14:21])
    
    wire n7, n7_adj_1864, n38358;
    wire [15:0]temperature;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(59[15:26])
    wire [7:0]data_wr_buffer;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(53[14:28])
    
    wire sys_clk_c_enable_101, n20723, sys_clk_c_enable_343, n20646, 
        n38398, n38149, n38384, n11065, n2;
    wire [3:0]n25;
    
    wire n38510, n38509, n38516, n38522, n38521, n38310, n38039, 
        n39764, n39709, n39711, n38610, n38040, n38041;
    wire [7:0]temperature_buffer;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(60[14:32])
    
    wire sys_clk_c_enable_115, n38050, n38049, n38052, n38051, n38053, 
        sys_clk_c_enable_119, n38549;
    wire [2:0]state_back;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(62[15:25])
    
    wire sys_clk_c_enable_130, sys_clk_c_enable_131, n38336, n38548, 
        n20511, n35755, n38564, n38563, n38405, n51;
    wire [2:0]n2388;
    
    wire n38344, sys_clk_c_enable_153, sys_clk_c_enable_154, n38591, 
        n38590, n46, n38597, n38357, n38596, n38411;
    wire [5:0]n208;
    
    wire n38332, n29106, n38606, n1, n38605, n38609, n38608, n38038, 
        sys_clk_c_enable_274, n3_adj_1865, n35894, n19528, n6_adj_1866, 
        n38417, n12160, n37226, n35845, n39707, n26901, n39708, 
        n20630, n20305, n38256, n20_adj_1867, sys_clk_c_enable_285, 
        sys_clk_c_enable_282, n53, n11_adj_1868, n23, n38326;
    wire [5:0]n153;
    
    wire n19527, n35616, sys_clk_c_enable_276;
    wire [2:0]n109;
    
    wire n38385, n17853, n44, sys_clk_c_enable_307, n38245, n38276, 
        n22473, n33209, sys_clk_c_enable_331, n44_adj_1869;
    wire [2:0]state_2__N_512;
    
    wire n19869, n19787, n38381, n38314, n119, n36319, n38352, 
        n17068, n15, n18_adj_1870, n6_adj_1871, n38387, n29_adj_1872, 
        sys_clk_c_enable_335, n20588, n38598, sys_clk_c_enable_324, 
        n38282, n6_adj_1873, sys_clk_c_enable_304, n38377, n35759, 
        n38312, n38523, sys_clk_c_enable_309, n38367, n4_adj_1874;
    wire [2:0]n2386;
    
    wire n38565, n2_adj_1875, sys_clk_c_enable_332, sys_clk_c_enable_317, 
        sys_clk_c_enable_318, n4_adj_1876, n33299, n38517, n33317, 
        n33026, n36129, n26_adj_1878, n36308, n32756, n32755, n32754, 
        n32753, n32752, n32751;
    
    PFUMX i26 (.BLUT(n6), .ALUT(n13), .C0(\state[0] ), .Z(n11));
    CCU2D add_48_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32749), .COUT(n32750), .S0(n263[5]), .S1(n263[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_7.INIT0 = 16'h5aaa;
    defparam add_48_7.INIT1 = 16'h5aaa;
    defparam add_48_7.INJECT1_0 = "NO";
    defparam add_48_7.INJECT1_1 = "NO";
    CCU2D add_48_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32748), .COUT(n32749), .S0(n263[3]), .S1(n263[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_5.INIT0 = 16'h5aaa;
    defparam add_48_5.INIT1 = 16'h5aaa;
    defparam add_48_5.INJECT1_0 = "NO";
    defparam add_48_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_484_4_lut (.A(n38413), .B(cnt_read[0]), .C(n38412), 
         .D(\state_back_2__N_515[2] ), .Z(n38298)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A (D))) */ ;
    defparam i1_2_lut_rep_484_4_lut.init = 16'h08ff;
    FD1S3AX clk_1mhz_112 (.D(clk_1mhz_N_666), .CK(sys_clk_c), .Q(clk_1mhz)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(42[12] 47[6])
    defparam clk_1mhz_112.GSR = "ENABLED";
    LUT4 i31101_2_lut_2_lut_3_lut_4_lut (.A(cnt_read[5]), .B(n38247), .C(n38386), 
         .D(cnt_read[1]), .Z(sys_clk_c_enable_136)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i31101_2_lut_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_443_3_lut_4_lut_4_lut (.A(n38415), .B(\state[0] ), 
         .C(n38350), .D(cnt_main[3]), .Z(n38257)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_443_3_lut_4_lut_4_lut.init = 16'h55d5;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n38415), .B(n38297), .C(n38286), 
         .D(\state[0] ), .Z(n4)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hc444;
    LUT4 i2_3_lut_rep_432 (.A(cnt_read[4]), .B(cnt_read[5]), .C(n38260), 
         .Z(n38246)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_rep_432.init = 16'hfdfd;
    FD1S3AX one_wire_buffer_121 (.D(one_wire_N_667), .CK(clk_1mhz), .Q(one_wire_N_664)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam one_wire_buffer_121.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i0 (.D(n11366), .SP(sys_clk_c_enable_345), .CK(sys_clk_c), 
            .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    LUT4 i31107_2_lut_2_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(n38260), 
         .D(n38316), .Z(sys_clk_c_enable_116)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i31107_2_lut_2_lut_4_lut.init = 16'h0002;
    FD1P3AX num_delay_i0_i12 (.D(n38415), .SP(sys_clk_c_enable_31), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i12.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i8 (.D(num_delay_19__N_604[8]), .SP(sys_clk_c_enable_33), 
            .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i8.GSR = "DISABLED";
    FD1S3IX cnt_1mhz_2978__i0 (.D(n17[0]), .CK(sys_clk_c), .CD(n38354), 
            .Q(cnt_1mhz[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam cnt_1mhz_2978__i0.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i5 (.D(num_delay_19__N_604[5]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    CCU2D add_48_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32747), .COUT(n32748), .S0(n263[1]), .S1(n263[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_3.INIT0 = 16'h5aaa;
    defparam add_48_3.INIT1 = 16'h5aaa;
    defparam add_48_3.INJECT1_0 = "NO";
    defparam add_48_3.INJECT1_1 = "NO";
    CCU2D add_48_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32747), .S1(n263[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_1.INIT0 = 16'hF000;
    defparam add_48_1.INIT1 = 16'h5555;
    defparam add_48_1.INJECT1_0 = "NO";
    defparam add_48_1.INJECT1_1 = "NO";
    PFUMX i26088 (.BLUT(n8), .ALUT(n33404), .C0(\state[0] ), .Z(n8_adj_1862));
    LUT4 i1_4_lut_4_lut (.A(\state_back_2__N_515[2] ), .B(n38327), .C(n38329), 
         .D(n38334), .Z(n29)) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hff54;
    PFUMX i100 (.BLUT(n36454), .ALUT(n36455), .C0(n38430), .Z(n35899));
    LUT4 i2_3_lut_4_lut (.A(\state[0] ), .B(n38263), .C(n16), .D(n38363), 
         .Z(sys_clk_c_enable_91)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i2_3_lut_4_lut_adj_217 (.A(\state[0] ), .B(n38263), .C(n38350), 
         .D(n35761), .Z(sys_clk_c_enable_98)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_217.init = 16'h8000;
    LUT4 i14992_4_lut_4_lut (.A(n38267), .B(\state[0] ), .C(n38329), .D(n6_adj_1863), 
         .Z(n20478)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (D)+!B (C+(D)))) */ ;
    defparam i14992_4_lut_4_lut.init = 16'hffb8;
    L6MUX21 i30739 (.D0(n36412), .D1(n38129), .SD(cnt_write[5]), .Z(n3000[6]));
    CCU2D sub_2355_add_2_21 (.A0(cnt_delay[19]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32903), .S1(n261));
    defparam sub_2355_add_2_21.INIT0 = 16'h5999;
    defparam sub_2355_add_2_21.INIT1 = 16'h0000;
    defparam sub_2355_add_2_21.INJECT1_0 = "NO";
    defparam sub_2355_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_2355_add_2_19 (.A0(cnt_delay[17]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32902), .COUT(n32903));
    defparam sub_2355_add_2_19.INIT0 = 16'h5999;
    defparam sub_2355_add_2_19.INIT1 = 16'h5555;
    defparam sub_2355_add_2_19.INJECT1_0 = "NO";
    defparam sub_2355_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_2355_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32901), .COUT(n32902));
    defparam sub_2355_add_2_17.INIT0 = 16'h5555;
    defparam sub_2355_add_2_17.INIT1 = 16'h5999;
    defparam sub_2355_add_2_17.INJECT1_0 = "NO";
    defparam sub_2355_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_2355_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32900), .COUT(n32901));
    defparam sub_2355_add_2_15.INIT0 = 16'h5999;
    defparam sub_2355_add_2_15.INIT1 = 16'h5999;
    defparam sub_2355_add_2_15.INJECT1_0 = "NO";
    defparam sub_2355_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_2355_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32899), .COUT(n32900));
    defparam sub_2355_add_2_13.INIT0 = 16'h5555;
    defparam sub_2355_add_2_13.INIT1 = 16'h5999;
    defparam sub_2355_add_2_13.INJECT1_0 = "NO";
    defparam sub_2355_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_2355_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32898), .COUT(n32899));
    defparam sub_2355_add_2_11.INIT0 = 16'h5555;
    defparam sub_2355_add_2_11.INIT1 = 16'h5555;
    defparam sub_2355_add_2_11.INJECT1_0 = "NO";
    defparam sub_2355_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_2355_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32897), .COUT(n32898));
    defparam sub_2355_add_2_9.INIT0 = 16'h5999;
    defparam sub_2355_add_2_9.INIT1 = 16'h5999;
    defparam sub_2355_add_2_9.INJECT1_0 = "NO";
    defparam sub_2355_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_2355_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32896), .COUT(n32897));
    defparam sub_2355_add_2_7.INIT0 = 16'h5999;
    defparam sub_2355_add_2_7.INIT1 = 16'h5999;
    defparam sub_2355_add_2_7.INJECT1_0 = "NO";
    defparam sub_2355_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_2355_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32895), .COUT(n32896));
    defparam sub_2355_add_2_5.INIT0 = 16'h5999;
    defparam sub_2355_add_2_5.INIT1 = 16'h5999;
    defparam sub_2355_add_2_5.INJECT1_0 = "NO";
    defparam sub_2355_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_2355_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32894), .COUT(n32895));
    defparam sub_2355_add_2_3.INIT0 = 16'h5999;
    defparam sub_2355_add_2_3.INIT1 = 16'h5999;
    defparam sub_2355_add_2_3.INJECT1_0 = "NO";
    defparam sub_2355_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_2355_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n32894));
    defparam sub_2355_add_2_1.INIT0 = 16'h0000;
    defparam sub_2355_add_2_1.INIT1 = 16'h5999;
    defparam sub_2355_add_2_1.INJECT1_0 = "NO";
    defparam sub_2355_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(cnt_read[2]), .B(cnt_read[3]), .Z(n35882)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i20828_2_lut_3_lut_3_lut_3_lut (.A(\state_back_2__N_515[2] ), .B(\state[0] ), 
         .C(state[1]), .Z(state_back_2__N_515[0])) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;
    defparam i20828_2_lut_3_lut_3_lut_3_lut.init = 16'h4545;
    PFUMX i30737 (.BLUT(n35563), .ALUT(n12148), .C0(cnt_write[4]), .Z(n36412));
    PFUMX mux_1000_Mux_1_i31 (.BLUT(n36012), .ALUT(n26799), .C0(cnt_write[5]), 
          .Z(n36014)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;
    FD1P3AX i107_128 (.D(one_wire_N_677), .SP(one_wire_N_672), .CK(clk_1mhz), 
            .Q(one_wire_N_665)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i107_128.GSR = "ENABLED";
    LUT4 i21242_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n12148)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i21242_4_lut_4_lut_4_lut.init = 16'h1401;
    LUT4 i12515_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n17979)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (D)+!B (C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i12515_2_lut_4_lut_4_lut.init = 16'h006d;
    LUT4 i11518_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n16945)) /* synthesis lut_function=(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i11518_3_lut_4_lut.init = 16'hb6db;
    LUT4 mux_1000_Mux_1_i30_3_lut_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[3]), 
         .C(cnt_write[2]), .D(cnt_write[4]), .Z(n26799)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam mux_1000_Mux_1_i30_3_lut_4_lut_4_lut.init = 16'h0179;
    LUT4 i3_2_lut_3_lut_4_lut (.A(\state_back_2__N_515[2] ), .B(n38430), 
         .C(n38356), .D(cnt_write[1]), .Z(n9)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i3_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i15056_2_lut_3_lut (.A(n261), .B(\state_back_2__N_515[2] ), .C(sys_clk_c_enable_345), 
         .Z(n20528)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i15056_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i21264_2_lut_3_lut (.A(n261), .B(\state_back_2__N_515[2] ), .C(n263[0]), 
         .Z(n11366)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i21264_2_lut_3_lut.init = 16'h4040;
    LUT4 state_2__I_0_i3_4_lut (.A(\state[0] ), .B(n38511), .C(\state_back_2__N_515[2] ), 
         .D(n35865), .Z(n3)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam state_2__I_0_i3_4_lut.init = 16'hfaca;
    LUT4 i1_2_lut_rep_582 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n38396)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_2_lut_rep_582.init = 16'h8888;
    FD1P3AX data_wr_i0_i7 (.D(n7), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .Q(data_wr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n7_adj_1864), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i1 (.D(n38358), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .Q(data_wr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i1.GSR = "DISABLED";
    FD1P3AX data_out_i0_i10 (.D(temperature[10]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .Q(\hundres_1__N_338[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i10.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_515_3_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(cnt_init[0]), 
         .Z(n38329)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_2_lut_rep_515_3_lut.init = 16'h7070;
    FD1P3AX data_out_i0_i9 (.D(temperature[9]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .Q(\hundres_1__N_338[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i9.GSR = "DISABLED";
    FD1P3AX data_out_i0_i8 (.D(temperature[8]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .Q(\ds18b20_data[8] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i8.GSR = "DISABLED";
    FD1P3AX data_out_i0_i7 (.D(temperature[7]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .Q(\ds18b20_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i7.GSR = "DISABLED";
    FD1P3AX data_out_i0_i6 (.D(temperature[6]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .Q(\ds18b20_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i5 (.D(temperature[5]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .Q(\ds18b20_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i5.GSR = "DISABLED";
    FD1P3AX data_out_i0_i4 (.D(temperature[4]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .Q(\ds18b20_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i4.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i7 (.D(data_wr[7]), .SP(sys_clk_c_enable_101), 
            .CK(sys_clk_c), .Q(data_wr_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i6 (.D(data_wr[6]), .SP(sys_clk_c_enable_101), 
            .CK(sys_clk_c), .Q(data_wr_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i4 (.D(data_wr[1]), .SP(sys_clk_c_enable_101), 
            .CK(sys_clk_c), .Q(data_wr_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i4.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(state[1]), 
         .D(cnt_init[0]), .Z(n6)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h7000;
    LUT4 i15234_3_lut_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(sys_clk_c_enable_240), 
         .D(state[1]), .Z(n20723)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i15234_3_lut_3_lut_4_lut.init = 16'h80f0;
    FD1P3IX cnt_main_i0_i1 (.D(n16), .SP(sys_clk_c_enable_343), .CD(n20646), 
            .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    LUT4 i3702_1_lut_rep_584 (.A(cnt_read[0]), .Z(n38398)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3702_1_lut_rep_584.init = 16'h5555;
    LUT4 n16945_bdd_4_lut_4_lut (.A(cnt_read[0]), .B(cnt_read[5]), .C(n17979), 
         .D(n16945), .Z(n38149)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam n16945_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 state_2__I_0_144_i2_4_lut (.A(n38384), .B(cnt_write[0]), .C(\state[0] ), 
         .D(n11065), .Z(n2)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam state_2__I_0_144_i2_4_lut.init = 16'h0aca;
    FD1P3IX cnt_main_i0_i2 (.D(n25[2]), .SP(sys_clk_c_enable_343), .CD(n20646), 
            .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n25[3]), .SP(sys_clk_c_enable_343), .CD(n20646), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    LUT4 n11036_bdd_4_lut_then_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), 
         .C(cnt_read[2]), .D(cnt_read[3]), .Z(n38510)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D)))) */ ;
    defparam n11036_bdd_4_lut_then_4_lut.init = 16'hedbe;
    LUT4 n11036_bdd_4_lut_else_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), 
         .C(cnt_read[2]), .D(cnt_read[3]), .Z(n38509)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;
    defparam n11036_bdd_4_lut_else_4_lut.init = 16'hbedb;
    LUT4 i14360_3_lut_then_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n38516)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i14360_3_lut_then_4_lut.init = 16'h1a41;
    LUT4 i1_4_lut_then_4_lut (.A(cnt_init[0]), .B(\state[0] ), .C(n38396), 
         .D(n38267), .Z(n38522)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'hce02;
    LUT4 i1_4_lut_else_4_lut (.A(n38286), .B(\state[0] ), .Z(n38521)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h8888;
    LUT4 state_2__N_551_2__bdd_4_lut (.A(n38310), .B(cnt_write[0]), .C(cnt_write[5]), 
         .D(cnt_write[4]), .Z(n38039)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C)+!B (C (D)))) */ ;
    defparam state_2__N_551_2__bdd_4_lut.init = 16'haf3f;
    LUT4 n39710_bdd_3_lut_4_lut (.A(n39764), .B(state[1]), .C(\state[0] ), 
         .D(n39709), .Z(n39711)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n39710_bdd_3_lut_4_lut.init = 16'hfb0b;
    LUT4 n1_bdd_3_lut (.A(n38610), .B(n38040), .C(state[1]), .Z(n38041)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1_bdd_3_lut.init = 16'hcaca;
    FD1P3AX temperature_buffer_i0_i1 (.D(one_wire_out), .SP(sys_clk_c_enable_115), 
            .CK(sys_clk_c), .Q(temperature_buffer[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i1.GSR = "DISABLED";
    LUT4 data_wr_buffer_7__bdd_2_lut (.A(cnt_write[3]), .B(cnt_write[1]), 
         .Z(n38050)) /* synthesis lut_function=(A (B)) */ ;
    defparam data_wr_buffer_7__bdd_2_lut.init = 16'h8888;
    FD1P3AX temperature_buffer_i0_i2 (.D(one_wire_out), .SP(sys_clk_c_enable_116), 
            .CK(sys_clk_c), .Q(temperature_buffer[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i2.GSR = "DISABLED";
    LUT4 data_wr_buffer_7__bdd_4_lut_31781 (.A(data_wr_buffer[7]), .B(cnt_write[3]), 
         .C(data_wr_buffer[6]), .D(cnt_write[1]), .Z(n38049)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam data_wr_buffer_7__bdd_4_lut_31781.init = 16'h3088;
    LUT4 data_wr_buffer_7__bdd_4_lut_32399 (.A(data_wr_buffer[4]), .B(cnt_write[5]), 
         .C(cnt_write[3]), .D(cnt_write[1]), .Z(n38052)) /* synthesis lut_function=(!((B (C+(D))+!B ((D)+!C))+!A)) */ ;
    defparam data_wr_buffer_7__bdd_4_lut_32399.init = 16'h0028;
    LUT4 n38052_bdd_3_lut (.A(n38052), .B(n38051), .C(cnt_write[2]), .Z(n38053)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38052_bdd_3_lut.init = 16'hcaca;
    FD1P3AX temperature_buffer_i0_i4 (.D(one_wire_out), .SP(sys_clk_c_enable_119), 
            .CK(sys_clk_c), .Q(temperature_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i4.GSR = "DISABLED";
    LUT4 i14301_3_lut_then_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n38549)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B (C+!(D))+!B ((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i14301_3_lut_then_4_lut.init = 16'ha41a;
    FD1P3AX state_back_i0_i2 (.D(\state_back_2__N_515[2] ), .SP(sys_clk_c_enable_130), 
            .CK(sys_clk_c), .Q(state_back[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i2.GSR = "ENABLED";
    FD1P3AX state_back_i0_i1 (.D(n38336), .SP(sys_clk_c_enable_131), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    LUT4 i14301_3_lut_else_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n38548)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i14301_3_lut_else_4_lut.init = 16'h41a4;
    FD1P3AX temperature_buffer_i0_i5 (.D(one_wire_out), .SP(sys_clk_c_enable_136), 
            .CK(sys_clk_c), .Q(temperature_buffer[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i5.GSR = "DISABLED";
    LUT4 i2_4_lut_4_lut (.A(\state_back_2__N_515[2] ), .B(n20511), .C(n38340), 
         .D(n8_adj_1862), .Z(n35755)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h0d00;
    LUT4 n12249_bdd_4_lut_then_4_lut (.A(cnt_write[5]), .B(cnt_write[4]), 
         .C(cnt_write[2]), .D(cnt_write[3]), .Z(n38564)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam n12249_bdd_4_lut_then_4_lut.init = 16'hdebd;
    LUT4 n12249_bdd_4_lut_else_4_lut (.A(cnt_write[5]), .B(cnt_write[4]), 
         .C(cnt_write[2]), .D(cnt_write[3]), .Z(n38563)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D)+!C !(D))+!B !((D)+!C))) */ ;
    defparam n12249_bdd_4_lut_else_4_lut.init = 16'hbdeb;
    LUT4 i30630_2_lut_rep_522_2_lut (.A(\state_back_2__N_515[2] ), .B(state[1]), 
         .Z(n38336)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i30630_2_lut_rep_522_2_lut.init = 16'h4444;
    LUT4 i19_1_lut_rep_591 (.A(cnt_init[0]), .Z(n38405)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i19_1_lut_rep_591.init = 16'h5555;
    FD1S3IX cnt_1mhz_2978__i2 (.D(n17[2]), .CK(sys_clk_c), .CD(n38354), 
            .Q(cnt_1mhz[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam cnt_1mhz_2978__i2.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_2978__i1 (.D(n17[1]), .CK(sys_clk_c), .CD(n38354), 
            .Q(cnt_1mhz[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam cnt_1mhz_2978__i1.GSR = "ENABLED";
    LUT4 i2_3_lut_3_lut (.A(\state_back_2__N_515[2] ), .B(n51), .C(state[1]), 
         .Z(num_delay_19__N_604[6])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 one_wire_I_0_4_lut (.A(one_wire_out), .B(n2388[2]), .C(one_wire_N_672), 
         .D(n38344), .Z(one_wire_N_667)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam one_wire_I_0_4_lut.init = 16'hca0a;
    FD1P3AX temperature_buffer_i0_i6 (.D(one_wire_out), .SP(sys_clk_c_enable_153), 
            .CK(sys_clk_c), .Q(temperature_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i7 (.D(one_wire_out), .SP(sys_clk_c_enable_154), 
            .CK(sys_clk_c), .Q(temperature_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i7.GSR = "DISABLED";
    LUT4 i12548_3_lut_rep_453_then_3_lut (.A(cnt_write[5]), .B(cnt_write[4]), 
         .C(cnt_write[0]), .Z(n38591)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i12548_3_lut_rep_453_then_3_lut.init = 16'h0707;
    LUT4 i12548_3_lut_rep_453_else_3_lut (.A(cnt_write[1]), .B(cnt_write[5]), 
         .C(cnt_write[4]), .D(cnt_write[0]), .Z(n38590)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B (C+!(D))+!B !((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i12548_3_lut_rep_453_else_3_lut.init = 16'h407e;
    LUT4 i1_4_lut_4_lut_then_4_lut (.A(cnt_init[0]), .B(n38396), .C(n46), 
         .D(\state[0] ), .Z(n38597)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'hf0dd;
    LUT4 i1_4_lut_4_lut_else_4_lut (.A(\state[0] ), .B(n38357), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n38596)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_4_lut_4_lut_else_4_lut.init = 16'hfff7;
    LUT4 i3706_2_lut_rep_597 (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n38411)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3706_2_lut_rep_597.init = 16'h8888;
    LUT4 i3711_2_lut_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n208[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3711_2_lut_3_lut.init = 16'h7878;
    LUT4 i3713_2_lut_rep_518_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n38332)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3713_2_lut_rep_518_3_lut.init = 16'h8080;
    LUT4 i69_then_4_lut (.A(cnt_write[5]), .B(cnt_write[0]), .C(n29106), 
         .D(n38310), .Z(n38606)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;
    defparam i69_then_4_lut.init = 16'hc0e2;
    LUT4 i69_else_4_lut (.A(cnt_write[5]), .B(cnt_write[0]), .C(cnt_write[3]), 
         .D(n1), .Z(n38605)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B (D))) */ ;
    defparam i69_else_4_lut.init = 16'hddc8;
    LUT4 i3718_2_lut_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n208[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3718_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i20714_4_lut_then_3_lut (.A(\state[0] ), .B(cnt_main[0]), .C(cnt_main[3]), 
         .Z(n38609)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i20714_4_lut_then_3_lut.init = 16'h0808;
    LUT4 i20714_4_lut_else_3_lut (.A(\state[0] ), .B(cnt_main[2]), .C(cnt_main[0]), 
         .D(cnt_main[3]), .Z(n38608)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i20714_4_lut_else_3_lut.init = 16'h2000;
    LUT4 i13906_2_lut_rep_598 (.A(cnt_read[4]), .B(cnt_read[5]), .Z(n38412)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i13906_2_lut_rep_598.init = 16'h8888;
    LUT4 n1_bdd_3_lut_31771_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(\state[0] ), 
         .D(state_back[2]), .Z(n38038)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam n1_bdd_3_lut_31771_4_lut.init = 16'hf707;
    LUT4 i3_3_lut_3_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(cnt_read[0]), 
         .D(\state_back_2__N_515[2] ), .Z(n8)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i3_3_lut_3_lut_4_lut.init = 16'hf8ff;
    LUT4 i1_3_lut_rep_520_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(cnt_read[0]), 
         .D(n38413), .Z(n38334)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i1_3_lut_rep_520_4_lut.init = 16'h7000;
    LUT4 i31033_2_lut_rep_599 (.A(\state[0] ), .B(state[1]), .Z(n38413)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i31033_2_lut_rep_599.init = 16'h1111;
    LUT4 i31025_2_lut_rep_463_2_lut_3_lut_4_lut (.A(\state[0] ), .B(state[1]), 
         .C(n38354), .D(clk_1mhz), .Z(sys_clk_c_enable_274)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i31025_2_lut_rep_463_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut (.A(\state[0] ), .B(state[1]), .C(cnt_read[0]), 
         .Z(n35865)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 state_2__I_0_144_i3_4_lut_4_lut_4_lut (.A(\state[0] ), .B(state[1]), 
         .C(\state_back_2__N_515[2] ), .D(n38149), .Z(n3_adj_1865)) /* synthesis lut_function=(!(A+(B (C)+!B !((D)+!C)))) */ ;
    defparam state_2__I_0_144_i3_4_lut_4_lut_4_lut.init = 16'h1505;
    LUT4 i31176_2_lut_rep_601 (.A(state[1]), .B(\state_back_2__N_515[2] ), 
         .Z(n38415)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i31176_2_lut_rep_601.init = 16'h1111;
    LUT4 i1_2_lut_2_lut_3_lut (.A(state[1]), .B(\state_back_2__N_515[2] ), 
         .C(n35894), .Z(n19528)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_218 (.A(state_back[1]), .B(n261), .Z(n6_adj_1866)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_adj_218.init = 16'h8888;
    LUT4 i31159_2_lut_rep_448_2_lut_3_lut_4_lut (.A(state[1]), .B(\state_back_2__N_515[2] ), 
         .C(n38354), .D(clk_1mhz), .Z(sys_clk_c_enable_343)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i31159_2_lut_rep_448_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i5844_2_lut_rep_603 (.A(cnt_read[1]), .B(cnt_read[2]), .Z(n38417)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i5844_2_lut_rep_603.init = 16'hbbbb;
    LUT4 i21241_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n12160)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i21241_4_lut_4_lut_4_lut.init = 16'h4014;
    LUT4 n1_bdd_4_lut_31332 (.A(cnt_main[3]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[1]), .Z(n37226)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(D)))) */ ;
    defparam n1_bdd_4_lut_31332.init = 16'h1544;
    LUT4 n35845_bdd_4_lut (.A(n35845), .B(n38412), .C(\state[0] ), .D(state_back[0]), 
         .Z(n39707)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam n35845_bdd_4_lut.init = 16'hf707;
    LUT4 n26901_bdd_4_lut (.A(n26901), .B(cnt_write[0]), .C(cnt_write[5]), 
         .D(cnt_write[4]), .Z(n39708)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(((D)+!C)+!B))) */ ;
    defparam n26901_bdd_4_lut.init = 16'h5f3f;
    FD1P3IX cnt_read_i0_i1 (.D(n208[1]), .SP(sys_clk_c_enable_274), .CD(n20630), 
            .CK(sys_clk_c), .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n38340), .B(state[1]), .C(\state_back_2__N_515[2] ), 
         .D(\state[0] ), .Z(sys_clk_c_enable_345)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i2_4_lut.init = 16'h1001;
    LUT4 i3_4_lut (.A(cnt_main[0]), .B(cnt_main[2]), .C(\state[0] ), .D(n35761), 
         .Z(n20305)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_616 (.A(state[1]), .B(\state[0] ), .Z(n38430)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_2_lut_rep_616.init = 16'h8888;
    LUT4 i1_2_lut_rep_530_3_lut (.A(state[1]), .B(\state[0] ), .C(\state_back_2__N_515[2] ), 
         .Z(n38344)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_2_lut_rep_530_3_lut.init = 16'h0808;
    LUT4 i42_3_lut_4_lut (.A(\state[0] ), .B(n38286), .C(state[1]), .D(n38256), 
         .Z(n20_adj_1867)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i42_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n35563)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i1_2_lut_rep_536_3_lut (.A(cnt_main[0]), .B(cnt_main[2]), .C(cnt_main[1]), 
         .Z(n38350)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_rep_536_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_472_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[2]), 
         .C(cnt_main[3]), .D(cnt_main[1]), .Z(n38286)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_rep_472_3_lut_4_lut.init = 16'h0200;
    FD1P3IX cnt_read_i0_i2 (.D(n208[2]), .SP(sys_clk_c_enable_274), .CD(n20630), 
            .CK(sys_clk_c), .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i3 (.D(n208[3]), .SP(sys_clk_c_enable_274), .CD(n20630), 
            .CK(sys_clk_c), .Q(cnt_read[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i4 (.D(n208[4]), .SP(sys_clk_c_enable_274), .CD(n20630), 
            .CK(sys_clk_c), .Q(cnt_read[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i4.GSR = "ENABLED";
    LUT4 i31131_2_lut_3_lut_3_lut_4_lut_4_lut (.A(n38340), .B(cnt_main[1]), 
         .C(n35894), .D(n38415), .Z(sys_clk_c_enable_285)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i31131_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 i31134_2_lut_3_lut_3_lut_4_lut_4_lut (.A(n38340), .B(cnt_main[1]), 
         .C(n35894), .D(n38415), .Z(sys_clk_c_enable_282)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i31134_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i49_4_lut_4_lut (.A(cnt_write[4]), .B(n38310), .C(cnt_write[5]), 
         .D(n1), .Z(n53)) /* synthesis lut_function=(!(A (B+!(C))+!A (C+!(D)))) */ ;
    defparam i49_4_lut_4_lut.init = 16'h2520;
    FD1P3IX cnt_read_i0_i5 (.D(n208[5]), .SP(sys_clk_c_enable_274), .CD(n20630), 
            .CK(sys_clk_c), .Q(cnt_read[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i5.GSR = "ENABLED";
    LUT4 i30899_3_lut_4_lut_4_lut (.A(cnt_write[4]), .B(n38310), .C(n11_adj_1868), 
         .D(cnt_write[5]), .Z(n23)) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;
    defparam i30899_3_lut_4_lut_4_lut.init = 16'hd850;
    FD1P3IX cnt_delay_i0_i1 (.D(n263[1]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    LUT4 i27_3_lut_4_lut (.A(cnt_main[3]), .B(n38350), .C(state[1]), .D(n38267), 
         .Z(n13)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(89[7] 107[14])
    defparam i27_3_lut_4_lut.init = 16'hf404;
    FD1P3IX cnt_delay_i0_i2 (.D(n263[2]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i3 (.D(n263[3]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i4 (.D(n263[4]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    LUT4 i3689_3_lut_4_lut (.A(cnt_write[3]), .B(n38326), .C(cnt_write[4]), 
         .D(cnt_write[5]), .Z(n153[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(125[25:41])
    defparam i3689_3_lut_4_lut.init = 16'h7f80;
    LUT4 i31028_4_lut_4_lut (.A(n38340), .B(n19527), .C(n35616), .D(n19528), 
         .Z(sys_clk_c_enable_276)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i31028_4_lut_4_lut.init = 16'h0400;
    FD1P3IX cnt_init_i0_i2 (.D(n109[2]), .SP(sys_clk_c_enable_240), .CD(n20723), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i1 (.D(n38385), .SP(sys_clk_c_enable_240), .CD(n20723), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i0 (.D(n38405), .SP(sys_clk_c_enable_240), .CD(n20723), 
            .CK(sys_clk_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n263[5]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    LUT4 i3732_3_lut_4_lut (.A(cnt_read[3]), .B(n38332), .C(cnt_read[4]), 
         .D(cnt_read[5]), .Z(n208[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3732_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX cnt_delay_i0_i6 (.D(n263[6]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i7 (.D(n263[7]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    LUT4 i27291_3_lut (.A(cnt_1mhz[2]), .B(cnt_1mhz[1]), .C(cnt_1mhz[0]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam i27291_3_lut.init = 16'h6a6a;
    LUT4 i27284_2_lut (.A(cnt_1mhz[1]), .B(cnt_1mhz[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam i27284_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n38334), .B(\state_back_2__N_515[2] ), 
         .C(n17853), .D(n38340), .Z(sys_clk_c_enable_130)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h00b8;
    FD1P3IX cnt_delay_i0_i8 (.D(n263[8]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut_adj_219 (.A(n38334), .B(\state_back_2__N_515[2] ), 
         .C(n44), .D(n38297), .Z(sys_clk_c_enable_307)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B+!(C (D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_219.init = 16'hb800;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n38334), .B(\state_back_2__N_515[2] ), 
         .C(n4), .D(n38245), .Z(sys_clk_c_enable_31)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !(B+!(C (D)))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'hb080;
    LUT4 i1_2_lut_rep_462_3_lut_4_lut (.A(n38334), .B(\state_back_2__N_515[2] ), 
         .C(n38340), .D(sys_rst_n_c), .Z(n38276)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_462_3_lut_4_lut.init = 16'h0b00;
    LUT4 i2_4_lut_adj_220 (.A(n38276), .B(n38257), .C(n38256), .D(n6_adj_1863), 
         .Z(sys_clk_c_enable_33)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_220.init = 16'h8880;
    LUT4 i21139_3_lut (.A(n22473), .B(\state_back_2__N_515[2] ), .C(state[1]), 
         .Z(num_delay_19__N_604[8])) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i21139_3_lut.init = 16'h2323;
    LUT4 i3704_2_lut (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n208[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3704_2_lut.init = 16'h6666;
    LUT4 i1_3_lut (.A(\state[0] ), .B(cnt_init[1]), .C(cnt_init[2]), .Z(n22473)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut.init = 16'h5151;
    LUT4 i2_2_lut (.A(state[1]), .B(\state_back_2__N_515[2] ), .Z(n6_adj_1863)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2_2_lut.init = 16'hdddd;
    LUT4 i2_3_lut_4_lut_adj_221 (.A(\state_back_2__N_515[2] ), .B(n38245), 
         .C(n33209), .D(n38278), .Z(sys_clk_c_enable_131)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_221.init = 16'he000;
    LUT4 i31110_3_lut_4_lut (.A(cnt_read[5]), .B(n38247), .C(cnt_read[1]), 
         .D(n35882), .Z(sys_clk_c_enable_115)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i31110_3_lut_4_lut.init = 16'h0010;
    LUT4 i31022_3_lut_4_lut (.A(cnt_read[5]), .B(n38247), .C(cnt_read[3]), 
         .D(n38417), .Z(sys_clk_c_enable_331)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i31022_3_lut_4_lut.init = 16'h0001;
    LUT4 n38053_bdd_4_lut (.A(n38053), .B(cnt_write[0]), .C(n44_adj_1869), 
         .D(cnt_write[4]), .Z(n2388[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n38053_bdd_4_lut.init = 16'hf088;
    LUT4 i3646_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n109[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(111[24:39])
    defparam i3646_3_lut.init = 16'h6a6a;
    FD1P3IX cnt_read_i0_i0 (.D(n38398), .SP(sys_clk_c_enable_274), .CD(n20630), 
            .CK(sys_clk_c), .Q(cnt_read[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n263[9]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    LUT4 i27282_1_lut (.A(cnt_1mhz[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam i27282_1_lut.init = 16'h5555;
    FD1P3AX state_i0_i1 (.D(state_2__N_512[1]), .SP(sys_clk_c_enable_276), 
            .CK(sys_clk_c), .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n263[10]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    LUT4 mux_27_Mux_0_i7_3_lut_3_lut_rep_623 (.A(cnt_init[1]), .B(cnt_init[0]), 
         .C(cnt_init[2]), .Z(n39764)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(111[24:39])
    defparam mux_27_Mux_0_i7_3_lut_3_lut_rep_623.init = 16'h6c6c;
    LUT4 i2_4_lut_adj_222 (.A(n38334), .B(n4), .C(\state_back_2__N_515[2] ), 
         .D(n38245), .Z(sys_clk_c_enable_40)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_222.init = 16'h8c88;
    LUT4 mux_54_Mux_5_i7_4_lut (.A(n19869), .B(n19787), .C(\state_back_2__N_515[2] ), 
         .D(state[1]), .Z(num_delay_19__N_604[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_5_i7_4_lut.init = 16'hc5cf;
    LUT4 i14384_2_lut (.A(cnt_init[2]), .B(\state[0] ), .Z(n19869)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i14384_2_lut.init = 16'heeee;
    LUT4 i119_3_lut_4_lut (.A(cnt_write[5]), .B(n38381), .C(n38314), .D(n38430), 
         .Z(n119)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i119_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i30863_1_lut_2_lut_4_lut (.A(\state[0] ), .B(n38384), .C(state[1]), 
         .D(n20305), .Z(n36454)) /* synthesis lut_function=(!(A (D)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i30863_1_lut_2_lut_4_lut.init = 16'h00bf;
    LUT4 i31166_3_lut (.A(state[1]), .B(\state[0] ), .C(cnt_write[0]), 
         .Z(n36319)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i31166_3_lut.init = 16'h7f7f;
    FD1P3AX temperature_i0_i4 (.D(temperature_buffer[4]), .SP(sys_clk_c_enable_282), 
            .CK(sys_clk_c), .Q(temperature[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i4.GSR = "ENABLED";
    FD1P3AX temperature_i0_i5 (.D(temperature_buffer[5]), .SP(sys_clk_c_enable_282), 
            .CK(sys_clk_c), .Q(temperature[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i5.GSR = "ENABLED";
    FD1P3AX temperature_i0_i6 (.D(temperature_buffer[6]), .SP(sys_clk_c_enable_282), 
            .CK(sys_clk_c), .Q(temperature[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_i0_i7 (.D(temperature_buffer[7]), .SP(sys_clk_c_enable_282), 
            .CK(sys_clk_c), .Q(temperature[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i7.GSR = "ENABLED";
    FD1P3AX temperature_i0_i8 (.D(temperature_buffer[0]), .SP(sys_clk_c_enable_285), 
            .CK(sys_clk_c), .Q(temperature[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i8.GSR = "ENABLED";
    FD1P3AX temperature_i0_i9 (.D(temperature_buffer[1]), .SP(sys_clk_c_enable_285), 
            .CK(sys_clk_c), .Q(temperature[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i9.GSR = "ENABLED";
    FD1P3AX temperature_i0_i10 (.D(temperature_buffer[2]), .SP(sys_clk_c_enable_285), 
            .CK(sys_clk_c), .Q(temperature[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i10.GSR = "ENABLED";
    LUT4 i21078_2_lut_rep_538 (.A(cnt_read[2]), .B(cnt_read[3]), .Z(n38352)) /* synthesis lut_function=(A (B)) */ ;
    defparam i21078_2_lut_rep_538.init = 16'h8888;
    LUT4 i1_4_lut (.A(n17068), .B(n38344), .C(n38381), .D(cnt_write[5]), 
         .Z(n35616)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_223 (.A(\state[0] ), .B(state[1]), .C(n15), .D(n18_adj_1870), 
         .Z(state_2__N_512[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i1_4_lut_adj_223.init = 16'heca0;
    LUT4 i1_4_lut_adj_224 (.A(\state_back_2__N_515[2] ), .B(\state[0] ), 
         .C(n6_adj_1871), .D(cnt_init[0]), .Z(n18_adj_1870)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i1_4_lut_adj_224.init = 16'haaba;
    LUT4 i2_3_lut (.A(cnt_init[1]), .B(one_wire_out), .C(cnt_init[2]), 
         .Z(n6_adj_1871)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i2_3_lut.init = 16'h1010;
    LUT4 i3661_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n153[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(125[25:41])
    defparam i3661_2_lut.init = 16'h6666;
    LUT4 i31104_3_lut_4_lut (.A(cnt_read[2]), .B(cnt_read[3]), .C(cnt_read[1]), 
         .D(n38246), .Z(sys_clk_c_enable_119)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i31104_3_lut_4_lut.init = 16'h0008;
    FD1P3IX cnt_delay_i0_i11 (.D(n263[11]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    LUT4 i3682_2_lut_3_lut_4_lut (.A(cnt_write[2]), .B(n38387), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n153[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(125[25:41])
    defparam i3682_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i51_3_lut_4_lut (.A(cnt_init[0]), .B(n38396), .C(\state[0] ), 
         .D(n53), .Z(n29_adj_1872)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;
    defparam i51_3_lut_4_lut.init = 16'h02f2;
    LUT4 i12388_3_lut_rep_442_4_lut (.A(cnt_init[0]), .B(n38396), .C(\state[0] ), 
         .D(n38267), .Z(n38256)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i12388_3_lut_rep_442_4_lut.init = 16'hf202;
    FD1P3IX cnt_delay_i0_i12 (.D(n263[12]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    LUT4 i3725_2_lut_3_lut_4_lut (.A(cnt_read[2]), .B(n38411), .C(cnt_read[4]), 
         .D(cnt_read[3]), .Z(n208[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3725_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3IX cnt_delay_i0_i13 (.D(n263[13]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i1 (.D(n153[1]), .SP(sys_clk_c_enable_335), .CD(n20588), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i2 (.D(n153[2]), .SP(sys_clk_c_enable_335), .CD(n20588), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i3 (.D(n153[3]), .SP(sys_clk_c_enable_335), .CD(n20588), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    LUT4 i31098_3_lut_4_lut (.A(cnt_read[5]), .B(n38247), .C(cnt_read[1]), 
         .D(n35882), .Z(sys_clk_c_enable_153)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i31098_3_lut_4_lut.init = 16'h0002;
    LUT4 i31095_2_lut_2_lut_3_lut_4_lut (.A(cnt_read[5]), .B(n38247), .C(n38352), 
         .D(cnt_read[1]), .Z(sys_clk_c_enable_154)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i31095_2_lut_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i3557_3_lut_rep_540 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .Z(n38354)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i3557_3_lut_rep_540.init = 16'hc8c8;
    LUT4 i240_2_lut_rep_526_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n38340)) /* synthesis lut_function=(A ((D)+!B)+!A (((D)+!C)+!B)) */ ;
    defparam i240_2_lut_rep_526_4_lut.init = 16'hff37;
    LUT4 clk_1mhz_I_0_2_lut_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(clk_1mhz_N_666)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam clk_1mhz_I_0_2_lut_4_lut.init = 16'h37c8;
    LUT4 i15032_3_lut_4_lut_4_lut_4_lut (.A(\state_back_2__N_515[2] ), .B(n38413), 
         .C(n38412), .D(n38340), .Z(n20630)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!B))) */ ;
    defparam i15032_3_lut_4_lut_4_lut_4_lut.init = 16'h00c4;
    FD1P3IX cnt_write_i0_i4 (.D(n153[4]), .SP(sys_clk_c_enable_335), .CD(n20588), 
            .CK(sys_clk_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    LUT4 i31126_4_lut_4_lut (.A(\state_back_2__N_515[2] ), .B(n38598), .C(n38298), 
         .D(n38297), .Z(sys_clk_c_enable_324)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;
    defparam i31126_4_lut_4_lut.init = 16'hb000;
    LUT4 i2_2_lut_rep_542 (.A(cnt_write[3]), .B(cnt_write[2]), .Z(n38356)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_542.init = 16'heeee;
    LUT4 i31153_2_lut_rep_496_3_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[1]), .Z(n38310)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i31153_2_lut_rep_496_3_lut.init = 16'h0101;
    PFUMX i32474 (.BLUT(n39711), .ALUT(n39707), .C0(\state_back_2__N_515[2] ), 
          .Z(state_2__N_512[0]));
    LUT4 i1_2_lut_rep_468_3_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[4]), .D(cnt_write[1]), .Z(n38282)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_rep_468_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_2_lut_rep_431_4_lut (.A(n38329), .B(n38267), .C(\state[0] ), 
         .D(state[1]), .Z(n38245)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_rep_431_4_lut.init = 16'hcaff;
    PFUMX i32472 (.BLUT(n37226), .ALUT(n39708), .C0(state[1]), .Z(n39709));
    LUT4 i20874_2_lut_rep_543 (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n38357)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(89[7] 107[14])
    defparam i20874_2_lut_rep_543.init = 16'h8888;
    LUT4 i3624_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(89[7] 107[14])
    defparam i3624_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3427_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n6_adj_1873)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(89[7] 107[14])
    defparam i3427_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i3617_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(89[7] 107[14])
    defparam i3617_2_lut_3_lut.init = 16'h7878;
    LUT4 i21375_2_lut_rep_544 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n38358)) /* synthesis lut_function=(A (B)) */ ;
    defparam i21375_2_lut_rep_544.init = 16'h8888;
    LUT4 i21376_1_lut_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7_adj_1864)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i21376_1_lut_2_lut.init = 16'h7777;
    LUT4 mux_1000_Mux_1_i15_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), 
         .C(cnt_write[3]), .D(cnt_write[4]), .Z(n36012)) /* synthesis lut_function=(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam mux_1000_Mux_1_i15_3_lut_4_lut.init = 16'hb6da;
    LUT4 i1_3_lut_adj_225 (.A(\state_back_2__N_515[2] ), .B(n35755), .C(n35899), 
         .Z(sys_clk_c_enable_304)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut_adj_225.init = 16'hc8c8;
    LUT4 i30526_3_lut (.A(cnt_write[5]), .B(n38377), .C(cnt_write[3]), 
         .Z(n11_adj_1868)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i30526_3_lut.init = 16'h0101;
    LUT4 i30275_2_lut_rep_549 (.A(state[1]), .B(cnt_main[3]), .Z(n38363)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30275_2_lut_rep_549.init = 16'heeee;
    LUT4 i30494_2_lut_3_lut_4_lut (.A(state[1]), .B(cnt_main[3]), .C(cnt_main[1]), 
         .D(cnt_main[0]), .Z(n35759)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i30494_2_lut_3_lut_4_lut.init = 16'h0111;
    LUT4 i30864_1_lut_4_lut_4_lut (.A(\state_back_2__N_515[2] ), .B(n38314), 
         .C(n38312), .D(n20305), .Z(n36455)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;
    defparam i30864_1_lut_4_lut_4_lut.init = 16'h0203;
    LUT4 i1_4_lut_adj_226 (.A(n38297), .B(n38523), .C(n38334), .D(\state_back_2__N_515[2] ), 
         .Z(sys_clk_c_enable_309)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_226.init = 16'ha088;
    LUT4 i2_1_lut_rep_553 (.A(cnt_write[0]), .Z(n38367)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i2_1_lut_rep_553.init = 16'h5555;
    LUT4 cnt_write_0__bdd_4_lut_32207 (.A(cnt_write[0]), .B(n38310), .C(n12160), 
         .D(cnt_write[4]), .Z(n38129)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam cnt_write_0__bdd_4_lut_32207.init = 16'h88f0;
    LUT4 i21143_4_lut_4_lut (.A(cnt_write[0]), .B(n36014), .C(n38430), 
         .D(\state_back_2__N_515[2] ), .Z(num_delay_19__N_604[1])) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i21143_4_lut_4_lut.init = 16'hff40;
    LUT4 mux_54_Mux_2_i7_4_lut (.A(n38327), .B(n19787), .C(\state_back_2__N_515[2] ), 
         .D(n4_adj_1874), .Z(num_delay_19__N_604[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_2_i7_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_adj_227 (.A(cnt_init[0]), .B(cnt_init[2]), .Z(n4_adj_1874)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_227.init = 16'h2222;
    LUT4 i30895_3_lut_4_lut_4_lut (.A(cnt_write[0]), .B(n2386[0]), .C(\state[0] ), 
         .D(n38565), .Z(n2_adj_1875)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i30895_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 i2_4_lut_4_lut_adj_228 (.A(\state_back_2__N_515[2] ), .B(\state[0] ), 
         .C(state[1]), .D(n38340), .Z(sys_clk_c_enable_335)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+(D))))) */ ;
    defparam i2_4_lut_4_lut_adj_228.init = 16'h0041;
    LUT4 i12552_4_lut (.A(cnt_write[4]), .B(cnt_write[0]), .C(n38356), 
         .D(cnt_write[1]), .Z(n17068)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i12552_4_lut.init = 16'hcccd;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(\state[0] ), .B(cnt_main[3]), 
         .C(n38350), .D(n38415), .Z(n33209)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h75ff;
    LUT4 i1_4_lut_adj_229 (.A(n38297), .B(n20_adj_1867), .C(n38334), .D(\state_back_2__N_515[2] ), 
         .Z(sys_clk_c_enable_332)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_229.init = 16'ha088;
    LUT4 i12389_3_lut_4_lut_4_lut (.A(\state[0] ), .B(n38256), .C(state[1]), 
         .D(n38286), .Z(n17853)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i12389_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 i3_4_lut_4_lut_4_lut (.A(\state[0] ), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n35894)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i3_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i15158_4_lut_4_lut (.A(\state[0] ), .B(cnt_main[3]), .C(n6_adj_1873), 
         .D(sys_clk_c_enable_343), .Z(n20646)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i15158_4_lut_4_lut.init = 16'hd500;
    LUT4 i30768_3_lut_rep_563 (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n38377)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;
    defparam i30768_3_lut_rep_563.init = 16'hcdcd;
    LUT4 i27317_2_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n1)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B (C+(D))))) */ ;
    defparam i27317_2_lut_4_lut.init = 16'h00cd;
    FD1P3AX state_i0_i2 (.D(state_2__N_512[2]), .SP(sys_clk_c_enable_304), 
            .CK(sys_clk_c), .Q(\state_back_2__N_515[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_i0_i2.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_230 (.A(n35755), .B(\state_back_2__N_515[2] ), .C(n19528), 
         .D(n119), .Z(sys_clk_c_enable_317)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i2_4_lut_adj_230.init = 16'h80a0;
    LUT4 i1_4_lut_adj_231 (.A(n4), .B(n38344), .C(n29), .D(n46), .Z(sys_clk_c_enable_318)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_4_lut_adj_231.init = 16'h20a0;
    FD1P3IX cnt_write_i0_i5 (.D(n153[5]), .SP(sys_clk_c_enable_335), .CD(n20588), 
            .CK(sys_clk_c), .Q(cnt_write[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i5.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i1 (.D(num_delay_19__N_604[1]), .SP(sys_clk_c_enable_307), 
            .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i1.GSR = "DISABLED";
    LUT4 i5662_2_lut (.A(cnt_write[4]), .B(cnt_write[5]), .Z(n11065)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i5662_2_lut.init = 16'h8888;
    FD1P3AX num_delay_i0_i2 (.D(num_delay_19__N_604[2]), .SP(sys_clk_c_enable_309), 
            .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i2.GSR = "DISABLED";
    LUT4 mux_54_Mux_4_i7_4_lut (.A(n22473), .B(n19787), .C(\state_back_2__N_515[2] ), 
         .D(n4_adj_1876), .Z(num_delay_19__N_604[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_4_i7_4_lut.init = 16'hcfca;
    FD1P3IX num_delay_i0_i3 (.D(n38517), .SP(sys_clk_c_enable_332), .CD(n33299), 
            .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i3.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n263[14]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_567 (.A(cnt_write[4]), .B(cnt_write[0]), .Z(n38381)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_567.init = 16'h4444;
    FD1P3AX state_i0_i0 (.D(state_2__N_512[0]), .SP(sys_clk_c_enable_317), 
            .CK(sys_clk_c), .Q(\state[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i4 (.D(num_delay_19__N_604[4]), .SP(sys_clk_c_enable_318), 
            .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i4.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i15 (.D(n263[15]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i6 (.D(num_delay_19__N_604[6]), .SP(sys_clk_c_enable_324), 
            .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i6.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_498_3_lut (.A(cnt_write[4]), .B(cnt_write[0]), .C(cnt_write[5]), 
         .Z(n38312)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_498_3_lut.init = 16'h4040;
    PFUMX i32 (.BLUT(n35759), .ALUT(n6_adj_1866), .C0(\state_back_2__N_515[2] ), 
          .Z(n15));
    LUT4 i17031_3_lut (.A(cnt_init[2]), .B(n3000[6]), .C(\state[0] ), 
         .Z(n51)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i17031_3_lut.init = 16'hc5c5;
    LUT4 i31038_4_lut (.A(n33209), .B(n38334), .C(n20478), .D(\state_back_2__N_515[2] ), 
         .Z(n36527)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;
    defparam i31038_4_lut.init = 16'h80a0;
    LUT4 i3608_1_lut (.A(cnt_main[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(88[24:39])
    defparam i3608_1_lut.init = 16'h5555;
    LUT4 i4971_1_lut (.A(one_wire_N_665), .Z(n10323)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(63[2] 264[5])
    defparam i4971_1_lut.init = 16'h5555;
    PFUMX i31934 (.BLUT(n38608), .ALUT(n38609), .C0(cnt_main[1]), .Z(n38610));
    PFUMX i31932 (.BLUT(n38605), .ALUT(n38606), .C0(cnt_write[4]), .Z(n46));
    PFUMX i31926 (.BLUT(n38596), .ALUT(n38597), .C0(state[1]), .Z(n38598));
    PFUMX i31922 (.BLUT(n38590), .ALUT(n38591), .C0(n38356), .Z(n38267));
    LUT4 i31074_2_lut_rep_570 (.A(cnt_init[2]), .B(cnt_init[0]), .Z(n38384)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i31074_2_lut_rep_570.init = 16'h1111;
    FD1P3IX cnt_delay_i0_i16 (.D(n263[16]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i0 (.D(one_wire_out), .SP(sys_clk_c_enable_331), 
            .CK(sys_clk_c), .Q(temperature_buffer[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i0.GSR = "DISABLED";
    FD1P3IX num_delay_i0_i0 (.D(n19787), .SP(sys_clk_c_enable_332), .CD(n33299), 
            .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i0.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i17 (.D(n263[17]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    LUT4 i4_2_lut_3_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(cnt_init[1]), 
         .Z(n2386[0])) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i4_2_lut_3_lut.init = 16'hefef;
    PFUMX i31904 (.BLUT(n38563), .ALUT(n38564), .C0(cnt_write[1]), .Z(n38565));
    FD1P3IX cnt_delay_i0_i18 (.D(n263[18]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_500_4_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(state[1]), 
         .D(\state[0] ), .Z(n38314)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_rep_500_4_lut.init = 16'h0010;
    FD1P3IX cnt_write_i0_i0 (.D(n38367), .SP(sys_clk_c_enable_335), .CD(n20588), 
            .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    FD1P3AX state_back_i0_i0 (.D(state_back_2__N_515[0]), .SP(sys_clk_c_enable_336), 
            .CK(sys_clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    LUT4 i3639_2_lut_rep_571 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n38385)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(111[24:39])
    defparam i3639_2_lut_rep_571.init = 16'h6666;
    LUT4 i1_2_lut_rep_572 (.A(cnt_read[2]), .B(cnt_read[3]), .Z(n38386)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_572.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_232 (.A(cnt_read[2]), .B(cnt_read[3]), 
         .C(cnt_read[0]), .D(cnt_read[1]), .Z(n35845)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_232.init = 16'hfffe;
    LUT4 i1_2_lut_rep_502_3_lut (.A(cnt_read[2]), .B(cnt_read[3]), .C(cnt_read[1]), 
         .Z(n38316)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_502_3_lut.init = 16'hfefe;
    PFUMX i31894 (.BLUT(n38548), .ALUT(n38549), .C0(cnt_read[1]), .Z(n19787));
    LUT4 i2_3_lut_4_lut_adj_233 (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(data_wr_buffer[7]), .Z(n33317)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i2_3_lut_4_lut_adj_233.init = 16'h2000;
    LUT4 i21352_2_lut_rep_573 (.A(cnt_write[0]), .B(cnt_write[1]), .Z(n38387)) /* synthesis lut_function=(A (B)) */ ;
    defparam i21352_2_lut_rep_573.init = 16'h8888;
    LUT4 i21243_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(89[7] 107[14])
    defparam i21243_2_lut.init = 16'hdddd;
    LUT4 i21455_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n26901)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i21455_2_lut_3_lut_4_lut.init = 16'hfff8;
    LUT4 i3670_2_lut_rep_512_3_lut (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(cnt_write[2]), .Z(n38326)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3670_2_lut_rep_512_3_lut.init = 16'h8080;
    LUT4 i3668_2_lut_3_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n153[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i3668_2_lut_3_lut.init = 16'h7878;
    LUT4 i30_2_lut (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n16)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i30_2_lut.init = 16'h6666;
    LUT4 i3675_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n153[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i3675_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3IX cnt_main_i0_i0 (.D(n25[0]), .SP(sys_clk_c_enable_343), .CD(n20646), 
            .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_234 (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(data_wr_buffer[4]), .Z(n33026)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_234.init = 16'h0800;
    LUT4 i5_4_lut_4_lut (.A(cnt_write[5]), .B(n38297), .C(n36129), .D(n9), 
         .Z(sys_clk_c_enable_101)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i5_4_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_235 (.A(cnt_write[5]), .B(cnt_write[4]), 
         .C(n38356), .D(cnt_write[1]), .Z(n29106)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_235.init = 16'hddd5;
    LUT4 i30455_2_lut (.A(cnt_write[0]), .B(cnt_write[4]), .Z(n36129)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30455_2_lut.init = 16'heeee;
    PFUMX i31779 (.BLUT(n38050), .ALUT(n38049), .C0(cnt_write[5]), .Z(n38051));
    PFUMX i31772 (.BLUT(n38041), .ALUT(n38038), .C0(\state_back_2__N_515[2] ), 
          .Z(state_2__N_512[2]));
    PFUMX i31769 (.BLUT(n38329), .ALUT(n38039), .C0(\state[0] ), .Z(n38040));
    PFUMX i31876 (.BLUT(n38521), .ALUT(n38522), .C0(state[1]), .Z(n38523));
    PFUMX i31872 (.BLUT(n38549), .ALUT(n38516), .C0(cnt_read[1]), .Z(n38517));
    PFUMX i47 (.BLUT(n23), .ALUT(n26_adj_1878), .C0(n36319), .Z(n44));
    LUT4 i1_4_lut_4_lut_adj_236 (.A(cnt_write[5]), .B(cnt_write[3]), .C(n33026), 
         .D(n33317), .Z(n44_adj_1869)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_4_lut_adj_236.init = 16'h5140;
    PFUMX i31868 (.BLUT(n38509), .ALUT(n38510), .C0(cnt_read[1]), .Z(n38511));
    PFUMX state_2__I_0_144_i7 (.BLUT(n2), .ALUT(n3_adj_1865), .C0(n36308), 
          .Z(one_wire_N_672)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;
    FD1P3IX cnt_delay_i0_i19 (.D(n263[19]), .SP(sys_clk_c_enable_345), .CD(n20528), 
            .CK(sys_clk_c), .Q(cnt_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    PFUMX state_2__I_0_i7 (.BLUT(n2_adj_1875), .ALUT(n3), .C0(n36308), 
          .Z(one_wire_N_677)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;
    LUT4 i1_3_lut_3_lut_3_lut (.A(state[1]), .B(n261), .C(\state[0] ), 
         .Z(n20511)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i1_3_lut_3_lut_3_lut.init = 16'h4545;
    LUT4 i1_2_lut_2_lut (.A(state[1]), .B(cnt_main[3]), .Z(n35761)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i52_3_lut_4_lut_4_lut (.A(state[1]), .B(n29_adj_1872), .C(n38286), 
         .D(\state[0] ), .Z(n26_adj_1878)) /* synthesis lut_function=(A (B)+!A (C (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i52_3_lut_4_lut_4_lut.init = 16'hd888;
    LUT4 i1_2_lut_rep_433_4_lut (.A(n35865), .B(\state_back_2__N_515[2] ), 
         .C(n38297), .D(cnt_read[4]), .Z(n38247)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_433_4_lut.init = 16'hffbf;
    LUT4 i1_3_lut_3_lut (.A(state[1]), .B(n3000[6]), .C(\state[0] ), .Z(n4_adj_1876)) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i1_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i15102_4_lut_4_lut (.A(state[1]), .B(n38282), .C(cnt_write[5]), 
         .D(sys_clk_c_enable_335), .Z(n20588)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i15102_4_lut_4_lut.init = 16'hd500;
    LUT4 i20829_2_lut_rep_513_2_lut (.A(state[1]), .B(\state[0] ), .Z(n38327)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i20829_2_lut_rep_513_2_lut.init = 16'hdddd;
    LUT4 i3_4_lut_4_lut (.A(state[1]), .B(n17068), .C(cnt_write[5]), .D(\state_back_2__N_515[2] ), 
         .Z(n33404)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i3_4_lut_4_lut.init = 16'hfff7;
    LUT4 i3_3_lut_4_lut_4_lut (.A(state[1]), .B(n38384), .C(\state_back_2__N_515[2] ), 
         .D(\state[0] ), .Z(n19527)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i3_3_lut_4_lut_4_lut.init = 16'hfff7;
    CCU2D add_48_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32756), 
          .S0(n263[19]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_21.INIT0 = 16'h5aaa;
    defparam add_48_21.INIT1 = 16'h0000;
    defparam add_48_21.INJECT1_0 = "NO";
    defparam add_48_21.INJECT1_1 = "NO";
    CCU2D add_48_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32755), .COUT(n32756), .S0(n263[17]), .S1(n263[18]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_19.INIT0 = 16'h5aaa;
    defparam add_48_19.INIT1 = 16'h5aaa;
    defparam add_48_19.INJECT1_0 = "NO";
    defparam add_48_19.INJECT1_1 = "NO";
    CCU2D add_48_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32754), .COUT(n32755), .S0(n263[15]), .S1(n263[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_17.INIT0 = 16'h5aaa;
    defparam add_48_17.INIT1 = 16'h5aaa;
    defparam add_48_17.INJECT1_0 = "NO";
    defparam add_48_17.INJECT1_1 = "NO";
    CCU2D add_48_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32753), .COUT(n32754), .S0(n263[13]), .S1(n263[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_15.INIT0 = 16'h5aaa;
    defparam add_48_15.INIT1 = 16'h5aaa;
    defparam add_48_15.INJECT1_0 = "NO";
    defparam add_48_15.INJECT1_1 = "NO";
    LUT4 i30633_1_lut_2_lut_2_lut (.A(\state_back_2__N_515[2] ), .B(state[1]), 
         .Z(n36308)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i30633_1_lut_2_lut_2_lut.init = 16'hbbbb;
    CCU2D add_48_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32752), .COUT(n32753), .S0(n263[11]), .S1(n263[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_13.INIT0 = 16'h5aaa;
    defparam add_48_13.INIT1 = 16'h5aaa;
    defparam add_48_13.INJECT1_0 = "NO";
    defparam add_48_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_237 (.A(\state_back_2__N_515[2] ), 
         .B(n11), .C(n38340), .D(sys_rst_n_c), .Z(n33299)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_237.init = 16'h0400;
    LUT4 i1_2_lut_rep_449_3_lut_4_lut_4_lut (.A(\state_back_2__N_515[2] ), 
         .B(sys_rst_n_c), .C(n38354), .D(clk_1mhz), .Z(n38263)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_449_3_lut_4_lut_4_lut.init = 16'h0040;
    CCU2D add_48_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32751), .COUT(n32752), .S0(n263[9]), .S1(n263[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_11.INIT0 = 16'h5aaa;
    defparam add_48_11.INIT1 = 16'h5aaa;
    defparam add_48_11.INJECT1_0 = "NO";
    defparam add_48_11.INJECT1_1 = "NO";
    CCU2D add_48_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32750), .COUT(n32751), .S0(n263[7]), .S1(n263[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_9.INIT0 = 16'h5aaa;
    defparam add_48_9.INIT1 = 16'h5aaa;
    defparam add_48_9.INJECT1_0 = "NO";
    defparam add_48_9.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module BCD
//

module BCD (\hundres_0__N_346[0] , n4, \sec[1] , n38171, \hundres_0__N_349[1] , 
            \hundres_0__N_349[2] , n38158, \sec[5] , \sec[6] , \sec[7] , 
            \sec[2] , n38166, \sec[3] , \sec[4] , n8440, n38162, 
            \hundres_0__N_346[1] ) /* synthesis syn_module_defined=1 */ ;
    output \hundres_0__N_346[0] ;
    output n4;
    input \sec[1] ;
    output n38171;
    output \hundres_0__N_349[1] ;
    output \hundres_0__N_349[2] ;
    output n38158;
    input \sec[5] ;
    input \sec[6] ;
    input \sec[7] ;
    input \sec[2] ;
    output n38166;
    input \sec[3] ;
    input \sec[4] ;
    output n8440;
    output n38162;
    output \hundres_0__N_346[1] ;
    
    
    wire n38201;
    wire [3:0]hundres_1__N_340;
    
    wire n38395, n38322;
    wire [3:0]hundres_1__N_338;
    
    wire n38290, n38211, n38202, n38220, n38567, n38566;
    wire [3:0]hundres_1__N_339;
    
    wire n38242, n38273, n38200, n38231;
    
    LUT4 i3507_2_lut_4_lut_4_lut (.A(n38201), .B(hundres_1__N_340[2]), .C(hundres_1__N_340[1]), 
         .D(\hundres_0__N_346[0] ), .Z(n4)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i3507_2_lut_4_lut_4_lut.init = 16'hff6c;
    LUT4 i3378_3_lut_rep_344_4_lut (.A(\sec[1] ), .B(n38171), .C(\hundres_0__N_349[1] ), 
         .D(\hundres_0__N_349[2] ), .Z(n38158)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3378_3_lut_rep_344_4_lut.init = 16'hffe0;
    LUT4 i3517_2_lut_rep_581 (.A(\sec[5] ), .B(\sec[6] ), .Z(n38395)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3517_2_lut_rep_581.init = 16'heeee;
    LUT4 i3536_2_lut_rep_508_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(n38322)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3536_2_lut_rep_508_3_lut.init = 16'he0e0;
    LUT4 i4750_3_lut_4_lut_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(hundres_1__N_338[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4750_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i13969_2_lut_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(hundres_1__N_338[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i13969_2_lut_3_lut.init = 16'h1010;
    LUT4 i4742_2_lut_rep_476_3_lut_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(n38290)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4742_2_lut_rep_476_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4827_2_lut_3_lut_3_lut_4_lut (.A(\sec[2] ), .B(n38211), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(\hundres_0__N_349[2] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4827_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4812_2_lut_rep_357_4_lut_4_lut (.A(\sec[2] ), .B(n38211), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(n38171)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4812_2_lut_rep_357_4_lut_4_lut.init = 16'h554a;
    LUT4 i4834_3_lut_rep_352_4_lut_3_lut_4_lut (.A(\sec[2] ), .B(n38211), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(n38166)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4834_3_lut_rep_352_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3374_3_lut_rep_388 (.A(\sec[2] ), .B(n38211), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(n38202)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3374_3_lut_rep_388.init = 16'hffe0;
    LUT4 i4820_3_lut_4_lut (.A(\sec[2] ), .B(n38211), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(\hundres_0__N_349[1] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4820_3_lut_4_lut.init = 16'h998c;
    LUT4 i3509_2_lut_rep_387_3_lut (.A(\sec[3] ), .B(n38220), .C(\sec[2] ), 
         .Z(n38201)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3509_2_lut_rep_387_3_lut.init = 16'hf6f6;
    LUT4 i4861_2_lut_rep_397_4_lut_4_lut_then_4_lut (.A(n38290), .B(\sec[4] ), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(n38567)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4861_2_lut_rep_397_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i4861_2_lut_rep_397_4_lut_4_lut_else_4_lut (.A(n38290), .B(\sec[4] ), 
         .C(hundres_1__N_338[1]), .D(hundres_1__N_338[2]), .Z(n38566)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4861_2_lut_rep_397_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i4911_3_lut_4_lut_3_lut_4_lut (.A(\sec[4] ), .B(n38290), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(hundres_1__N_339[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4911_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12210_2_lut_rep_428_3_lut_4_lut (.A(\sec[4] ), .B(n38290), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(n38242)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i12210_2_lut_rep_428_3_lut_4_lut.init = 16'heee0;
    LUT4 i3371_3_lut_rep_459 (.A(\sec[4] ), .B(n38290), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(n38273)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3371_3_lut_rep_459.init = 16'hffe0;
    LUT4 i4897_3_lut_4_lut (.A(\sec[4] ), .B(n38290), .C(hundres_1__N_338[1]), 
         .D(hundres_1__N_338[2]), .Z(hundres_1__N_339[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4897_3_lut_4_lut.init = 16'h998c;
    LUT4 n4_bdd_4_lut_32465 (.A(n4), .B(n38322), .C(n38200), .D(hundres_1__N_339[3]), 
         .Z(n8440)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A !((C+(D))+!B)) */ ;
    defparam n4_bdd_4_lut_32465.init = 16'ha20c;
    LUT4 i4876_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_338[1]), .B(n38242), 
         .C(hundres_1__N_339[1]), .D(n38231), .Z(hundres_1__N_340[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4876_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3372_3_lut_rep_406_4_lut (.A(hundres_1__N_338[1]), .B(n38242), 
         .C(hundres_1__N_339[1]), .D(n38231), .Z(n38220)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3372_3_lut_rep_406_4_lut.init = 16'hf666;
    LUT4 i4883_3_lut_rep_386_4_lut_3_lut_4_lut (.A(hundres_1__N_338[1]), .B(n38242), 
         .C(hundres_1__N_339[1]), .D(n38231), .Z(n38200)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4883_3_lut_rep_386_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3513_2_lut_rep_417_3_lut (.A(\sec[4] ), .B(n38273), .C(\sec[3] ), 
         .Z(n38231)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3513_2_lut_rep_417_3_lut.init = 16'hf6f6;
    LUT4 i4869_3_lut_4_lut (.A(\sec[4] ), .B(n38273), .C(\sec[3] ), .D(n38220), 
         .Z(hundres_1__N_340[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4869_3_lut_4_lut.init = 16'h6966;
    LUT4 i3505_2_lut_rep_348_3_lut (.A(\sec[2] ), .B(n38202), .C(\sec[1] ), 
         .Z(n38162)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3505_2_lut_rep_348_3_lut.init = 16'hf6f6;
    LUT4 i4840_2_lut_3_lut_3_lut_4_lut (.A(n38395), .B(\sec[7] ), .C(hundres_1__N_339[3]), 
         .D(n38200), .Z(\hundres_0__N_346[0] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4840_2_lut_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4848_3_lut_4_lut_3_lut_4_lut (.A(n38395), .B(\sec[7] ), .C(hundres_1__N_339[3]), 
         .D(n38200), .Z(\hundres_0__N_346[1] )) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4848_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    PFUMX i31906 (.BLUT(n38566), .ALUT(n38567), .C0(\sec[3] ), .Z(n38211));
    
endmodule
//
// Verilog Description of module uart_send
//

module uart_send (sys_clk_c, uart_en, uart_txd_c, uart_send_data, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input uart_en;
    output uart_txd_c;
    input [7:0]uart_send_data;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire uart_en_d1, uart_en_d0, uart_tx_busy, n20500, n11237, n17206, 
        n36337;
    wire [0:0]n5345;
    wire [15:0]n2105;
    
    wire sys_clk_c_enable_174, n38376, n11228, n33187, uart_txd_N_745, 
        uart_tx_busy_N_742, n10, n36334, n17842;
    wire [0:0]n5316;
    wire [15:0]clk_cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    
    wire n20574;
    wire [15:0]n69;
    
    wire n38425, n36258, n33259, n36254, n17, n36204, n36097, 
        n38375, sys_clk_c_enable_381;
    wire [7:0]tx_data;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(22[12:19])
    
    wire n29691, n33354, n4, n16, n17841, n11236, n36326, n32827, 
        n32826, n32825, n32824, n32823, n32822, n32821, n32820;
    
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(42[10] 45[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n20500), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(42[10] 45[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    PFUMX i11553 (.BLUT(n11237), .ALUT(n17206), .C0(n36337), .Z(n5345[0]));
    FD1P3JX tx_cnt_FSM_i0 (.D(n2105[15]), .SP(sys_clk_c_enable_174), .PD(n38376), 
            .CK(sys_clk_c), .Q(n2105[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i20746_4_lut (.A(n11228), .B(n2105[0]), .C(uart_txd_c), .D(n33187), 
         .Z(uart_txd_N_745)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i20746_4_lut.init = 16'h3022;
    LUT4 i20835_2_lut (.A(n5345[0]), .B(uart_tx_busy_N_742), .Z(n11228)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i20835_2_lut.init = 16'heeee;
    LUT4 i5_3_lut (.A(n2105[15]), .B(n10), .C(n2105[13]), .Z(n33187)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut (.A(n2105[14]), .B(n2105[12]), .C(n2105[11]), .D(n2105[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i30870_4_lut_4_lut (.A(n2105[8]), .B(n36334), .C(n17842), .D(n5316[0]), 
         .Z(n17206)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam i30870_4_lut_4_lut.init = 16'hf4b0;
    FD1S3IX clk_cnt_2980__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_2980__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i1.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i1 (.D(n2105[0]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(clk_cnt[1]), .B(n38425), .C(uart_tx_busy_N_742), 
         .D(n36258), .Z(n33259)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0080;
    LUT4 i30583_3_lut (.A(n36254), .B(clk_cnt[2]), .C(clk_cnt[0]), .Z(n36258)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30583_3_lut.init = 16'hfefe;
    LUT4 i30579_4_lut (.A(n17), .B(clk_cnt[13]), .C(n36204), .D(n36097), 
         .Z(n36254)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30579_4_lut.init = 16'hfffe;
    LUT4 i30529_4_lut (.A(clk_cnt[15]), .B(clk_cnt[12]), .C(clk_cnt[8]), 
         .D(clk_cnt[4]), .Z(n36204)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30529_4_lut.init = 16'hfffe;
    LUT4 i30423_2_lut (.A(clk_cnt[11]), .B(clk_cnt[3]), .Z(n36097)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30423_2_lut.init = 16'heeee;
    LUT4 i7_4_lut (.A(clk_cnt[10]), .B(clk_cnt[7]), .C(clk_cnt[14]), .D(clk_cnt[9]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_611 (.A(clk_cnt[5]), .B(clk_cnt[6]), .Z(n38425)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    defparam i1_2_lut_rep_611.init = 16'h8888;
    FD1P3IX tx_cnt_FSM_i2 (.D(n2105[1]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n2105[2]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n2105[3]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n2105[4]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n2105[5]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n2105[6]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n2105[7]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n2105[8]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_742));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_742), .SP(sys_clk_c_enable_174), 
            .CD(n38376), .CK(sys_clk_c), .Q(n2105[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n2105[10]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[11]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n2105[11]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n2105[12]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[13]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n2105[13]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n2105[14]), .SP(sys_clk_c_enable_174), .CD(n38376), 
            .CK(sys_clk_c), .Q(n2105[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(clk_cnt[5]), .B(clk_cnt[6]), .C(n38375), .D(n36254), 
         .Z(sys_clk_c_enable_174)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_3_lut_4_lut (.A(uart_en_d0), .B(uart_en_d1), .C(uart_tx_busy), 
         .D(n33259), .Z(n20500)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(42[10] 45[8])
    defparam i1_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1_2_lut_3_lut (.A(uart_en_d0), .B(uart_en_d1), .C(n33259), .Z(sys_clk_c_enable_381)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(42[10] 45[8])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    FD1P3IX tx_data_i1 (.D(uart_send_data[1]), .SP(sys_clk_c_enable_381), 
            .CD(n29691), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i1.GSR = "ENABLED";
    FD1P3IX tx_data_i2 (.D(uart_send_data[2]), .SP(sys_clk_c_enable_381), 
            .CD(n29691), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1P3IX tx_data_i3 (.D(uart_send_data[3]), .SP(sys_clk_c_enable_381), 
            .CD(n29691), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1P3IX tx_data_i4 (.D(uart_send_data[4]), .SP(sys_clk_c_enable_381), 
            .CD(n29691), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1P3IX tx_data_i5 (.D(uart_send_data[5]), .SP(sys_clk_c_enable_381), 
            .CD(n29691), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1P3IX tx_data_i6 (.D(uart_send_data[6]), .SP(sys_clk_c_enable_381), 
            .CD(n29691), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1P3IX tx_data_i7 (.D(uart_send_data[7]), .SP(sys_clk_c_enable_381), 
            .CD(n29691), .CK(sys_clk_c), .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i7.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n33354), .B(clk_cnt[4]), .C(n38425), .D(n4), .Z(n20574)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam i1_4_lut.init = 16'hfaea;
    LUT4 i9_4_lut (.A(n17), .B(clk_cnt[13]), .C(n16), .D(clk_cnt[8]), 
         .Z(n33354)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i12377_3_lut (.A(tx_data[5]), .B(tx_data[6]), .C(n2105[7]), .Z(n17841)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i12377_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut (.A(uart_en_d0), .B(n33259), .C(uart_en_d1), .Z(n29691)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    defparam i1_3_lut.init = 16'hc4c4;
    LUT4 i12378_3_lut (.A(n17841), .B(tx_data[7]), .C(n2105[8]), .Z(n17842)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i12378_3_lut.init = 16'hcaca;
    LUT4 mux_1801_i1_3_lut (.A(tx_data[0]), .B(tx_data[1]), .C(n2105[2]), 
         .Z(n5316[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam mux_1801_i1_3_lut.init = 16'hcaca;
    LUT4 i5829_3_lut (.A(tx_data[2]), .B(tx_data[3]), .C(n2105[4]), .Z(n11236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i5829_3_lut.init = 16'hcaca;
    LUT4 i30659_2_lut (.A(n2105[7]), .B(n2105[6]), .Z(n36334)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i30659_2_lut.init = 16'h1111;
    LUT4 i31155_4_lut (.A(n2105[8]), .B(n2105[7]), .C(n2105[6]), .D(n36326), 
         .Z(n36337)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i31155_4_lut.init = 16'hfffe;
    LUT4 i30651_3_lut (.A(n2105[5]), .B(n2105[4]), .C(n2105[3]), .Z(n36326)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i30651_3_lut.init = 16'h0101;
    LUT4 i2_3_lut_rep_561 (.A(clk_cnt[0]), .B(clk_cnt[1]), .C(clk_cnt[2]), 
         .Z(n38375)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    defparam i2_3_lut_rep_561.init = 16'h8080;
    LUT4 i1_2_lut_4_lut (.A(clk_cnt[0]), .B(clk_cnt[1]), .C(clk_cnt[2]), 
         .D(clk_cnt[3]), .Z(n4)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    defparam i1_2_lut_4_lut.init = 16'hff80;
    LUT4 i15036_1_lut_rep_562 (.A(uart_tx_busy), .Z(n38376)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam i15036_1_lut_rep_562.init = 16'h5555;
    LUT4 i6_4_lut_4_lut (.A(uart_tx_busy), .B(clk_cnt[11]), .C(clk_cnt[12]), 
         .D(clk_cnt[15]), .Z(n16)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam i6_4_lut_4_lut.init = 16'hfffd;
    LUT4 i5830_3_lut (.A(n11236), .B(tx_data[4]), .C(n2105[5]), .Z(n11237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i5830_3_lut.init = 16'hcaca;
    FD1S3IX clk_cnt_2980__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n20574), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980__i0.GSR = "ENABLED";
    FD1S3JX uart_txd_47 (.D(uart_txd_N_745), .CK(sys_clk_c), .PD(n38376), 
            .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(101[10] 116[26])
    defparam uart_txd_47.GSR = "ENABLED";
    FD1P3IX tx_data_i0 (.D(uart_send_data[0]), .SP(sys_clk_c_enable_381), 
            .CD(n29691), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i0.GSR = "ENABLED";
    CCU2D clk_cnt_2980_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32827), .S0(n69[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_2980_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_2980_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_2980_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32826), .COUT(n32827), .S0(n69[13]), .S1(n69[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_2980_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_2980_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32825), .COUT(n32826), .S0(n69[11]), .S1(n69[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_2980_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_2980_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32824), .COUT(n32825), .S0(n69[9]), .S1(n69[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_2980_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_2980_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32823), .COUT(n32824), .S0(n69[7]), .S1(n69[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_2980_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_2980_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32822), .COUT(n32823), .S0(n69[5]), .S1(n69[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_2980_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_2980_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32821), .COUT(n32822), .S0(n69[3]), .S1(n69[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_2980_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_2980_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32820), .COUT(n32821), .S0(n69[1]), .S1(n69[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_2980_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_2980_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_2980_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32820), .S1(n69[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2980_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_2980_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_2980_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_2980_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000) 
//

module \uart_recv(CLK_FREQ=12000000)  (sys_clk_c, sys_clk_c_enable_49, rx_flag, 
            uart_recv_done, uart_rxd_c, n38292, n38328, uart_recv_data, 
            n31, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_clk_c_enable_49;
    output rx_flag;
    output uart_recv_done;
    input uart_rxd_c;
    output n38292;
    output n38328;
    output [7:0]uart_recv_data;
    output n31;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    wire [15:0]n2015;
    
    wire n38394;
    wire [7:0]rxdata;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(43[12:18])
    
    wire n8547, n19342, uart_rxd_d1, uart_rxd_d0, n20481, uart_data_7__N_1489, 
        n19345, n19336, n19333, n19330, n19327, n19324, n19339, 
        sys_clk_c_enable_191, n38323, n35853, n38401;
    wire [15:0]clk_cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(40[12:19])
    
    wire n20575;
    wire [15:0]n69;
    
    wire n20573, n35860, n35861, n35887, n35886, rx_flag_N_1490, 
        n19271, n36152, n33001, n35579, n6, n35851, n35892, n35893, 
        n35830, n15, n14, n38374, n32835, n32834, n32833, n32832, 
        n32831, n32830, n32829, n32828;
    
    LUT4 i1_2_lut_rep_580 (.A(n2015[2]), .B(n2015[1]), .Z(n38394)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_580.init = 16'heeee;
    FD1P3IX rxdata__i0 (.D(n19342), .SP(sys_clk_c_enable_49), .CD(n8547), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n20481), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_1489), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    FD1P3IX rxdata__i7 (.D(n19345), .SP(sys_clk_c_enable_49), .CD(n8547), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    FD1P3IX rxdata__i6 (.D(n19336), .SP(sys_clk_c_enable_49), .CD(n8547), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n19333), .SP(sys_clk_c_enable_49), .CD(n8547), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n19330), .SP(sys_clk_c_enable_49), .CD(n8547), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n19327), .SP(sys_clk_c_enable_49), .CD(n8547), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n19324), .SP(sys_clk_c_enable_49), .CD(n8547), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n19339), .SP(sys_clk_c_enable_49), .CD(n8547), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1P3JX rx_cnt_FSM_i0 (.D(n2015[15]), .SP(sys_clk_c_enable_191), .PD(n8547), 
            .CK(sys_clk_c), .Q(n2015[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_509_3_lut (.A(n2015[2]), .B(n2015[1]), .C(n2015[3]), 
         .Z(n38323)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_509_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_478_3_lut_4_lut (.A(n2015[2]), .B(n2015[1]), .C(n35853), 
         .D(n2015[3]), .Z(n38292)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_478_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_587 (.A(n2015[6]), .B(n2015[7]), .Z(n38401)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_587.init = 16'heeee;
    LUT4 i1_2_lut_rep_514_3_lut (.A(n2015[6]), .B(n2015[7]), .C(n2015[8]), 
         .Z(n38328)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_514_3_lut.init = 16'hfefe;
    FD1S3IX clk_cnt_2982__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_2982__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i1.GSR = "ENABLED";
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n20573), 
            .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n20573), 
            .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n20573), 
            .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n20573), 
            .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n20573), 
            .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n20573), 
            .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n20573), 
            .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n2015[0]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n2015[1]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n2015[2]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n2015[3]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n2015[4]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n2015[5]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n2015[6]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n2015[7]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n2015[8]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(uart_data_7__N_1489));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_1489), .SP(sys_clk_c_enable_191), 
            .CD(n8547), .CK(sys_clk_c), .Q(n2015[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n2015[10]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[11]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n2015[11]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n2015[12]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[13]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i14 (.D(n2015[13]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i15 (.D(n2015[14]), .SP(sys_clk_c_enable_191), .CD(n8547), 
            .CK(sys_clk_c), .Q(n2015[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n38323), .B(n35853), .C(n2015[7]), .D(n2015[8]), 
         .Z(n35860)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_202 (.A(n38323), .B(n35853), .C(n2015[6]), 
         .D(n2015[8]), .Z(n35861)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_202.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_203 (.A(n38328), .B(n35853), .C(n2015[1]), 
         .D(n2015[3]), .Z(n35887)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_203.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_204 (.A(n38328), .B(n35853), .C(n2015[2]), 
         .D(n2015[3]), .Z(n35886)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_204.init = 16'hfffe;
    LUT4 i14995_4_lut (.A(uart_data_7__N_1489), .B(rx_flag_N_1490), .C(rx_flag), 
         .D(n31), .Z(n20481)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(70[10] 78[8])
    defparam i14995_4_lut.init = 16'hfcdc;
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_1490)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    LUT4 i31044_4_lut (.A(rx_flag), .B(clk_cnt[6]), .C(n19271), .D(n36152), 
         .Z(n20575)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(92[9:26])
    defparam i31044_4_lut.init = 16'hfdf5;
    LUT4 i30477_4_lut (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n33001), .D(clk_cnt[3]), 
         .Z(n36152)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i30477_4_lut.init = 16'hccc8;
    LUT4 i15084_1_lut (.A(uart_data_7__N_1489), .Z(n20573)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam i15084_1_lut.init = 16'h5555;
    LUT4 i3220_1_lut (.A(rx_flag), .Z(n8547)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(70[10] 78[8])
    defparam i3220_1_lut.init = 16'h5555;
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[0]), .C(n2015[1]), .D(n35886), 
         .Z(n19342)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_2_lut (.A(n2015[5]), .B(n2015[4]), .Z(n35853)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4_4_lut (.A(clk_cnt[0]), .B(n35579), .C(clk_cnt[4]), .D(n6), 
         .Z(n31)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(74[37:59])
    defparam i4_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_adj_205 (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(74[37:59])
    defparam i1_2_lut_adj_205.init = 16'heeee;
    LUT4 i1_4_lut_adj_206 (.A(uart_rxd_d1), .B(rxdata[7]), .C(n2015[8]), 
         .D(n35851), .Z(n19345)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_206.init = 16'heca0;
    LUT4 i1_4_lut_adj_207 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n2015[7]), 
         .D(n35861), .Z(n19336)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_207.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_208 (.A(n2015[3]), .B(n38394), .C(n2015[4]), 
         .D(n38328), .Z(n35892)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_208.init = 16'hfffe;
    LUT4 i1_4_lut_adj_209 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n2015[6]), 
         .D(n35860), .Z(n19333)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_209.init = 16'heca0;
    LUT4 i1_4_lut_adj_210 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n2015[5]), 
         .D(n35892), .Z(n19330)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_210.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_211 (.A(n2015[3]), .B(n38394), .C(n2015[5]), 
         .D(n38328), .Z(n35893)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_211.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_212 (.A(n2015[3]), .B(n38394), .C(n38401), 
         .D(n35853), .Z(n35851)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_212.init = 16'hfffe;
    LUT4 i1_4_lut_adj_213 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n2015[4]), 
         .D(n35893), .Z(n19327)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_213.init = 16'heca0;
    LUT4 i2_4_lut (.A(clk_cnt[2]), .B(n19271), .C(clk_cnt[5]), .D(clk_cnt[3]), 
         .Z(n35579)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i1_4_lut_adj_214 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n2015[3]), 
         .D(n35830), .Z(n19324)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_214.init = 16'heca0;
    LUT4 i1_4_lut_adj_215 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n2015[2]), 
         .D(n35887), .Z(n19339)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_215.init = 16'heca0;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[13]), .C(n14), .D(clk_cnt[8]), 
         .Z(n19271)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(86[13:34])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_216 (.A(n2015[8]), .B(n38401), .C(n38394), 
         .D(n35853), .Z(n35830)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_216.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[14]), .B(clk_cnt[15]), .C(clk_cnt[9]), .D(clk_cnt[7]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(86[13:34])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[12]), .B(clk_cnt[10]), .C(clk_cnt[11]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(86[13:34])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i31136_4_lut (.A(clk_cnt[6]), .B(clk_cnt[4]), .C(n38374), .D(n35579), 
         .Z(sys_clk_c_enable_191)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(100[13:35])
    defparam i31136_4_lut.init = 16'h0020;
    LUT4 i30431_2_lut_rep_560 (.A(clk_cnt[0]), .B(clk_cnt[1]), .Z(n38374)) /* synthesis lut_function=(A (B)) */ ;
    defparam i30431_2_lut_rep_560.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(clk_cnt[0]), .B(clk_cnt[1]), .C(clk_cnt[2]), 
         .Z(n33001)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h8080;
    FD1S3IX clk_cnt_2982__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n20575), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982__i0.GSR = "ENABLED";
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n20573), 
            .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    CCU2D clk_cnt_2982_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32835), .S0(n69[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_2982_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_2982_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_2982_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32834), .COUT(n32835), .S0(n69[13]), .S1(n69[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_2982_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_2982_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32833), .COUT(n32834), .S0(n69[11]), .S1(n69[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_2982_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_2982_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32832), .COUT(n32833), .S0(n69[9]), .S1(n69[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_2982_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_2982_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32831), .COUT(n32832), .S0(n69[7]), .S1(n69[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_2982_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_2982_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32830), .COUT(n32831), .S0(n69[5]), .S1(n69[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_2982_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_2982_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32829), .COUT(n32830), .S0(n69[3]), .S1(n69[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_2982_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_2982_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32828), .COUT(n32829), .S0(n69[1]), .S1(n69[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_2982_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_2982_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_2982_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32828), .S1(n69[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2982_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_2982_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_2982_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_2982_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module OLED12832
//

module OLED12832 (sys_clk_c, n37162, cnt, oled_cs_c, oled_dc_c, GND_net, 
            \cnt_main[0] , sw1_c, n4028, n4406, n3267, n4023, n3645, 
            n4401, \hundres_0__N_349[1] , \hundres_0__N_349[2] , n38162, 
            n38158, \sec[1] , n7472, n7470, n38171, \sec[0] , n38166, 
            n8440, \hundres_0__N_346[0] , n4, \hundres_0__N_346[1] , 
            n3272, n3650, n4024, n4402, n3646, n3268, n4403, n4025, 
            n3269, n3647, n2720, n2889, n2724, n2721, n2891, n38342, 
            n38339, n38346, n2722, warning_TEM, n38604, n4029, n4407, 
            n2894, n3273, n3651, \Tem_high[2] , \min[0] , \min_warning[0] , 
            n2893, n3271, n3649, n4027, n4405, n7450, n8155, n14608, 
            n8142, n11619, \hundres_0__N_346[0]_adj_1 , n38186, n4_adj_2, 
            n7453, n19398, n19395, n38188, \ds18b20_data[5] , \hundres_0__N_349[1]_adj_3 , 
            n38178, n38213, n10603, n2895, n4026, n4404, n37997, 
            n38163, \hundres_0__N_349[3] , \hundres_0__N_346[1]_adj_4 , 
            n8458, \ds18b20_data[4] , n7443, n37310, n7446, n36390, 
            n37254, n2890, n36381, n36359, n3270, n3648, n2892, 
            \hour_ones[2] , \hour_warning_ones[2] , \hour_ones[3] , \hour_warning_ones[3] , 
            \min_ones[2] , \min_warning_ones[2] , \min_ones[3] , \min_warning_ones[3] , 
            hundres_0__N_354, hundres_0__N_354_adj_5, hundres_0__N_354_adj_6, 
            hundres_0__N_354_adj_7, \min_ones[1] , \min_warning_ones[1] , 
            n4_adj_8, \Tem_high[0] , time_set, n37683, oled_mosi_c, 
            oled_sck_c, oled_res_c, sys_rst_n_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input n37162;
    output [15:0]cnt;
    output oled_cs_c;
    output oled_dc_c;
    input GND_net;
    output \cnt_main[0] ;
    input sw1_c;
    input n4028;
    input n4406;
    input n3267;
    input n4023;
    input n3645;
    input n4401;
    input \hundres_0__N_349[1] ;
    input \hundres_0__N_349[2] ;
    input n38162;
    input n38158;
    input \sec[1] ;
    output n7472;
    output n7470;
    input n38171;
    input \sec[0] ;
    input n38166;
    input n8440;
    input \hundres_0__N_346[0] ;
    input n4;
    input \hundres_0__N_346[1] ;
    input n3272;
    input n3650;
    input n4024;
    input n4402;
    input n3646;
    input n3268;
    input n4403;
    input n4025;
    input n3269;
    input n3647;
    output n2720;
    input n2889;
    output n2724;
    output n2721;
    input n2891;
    output n38342;
    output n38339;
    output n38346;
    output n2722;
    input warning_TEM;
    input n38604;
    input n4029;
    input n4407;
    input n2894;
    input n3273;
    input n3651;
    input \Tem_high[2] ;
    input \min[0] ;
    input \min_warning[0] ;
    input n2893;
    input n3271;
    input n3649;
    input n4027;
    input n4405;
    input n7450;
    output n8155;
    input n14608;
    output n8142;
    input n11619;
    input \hundres_0__N_346[0]_adj_1 ;
    input n38186;
    output n4_adj_2;
    input n7453;
    input n19398;
    input n19395;
    input n38188;
    input \ds18b20_data[5] ;
    input \hundres_0__N_349[1]_adj_3 ;
    input n38178;
    input n38213;
    input n10603;
    input n2895;
    input n4026;
    input n4404;
    input n37997;
    input n38163;
    input \hundres_0__N_349[3] ;
    input \hundres_0__N_346[1]_adj_4 ;
    output n8458;
    input \ds18b20_data[4] ;
    input n7443;
    input n37310;
    input n7446;
    input n36390;
    input n37254;
    input n2890;
    input n36381;
    input n36359;
    input n3270;
    input n3648;
    input n2892;
    input \hour_ones[2] ;
    input \hour_warning_ones[2] ;
    input \hour_ones[3] ;
    input \hour_warning_ones[3] ;
    input \min_ones[2] ;
    input \min_warning_ones[2] ;
    input \min_ones[3] ;
    input \min_warning_ones[3] ;
    input hundres_0__N_354;
    input hundres_0__N_354_adj_5;
    input hundres_0__N_354_adj_6;
    input hundres_0__N_354_adj_7;
    input \min_ones[1] ;
    input \min_warning_ones[1] ;
    input n4_adj_8;
    input \Tem_high[0] ;
    input time_set;
    input n37683;
    output oled_mosi_c;
    output oled_sck_c;
    output oled_res_c;
    input sys_rst_n_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(53[9:19])
    wire [4:0]cnt_scan;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    
    wire n9, n38434, n10, n14, n15, n36350;
    wire [167:0]n1939;
    wire [7:0]num;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(45[12:15])
    
    wire sys_clk_c_enable_375, n20653;
    wire [7:0]n37;
    
    wire n37163, n37164;
    wire [4:0]cnt_main;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[12:20])
    
    wire n38453, n38414;
    wire [4:0]cnt_main_4__N_1045;
    
    wire n38583;
    wire [7:0]char_reg;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(45[17:25])
    
    wire n38259;
    wire [5:0]state;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    
    wire n6, n50, n38953, n39765, n38360, n42_adj_1718;
    wire [4:0]n17;
    
    wire n9096, n38595, n6_adj_1719;
    wire [7:0]y_p;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(43[12:15])
    
    wire n38452;
    wire [5:0]state_back;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[20:30])
    wire [5:0]state_back_5__N_1032;
    
    wire n82, n1, n26795;
    wire [7:0]char_reg_7__N_950;
    wire [4:0]cnt_init;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[22:30])
    
    wire sys_clk_c_enable_204, n35702, sys_clk_c_enable_19, n35379, 
        sys_clk_c_enable_20, n38574;
    wire [15:0]num_delay;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(47[13:22])
    wire [15:0]num_delay_15__N_978;
    wire [167:0]char;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(44[19:23])
    
    wire sys_clk_c_enable_378, n39784, n38131, n26618;
    wire [5:0]state_back_5__N_1367;
    
    wire n19122, sys_clk_c_enable_142;
    wire [7:0]n25;
    
    wire flash_bit, rst_n_in_N_1515, flash_bit_N_1422, sys_clk_c_enable_303, 
        n38422, n3, n15_adj_1720, n38420, n38324, n1_adj_1721, n37925, 
        n37923, n37926, n38443, n38459, n38445, n3765, n35801, 
        n20701, n38130, n37921, n37919, n37922, n3_adj_1722, n15_adj_1723, 
        n3_adj_1724, n15_adj_1725, n38455, n38457, n37917, n37006, 
        n37918, n3_adj_1726, n15_adj_1727, n32893;
    wire [15:0]cnt_delay;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(47[24:33])
    
    wire n4482, n32892, n32891, n32890, n32889, n32888, n15_adj_1728, 
        n30, n32887, n20, n6_adj_1729, n32886, n38301, n38120, 
        n15_adj_1730, n30_adj_1731, n38117, n15_adj_1732, n38112, 
        n15_adj_1733, n30_adj_1734, n38116, n32885, n18943, n30_adj_1735, 
        sys_clk_c_enable_367, n20549;
    wire [15:0]n4484;
    
    wire n30_adj_1736, n32884, n30_adj_1737, n32883, n32882, n3_adj_1738, 
        n30_adj_1739, n36427, n36428, n36429;
    wire [7:0]x_ph;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(43[17:21])
    
    wire n36430, n36997, n38037, n38713, n38715, n47, n38683, 
        n38451, n38270, n38681;
    wire [4:0]cnt_write;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[42:51])
    
    wire n36434, n38296, n33019, n24, n38305, n27, n38461, n33104, 
        n35792, n38337, sys_clk_c_enable_364, n6_adj_1740, n38281, 
        n75, n38275, n11, n38280, n11_adj_1741, oled_csn_N_1381, 
        oled_dat_N_1419, n35662, n38348, n21, n38464, n7, n36006, 
        sys_clk_c_enable_365, n36431, n36432, n41_adj_1742, n85, n4458, 
        n34, n38470, n6800, n7976, n35808, n38300, sys_clk_c_enable_366, 
        n38473, n36433, n35807;
    wire [0:0]n6725;
    
    wire n38476, n38479, n38482, n36422, n38475, n36352, n38460, 
        n38132, n36421, n38485, n38488, n38484, n38118, n38491;
    wire [4:0]n7462;
    wire [4:0]n7468;
    
    wire n38463, n38133, n38494, n38134, n36998, n36420, n32772, 
        n38497, n38036, n32771, n38500, n38127, n38454, n38513, 
        n38512, n32770, n38682, n38685, n38519, n38518, n38948, 
        n38114, n38400, n30_adj_1743, n38035, n36419, n38686, n32769, 
        n39763, n38946, n38951, n36418, n38437, n36417, n36190, 
        n38540, n38539, n38543, n37961, n37960, n20163, n38542, 
        n38680, n38466, n38135, n38439, n38136, n38552;
    wire [7:0]x_pl;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(43[23:27])
    
    wire n38551, n38555, n38554, n34545, n38330;
    wire [4:0]n4460;
    
    wire n32768, n36368, n1507, n32767, n38558, n38557, n38071, 
        n38072, n38073, n37449, n19649, n1934, n36374, n38431, 
        n38421, n11_adj_1744, n38573, n38572, n32424, n16, n38406, 
        n38333, n38077, n33975, n37192, n24_adj_1745, n38582, n38581, 
        n36416, n36415, n37193, n38407, sys_clk_c_enable_329, n79, 
        n29787, n38502, n38137, n38478, n38138, n38481, n38139, 
        n38594, n38593, n38600, n38599, n35778, n126, n38409, 
        n38331, n38410, n35497, n32766, n38265, n80, n6_adj_1746, 
        n4791, n19, n16_adj_1747, n6_adj_1748, n36373, n6_adj_1749;
    wire [7:0]char_reg_7__N_1273;
    
    wire n6_adj_1750, n38440, n36372, n37550, n37549, n37000, n6_adj_1751, 
        n6_adj_1752, n37209, n3_adj_1753, n35743, n3_adj_1754, n37001, 
        n5, n38143, n37213, n35744, n38321, n12, n37214, n37215;
    wire [3:0]n7457;
    
    wire n39564, n39562, n39563, n39561, n39560, n24_adj_1755, n39565, 
        n36358, n36357, n38311, n36356, n24_adj_1758, n38288, n38196, 
        n38945, n24_adj_1759, n36380, n24_adj_1760, n11_adj_1761, 
        n39766;
    wire [3:0]n7447;
    
    wire n36379, n14_adj_1762, n36385, n36386, n36387, n9_adj_1763, 
        n8, n24_adj_1764, sys_clk_c_enable_286, n36367, n36366, n30_adj_1765, 
        n36362, n25668, n15_adj_1766, sys_clk_c_enable_340, n20568, 
        n2, n30_adj_1768, n36384, n15_adj_1769, n30_adj_1770, n37244, 
        n10890, n32765, n24_adj_1771, n38141, n37248, n37249, n37250, 
        n35674, n4_adj_1772, n37255, n38433, n36436, n9_adj_1773, 
        n36423, n36424, n38435, n38952;
    wire [4:0]n2321;
    
    wire n38436, n36425, n36426, n38556;
    wire [7:0]n1912;
    
    wire n37396;
    wire [7:0]n1903;
    
    wire n38349, n28710, n36437, n36438, n8_adj_1774, n38234, n7_adj_1775, 
        n10680, n38362, n35828, n35768, n16_adj_1776, n19_adj_1777;
    wire [15:0]num_delay_15__N_1289;
    
    wire n38264, n38309, n16_adj_1778, n38361, n21_adj_1779, n23, 
        n16_adj_1780, n38126, n38449, n38111, n16_adj_1781, n33052, 
        n26588, n16_adj_1782, n37311, n38124, n16_adj_1783, n37394, 
        n16_adj_1784;
    wire [7:0]n1671;
    
    wire n36274, n6_adj_1785, n16_adj_1786, n37395, n38_adj_1787, 
        n11_adj_1788, n8_adj_1789, n16_adj_1790, n16_adj_1791, n16_adj_1792, 
        n38294, sys_clk_c_enable_370, n16_adj_1793, n16_adj_1795, n36435, 
        n16_adj_1796, n16_adj_1797, n4_adj_1798, n20492, n16_adj_1799, 
        n16_adj_1800, n20614;
    wire [4:0]cnt_scan_4__N_1055;
    
    wire n16_adj_1801, n33038, n24_adj_1802, n35675, n15_adj_1803, 
        n38372, n38308, oled_dcn_N_1397, n16_adj_1804, n22, n5_adj_1805, 
        n6_adj_1806, n26911, n4_adj_1807, n35647, n15_adj_1808;
    wire [15:0]cnt_c;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(47[35:38])
    
    wire sys_clk_c_enable_271, n20705;
    wire [15:0]n2383;
    
    wire n38359, n26, n5_adj_1809, n30_adj_1810, n11_adj_1811, n34151, 
        n2522;
    wire [4:0]n2531;
    
    wire n9_adj_1812, n10_adj_1813, n36523, n6_adj_1814, n9168, n38601, 
        n6_adj_1815, n15_adj_1816, n15_adj_1817, n36377, n15_adj_1818, 
        n8_adj_1819, n2_adj_1820, n5_adj_1821, n6_adj_1822, n38353, 
        n32764;
    wire [15:0]n2357;
    
    wire n32763, n32762, n32761, n32760, n38365, n38368, n38371, 
        n38370, n19079, n19_adj_1823, n38379, n36378, n37312, n38559, 
        n8045, n35800, n38493, n38110, n15_adj_1824, n38553;
    wire [7:0]n1921;
    
    wire n38446, n38448, n18, n34213, n20695, n63, n38319, n7_adj_1825, 
        n38123, n20699, n37256, n37243, n34269, n35906, n38442, 
        n32759, n38306, n57, n61, n64, n10681, n35779, n17975, 
        n17002, n38490, n38121, n38487, n38113, n15_adj_1826, n36375, 
        n36376, n38355, n37002, n36999, n37208, n38122, n16_adj_1827, 
        n35704, n36382, n36383, n35856, n38496, n38115, n15_adj_1828, 
        n36360, n36361, n38499, n32758, n35769, n43_adj_1829, n35927, 
        n39566, n64_adj_1830, n4_adj_1831, n6_adj_1832, n64_adj_1833, 
        n11_adj_1834, n12_adj_1835;
    wire [5:0]state_5__N_1343;
    
    wire n28, n37920, n38472, n38458, n37924, n18_adj_1836, n38520, 
        n64_adj_1837, n19_adj_1841, n20_adj_1842, n12_adj_1844, n12_adj_1845, 
        n12_adj_1846, n10_adj_1847, n38514, n14_adj_1848, n12_adj_1849, 
        n18_adj_1850, n12_adj_1851, n12_adj_1852, n37194, n12_adj_1853, 
        n12_adj_1854, n24_adj_1855, n38391, n15_adj_1856, n36354, 
        n24_adj_1857, n35, n12_adj_1858, n24_adj_1859, n24_adj_1860, 
        n11_adj_1861, n31, n24628, n32757;
    
    LUT4 i4_4_lut (.A(cnt_scan[3]), .B(cnt_scan[4]), .C(n9), .D(n38434), 
         .Z(n10)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i4_4_lut.init = 16'hffef;
    PFUMX mux_37_Mux_5_i31 (.BLUT(n14), .ALUT(n15), .C0(n36350), .Z(n1939[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    FD1P3IX num_2988__i3 (.D(n37[3]), .SP(sys_clk_c_enable_375), .CD(n20653), 
            .CK(sys_clk_c), .Q(num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988__i3.GSR = "ENABLED";
    PFUMX i31295 (.BLUT(n37163), .ALUT(n37162), .C0(cnt[4]), .Z(n37164));
    LUT4 i21098_4_lut_4_lut_4_lut_then_3_lut (.A(cnt_main[3]), .B(cnt_main[2]), 
         .C(cnt_main[1]), .Z(n38453)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21098_4_lut_4_lut_4_lut_then_3_lut.init = 16'h1010;
    LUT4 i20809_3_lut_4_lut (.A(cnt_main[1]), .B(n38414), .C(cnt_main[4]), 
         .D(cnt_main[2]), .Z(cnt_main_4__N_1045[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[41:56])
    defparam i20809_3_lut_4_lut.init = 16'hf7f8;
    LUT4 i1_2_lut_4_lut (.A(n38583), .B(char_reg[1]), .C(n38259), .D(state[2]), 
         .Z(n6)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 i31090_4_lut (.A(n50), .B(n38953), .C(n39765), .D(n38360), 
         .Z(n42_adj_1718)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i31090_4_lut.init = 16'hccc4;
    LUT4 i3760_2_lut_3_lut_4_lut (.A(cnt_main[1]), .B(n38414), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n17[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[41:56])
    defparam i3760_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3762_2_lut_3_lut_4_lut (.A(cnt_main[1]), .B(n38414), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n9096)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[41:56])
    defparam i3762_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut_adj_15 (.A(n38595), .B(char_reg[2]), .C(n38259), 
         .D(state[2]), .Z(n6_adj_1719)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_15.init = 16'hca00;
    FD1P3IX num_2988__i4 (.D(n37[4]), .SP(sys_clk_c_enable_375), .CD(n20653), 
            .CK(sys_clk_c), .Q(num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988__i4.GSR = "ENABLED";
    LUT4 i21098_4_lut_4_lut_4_lut_else_3_lut (.A(cnt_main[3]), .B(y_p[1]), 
         .C(cnt_main[2]), .D(cnt_main[1]), .Z(n38452)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21098_4_lut_4_lut_4_lut_else_3_lut.init = 16'h0054;
    FD1S3AX state_back_i5 (.D(state_back_5__N_1032[5]), .CK(sys_clk_c), 
            .Q(state_back[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i5.GSR = "ENABLED";
    FD1S3AX state_back_i4 (.D(state_back_5__N_1032[4]), .CK(sys_clk_c), 
            .Q(state_back[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i4.GSR = "ENABLED";
    FD1S3AX state_back_i3 (.D(state_back_5__N_1032[3]), .CK(sys_clk_c), 
            .Q(state_back[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i3.GSR = "ENABLED";
    FD1S3AX state_back_i2 (.D(state_back_5__N_1032[2]), .CK(sys_clk_c), 
            .Q(state_back[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i2.GSR = "ENABLED";
    LUT4 i31093_4_lut (.A(state[2]), .B(cnt_scan[4]), .C(n82), .D(n1), 
         .Z(n26795)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i31093_4_lut.init = 16'h0111;
    FD1S3AX state_back_i1 (.D(state_back_5__N_1032[1]), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i1.GSR = "ENABLED";
    FD1P3IX num_2988__i5 (.D(n37[5]), .SP(sys_clk_c_enable_375), .CD(n20653), 
            .CK(sys_clk_c), .Q(num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988__i5.GSR = "ENABLED";
    FD1S3AX char_reg_i7 (.D(char_reg_7__N_950[7]), .CK(sys_clk_c), .Q(char_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i7.GSR = "ENABLED";
    FD1P3AX cnt_init_i0_i0 (.D(n35702), .SP(sys_clk_c_enable_204), .CK(sys_clk_c), 
            .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    FD1S3AX char_reg_i6 (.D(char_reg_7__N_950[6]), .CK(sys_clk_c), .Q(char_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i6.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(cnt_scan[3]), .B(cnt_scan[2]), .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i1_2_lut.init = 16'h8888;
    FD1S3AX char_reg_i5 (.D(char_reg_7__N_950[5]), .CK(sys_clk_c), .Q(char_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i5.GSR = "ENABLED";
    FD1S3AX char_reg_i4 (.D(char_reg_7__N_950[4]), .CK(sys_clk_c), .Q(char_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i4.GSR = "ENABLED";
    FD1S3AX char_reg_i3 (.D(char_reg_7__N_950[3]), .CK(sys_clk_c), .Q(char_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i3.GSR = "ENABLED";
    FD1S3AX char_reg_i2 (.D(char_reg_7__N_950[2]), .CK(sys_clk_c), .Q(char_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i2.GSR = "ENABLED";
    FD1S3AX char_reg_i1 (.D(char_reg_7__N_950[1]), .CK(sys_clk_c), .Q(char_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i1.GSR = "ENABLED";
    FD1S3AX char_reg_i0 (.D(char_reg_7__N_950[0]), .CK(sys_clk_c), .Q(char_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i0.GSR = "ENABLED";
    FD1S3AY state_back_i0 (.D(state_back_5__N_1032[0]), .CK(sys_clk_c), 
            .Q(state_back[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i0.GSR = "ENABLED";
    FD1P3AY oled_csn_329 (.D(n35379), .SP(sys_clk_c_enable_19), .CK(sys_clk_c), 
            .Q(oled_cs_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam oled_csn_329.GSR = "ENABLED";
    FD1P3AX oled_dcn_331 (.D(n38574), .SP(sys_clk_c_enable_20), .CK(sys_clk_c), 
            .Q(oled_dc_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam oled_dcn_331.GSR = "ENABLED";
    FD1S3AY num_delay_i0 (.D(num_delay_15__N_978[0]), .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i0.GSR = "ENABLED";
    FD1P3IX num_2988__i6 (.D(n37[6]), .SP(sys_clk_c_enable_375), .CD(n20653), 
            .CK(sys_clk_c), .Q(num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988__i6.GSR = "ENABLED";
    FD1P3IX char_i0_i45 (.D(n38131), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i45.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(state[0]), .B(n26618), .C(state[2]), .D(state_back_5__N_1367[1]), 
         .Z(n19122)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut.init = 16'h1202;
    FD1P3AX num_2988__i0 (.D(n25[0]), .SP(sys_clk_c_enable_142), .CK(sys_clk_c), 
            .Q(num[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988__i0.GSR = "ENABLED";
    FD1P3IX char_i0_i38 (.D(n1939[38]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i38.GSR = "ENABLED";
    FD1S3IX flash_bit_314 (.D(flash_bit_N_1422), .CK(clk_in_1Hz), .CD(rst_n_in_N_1515), 
            .Q(flash_bit)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(61[8] 66[5])
    defparam flash_bit_314.GSR = "DISABLED";
    FD1P3AY state_i0_i0 (.D(n42_adj_1718), .SP(sys_clk_c_enable_303), .CK(sys_clk_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(cnt_scan[3]), .B(n82), .C(cnt_scan[4]), .D(cnt_scan[2]), 
         .Z(n9)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut.init = 16'hfdff;
    LUT4 i20931_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n38422), 
         .D(n3), .Z(n15_adj_1720)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20931_4_lut_4_lut.init = 16'h5140;
    LUT4 i5_4_lut_4_lut (.A(n38420), .B(char[4]), .C(cnt_main[2]), .D(n38324), 
         .Z(n1_adj_1721)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i5_4_lut_4_lut.init = 16'hf404;
    PFUMX i31680 (.BLUT(n37925), .ALUT(n37923), .C0(state[3]), .Z(n37926));
    PFUMX i31824 (.BLUT(n38443), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38445));
    LUT4 i1_2_lut_3_lut (.A(state[2]), .B(n3765), .C(state_back[4]), .Z(n35801)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h4040;
    FD1P3IX char_i0_i37 (.D(n38130), .SP(sys_clk_c_enable_378), .CD(n20701), 
            .CK(sys_clk_c), .Q(char[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i37.GSR = "ENABLED";
    PFUMX i31677 (.BLUT(n37921), .ALUT(n37919), .C0(cnt_scan[3]), .Z(n37922));
    LUT4 i20953_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n38422), 
         .D(n3_adj_1722), .Z(n15_adj_1723)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20953_4_lut_4_lut.init = 16'h5140;
    LUT4 i20966_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n38422), 
         .D(n3_adj_1724), .Z(n15_adj_1725)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20966_4_lut_4_lut.init = 16'h5140;
    PFUMX i31832 (.BLUT(n38455), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38457));
    PFUMX i31674 (.BLUT(n37917), .ALUT(n37006), .C0(cnt_scan[1]), .Z(n37918));
    LUT4 i20970_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n38422), 
         .D(n3_adj_1726), .Z(n15_adj_1727)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20970_4_lut_4_lut.init = 16'h5140;
    CCU2D sub_2356_add_2_17 (.A0(cnt_delay[15]), .B0(num_delay[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32893), .S1(n4482));
    defparam sub_2356_add_2_17.INIT0 = 16'h5999;
    defparam sub_2356_add_2_17.INIT1 = 16'h0000;
    defparam sub_2356_add_2_17.INJECT1_0 = "NO";
    defparam sub_2356_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_2356_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32892), .COUT(n32893));
    defparam sub_2356_add_2_15.INIT0 = 16'h5999;
    defparam sub_2356_add_2_15.INIT1 = 16'h5999;
    defparam sub_2356_add_2_15.INJECT1_0 = "NO";
    defparam sub_2356_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_2356_add_2_13 (.A0(cnt_delay[11]), .B0(num_delay[11]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32891), .COUT(n32892));
    defparam sub_2356_add_2_13.INIT0 = 16'h5999;
    defparam sub_2356_add_2_13.INIT1 = 16'h5999;
    defparam sub_2356_add_2_13.INJECT1_0 = "NO";
    defparam sub_2356_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_2356_add_2_11 (.A0(cnt_delay[9]), .B0(num_delay[9]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(num_delay[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32890), .COUT(n32891));
    defparam sub_2356_add_2_11.INIT0 = 16'h5999;
    defparam sub_2356_add_2_11.INIT1 = 16'h5999;
    defparam sub_2356_add_2_11.INJECT1_0 = "NO";
    defparam sub_2356_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_2356_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32889), .COUT(n32890));
    defparam sub_2356_add_2_9.INIT0 = 16'h5999;
    defparam sub_2356_add_2_9.INIT1 = 16'h5999;
    defparam sub_2356_add_2_9.INJECT1_0 = "NO";
    defparam sub_2356_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_2356_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32888), .COUT(n32889));
    defparam sub_2356_add_2_7.INIT0 = 16'h5999;
    defparam sub_2356_add_2_7.INIT1 = 16'h5999;
    defparam sub_2356_add_2_7.INJECT1_0 = "NO";
    defparam sub_2356_add_2_7.INJECT1_1 = "NO";
    PFUMX mux_37_Mux_8_i31 (.BLUT(n15_adj_1728), .ALUT(n30), .C0(cnt_main[4]), 
          .Z(n1939[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    CCU2D sub_2356_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32887), .COUT(n32888));
    defparam sub_2356_add_2_5.INIT0 = 16'h5999;
    defparam sub_2356_add_2_5.INIT1 = 16'h5999;
    defparam sub_2356_add_2_5.INJECT1_0 = "NO";
    defparam sub_2356_add_2_5.INJECT1_1 = "NO";
    PFUMX i19188 (.BLUT(n20), .ALUT(n6_adj_1729), .C0(cnt_main[4]), .Z(n1939[38]));
    CCU2D sub_2356_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32886), .COUT(n32887));
    defparam sub_2356_add_2_3.INIT0 = 16'h5999;
    defparam sub_2356_add_2_3.INIT1 = 16'h5999;
    defparam sub_2356_add_2_3.INJECT1_0 = "NO";
    defparam sub_2356_add_2_3.INJECT1_1 = "NO";
    LUT4 char_149__bdd_4_lut_32066 (.A(char[149]), .B(n38301), .C(n38457), 
         .D(cnt_main[4]), .Z(n38120)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_149__bdd_4_lut_32066.init = 16'h88f0;
    PFUMX mux_37_Mux_10_i31 (.BLUT(n15_adj_1730), .ALUT(n30_adj_1731), .C0(cnt_main[4]), 
          .Z(n1939[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    CCU2D sub_2356_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n32886));
    defparam sub_2356_add_2_1.INIT0 = 16'h0000;
    defparam sub_2356_add_2_1.INIT1 = 16'h5999;
    defparam sub_2356_add_2_1.INJECT1_0 = "NO";
    defparam sub_2356_add_2_1.INJECT1_1 = "NO";
    FD1P3IX char_i0_i36 (.D(n38117), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i36.GSR = "ENABLED";
    LUT4 n18243_bdd_4_lut_31815 (.A(n38301), .B(char[24]), .C(n15_adj_1732), 
         .D(cnt_main[4]), .Z(n38112)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18243_bdd_4_lut_31815.init = 16'h88f0;
    PFUMX mux_37_Mux_14_i31 (.BLUT(n15_adj_1733), .ALUT(n30_adj_1734), .C0(cnt_main[4]), 
          .Z(n1939[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    FD1P3IX char_i0_i34 (.D(n38116), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i34.GSR = "ENABLED";
    CCU2D num_2988_add_4_9 (.A0(cnt_scan[3]), .B0(n18943), .C0(num[7]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32885), .S0(n37[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988_add_4_9.INIT0 = 16'he1e1;
    defparam num_2988_add_4_9.INIT1 = 16'h0000;
    defparam num_2988_add_4_9.INJECT1_0 = "NO";
    defparam num_2988_add_4_9.INJECT1_1 = "NO";
    PFUMX mux_37_Mux_16_i31 (.BLUT(n15_adj_1727), .ALUT(n30_adj_1735), .C0(cnt_main[4]), 
          .Z(n1939[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    FD1P3IX cnt_delay_i0_i13 (.D(n4484[13]), .SP(sys_clk_c_enable_367), 
            .CD(n20549), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    PFUMX mux_37_Mux_18_i31 (.BLUT(n15_adj_1725), .ALUT(n30_adj_1736), .C0(cnt_main[4]), 
          .Z(n1939[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    CCU2D num_2988_add_4_7 (.A0(cnt_scan[3]), .B0(n18943), .C0(num[5]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n18943), .C1(num[6]), 
          .D1(GND_net), .CIN(n32884), .COUT(n32885), .S0(n37[5]), .S1(n37[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988_add_4_7.INIT0 = 16'he1e1;
    defparam num_2988_add_4_7.INIT1 = 16'he1e1;
    defparam num_2988_add_4_7.INJECT1_0 = "NO";
    defparam num_2988_add_4_7.INJECT1_1 = "NO";
    PFUMX mux_37_Mux_22_i31 (.BLUT(n15_adj_1723), .ALUT(n30_adj_1737), .C0(cnt_main[4]), 
          .Z(n1939[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    CCU2D num_2988_add_4_5 (.A0(cnt_scan[3]), .B0(n18943), .C0(num[3]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n18943), .C1(num[4]), 
          .D1(GND_net), .CIN(n32883), .COUT(n32884), .S0(n37[3]), .S1(n37[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988_add_4_5.INIT0 = 16'he1e1;
    defparam num_2988_add_4_5.INIT1 = 16'he1e1;
    defparam num_2988_add_4_5.INJECT1_0 = "NO";
    defparam num_2988_add_4_5.INJECT1_1 = "NO";
    CCU2D num_2988_add_4_3 (.A0(cnt_scan[3]), .B0(n18943), .C0(num[1]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n18943), .C1(num[2]), 
          .D1(GND_net), .CIN(n32882), .COUT(n32883), .S0(n37[1]), .S1(n37[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988_add_4_3.INIT0 = 16'he1e1;
    defparam num_2988_add_4_3.INIT1 = 16'he1e1;
    defparam num_2988_add_4_3.INJECT1_0 = "NO";
    defparam num_2988_add_4_3.INJECT1_1 = "NO";
    CCU2D num_2988_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n18943), .C1(num[0]), 
          .D1(GND_net), .COUT(n32882), .S1(n37[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988_add_4_1.INIT0 = 16'hF000;
    defparam num_2988_add_4_1.INIT1 = 16'he1e1;
    defparam num_2988_add_4_1.INJECT1_0 = "NO";
    defparam num_2988_add_4_1.INJECT1_1 = "NO";
    LUT4 i20979_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n38422), 
         .D(n3_adj_1738), .Z(n15_adj_1733)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20979_4_lut_4_lut.init = 16'h5140;
    PFUMX mux_37_Mux_30_i31 (.BLUT(n15_adj_1720), .ALUT(n30_adj_1739), .C0(cnt_main[4]), 
          .Z(n1939[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    L6MUX21 i30754 (.D0(n36427), .D1(n36428), .SD(num[3]), .Z(n36429));
    LUT4 i30755_4_lut_4_lut_4_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(x_ph[2]), .Z(n36430)) /* synthesis lut_function=(A (B (C))+!A !(B+(C+!(D)))) */ ;
    defparam i30755_4_lut_4_lut_4_lut.init = 16'h8180;
    LUT4 mux_37_Mux_5_i14_4_lut_4_lut_4_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(cnt_main[2]), .D(sw1_c), .Z(n14)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !(C)))) */ ;
    defparam mux_37_Mux_5_i14_4_lut_4_lut_4_lut.init = 16'h6101;
    LUT4 n4028_bdd_3_lut_31215 (.A(n4028), .B(n4406), .C(cnt_scan[0]), 
         .Z(n36997)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4028_bdd_3_lut_31215.init = 16'hcaca;
    LUT4 n38714_bdd_2_lut_4_lut (.A(n38037), .B(n38713), .C(state[2]), 
         .D(state[3]), .Z(n38715)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n38714_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 i1_4_lut_4_lut (.A(state[2]), .B(state[3]), .C(state[0]), .D(state[4]), 
         .Z(n47)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0116;
    LUT4 n3267_bdd_4_lut_32409 (.A(n3267), .B(n4023), .C(cnt_scan[3]), 
         .D(cnt_scan[1]), .Z(n38683)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n3267_bdd_4_lut_32409.init = 16'hc0a0;
    LUT4 char_37__bdd_4_lut_32496 (.A(char[37]), .B(n38301), .C(n38451), 
         .D(cnt_main[4]), .Z(n38130)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_37__bdd_4_lut_32496.init = 16'h88f0;
    LUT4 i15077_2_lut_3_lut (.A(n4482), .B(n38270), .C(sys_clk_c_enable_367), 
         .Z(n20549)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i15077_2_lut_3_lut.init = 16'he0e0;
    LUT4 n2889_bdd_4_lut (.A(n3645), .B(n4401), .C(cnt_scan[3]), .D(cnt_scan[1]), 
         .Z(n38681)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n2889_bdd_4_lut.init = 16'hc0a0;
    LUT4 i30759_3_lut (.A(char_reg[5]), .B(char_reg[4]), .C(cnt_write[1]), 
         .Z(n36434)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30759_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_rep_627 (.A(n38296), .B(state[0]), .C(state[1]), .D(n33019), 
         .Z(sys_clk_c_enable_378)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_3_lut_rep_627.init = 16'hff04;
    LUT4 i1_4_lut_adj_16 (.A(n24), .B(char_reg[7]), .C(n38305), .D(n27), 
         .Z(char_reg_7__N_950[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_16.init = 16'hce0a;
    LUT4 i20899_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[61]), .Z(n38461)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20899_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i1_4_lut_adj_17 (.A(n33104), .B(n35792), .C(state[0]), .D(n38337), 
         .Z(sys_clk_c_enable_364)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_17.init = 16'hc088;
    LUT4 i1_4_lut_adj_18 (.A(n6_adj_1740), .B(n38259), .C(n38281), .D(n75), 
         .Z(sys_clk_c_enable_204)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_18.init = 16'h5054;
    LUT4 i15112_2_lut_4_lut_rep_629 (.A(n33019), .B(state[1]), .C(n38275), 
         .D(n11), .Z(n39784)) /* synthesis lut_function=(A (D)+!A !(B+(C+!(D)))) */ ;
    defparam i15112_2_lut_4_lut_rep_629.init = 16'hab00;
    LUT4 i2_4_lut (.A(n38280), .B(cnt_init[0]), .C(n11_adj_1741), .D(n75), 
         .Z(n35702)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_4_lut.init = 16'h0002;
    LUT4 i2_3_lut (.A(oled_csn_N_1381), .B(state[4]), .C(cnt_write[0]), 
         .Z(n33104)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i1_3_lut (.A(state[4]), .B(oled_dat_N_1419), .C(n38337), .Z(n35662)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_3_lut.init = 16'h0808;
    LUT4 i2_4_lut_adj_19 (.A(n38434), .B(state[1]), .C(n38348), .D(n21), 
         .Z(n6_adj_1740)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    defparam i2_4_lut_adj_19.init = 16'hfffd;
    LUT4 i20891_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[77]), .Z(n38464)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20891_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i4_4_lut_adj_20 (.A(n7), .B(state[1]), .C(n36006), .D(state[5]), 
         .Z(sys_clk_c_enable_365)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut_adj_20.init = 16'h0002;
    FD1P3IX char_i0_i30 (.D(n1939[30]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i30.GSR = "ENABLED";
    PFUMX i30757 (.BLUT(n36430), .ALUT(n36431), .C0(cnt_main[3]), .Z(n36432));
    LUT4 i20795_2_lut (.A(state[4]), .B(state_back[0]), .Z(n41_adj_1742)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i20795_2_lut.init = 16'h1111;
    LUT4 i1_4_lut_adj_21 (.A(state[4]), .B(state[0]), .C(n85), .D(n4458), 
         .Z(n34)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_adj_21.init = 16'h0a22;
    LUT4 i20932_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[29]), .Z(n38470)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20932_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i1_4_lut_adj_22 (.A(n6800), .B(n7976), .C(n35808), .D(n38300), 
         .Z(sys_clk_c_enable_366)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_22.init = 16'ha088;
    LUT4 i20912_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[45]), .Z(n38473)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20912_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i30758_3_lut (.A(char_reg[7]), .B(char_reg[6]), .C(cnt_write[1]), 
         .Z(n36433)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30758_3_lut.init = 16'hcaca;
    LUT4 mux_2182_i1_4_lut (.A(n7976), .B(cnt_init[1]), .C(n38300), .D(n35807), 
         .Z(n6725[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam mux_2182_i1_4_lut.init = 16'hca0a;
    LUT4 i20872_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[101]), .Z(n38476)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20872_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 n11048_bdd_4_lut_31379 (.A(cnt[0]), .B(cnt[3]), .C(cnt[2]), .D(cnt[1]), 
         .Z(n37163)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n11048_bdd_4_lut_31379.init = 16'h1c09;
    LUT4 i20868_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[109]), .Z(n38479)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20868_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i20864_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[141]), .Z(n38482)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20864_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i30747_3_lut (.A(char[117]), .B(char[125]), .C(num[0]), .Z(n36422)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30747_3_lut.init = 16'hcaca;
    LUT4 char_45__bdd_4_lut_32476 (.A(char[45]), .B(n38301), .C(n38475), 
         .D(cnt_main[4]), .Z(n38131)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_45__bdd_4_lut_32476.init = 16'h88f0;
    LUT4 i31138_2_lut (.A(cnt_main[4]), .B(cnt_main[3]), .Z(n36352)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[12:20])
    defparam i31138_2_lut.init = 16'heeee;
    LUT4 char_53__bdd_4_lut_32471 (.A(char[53]), .B(n38301), .C(n38460), 
         .D(cnt_main[4]), .Z(n38132)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_53__bdd_4_lut_32471.init = 16'h88f0;
    LUT4 i30746_3_lut (.A(char[101]), .B(char[109]), .C(num[0]), .Z(n36421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30746_3_lut.init = 16'hcaca;
    LUT4 i20866_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[125]), .Z(n38485)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20866_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i20862_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[157]), .Z(n38488)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20862_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 char_141__bdd_4_lut_32470 (.A(char[141]), .B(n38301), .C(n38484), 
         .D(cnt_main[4]), .Z(n38118)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_141__bdd_4_lut_32470.init = 16'h88f0;
    LUT4 i20867_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[117]), .Z(n38491)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20867_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i20534_4_lut_4_lut_4_lut (.A(sw1_c), .B(\hundres_0__N_349[1] ), 
         .C(\hundres_0__N_349[2] ), .D(n38162), .Z(n7462[0])) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20534_4_lut_4_lut_4_lut.init = 16'h1450;
    LUT4 i20805_3_lut_3_lut (.A(sw1_c), .B(n38158), .C(\sec[1] ), .Z(n7472)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20805_3_lut_3_lut.init = 16'h1414;
    LUT4 i20803_3_lut_4_lut_4_lut_4_lut (.A(sw1_c), .B(\hundres_0__N_349[1] ), 
         .C(\hundres_0__N_349[2] ), .D(n38162), .Z(n7470)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20803_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i20804_4_lut_4_lut (.A(sw1_c), .B(\sec[1] ), .C(n38158), .D(n38171), 
         .Z(n7468[2])) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20804_4_lut_4_lut.init = 16'h4510;
    LUT4 i20535_2_lut_2_lut (.A(sw1_c), .B(\sec[0] ), .Z(n7468[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20535_2_lut_2_lut.init = 16'h4444;
    LUT4 i20807_4_lut_4_lut (.A(sw1_c), .B(n38166), .C(n8440), .D(\hundres_0__N_346[0] ), 
         .Z(n7462[2])) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20807_4_lut_4_lut.init = 16'h4510;
    LUT4 char_61__bdd_4_lut_32469 (.A(char[61]), .B(n38301), .C(n38463), 
         .D(cnt_main[4]), .Z(n38133)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_61__bdd_4_lut_32469.init = 16'h88f0;
    LUT4 i20808_3_lut_3_lut (.A(sw1_c), .B(n8440), .C(n38166), .Z(n7462[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20808_3_lut_3_lut.init = 16'h1414;
    LUT4 i20806_4_lut_4_lut (.A(sw1_c), .B(n4), .C(n8440), .D(\hundres_0__N_346[1] ), 
         .Z(n7462[3])) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20806_4_lut_4_lut.init = 16'h1540;
    LUT4 i20865_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[133]), .Z(n38494)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20865_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 char_69__bdd_4_lut_32462 (.A(char[69]), .B(n38301), .C(n38445), 
         .D(cnt_main[4]), .Z(n38134)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_69__bdd_4_lut_32462.init = 16'h88f0;
    LUT4 n4028_bdd_3_lut (.A(n3272), .B(n3650), .C(cnt_scan[0]), .Z(n36998)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4028_bdd_3_lut.init = 16'hcaca;
    LUT4 i30745_3_lut (.A(char[85]), .B(char[93]), .C(num[0]), .Z(n36420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30745_3_lut.init = 16'hcaca;
    CCU2D add_124_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32772), .S0(n4484[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_17.INIT0 = 16'h5aaa;
    defparam add_124_17.INIT1 = 16'h0000;
    defparam add_124_17.INJECT1_0 = "NO";
    defparam add_124_17.INJECT1_1 = "NO";
    LUT4 i20992_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[13]), .Z(n38497)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20992_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 n85_bdd_4_lut_31793 (.A(n85), .B(cnt_write[0]), .C(state[4]), 
         .D(oled_csn_N_1381), .Z(n38036)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam n85_bdd_4_lut_31793.init = 16'h4000;
    CCU2D add_124_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32771), .COUT(n32772), .S0(n4484[13]), 
          .S1(n4484[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_15.INIT0 = 16'h5aaa;
    defparam add_124_15.INIT1 = 16'h5aaa;
    defparam add_124_15.INJECT1_0 = "NO";
    defparam add_124_15.INJECT1_1 = "NO";
    LUT4 i20880_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[93]), .Z(n38500)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20880_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i1_4_lut_adj_23 (.A(n38348), .B(state[1]), .C(state[2]), .D(state[0]), 
         .Z(n11_adj_1741)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(124[5:9])
    defparam i1_4_lut_adj_23.init = 16'hffef;
    FD1P3IX char_i0_i29 (.D(n38127), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i29.GSR = "ENABLED";
    FD1P3IX char_i0_i28 (.D(n1939[28]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i28.GSR = "ENABLED";
    LUT4 i20523_2_lut_rep_624 (.A(state[3]), .B(state[2]), .Z(n39765)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20523_2_lut_rep_624.init = 16'heeee;
    PFUMX i31830 (.BLUT(n38452), .ALUT(n38453), .C0(\cnt_main[0] ), .Z(n38454));
    LUT4 i1_2_lut_then_4_lut (.A(cnt_scan[2]), .B(n4024), .C(n4402), .D(cnt_scan[0]), 
         .Z(n38513)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i1_2_lut_then_4_lut.init = 16'h5044;
    LUT4 i1_2_lut_else_4_lut (.A(cnt_scan[2]), .B(n3646), .C(n3268), .D(cnt_scan[0]), 
         .Z(n38512)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i1_2_lut_else_4_lut.init = 16'h4450;
    CCU2D add_124_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32770), .COUT(n32771), .S0(n4484[11]), 
          .S1(n4484[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_13.INIT0 = 16'h5aaa;
    defparam add_124_13.INIT1 = 16'h5aaa;
    defparam add_124_13.INJECT1_0 = "NO";
    defparam add_124_13.INJECT1_1 = "NO";
    LUT4 n38684_bdd_3_lut_4_lut (.A(n38683), .B(cnt_scan[2]), .C(cnt_scan[0]), 
         .D(n38682), .Z(n38685)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n38684_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_then_4_lut_adj_24 (.A(cnt_scan[2]), .B(n4403), .C(n4025), 
         .D(cnt_scan[0]), .Z(n38519)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i1_2_lut_then_4_lut_adj_24.init = 16'h4450;
    LUT4 i1_2_lut_else_4_lut_adj_25 (.A(n3269), .B(cnt_scan[2]), .C(n3647), 
         .D(cnt_scan[0]), .Z(n38518)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i1_2_lut_else_4_lut_adj_25.init = 16'h3022;
    LUT4 cnt_init_2__bdd_4_lut_32441 (.A(cnt_init[2]), .B(cnt_init[4]), 
         .C(cnt_init[1]), .D(cnt_init[3]), .Z(n38948)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam cnt_init_2__bdd_4_lut_32441.init = 16'hffec;
    FD1P3IX char_i0_i27 (.D(n38114), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i27.GSR = "ENABLED";
    FD1P3IX char_i0_i26 (.D(n1939[26]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i26.GSR = "ENABLED";
    LUT4 i31087_2_lut_rep_586 (.A(state[3]), .B(state[0]), .Z(n38400)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i31087_2_lut_rep_586.init = 16'h1111;
    LUT4 i37_4_lut_3_lut (.A(state[3]), .B(state[0]), .C(state[1]), .Z(n30_adj_1743)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam i37_4_lut_3_lut.init = 16'he8e8;
    LUT4 n85_bdd_2_lut_31795 (.A(state[4]), .B(state_back[5]), .Z(n38035)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n85_bdd_2_lut_31795.init = 16'h4444;
    FD1P3IX char_i0_i24 (.D(n38112), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i24.GSR = "ENABLED";
    LUT4 i30744_3_lut (.A(char[69]), .B(char[77]), .C(num[0]), .Z(n36419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30744_3_lut.init = 16'hcaca;
    LUT4 n38685_bdd_2_lut (.A(n38685), .B(cnt_scan[4]), .Z(n38686)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n38685_bdd_2_lut.init = 16'h2222;
    CCU2D add_124_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32769), .COUT(n32770), .S0(n4484[9]), .S1(n4484[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_11.INIT0 = 16'h5aaa;
    defparam add_124_11.INIT1 = 16'h5aaa;
    defparam add_124_11.INJECT1_0 = "NO";
    defparam add_124_11.INJECT1_1 = "NO";
    LUT4 n38950_bdd_3_lut_32088 (.A(n39763), .B(n38946), .C(state[1]), 
         .Z(n38951)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38950_bdd_3_lut_32088.init = 16'hcaca;
    LUT4 i30743_3_lut (.A(char[53]), .B(char[61]), .C(num[0]), .Z(n36418)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30743_3_lut.init = 16'hcaca;
    LUT4 i20886_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[85]), .Z(n38437)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20886_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i30742_3_lut (.A(char[37]), .B(char[45]), .C(num[0]), .Z(n36417)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30742_3_lut.init = 16'hcaca;
    LUT4 n36363_bdd_4_lut_rep_528_then_4_lut (.A(char[24]), .B(char[16]), 
         .C(n36190), .D(num[0]), .Z(n38540)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n36363_bdd_4_lut_rep_528_then_4_lut.init = 16'h0a0c;
    FD1P3IX cnt_delay_i0_i0 (.D(n4484[0]), .SP(sys_clk_c_enable_367), .CD(n20549), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    LUT4 n36363_bdd_4_lut_rep_528_else_4_lut (.A(char[0]), .B(n36190), .C(char[8]), 
         .D(num[0]), .Z(n38539)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n36363_bdd_4_lut_rep_528_else_4_lut.init = 16'h3022;
    LUT4 n36369_bdd_4_lut_rep_525_then_4_lut (.A(char[27]), .B(char[19]), 
         .C(n36190), .D(num[0]), .Z(n38543)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n36369_bdd_4_lut_rep_525_then_4_lut.init = 16'h0a0c;
    LUT4 n37961_bdd_4_lut (.A(n37961), .B(n37960), .C(num[1]), .D(n20163), 
         .Z(n2720)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n37961_bdd_4_lut.init = 16'h00ca;
    LUT4 n36369_bdd_4_lut_rep_525_else_4_lut (.A(char[3]), .B(n36190), .C(char[11]), 
         .D(num[0]), .Z(n38542)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n36369_bdd_4_lut_rep_525_else_4_lut.init = 16'h3022;
    LUT4 n2889_bdd_3_lut (.A(n2889), .B(cnt_scan[3]), .C(cnt_scan[1]), 
         .Z(n38680)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n2889_bdd_3_lut.init = 16'h2020;
    LUT4 char_77__bdd_4_lut_32427 (.A(char[77]), .B(n38301), .C(n38466), 
         .D(cnt_main[4]), .Z(n38135)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_77__bdd_4_lut_32427.init = 16'h88f0;
    LUT4 char_85__bdd_4_lut_32426 (.A(char[85]), .B(n38301), .C(n38439), 
         .D(cnt_main[4]), .Z(n38136)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_85__bdd_4_lut_32426.init = 16'h88f0;
    FD1S3AX num_delay_i15 (.D(num_delay_15__N_978[15]), .CK(sys_clk_c), 
            .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i15.GSR = "ENABLED";
    FD1S3AX num_delay_i14 (.D(num_delay_15__N_978[14]), .CK(sys_clk_c), 
            .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i14.GSR = "ENABLED";
    FD1S3AX num_delay_i13 (.D(num_delay_15__N_978[13]), .CK(sys_clk_c), 
            .Q(num_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i13.GSR = "ENABLED";
    FD1S3AX num_delay_i12 (.D(num_delay_15__N_978[12]), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i12.GSR = "ENABLED";
    FD1S3AX num_delay_i11 (.D(num_delay_15__N_978[11]), .CK(sys_clk_c), 
            .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i11.GSR = "ENABLED";
    FD1S3AX num_delay_i10 (.D(num_delay_15__N_978[10]), .CK(sys_clk_c), 
            .Q(num_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i10.GSR = "ENABLED";
    FD1S3AX num_delay_i9 (.D(num_delay_15__N_978[9]), .CK(sys_clk_c), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i9.GSR = "ENABLED";
    FD1S3AX num_delay_i8 (.D(num_delay_15__N_978[8]), .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i8.GSR = "ENABLED";
    FD1S3AX num_delay_i7 (.D(num_delay_15__N_978[7]), .CK(sys_clk_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i7.GSR = "ENABLED";
    FD1S3AX num_delay_i6 (.D(num_delay_15__N_978[6]), .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i6.GSR = "ENABLED";
    FD1S3AX num_delay_i5 (.D(num_delay_15__N_978[5]), .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i5.GSR = "ENABLED";
    FD1S3AX num_delay_i4 (.D(num_delay_15__N_978[4]), .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i4.GSR = "ENABLED";
    FD1S3AX num_delay_i3 (.D(num_delay_15__N_978[3]), .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i3.GSR = "ENABLED";
    FD1S3AY num_delay_i2 (.D(num_delay_15__N_978[2]), .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i2.GSR = "ENABLED";
    FD1S3AX num_delay_i1 (.D(num_delay_15__N_978[1]), .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n4484[14]), .SP(sys_clk_c_enable_367), 
            .CD(n20549), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    LUT4 x_pl_3__bdd_4_lut_4_lut_then_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(cnt_main[2]), .Z(n38552)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam x_pl_3__bdd_4_lut_4_lut_then_3_lut.init = 16'hcdcd;
    LUT4 x_pl_3__bdd_4_lut_4_lut_else_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(cnt_main[2]), .D(x_pl[3]), .Z(n38551)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam x_pl_3__bdd_4_lut_4_lut_else_3_lut.init = 16'h0100;
    FD1P3IX char_i0_i22 (.D(n1939[22]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i22.GSR = "ENABLED";
    LUT4 x_ph_0__bdd_4_lut_4_lut_then_3_lut (.A(cnt_main[2]), .B(cnt_main[1]), 
         .C(\cnt_main[0] ), .Z(n38555)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam x_ph_0__bdd_4_lut_4_lut_then_3_lut.init = 16'h1717;
    LUT4 x_ph_0__bdd_4_lut_4_lut_else_3_lut (.A(cnt_main[2]), .B(cnt_main[1]), 
         .C(\cnt_main[0] ), .D(x_ph[0]), .Z(n38554)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam x_ph_0__bdd_4_lut_4_lut_else_3_lut.init = 16'h0100;
    FD1P3AX num_2988__i7 (.D(n34545), .SP(sys_clk_c_enable_142), .CK(sys_clk_c), 
            .Q(num[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988__i7.GSR = "ENABLED";
    LUT4 i30389_2_lut_rep_516_3_lut (.A(state[5]), .B(state[4]), .C(state[2]), 
         .Z(n38330)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30389_2_lut_rep_516_3_lut.init = 16'hfefe;
    LUT4 i3854_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n4460[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3854_2_lut.init = 16'h6666;
    FD1P3AX num_2988__i2 (.D(n25[2]), .SP(sys_clk_c_enable_142), .CK(sys_clk_c), 
            .Q(num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988__i2.GSR = "ENABLED";
    CCU2D add_124_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32768), .COUT(n32769), .S0(n4484[7]), .S1(n4484[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_9.INIT0 = 16'h5aaa;
    defparam add_124_9.INIT1 = 16'h5aaa;
    defparam add_124_9.INJECT1_0 = "NO";
    defparam add_124_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_26 (.A(n20163), .B(n36368), .C(n1507), .D(num[2]), 
         .Z(n2724)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i1_4_lut_adj_26.init = 16'h5044;
    LUT4 i21183_2_lut_rep_491_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[0]), 
         .D(state[1]), .Z(n38305)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21183_2_lut_rep_491_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_124_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32767), .COUT(n32768), .S0(n4484[5]), .S1(n4484[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_7.INIT0 = 16'h5aaa;
    defparam add_124_7.INIT1 = 16'h5aaa;
    defparam add_124_7.INJECT1_0 = "NO";
    defparam add_124_7.INJECT1_1 = "NO";
    LUT4 mux_36_Mux_0_i31_4_lut_4_lut_4_lut_then_1_lut (.A(cnt_main[4]), .Z(n38558)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_36_Mux_0_i31_4_lut_4_lut_4_lut_then_1_lut.init = 16'h5555;
    LUT4 mux_36_Mux_0_i31_4_lut_4_lut_4_lut_else_1_lut (.A(cnt_main[2]), .B(\cnt_main[0] ), 
         .C(cnt_main[4]), .D(cnt_main[1]), .Z(n38557)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_36_Mux_0_i31_4_lut_4_lut_4_lut_else_1_lut.init = 16'h0818;
    LUT4 cnt_write_0__bdd_4_lut (.A(cnt_write[0]), .B(n85), .C(state[4]), 
         .D(oled_csn_N_1381), .Z(n38071)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam cnt_write_0__bdd_4_lut.init = 16'h1040;
    LUT4 n38071_bdd_3_lut (.A(n38071), .B(state[0]), .C(n38337), .Z(n38072)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38071_bdd_3_lut.init = 16'hcaca;
    LUT4 n85_bdd_4_lut_31794 (.A(n85), .B(state[4]), .C(cnt_write[0]), 
         .D(oled_csn_N_1381), .Z(n38073)) /* synthesis lut_function=(!(A ((D)+!B)+!A ((C (D)+!C !(D))+!B))) */ ;
    defparam n85_bdd_4_lut_31794.init = 16'h04c8;
    LUT4 i2_2_lut_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(n37449), 
         .D(state[2]), .Z(n19649)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 shift_right_84_i2462_4_lut (.A(n36429), .B(n1934), .C(num[4]), 
         .D(num[3]), .Z(n2721)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam shift_right_84_i2462_4_lut.init = 16'h0aca;
    LUT4 shift_right_84_i1934_4_lut (.A(n36374), .B(char[165]), .C(num[2]), 
         .D(n38431), .Z(n1934)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam shift_right_84_i1934_4_lut.init = 16'hca0a;
    LUT4 i2_3_lut_rep_523_4_lut (.A(state[5]), .B(state[4]), .C(n39765), 
         .D(n38421), .Z(n38337)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_rep_523_4_lut.init = 16'h0100;
    LUT4 i14678_2_lut (.A(num[3]), .B(num[4]), .Z(n20163)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i14678_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_adj_27 (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(n2891), 
         .Z(n11_adj_1744)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i2_3_lut_adj_27.init = 16'h8080;
    LUT4 i3_4_lut_then_4_lut (.A(state[2]), .B(cnt_scan[4]), .C(n38300), 
         .D(cnt_scan[3]), .Z(n38573)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut_then_4_lut.init = 16'h0010;
    LUT4 i3_4_lut_else_4_lut (.A(state[2]), .B(cnt_scan[4]), .C(n38300), 
         .D(cnt_scan[3]), .Z(n38572)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_else_4_lut.init = 16'h1000;
    LUT4 i1_3_lut_adj_28 (.A(char[26]), .B(n32424), .C(n16), .Z(n1939[26])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_28.init = 16'hecec;
    LUT4 i13903_2_lut_rep_592 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n38406)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i13903_2_lut_rep_592.init = 16'heeee;
    LUT4 i1_2_lut_rep_519_3_lut (.A(cnt_main[1]), .B(cnt_main[2]), .C(\cnt_main[0] ), 
         .Z(n38333)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_rep_519_3_lut.init = 16'hfefe;
    LUT4 n2726_bdd_4_lut (.A(n38342), .B(n38339), .C(n2724), .D(n38346), 
         .Z(n38077)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((C+!(D))+!B))) */ ;
    defparam n2726_bdd_4_lut.init = 16'h2400;
    FD1P3AX state_i0_i1 (.D(n33975), .SP(sys_clk_c_enable_303), .CK(sys_clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_487_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[2]), 
         .C(cnt_main[3]), .D(\cnt_main[0] ), .Z(n38301)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_rep_487_3_lut_4_lut.init = 16'hfffe;
    LUT4 i30515_3_lut (.A(num[3]), .B(num[4]), .C(num[2]), .Z(n36190)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30515_3_lut.init = 16'hfefe;
    LUT4 state_5__bdd_2_lut (.A(state[1]), .B(state_back[3]), .Z(n37192)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam state_5__bdd_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_29 (.A(n24_adj_1745), .B(char_reg[6]), .C(n38305), 
         .D(n27), .Z(char_reg_7__N_950[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_29.init = 16'hce0a;
    LUT4 n37235_bdd_4_lut_then_4_lut (.A(cnt[0]), .B(cnt[3]), .C(cnt[2]), 
         .D(cnt[4]), .Z(n38582)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam n37235_bdd_4_lut_then_4_lut.init = 16'h0114;
    LUT4 n37235_bdd_4_lut_else_4_lut (.A(cnt[0]), .B(cnt[3]), .C(cnt[2]), 
         .D(cnt[4]), .Z(n38581)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n37235_bdd_4_lut_else_4_lut.init = 16'h1645;
    LUT4 i30741_3_lut (.A(char[21]), .B(char[29]), .C(num[0]), .Z(n36416)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30741_3_lut.init = 16'hcaca;
    LUT4 i30740_3_lut (.A(char[5]), .B(char[13]), .C(num[0]), .Z(n36415)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30740_3_lut.init = 16'hcaca;
    LUT4 state_5__bdd_3_lut (.A(n38301), .B(state[1]), .C(cnt_main[4]), 
         .Z(n37193)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam state_5__bdd_3_lut.init = 16'h4848;
    FD1P3IX cnt_delay_i0_i15 (.D(n4484[15]), .SP(sys_clk_c_enable_367), 
            .CD(n20549), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_593 (.A(state[0]), .B(state[1]), .Z(n38407)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(90[5:9])
    defparam i1_2_lut_rep_593.init = 16'hbbbb;
    LUT4 i31124_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(sys_clk_c_enable_329), 
         .D(cnt_main[4]), .Z(n79)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(90[5:9])
    defparam i31124_3_lut_4_lut.init = 16'hf0b0;
    FD1P3IX cnt_main_i0_i1 (.D(cnt_main_4__N_1045[1]), .SP(sys_clk_c_enable_329), 
            .CD(n29787), .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    LUT4 char_93__bdd_4_lut_32398 (.A(char[93]), .B(n38301), .C(n38502), 
         .D(cnt_main[4]), .Z(n38137)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_93__bdd_4_lut_32398.init = 16'h88f0;
    FD1P3IX cnt_main_i0_i2 (.D(cnt_main_4__N_1045[2]), .SP(sys_clk_c_enable_329), 
            .CD(n29787), .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n17[3]), .SP(sys_clk_c_enable_329), .CD(n79), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    LUT4 char_101__bdd_4_lut_32397 (.A(char[101]), .B(n38301), .C(n38478), 
         .D(cnt_main[4]), .Z(n38138)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_101__bdd_4_lut_32397.init = 16'h88f0;
    LUT4 char_109__bdd_4_lut_32396 (.A(char[109]), .B(n38301), .C(n38481), 
         .D(cnt_main[4]), .Z(n38139)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_109__bdd_4_lut_32396.init = 16'h88f0;
    LUT4 n37189_bdd_3_lut_then_4_lut (.A(cnt[4]), .B(cnt[0]), .C(cnt[2]), 
         .D(cnt[3]), .Z(n38594)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+!(C+(D))))) */ ;
    defparam n37189_bdd_3_lut_then_4_lut.init = 16'h11b0;
    LUT4 n37189_bdd_3_lut_else_4_lut (.A(cnt[4]), .B(cnt[0]), .C(cnt[2]), 
         .D(cnt[3]), .Z(n38593)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B+(C)))) */ ;
    defparam n37189_bdd_3_lut_else_4_lut.init = 16'h0309;
    LUT4 n37101_bdd_4_lut_then_4_lut (.A(cnt[4]), .B(cnt[3]), .C(cnt[1]), 
         .D(cnt[2]), .Z(n38600)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C (D))))) */ ;
    defparam n37101_bdd_4_lut_then_4_lut.init = 16'h1004;
    LUT4 n37101_bdd_4_lut_else_4_lut (.A(cnt[4]), .B(cnt[3]), .C(cnt[1]), 
         .D(cnt[2]), .Z(n38599)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n37101_bdd_4_lut_else_4_lut.init = 16'h110d;
    LUT4 i20615_4_lut (.A(n38077), .B(n2721), .C(n35778), .D(n2722), 
         .Z(n126)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[51:79])
    defparam i20615_4_lut.init = 16'hc088;
    LUT4 i20521_2_lut_rep_595 (.A(state[4]), .B(state[3]), .Z(n38409)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20521_2_lut_rep_595.init = 16'heeee;
    LUT4 i21193_2_lut_rep_517_3_lut (.A(state[4]), .B(state[3]), .C(state[5]), 
         .Z(n38331)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i21193_2_lut_rep_517_3_lut.init = 16'hfefe;
    LUT4 i30393_2_lut_rep_596 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n38410)) /* synthesis lut_function=(A (B)) */ ;
    defparam i30393_2_lut_rep_596.init = 16'h8888;
    LUT4 i19_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(n35497)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i19_2_lut_3_lut.init = 16'h7878;
    CCU2D add_124_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32766), .COUT(n32767), .S0(n4484[3]), .S1(n4484[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_5.INIT0 = 16'h5aaa;
    defparam add_124_5.INIT1 = 16'h5aaa;
    defparam add_124_5.INJECT1_0 = "NO";
    defparam add_124_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_451 (.A(n2724), .B(n38339), .C(n38346), .Z(n38265)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[51:79])
    defparam i2_3_lut_rep_451.init = 16'hfbfb;
    LUT4 i3740_2_lut_rep_600 (.A(\cnt_main[0] ), .B(warning_TEM), .Z(n38414)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[41:56])
    defparam i3740_2_lut_rep_600.init = 16'h8888;
    LUT4 i1_3_lut_adj_30 (.A(state[2]), .B(state_back[3]), .C(n80), .Z(n6_adj_1746)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_30.init = 16'h8080;
    LUT4 i1_2_lut_4_lut_adj_31 (.A(n2724), .B(n38339), .C(n38346), .D(n38342), 
         .Z(n35778)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[51:79])
    defparam i1_2_lut_4_lut_adj_31.init = 16'h0400;
    LUT4 i20810_3_lut_4_lut (.A(\cnt_main[0] ), .B(warning_TEM), .C(cnt_main[4]), 
         .D(cnt_main[1]), .Z(cnt_main_4__N_1045[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[41:56])
    defparam i20810_3_lut_4_lut.init = 16'hf7f8;
    LUT4 i1_4_lut_adj_32 (.A(state[2]), .B(n4791), .C(n19), .D(n16_adj_1747), 
         .Z(n6_adj_1748)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_32.init = 16'haaa8;
    LUT4 i30698_3_lut (.A(char[149]), .B(char[157]), .C(num[0]), .Z(n36373)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30698_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_33 (.A(state[2]), .B(n38604), .C(char_reg[4]), .D(n38259), 
         .Z(n6_adj_1749)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_33.init = 16'ha088;
    LUT4 i1_2_lut_adj_34 (.A(state[2]), .B(char_reg_7__N_1273[3]), .Z(n6_adj_1750)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_34.init = 16'h8888;
    LUT4 i20861_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[165]), .Z(n38440)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20861_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i2_4_lut_4_lut (.A(state[0]), .B(state[4]), .C(n38337), .D(n38073), 
         .Z(n7)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h2620;
    LUT4 i21357_2_lut_rep_606 (.A(\cnt_main[0] ), .B(cnt_main[1]), .Z(n38420)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21357_2_lut_rep_606.init = 16'heeee;
    LUT4 i30697_3_lut (.A(char[133]), .B(char[141]), .C(num[0]), .Z(n36372)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30697_3_lut.init = 16'hcaca;
    LUT4 n37550_bdd_4_lut (.A(n37550), .B(n37549), .C(num[2]), .D(n20163), 
         .Z(n2722)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n37550_bdd_4_lut.init = 16'h00ca;
    LUT4 n4029_bdd_3_lut_31218 (.A(n4029), .B(n4407), .C(cnt_scan[0]), 
         .Z(n37000)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4029_bdd_3_lut_31218.init = 16'hcaca;
    LUT4 i1_2_lut_adj_35 (.A(state[2]), .B(char_reg_7__N_1273[0]), .Z(n6_adj_1751)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_35.init = 16'h8888;
    FD1P3IX cnt_main_i0_i4 (.D(n9096), .SP(sys_clk_c_enable_329), .CD(n79), 
            .CK(sys_clk_c), .Q(cnt_main[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_main_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_36 (.A(state[2]), .B(char_reg_7__N_1273[7]), .Z(n6_adj_1752)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_36.init = 16'h8888;
    LUT4 n2894_bdd_3_lut_31621 (.A(n2894), .B(cnt_scan[0]), .C(cnt_scan[1]), 
         .Z(n37209)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2894_bdd_3_lut_31621.init = 16'h8080;
    LUT4 i20965_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[22]), 
         .Z(n3_adj_1722)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i20965_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i20942_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[8]), 
         .Z(n3_adj_1753)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i20942_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[1]), 
         .D(cnt_main[2]), .Z(n35743)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i20976_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[30]), 
         .Z(n3)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i20976_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i20952_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[14]), 
         .Z(n3_adj_1738)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i20952_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i20946_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[10]), 
         .Z(n3_adj_1754)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i20946_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 n4029_bdd_3_lut (.A(n3273), .B(n3651), .C(cnt_scan[0]), .Z(n37001)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4029_bdd_3_lut.init = 16'hcaca;
    LUT4 i20960_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[18]), 
         .Z(n3_adj_1724)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i20960_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i20957_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[16]), 
         .Z(n3_adj_1726)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i20957_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[38]), 
         .Z(n5)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 n37212_bdd_3_lut (.A(n38143), .B(n37209), .C(cnt_scan[2]), .Z(n37213)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37212_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_37 (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(char[3]), .D(cnt_main[2]), .Z(n35744)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_37.init = 16'h0010;
    LUT4 i31056_2_lut_rep_507_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(cnt_main[2]), .Z(n38321)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i31056_2_lut_rep_507_3_lut.init = 16'h0101;
    LUT4 i30984_3_lut (.A(n7468[2]), .B(\Tem_high[2] ), .C(\cnt_main[0] ), 
         .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30984_3_lut.init = 16'hcaca;
    LUT4 state_2__bdd_3_lut_32214 (.A(n4791), .B(state[5]), .C(state[4]), 
         .Z(n38713)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam state_2__bdd_3_lut_32214.init = 16'h0202;
    LUT4 n37214_bdd_2_lut (.A(n37214), .B(cnt_scan[4]), .Z(n37215)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n37214_bdd_2_lut.init = 16'h2222;
    LUT4 mux_2381_i1_3_lut (.A(\min[0] ), .B(\min_warning[0] ), .C(sw1_c), 
         .Z(n7457[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(114[120:150])
    defparam mux_2381_i1_3_lut.init = 16'hcaca;
    LUT4 n2893_bdd_4_lut (.A(n2893), .B(x_ph[2]), .C(cnt_scan[2]), .D(cnt_scan[0]), 
         .Z(n39564)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n2893_bdd_4_lut.init = 16'ha00c;
    LUT4 n39562_bdd_2_lut (.A(n39562), .B(cnt_scan[2]), .Z(n39563)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n39562_bdd_2_lut.init = 16'h2222;
    LUT4 n3271_bdd_3_lut (.A(n3271), .B(n3649), .C(cnt_scan[0]), .Z(n39561)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3271_bdd_3_lut.init = 16'hcaca;
    LUT4 n3271_bdd_3_lut_32391 (.A(n4027), .B(n4405), .C(cnt_scan[0]), 
         .Z(n39560)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3271_bdd_3_lut_32391.init = 16'hcaca;
    LUT4 i1_4_lut_adj_38 (.A(n24_adj_1755), .B(char_reg[5]), .C(n38305), 
         .D(n27), .Z(char_reg_7__N_950[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_38.init = 16'hce0a;
    LUT4 led_c_7_bdd_2_lut_32403 (.A(n39564), .B(cnt_scan[1]), .Z(n39565)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_7_bdd_2_lut_32403.init = 16'h8888;
    LUT4 i30683_3_lut (.A(n7457[1]), .B(n7462[1]), .C(\cnt_main[0] ), 
         .Z(n36358)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30683_3_lut.init = 16'hcaca;
    LUT4 i30682_4_lut (.A(n7450), .B(n8155), .C(\cnt_main[0] ), .D(n14608), 
         .Z(n36357)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i30682_4_lut.init = 16'h3aca;
    LUT4 i30681_4_lut (.A(n38311), .B(n8142), .C(\cnt_main[0] ), .D(n11619), 
         .Z(n36356)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i30681_4_lut.init = 16'h3aca;
    LUT4 i1_3_lut_adj_39 (.A(\hundres_0__N_346[0]_adj_1 ), .B(n38186), .C(n8155), 
         .Z(n4_adj_2)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(113[119:148])
    defparam i1_3_lut_adj_39.init = 16'h6a6a;
    LUT4 i1_4_lut_adj_40 (.A(n24_adj_1758), .B(char_reg[4]), .C(n38305), 
         .D(n27), .Z(char_reg_7__N_950[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_40.init = 16'hce0a;
    LUT4 i5700_2_lut_rep_382_4_lut (.A(n38288), .B(state[4]), .C(state[5]), 
         .D(n4482), .Z(n38196)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(167[5:10])
    defparam i5700_2_lut_rep_382_4_lut.init = 16'hffef;
    LUT4 n26795_bdd_3_lut_32439_4_lut (.A(state[3]), .B(state[2]), .C(cnt_main[4]), 
         .D(n38301), .Z(n38946)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam n26795_bdd_3_lut_32439_4_lut.init = 16'hfeee;
    LUT4 n26795_bdd_2_lut_32438_3_lut (.A(state[3]), .B(state[2]), .C(state[1]), 
         .Z(n38945)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n26795_bdd_2_lut_32438_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_41 (.A(n24_adj_1759), .B(char_reg[3]), .C(n38305), 
         .D(n27), .Z(char_reg_7__N_950[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_41.init = 16'hce0a;
    LUT4 i30705_3_lut (.A(n7457[3]), .B(n7462[3]), .C(\cnt_main[0] ), 
         .Z(n36380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30705_3_lut.init = 16'hcaca;
    LUT4 i24_2_lut_rep_607 (.A(state[0]), .B(state[1]), .Z(n38421)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut_rep_607.init = 16'h6666;
    LUT4 i1_4_lut_adj_42 (.A(n24_adj_1760), .B(char_reg[2]), .C(n38305), 
         .D(n27), .Z(char_reg_7__N_950[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_42.init = 16'hce0a;
    LUT4 mux_37_Mux_2_i11_3_lut (.A(n7457[2]), .B(n7462[2]), .C(\cnt_main[0] ), 
         .Z(n11_adj_1761)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_2_i11_3_lut.init = 16'hcaca;
    LUT4 i2806_2_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n39765), 
         .D(n39766), .Z(n7976)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2806_2_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i5163_2_lut_rep_608 (.A(\cnt_main[0] ), .B(cnt_main[1]), .Z(n38422)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i5163_2_lut_rep_608.init = 16'h6666;
    LUT4 i30704_3_lut (.A(n7447[3]), .B(n7453), .C(\cnt_main[0] ), .Z(n36379)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30704_3_lut.init = 16'hcaca;
    LUT4 mux_34_Mux_1_i14_3_lut_4_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(cnt_main[2]), .Z(n14_adj_1762)) /* synthesis lut_function=(A ((C)+!B)+!A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_34_Mux_1_i14_3_lut_4_lut_3_lut.init = 16'he6e6;
    LUT4 i30712_3_lut (.A(n36385), .B(n36386), .C(cnt_main[2]), .Z(n36387)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30712_3_lut.init = 16'hcaca;
    LUT4 mux_37_Mux_2_i9_4_lut (.A(n7447[2]), .B(n8155), .C(\cnt_main[0] ), 
         .D(n19398), .Z(n9_adj_1763)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_2_i9_4_lut.init = 16'h3aca;
    LUT4 i21019_3_lut (.A(n8142), .B(\cnt_main[0] ), .C(n19395), .Z(n8)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21019_3_lut.init = 16'h4848;
    LUT4 i1_4_lut_adj_43 (.A(n24_adj_1764), .B(char_reg[1]), .C(n38305), 
         .D(n27), .Z(char_reg_7__N_950[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_43.init = 16'hce0a;
    LUT4 i1_3_lut_rep_441_4_lut (.A(n38296), .B(state[0]), .C(state[1]), 
         .D(n33019), .Z(sys_clk_c_enable_286)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_3_lut_rep_441_4_lut.init = 16'hff04;
    LUT4 i30692_3_lut (.A(char[18]), .B(char[26]), .C(num[0]), .Z(n36367)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30692_3_lut.init = 16'hcaca;
    LUT4 i30691_3_lut (.A(char[2]), .B(char[10]), .C(num[0]), .Z(n36366)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30691_3_lut.init = 16'hcaca;
    LUT4 i20248_4_lut (.A(n38188), .B(char[1]), .C(n38301), .D(\ds18b20_data[5] ), 
         .Z(n30_adj_1765)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i20248_4_lut.init = 16'hc5ca;
    LUT4 mux_37_Mux_1_i15_4_lut (.A(n35743), .B(n36362), .C(cnt_main[3]), 
         .D(n25668), .Z(n15_adj_1766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_1_i15_4_lut.init = 16'hcfca;
    FD1P3IX cnt_write_i0_i0 (.D(n2), .SP(sys_clk_c_enable_340), .CD(n20568), 
            .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i9580_4_lut (.A(\hundres_0__N_349[1]_adj_3 ), .B(char[3]), .C(n38301), 
         .D(n38178), .Z(n30_adj_1768)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i9580_4_lut.init = 16'hc5ca;
    LUT4 mux_37_Mux_3_i15_4_lut (.A(n35744), .B(n36384), .C(cnt_main[3]), 
         .D(n25668), .Z(n15_adj_1769)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_3_i15_4_lut.init = 16'hcfca;
    LUT4 i9590_4_lut (.A(n38213), .B(char[2]), .C(n38301), .D(n10603), 
         .Z(n30_adj_1770)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i9590_4_lut.init = 16'hc5ca;
    LUT4 n2895_bdd_3_lut_31551 (.A(n2895), .B(cnt_scan[0]), .C(cnt_scan[1]), 
         .Z(n37244)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2895_bdd_3_lut_31551.init = 16'h8080;
    LUT4 i31052_2_lut_rep_617 (.A(num[0]), .B(num[1]), .Z(n38431)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i31052_2_lut_rep_617.init = 16'h1111;
    LUT4 i5508_2_lut_4_lut (.A(char[1]), .B(n36190), .C(n38431), .D(n2724), 
         .Z(n10890)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i5508_2_lut_4_lut.init = 16'h2000;
    LUT4 char_30__bdd_4_lut_31705 (.A(char[30]), .B(char[22]), .C(num[2]), 
         .D(num[0]), .Z(n37960)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam char_30__bdd_4_lut_31705.init = 16'h0a0c;
    LUT4 i1_2_lut_3_lut_adj_44 (.A(num[0]), .B(num[1]), .C(char[34]), 
         .Z(n1507)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i1_2_lut_3_lut_adj_44.init = 16'h1010;
    CCU2D add_124_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32765), .COUT(n32766), .S0(n4484[1]), .S1(n4484[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_3.INIT0 = 16'h5aaa;
    defparam add_124_3.INIT1 = 16'h5aaa;
    defparam add_124_3.INJECT1_0 = "NO";
    defparam add_124_3.INJECT1_1 = "NO";
    LUT4 i3_3_lut_rep_532_4_lut (.A(num[0]), .B(num[1]), .C(n36190), .D(char[1]), 
         .Z(n38346)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i3_3_lut_rep_532_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_45 (.A(n24_adj_1771), .B(char_reg[0]), .C(n38305), 
         .D(n27), .Z(char_reg_7__N_950[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_45.init = 16'hce0a;
    LUT4 n37247_bdd_3_lut (.A(n38141), .B(n37244), .C(cnt_scan[2]), .Z(n37248)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37247_bdd_3_lut.init = 16'hcaca;
    LUT4 n37249_bdd_2_lut (.A(n37249), .B(cnt_scan[4]), .Z(n37250)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n37249_bdd_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_46 (.A(n35674), .B(n35792), .C(state[0]), .D(n38337), 
         .Z(sys_clk_c_enable_19)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_46.init = 16'hc088;
    LUT4 i20516_2_lut_rep_625 (.A(state[5]), .B(state[4]), .Z(n39766)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20516_2_lut_rep_625.init = 16'heeee;
    LUT4 i2_4_lut_adj_47 (.A(cnt_write[1]), .B(state[4]), .C(n4_adj_1772), 
         .D(cnt_write[3]), .Z(n35674)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_4_lut_adj_47.init = 16'h0040;
    LUT4 i1_3_lut_adj_48 (.A(cnt_write[2]), .B(oled_csn_N_1381), .C(cnt_write[0]), 
         .Z(n4_adj_1772)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_48.init = 16'h4141;
    LUT4 i11_4_lut (.A(oled_csn_N_1381), .B(state[0]), .C(n38337), .D(state[4]), 
         .Z(n35379)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    defparam i11_4_lut.init = 16'hcac0;
    LUT4 cnt_0__bdd_4_lut_31542 (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .D(cnt[4]), 
         .Z(n37255)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A !(B (C)+!B (D)))) */ ;
    defparam cnt_0__bdd_4_lut_31542.init = 16'h53e0;
    LUT4 i1_2_lut_rep_619 (.A(state[2]), .B(state[1]), .Z(n38433)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_rep_619.init = 16'heeee;
    LUT4 i30761_3_lut (.A(char_reg[1]), .B(char_reg[0]), .C(cnt_write[1]), 
         .Z(n36436)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30761_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_49 (.A(state[2]), .B(state[1]), .C(state_back[2]), 
         .Z(n9_adj_1773)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_3_lut_adj_49.init = 16'h1010;
    LUT4 i1_2_lut_rep_474_3_lut_4_lut (.A(state[2]), .B(state[1]), .C(state[3]), 
         .D(state[0]), .Z(n38288)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_rep_474_3_lut_4_lut.init = 16'hfffe;
    L6MUX21 i30752 (.D0(n36423), .D1(n36424), .SD(num[2]), .Z(n36427));
    LUT4 i31116_4_lut_4_lut_4_lut (.A(state[2]), .B(state[1]), .C(n38296), 
         .D(state[0]), .Z(sys_clk_c_enable_329)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C+(D))+!B (C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i31116_4_lut_4_lut_4_lut.init = 16'h030e;
    LUT4 equal_2343_i8_2_lut_rep_620 (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n38434)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam equal_2343_i8_2_lut_rep_620.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_4_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .D(n38348), .Z(n29787)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_621 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n38435)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[22:30])
    defparam i1_2_lut_rep_621.init = 16'h8888;
    LUT4 n38952_bdd_2_lut_3_lut (.A(state[5]), .B(state[4]), .C(n38952), 
         .Z(n38953)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n38952_bdd_2_lut_3_lut.init = 16'hfefe;
    LUT4 i27315_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .D(cnt_init[3]), .Z(n2321[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[22:30])
    defparam i27315_3_lut_4_lut.init = 16'h7f80;
    LUT4 i30356_2_lut_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[4]), 
         .D(cnt_init[3]), .Z(n75)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[22:30])
    defparam i30356_2_lut_3_lut_4_lut.init = 16'hfff8;
    LUT4 n15_bdd_4_lut_31818_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), 
         .C(y_p[0]), .D(x_ph[0]), .Z(n38141)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam n15_bdd_4_lut_31818_4_lut_4_lut.init = 16'h5410;
    LUT4 i1_2_lut_rep_622 (.A(state[3]), .B(state[1]), .Z(n38436)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_622.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_50 (.A(state[3]), .B(state[1]), .C(state[4]), 
         .D(state[5]), .Z(n26618)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_50.init = 16'hfffe;
    L6MUX21 i30753 (.D0(n36425), .D1(n36426), .SD(num[2]), .Z(n36428));
    LUT4 mux_34_Mux_0_i31_4_lut_4_lut (.A(n38301), .B(cnt_main[4]), .C(x_ph[0]), 
         .D(n38556), .Z(n1912[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_34_Mux_0_i31_4_lut_4_lut.init = 16'hf7c4;
    LUT4 mux_33_Mux_0_i31_4_lut_4_lut (.A(n38301), .B(cnt_main[4]), .C(y_p[0]), 
         .D(n37396), .Z(n1903[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_33_Mux_0_i31_4_lut_4_lut.init = 16'hf7c4;
    LUT4 i1_2_lut_4_lut_adj_51 (.A(n11_adj_1741), .B(cnt_init[0]), .C(n38349), 
         .D(n6_adj_1740), .Z(n28710)) /* synthesis lut_function=(!(A (D)+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_51.init = 16'h00ae;
    L6MUX21 i30764 (.D0(n36437), .D1(n36438), .SD(cnt_write[3]), .Z(oled_dat_N_1419));
    LUT4 i21147_4_lut_4_lut (.A(n38339), .B(n8_adj_1774), .C(n38234), 
         .D(n7_adj_1775), .Z(n10680)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i21147_4_lut_4_lut.init = 16'h0002;
    LUT4 i3_4_lut_4_lut (.A(n38342), .B(n38362), .C(n2720), .D(n35828), 
         .Z(n35768)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[51:79])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_4_lut_adj_52 (.A(state[0]), .B(num_delay[15]), .C(n16_adj_1776), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_52.init = 16'hdc50;
    LUT4 i1_2_lut_rep_420_4_lut (.A(char[1]), .B(n36190), .C(n38431), 
         .D(n2721), .Z(n38234)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;
    defparam i1_2_lut_rep_420_4_lut.init = 16'h20ff;
    LUT4 i33_4_lut (.A(num_delay[15]), .B(num_delay_15__N_1289[15]), .C(state[2]), 
         .D(n26618), .Z(n16_adj_1776)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_53 (.A(cnt_init[0]), .B(num_delay[15]), .C(n38264), 
         .D(n38309), .Z(num_delay_15__N_1289[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_53.init = 16'hcc40;
    LUT4 n4026_bdd_3_lut_31224 (.A(n4026), .B(n4404), .C(cnt_scan[0]), 
         .Z(n37006)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4026_bdd_3_lut_31224.init = 16'hcaca;
    LUT4 i1_4_lut_adj_54 (.A(state[0]), .B(num_delay[14]), .C(n16_adj_1778), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[14])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_54.init = 16'hdc50;
    LUT4 i30938_3_lut_4_lut (.A(n9), .B(n38361), .C(state[5]), .D(n21_adj_1779), 
         .Z(n23)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i30938_3_lut_4_lut.init = 16'hf101;
    LUT4 i33_4_lut_adj_55 (.A(num_delay[14]), .B(num_delay_15__N_1289[14]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1778)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_55.init = 16'h0aca;
    LUT4 i1_4_lut_adj_56 (.A(n4791), .B(num_delay[14]), .C(n16_adj_1780), 
         .D(n38309), .Z(num_delay_15__N_1289[14])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_56.init = 16'hfefa;
    FD1P3IX char_i0_i21 (.D(n38126), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i21.GSR = "ENABLED";
    PFUMX i31828 (.BLUT(n38449), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38451));
    LUT4 i1_3_lut_adj_57 (.A(cnt_init[0]), .B(num_delay[14]), .C(n38264), 
         .Z(n16_adj_1780)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_57.init = 16'h4040;
    LUT4 i31140_2_lut (.A(cnt_main[4]), .B(cnt_main[3]), .Z(n36350)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i31140_2_lut.init = 16'hbbbb;
    FD1P3IX cnt_init_i0_i1 (.D(n2321[1]), .SP(sys_clk_c_enable_204), .CD(n28710), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    FD1P3IX char_i0_i19 (.D(n38111), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i19.GSR = "ENABLED";
    FD1P3IX char_i0_i18 (.D(n1939[18]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i18.GSR = "ENABLED";
    FD1P3IX char_i0_i16 (.D(n1939[16]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i16.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i2 (.D(n35497), .SP(sys_clk_c_enable_204), .CD(n28710), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_58 (.A(state[0]), .B(num_delay[13]), .C(n16_adj_1781), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[13])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_58.init = 16'hdc50;
    LUT4 i33_4_lut_adj_59 (.A(num_delay[13]), .B(num_delay_15__N_1289[13]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1781)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_59.init = 16'h0aca;
    FD1P3IX cnt_init_i0_i3 (.D(n2321[3]), .SP(sys_clk_c_enable_204), .CD(n28710), 
            .CK(sys_clk_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_init_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i4 (.D(n2321[4]), .SP(sys_clk_c_enable_204), .CD(n28710), 
            .CK(sys_clk_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_init_i0_i4.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_60 (.A(n33052), .B(n47), .C(state[1]), .D(state[5]), 
         .Z(n6800)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_60.init = 16'haaae;
    LUT4 i2_4_lut_adj_61 (.A(state[1]), .B(n26588), .C(state[5]), .D(n39765), 
         .Z(n33052)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_61.init = 16'h0012;
    LUT4 i1_4_lut_adj_62 (.A(n4791), .B(num_delay[13]), .C(n16_adj_1782), 
         .D(n38309), .Z(num_delay_15__N_1289[13])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_62.init = 16'hfefa;
    FD1P3IX char_i0_i14 (.D(n1939[14]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i14.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_63 (.A(cnt_init[0]), .B(num_delay[13]), .C(n38264), 
         .Z(n16_adj_1782)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_63.init = 16'h4040;
    LUT4 n11048_bdd_4_lut_31529 (.A(cnt[0]), .B(cnt[1]), .C(cnt[3]), .D(cnt[2]), 
         .Z(n37311)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A ((D)+!B)) */ ;
    defparam n11048_bdd_4_lut_31529.init = 16'hdfb1;
    FD1P3IX char_i0_i13 (.D(n38124), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i13.GSR = "ENABLED";
    FD1P3IX char_i0_i11 (.D(n1939[11]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i11.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_64 (.A(state[0]), .B(num_delay[12]), .C(n16_adj_1783), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_64.init = 16'hdc50;
    FD1P3IX char_i0_i10 (.D(n1939[10]), .SP(sys_clk_c_enable_378), .CD(n20701), 
            .CK(sys_clk_c), .Q(char[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i10.GSR = "ENABLED";
    FD1P3IX char_i0_i8 (.D(n1939[8]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i8.GSR = "ENABLED";
    LUT4 i33_4_lut_adj_65 (.A(num_delay[12]), .B(num_delay_15__N_1289[12]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1783)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_65.init = 16'h0aca;
    FD1P3IX char_i0_i5 (.D(n1939[5]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_66 (.A(cnt_init[0]), .B(num_delay[12]), .C(n38264), 
         .D(n38309), .Z(num_delay_15__N_1289[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_66.init = 16'hcc40;
    LUT4 cnt_main_0__bdd_3_lut_31459 (.A(cnt_main[3]), .B(cnt_main[1]), 
         .C(cnt_main[2]), .Z(n37394)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam cnt_main_0__bdd_3_lut_31459.init = 16'h8080;
    LUT4 i1_4_lut_adj_67 (.A(state[0]), .B(num_delay[11]), .C(n16_adj_1784), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_67.init = 16'hdc50;
    LUT4 i33_4_lut_adj_68 (.A(num_delay[11]), .B(num_delay_15__N_1289[11]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1784)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_68.init = 16'h0aca;
    LUT4 i1_4_lut_adj_69 (.A(cnt_init[0]), .B(num_delay[11]), .C(n38264), 
         .D(n38309), .Z(num_delay_15__N_1289[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_69.init = 16'hcc40;
    LUT4 i1_2_lut_4_lut_adj_70 (.A(n37997), .B(n1671[6]), .C(n36274), 
         .D(state[2]), .Z(n6_adj_1785)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_70.init = 16'hac00;
    LUT4 i1_4_lut_adj_71 (.A(state[0]), .B(num_delay[10]), .C(n16_adj_1786), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_71.init = 16'hdc50;
    LUT4 i33_4_lut_adj_72 (.A(num_delay[10]), .B(num_delay_15__N_1289[10]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1786)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_72.init = 16'h0aca;
    LUT4 i1_4_lut_adj_73 (.A(cnt_init[0]), .B(num_delay[10]), .C(n38264), 
         .D(n38309), .Z(num_delay_15__N_1289[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_73.init = 16'hcc40;
    LUT4 cnt_main_0__bdd_4_lut_31936 (.A(cnt_main[3]), .B(cnt_main[1]), 
         .C(cnt_main[2]), .D(y_p[0]), .Z(n37395)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam cnt_main_0__bdd_4_lut_31936.init = 16'h5554;
    LUT4 n11_bdd_4_lut_4_lut (.A(state[0]), .B(n38433), .C(n38348), .D(n38270), 
         .Z(sys_clk_c_enable_367)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam n11_bdd_4_lut_4_lut.init = 16'h02fe;
    FD1P3IX char_i0_i4 (.D(n1939[4]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i4.GSR = "ENABLED";
    LUT4 i73_2_lut (.A(state[2]), .B(state[3]), .Z(n38_adj_1787)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i73_2_lut.init = 16'h6666;
    LUT4 n11_bdd_4_lut_4_lut_adj_74 (.A(state[0]), .B(n38433), .C(n38348), 
         .D(n11_adj_1788), .Z(sys_clk_c_enable_340)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam n11_bdd_4_lut_4_lut_adj_74.init = 16'h02fe;
    FD1P3IX char_i0_i3 (.D(n1939[3]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_75 (.A(n27), .B(n38305), .C(n8_adj_1789), 
         .D(state_back[5]), .Z(state_back_5__N_1032[5])) /* synthesis lut_function=(A (D)+!A !(B+!(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    defparam i1_2_lut_4_lut_adj_75.init = 16'hba00;
    LUT4 i1_2_lut_4_lut_adj_76 (.A(n27), .B(n38305), .C(n8_adj_1789), 
         .D(state_back[0]), .Z(state_back_5__N_1032[0])) /* synthesis lut_function=(A (D)+!A !(B+!(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    defparam i1_2_lut_4_lut_adj_76.init = 16'hba00;
    LUT4 i1_4_lut_adj_77 (.A(state[0]), .B(num_delay[9]), .C(n16_adj_1790), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_77.init = 16'hdc50;
    FD1P3IX char_i0_i2 (.D(n1939[2]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i2.GSR = "ENABLED";
    LUT4 i33_4_lut_adj_78 (.A(num_delay[9]), .B(num_delay_15__N_1289[9]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1790)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_78.init = 16'h0aca;
    LUT4 i1_4_lut_adj_79 (.A(cnt_init[0]), .B(num_delay[9]), .C(n38264), 
         .D(n38309), .Z(num_delay_15__N_1289[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_79.init = 16'hcc40;
    LUT4 i1_4_lut_adj_80 (.A(state[0]), .B(num_delay[8]), .C(n16_adj_1791), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_80.init = 16'hdc50;
    LUT4 i33_4_lut_adj_81 (.A(num_delay[8]), .B(num_delay_15__N_1289[8]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1791)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_81.init = 16'h0aca;
    LUT4 i1_4_lut_adj_82 (.A(n4791), .B(num_delay[8]), .C(n16_adj_1792), 
         .D(n38309), .Z(num_delay_15__N_1289[8])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_82.init = 16'hfefa;
    LUT4 i1_3_lut_adj_83 (.A(cnt_init[0]), .B(num_delay[8]), .C(n38264), 
         .Z(n16_adj_1792)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_83.init = 16'h4040;
    LUT4 n8_bdd_4_lut_4_lut (.A(state[0]), .B(n38433), .C(n38348), .D(n38294), 
         .Z(sys_clk_c_enable_370)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam n8_bdd_4_lut_4_lut.init = 16'h02fe;
    LUT4 i2_3_lut_rep_456_4_lut (.A(state[3]), .B(n38434), .C(state[5]), 
         .D(state[4]), .Z(n38270)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(167[5:10])
    defparam i2_3_lut_rep_456_4_lut.init = 16'hffef;
    LUT4 i1_4_lut_adj_84 (.A(state[0]), .B(num_delay[7]), .C(n16_adj_1793), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_84.init = 16'hdc50;
    LUT4 i33_4_lut_adj_85 (.A(num_delay[7]), .B(num_delay_15__N_1289[7]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1793)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_85.init = 16'h0aca;
    LUT4 i3903_3_lut_4_lut (.A(n38163), .B(\hundres_0__N_349[3] ), .C(n8142), 
         .D(\hundres_0__N_346[1]_adj_4 ), .Z(n8458)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(111[119:149])
    defparam i3903_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1_4_lut_adj_86 (.A(n4791), .B(num_delay[7]), .C(n16_adj_1795), 
         .D(n38309), .Z(num_delay_15__N_1289[7])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_86.init = 16'hfefa;
    LUT4 i1_3_lut_adj_87 (.A(cnt_init[0]), .B(num_delay[7]), .C(n38264), 
         .Z(n16_adj_1795)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_87.init = 16'h4040;
    LUT4 i2_3_lut_4_lut (.A(state[3]), .B(n38434), .C(state[5]), .D(state[4]), 
         .Z(n11_adj_1788)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(167[5:10])
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    LUT4 i30760_3_lut (.A(char_reg[3]), .B(char_reg[2]), .C(cnt_write[1]), 
         .Z(n36435)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30760_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_88 (.A(state[0]), .B(num_delay[6]), .C(n16_adj_1796), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_88.init = 16'hdc50;
    LUT4 i33_4_lut_adj_89 (.A(num_delay[6]), .B(num_delay_15__N_1289[6]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1796)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_89.init = 16'h0aca;
    LUT4 i1_4_lut_adj_90 (.A(cnt_init[0]), .B(num_delay[6]), .C(n38264), 
         .D(n38309), .Z(num_delay_15__N_1289[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_90.init = 16'hcc40;
    LUT4 i21148_2_lut (.A(state[0]), .B(state[4]), .Z(n26588)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21148_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_91 (.A(state[0]), .B(num_delay[5]), .C(n16_adj_1797), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_91.init = 16'hdc50;
    LUT4 i33_4_lut_adj_92 (.A(num_delay[5]), .B(num_delay_15__N_1289[5]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1797)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_92.init = 16'h0aca;
    LUT4 i2_4_lut_adj_93 (.A(cnt_init[0]), .B(n4_adj_1798), .C(num_delay[5]), 
         .D(n38264), .Z(num_delay_15__N_1289[5])) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_93.init = 16'hdccc;
    LUT4 i1_3_lut_adj_94 (.A(n4791), .B(num_delay[5]), .C(n38309), .Z(n4_adj_1798)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut_adj_94.init = 16'heaea;
    LUT4 i1_4_lut_adj_95 (.A(n6800), .B(n7976), .C(n20492), .D(n38300), 
         .Z(sys_clk_c_enable_20)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_95.init = 16'h0a88;
    LUT4 i1_4_lut_adj_96 (.A(state[0]), .B(num_delay[4]), .C(n16_adj_1799), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_96.init = 16'hdc50;
    LUT4 i33_4_lut_adj_97 (.A(num_delay[4]), .B(num_delay_15__N_1289[4]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1799)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_97.init = 16'h0aca;
    LUT4 i1_4_lut_adj_98 (.A(cnt_init[0]), .B(num_delay[4]), .C(n38264), 
         .D(n38309), .Z(num_delay_15__N_1289[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_98.init = 16'hcc40;
    LUT4 i1_2_lut_adj_99 (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n82)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_adj_99.init = 16'heeee;
    LUT4 i1_4_lut_adj_100 (.A(state[0]), .B(num_delay[3]), .C(n16_adj_1800), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_100.init = 16'hdc50;
    LUT4 i33_4_lut_adj_101 (.A(num_delay[3]), .B(num_delay_15__N_1289[3]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1800)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_101.init = 16'h0aca;
    FD1P3IX cnt_scan_i0_i1 (.D(cnt_scan_4__N_1055[1]), .SP(sys_clk_c_enable_370), 
            .CD(n20614), .CK(sys_clk_c), .Q(cnt_scan[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_scan_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_scan_i0_i2 (.D(cnt_scan_4__N_1055[2]), .SP(sys_clk_c_enable_370), 
            .CD(n20614), .CK(sys_clk_c), .Q(cnt_scan[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_scan_i0_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_102 (.A(n4791), .B(num_delay[3]), .C(n16_adj_1801), 
         .D(n38309), .Z(num_delay_15__N_1289[3])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_102.init = 16'hfefa;
    FD1P3IX char_i0_i1 (.D(n1939[1]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_scan_i0_i3 (.D(cnt_scan_4__N_1055[3]), .SP(sys_clk_c_enable_370), 
            .CD(n20614), .CK(sys_clk_c), .Q(cnt_scan[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_scan_i0_i3.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_103 (.A(cnt_init[0]), .B(num_delay[3]), .C(n38264), 
         .Z(n16_adj_1801)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_103.init = 16'h4040;
    FD1P3AX cnt_scan_i0_i4 (.D(n33038), .SP(sys_clk_c_enable_370), .CK(sys_clk_c), 
            .Q(cnt_scan[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_scan_i0_i4.GSR = "ENABLED";
    LUT4 i20926_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[37]), .Z(n38449)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20926_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i31059_4_lut (.A(state[0]), .B(num_delay[2]), .C(n24_adj_1802), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[2])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i31059_4_lut.init = 16'h8caf;
    FD1P3IX char_i0_i0 (.D(n1939[0]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i0.GSR = "ENABLED";
    LUT4 i41_4_lut (.A(num_delay[2]), .B(n26618), .C(state[2]), .D(n35675), 
         .Z(n24_adj_1802)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i41_4_lut.init = 16'h3505;
    FD1P3IX x_ph_i0_i4 (.D(n1912[4]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(x_ph[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam x_ph_i0_i4.GSR = "ENABLED";
    FD1P3IX x_ph_i0_i2 (.D(n1912[2]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(x_ph[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam x_ph_i0_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_104 (.A(cnt_init[0]), .B(num_delay[2]), .C(n15_adj_1803), 
         .D(n38309), .Z(n35675)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_104.init = 16'h23af;
    LUT4 i1_4_lut_adj_105 (.A(num_delay[2]), .B(n38372), .C(n38308), .D(oled_dcn_N_1397), 
         .Z(n15_adj_1803)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_105.init = 16'ha8f8;
    CCU2D add_124_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32765), .S1(n4484[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_1.INIT0 = 16'hF000;
    defparam add_124_1.INIT1 = 16'h5555;
    defparam add_124_1.INJECT1_0 = "NO";
    defparam add_124_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_106 (.A(state[0]), .B(num_delay[1]), .C(n16_adj_1804), 
         .D(n19_adj_1777), .Z(num_delay_15__N_978[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_106.init = 16'hdc50;
    LUT4 i33_4_lut_adj_107 (.A(num_delay[1]), .B(num_delay_15__N_1289[1]), 
         .C(state[2]), .D(n26618), .Z(n16_adj_1804)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_107.init = 16'h0aca;
    LUT4 i1_4_lut_adj_108 (.A(cnt_init[0]), .B(num_delay[1]), .C(n38264), 
         .D(n38309), .Z(num_delay_15__N_1289[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_108.init = 16'hcc40;
    LUT4 i31181_4_lut_4_lut (.A(n38330), .B(n38400), .C(n30_adj_1743), 
         .D(n22), .Z(sys_clk_c_enable_142)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C)))) */ ;
    defparam i31181_4_lut_4_lut.init = 16'h0105;
    FD1P3IX x_ph_i0_i0 (.D(n1912[0]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(x_ph[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam x_ph_i0_i0.GSR = "ENABLED";
    LUT4 state_3__bdd_4_lut_32204 (.A(state[3]), .B(state[1]), .C(warning_TEM), 
         .D(state[0]), .Z(n37449)) /* synthesis lut_function=(!(A (B+(D))+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam state_3__bdd_4_lut_32204.init = 16'h1162;
    LUT4 i24_4_lut (.A(n5_adj_1805), .B(n37[7]), .C(state[3]), .D(n6_adj_1806), 
         .Z(n34545)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i24_4_lut.init = 16'hcac0;
    LUT4 n15_bdd_4_lut_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(y_p[1]), 
         .D(x_ph[1]), .Z(n38143)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam n15_bdd_4_lut_4_lut_4_lut.init = 16'h5410;
    LUT4 i31061_4_lut (.A(state[0]), .B(num_delay[0]), .C(n26911), .D(n19_adj_1777), 
         .Z(num_delay_15__N_978[0])) /* synthesis lut_function=(A (B+!(D))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i31061_4_lut.init = 16'hc8fa;
    LUT4 num_2988_mux_6_i3_4_lut (.A(n5_adj_1805), .B(n37[2]), .C(state[3]), 
         .D(n4_adj_1807), .Z(n25[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988_mux_6_i3_4_lut.init = 16'hcac0;
    LUT4 i41_4_lut_adj_109 (.A(num_delay[0]), .B(n26618), .C(state[2]), 
         .D(n35647), .Z(n26911)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i41_4_lut_adj_109.init = 16'hfaca;
    LUT4 i1_4_lut_adj_110 (.A(cnt_init[0]), .B(num_delay[0]), .C(n15_adj_1808), 
         .D(n38309), .Z(n35647)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_110.init = 16'hdc50;
    FD1P3IX x_ph_i0_i1 (.D(n1912[1]), .SP(sys_clk_c_enable_286), .CD(n39784), 
            .CK(sys_clk_c), .Q(x_ph[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam x_ph_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_111 (.A(num_delay[0]), .B(n38372), .C(n38308), .D(oled_dcn_N_1397), 
         .Z(n15_adj_1808)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_111.init = 16'ha8f8;
    FD1P3IX cnt_i0_i15 (.D(n2383[15]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i15.GSR = "ENABLED";
    FD1P3IX cnt_i0_i14 (.D(n2383[14]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i14.GSR = "ENABLED";
    FD1P3IX cnt_i0_i13 (.D(n2383[13]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i13.GSR = "ENABLED";
    FD1P3IX cnt_i0_i12 (.D(n2383[12]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i12.GSR = "ENABLED";
    FD1P3IX cnt_i0_i0 (.D(n2383[0]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_112 (.A(state[3]), .B(n38359), .C(n38407), 
         .D(state[2]), .Z(n11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(124[5:9])
    defparam i1_2_lut_3_lut_4_lut_adj_112.init = 16'hfffe;
    FD1P3IX cnt_i0_i11 (.D(n2383[11]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i11.GSR = "ENABLED";
    FD1P3IX cnt_i0_i10 (.D(n2383[10]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i10.GSR = "ENABLED";
    FD1P3IX cnt_i0_i9 (.D(n2383[9]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i9.GSR = "ENABLED";
    PFUMX i30763 (.BLUT(n36435), .ALUT(n36436), .C0(cnt_write[2]), .Z(n36438));
    FD1P3IX cnt_i0_i8 (.D(n2383[8]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_i0_i7 (.D(n2383[7]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i7.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_113 (.A(n26), .B(state[1]), .C(state[4]), .Z(n33975)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i2_3_lut_adj_113.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_4_lut_adj_114 (.A(cnt_main[3]), .B(n38333), .C(y_p[5]), 
         .D(cnt_main[4]), .Z(n1903[5])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_114.init = 16'hf1fe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_115 (.A(cnt_main[3]), .B(n38333), .C(state[3]), 
         .D(cnt_main[4]), .Z(n5_adj_1809)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_115.init = 16'hf1fe;
    FD1P3IX cnt_i0_i6 (.D(n2383[6]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i6.GSR = "ENABLED";
    FD1P3IX cnt_i0_i5 (.D(n2383[5]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i5.GSR = "ENABLED";
    LUT4 i9382_3_lut_4_lut (.A(cnt_main[3]), .B(n38333), .C(char[0]), 
         .D(\ds18b20_data[4] ), .Z(n30_adj_1810)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i9382_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i15081_3_lut (.A(sys_clk_c_enable_340), .B(n4458), .C(n11_adj_1788), 
         .Z(n20568)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i15081_3_lut.init = 16'ha8a8;
    LUT4 i17094_1_lut (.A(cnt_write[0]), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i17094_1_lut.init = 16'h5555;
    LUT4 mux_37_Mux_5_i15_4_lut_4_lut (.A(cnt_main[3]), .B(n38333), .C(cnt_main[4]), 
         .D(char[5]), .Z(n15)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_5_i15_4_lut_4_lut.init = 16'hef0c;
    FD1P3IX cnt_i0_i4 (.D(n2383[4]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i4.GSR = "ENABLED";
    LUT4 i103_3_lut (.A(cnt_write[0]), .B(oled_csn_N_1381), .C(n85), .Z(n4458)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[42:51])
    defparam i103_3_lut.init = 16'hc8c8;
    LUT4 i30429_3_lut (.A(cnt_write[3]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n85)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i30429_3_lut.init = 16'hfefe;
    LUT4 i3782_2_lut (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n2321[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i3782_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_116 (.A(n38421), .B(n38331), .C(state[2]), .D(warning_TEM), 
         .Z(n33019)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut_adj_116.init = 16'h0200;
    FD1P3IX cnt_i0_i3 (.D(n2383[3]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_117 (.A(cnt_main[3]), .B(n38333), .C(y_p[4]), 
         .D(cnt_main[4]), .Z(n1903[4])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_117.init = 16'hf1fe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_118 (.A(cnt_main[3]), .B(n38333), .C(x_ph[4]), 
         .D(cnt_main[4]), .Z(n1912[4])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_118.init = 16'hf1fe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_119 (.A(cnt_main[3]), .B(n38333), .C(y_p[7]), 
         .D(cnt_main[4]), .Z(n1903[7])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_119.init = 16'hf1fe;
    LUT4 i35_4_lut_4_lut (.A(cnt_main[3]), .B(n38333), .C(n38321), .D(cnt_main[4]), 
         .Z(n16)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B !((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i35_4_lut_4_lut.init = 16'hee50;
    LUT4 i3803_4_lut (.A(cnt_init[4]), .B(n38410), .C(cnt_init[2]), .D(cnt_init[3]), 
         .Z(n2321[4])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i3803_4_lut.init = 16'h6aaa;
    LUT4 i1_3_lut_adj_120 (.A(char[11]), .B(n32424), .C(n16), .Z(n1939[11])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_120.init = 16'hecec;
    LUT4 i1_4_lut_adj_121 (.A(n38409), .B(n11_adj_1811), .C(n9_adj_1773), 
         .D(state[5]), .Z(n34151)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_adj_121.init = 16'h5044;
    FD1P3IX cnt_i0_i2 (.D(n2383[2]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    LUT4 mux_82_i2_4_lut (.A(n2522), .B(n2531[1]), .C(n9_adj_1812), .D(n9), 
         .Z(cnt_scan_4__N_1055[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(147[16] 148[40])
    defparam mux_82_i2_4_lut.init = 16'hca0a;
    LUT4 i3818_2_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n2531[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam i3818_2_lut.init = 16'h6666;
    LUT4 n26795_bdd_3_lut_4_lut (.A(n38948), .B(state[2]), .C(state[3]), 
         .D(n26795), .Z(n39763)) /* synthesis lut_function=(!(A (C (D))+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam n26795_bdd_3_lut_4_lut.init = 16'h0bfb;
    LUT4 i5_3_lut (.A(num[1]), .B(n10_adj_1813), .C(num[7]), .Z(n2522)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(145[11:14])
    defparam i5_3_lut.init = 16'hfefe;
    FD1P3IX cnt_i0_i1 (.D(n2383[1]), .SP(sys_clk_c_enable_271), .CD(n20705), 
            .CK(sys_clk_c), .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    LUT4 i4_4_lut_adj_122 (.A(num[0]), .B(n36190), .C(num[6]), .D(num[5]), 
         .Z(n10_adj_1813)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(145[11:14])
    defparam i4_4_lut_adj_122.init = 16'hfffe;
    LUT4 i1_2_lut_adj_123 (.A(cnt_scan[3]), .B(n18943), .Z(n9_adj_1812)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_123.init = 16'hdddd;
    LUT4 i31036_3_lut_4_lut (.A(n38346), .B(n2721), .C(n2722), .D(n36523), 
         .Z(n35828)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i31036_3_lut_4_lut.init = 16'h4000;
    LUT4 mux_82_i3_4_lut (.A(n2522), .B(n2531[2]), .C(n9_adj_1812), .D(n9), 
         .Z(cnt_scan_4__N_1055[2])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(147[16] 148[40])
    defparam mux_82_i3_4_lut.init = 16'hc505;
    LUT4 i25503_3_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(cnt_scan[0]), 
         .Z(n2531[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i25503_3_lut.init = 16'h6a6a;
    LUT4 mux_82_i4_4_lut (.A(n2522), .B(n2531[3]), .C(n9_adj_1812), .D(n9), 
         .Z(cnt_scan_4__N_1055[3])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(147[16] 148[40])
    defparam mux_82_i4_4_lut.init = 16'hc505;
    LUT4 i3_4_lut_adj_124 (.A(cnt_scan[4]), .B(n6_adj_1814), .C(n9_adj_1812), 
         .D(n9168), .Z(n33038)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))))) */ ;
    defparam i3_4_lut_adj_124.init = 16'h4080;
    FD1P3IX y_p_i0_i0 (.D(n1903[0]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(y_p[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam y_p_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_125 (.A(n5_adj_1809), .B(n19649), .C(state[0]), 
         .D(warning_TEM), .Z(sys_clk_c_enable_375)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_125.init = 16'hc8cc;
    LUT4 i15166_2_lut (.A(sys_clk_c_enable_375), .B(state[3]), .Z(n20653)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i15166_2_lut.init = 16'h2222;
    LUT4 mux_34_Mux_2_i31_4_lut (.A(n36432), .B(x_ph[2]), .C(cnt_main[4]), 
         .D(n38301), .Z(n1912[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_34_Mux_2_i31_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_4_lut_adj_126 (.A(n38601), .B(char_reg[5]), .C(n38259), 
         .D(state[2]), .Z(n6_adj_1815)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_126.init = 16'hca00;
    LUT4 mux_34_Mux_1_i15_4_lut_4_lut_4_lut (.A(n38333), .B(x_ph[1]), .C(cnt_main[4]), 
         .D(n38301), .Z(n15_adj_1816)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B+!((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_34_Mux_1_i15_4_lut_4_lut_4_lut.init = 16'hc4f4;
    LUT4 i30992_3_lut_4_lut_4_lut (.A(n38333), .B(n36387), .C(cnt_main[3]), 
         .D(char[0]), .Z(n15_adj_1817)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i30992_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 mux_37_Mux_2_i15_4_lut_4_lut (.A(n38333), .B(cnt_main[3]), .C(n36377), 
         .D(char[2]), .Z(n15_adj_1818)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_2_i15_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i30881_3_lut_4_lut_4_lut (.A(n38333), .B(n8_adj_1819), .C(cnt_main[4]), 
         .D(n38311), .Z(n2_adj_1820)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i30881_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 char_4__bdd_4_lut_31723 (.A(char[4]), .B(char[28]), .C(num[1]), 
         .D(num[0]), .Z(n37550)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;
    defparam char_4__bdd_4_lut_31723.init = 16'hc00a;
    LUT4 char_4__bdd_3_lut_31722 (.A(char[36]), .B(num[1]), .C(num[0]), 
         .Z(n37549)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam char_4__bdd_3_lut_31722.init = 16'h0202;
    LUT4 i1_4_lut_adj_127 (.A(state[1]), .B(n38275), .C(n5_adj_1821), 
         .D(n6_adj_1822), .Z(sys_clk_c_enable_271)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_127.init = 16'h5111;
    LUT4 i3875_3_lut_4_lut (.A(cnt_write[2]), .B(n38353), .C(cnt_write[3]), 
         .D(oled_csn_N_1381), .Z(n4460[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3875_3_lut_4_lut.init = 16'h7f80;
    CCU2D add_50_17 (.A0(cnt_c[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32764), 
          .S0(n2357[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_17.INIT0 = 16'h5aaa;
    defparam add_50_17.INIT1 = 16'h0000;
    defparam add_50_17.INJECT1_0 = "NO";
    defparam add_50_17.INJECT1_1 = "NO";
    CCU2D add_50_15 (.A0(cnt_c[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32763), .COUT(n32764), .S0(n2357[13]), .S1(n2357[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_15.INIT0 = 16'h5aaa;
    defparam add_50_15.INIT1 = 16'h5aaa;
    defparam add_50_15.INJECT1_0 = "NO";
    defparam add_50_15.INJECT1_1 = "NO";
    CCU2D add_50_13 (.A0(cnt_c[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32762), .COUT(n32763), .S0(n2357[11]), .S1(n2357[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_13.INIT0 = 16'h5aaa;
    defparam add_50_13.INIT1 = 16'h5aaa;
    defparam add_50_13.INJECT1_0 = "NO";
    defparam add_50_13.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_128 (.A(cnt_init[0]), .B(state[2]), .C(state[0]), 
         .Z(n6_adj_1822)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i2_3_lut_adj_128.init = 16'h1414;
    LUT4 i1_2_lut_rep_461_3_lut_4_lut (.A(state[3]), .B(n38359), .C(state[0]), 
         .D(state[2]), .Z(n38275)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(124[5:9])
    defparam i1_2_lut_rep_461_3_lut_4_lut.init = 16'hffef;
    LUT4 i2_3_lut_4_lut_adj_129 (.A(state[3]), .B(n38359), .C(state[0]), 
         .D(n38433), .Z(n20614)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(124[5:9])
    defparam i2_3_lut_4_lut_adj_129.init = 16'h0010;
    LUT4 i15229_2_lut (.A(sys_clk_c_enable_271), .B(n11_adj_1741), .Z(n20705)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i15229_2_lut.init = 16'h8888;
    LUT4 i20578_2_lut (.A(n2357[15]), .B(oled_dcn_N_1397), .Z(n2383[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20578_2_lut.init = 16'h2222;
    CCU2D add_50_11 (.A0(cnt_c[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32761), .COUT(n32762), .S0(n2357[9]), .S1(n2357[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_11.INIT0 = 16'h5aaa;
    defparam add_50_11.INIT1 = 16'h5aaa;
    defparam add_50_11.INJECT1_0 = "NO";
    defparam add_50_11.INJECT1_1 = "NO";
    CCU2D add_50_9 (.A0(cnt_c[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32760), 
          .COUT(n32761), .S0(n2357[7]), .S1(n2357[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_9.INIT0 = 16'h5aaa;
    defparam add_50_9.INIT1 = 16'h5aaa;
    defparam add_50_9.INJECT1_0 = "NO";
    defparam add_50_9.INJECT1_1 = "NO";
    LUT4 i20579_2_lut (.A(n2357[14]), .B(oled_dcn_N_1397), .Z(n2383[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20579_2_lut.init = 16'h2222;
    LUT4 i20580_2_lut (.A(n2357[13]), .B(oled_dcn_N_1397), .Z(n2383[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20580_2_lut.init = 16'h2222;
    LUT4 i30336_2_lut_3_lut_4_lut (.A(n39766), .B(n38360), .C(n39765), 
         .D(n38_adj_1787), .Z(n36006)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i30336_2_lut_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_130 (.A(n39766), .B(n38360), .C(n6800), 
         .D(n38_adj_1787), .Z(n35792)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_130.init = 16'he0f0;
    LUT4 i1_4_lut_4_lut_adj_131 (.A(cnt_scan[2]), .B(n38365), .C(cnt_scan[3]), 
         .D(cnt_scan[4]), .Z(n3765)) /* synthesis lut_function=(A (C+(D))+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_131.init = 16'hffa4;
    LUT4 i1_2_lut_rep_445_3_lut_4_lut (.A(n38368), .B(n38372), .C(cnt_init[0]), 
         .D(oled_dcn_N_1397), .Z(n38259)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i1_2_lut_rep_445_3_lut_4_lut.init = 16'hfffe;
    LUT4 i20583_2_lut (.A(n2357[12]), .B(oled_dcn_N_1397), .Z(n2383[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20583_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_4_lut (.A(n38371), .B(n38370), .C(oled_dcn_N_1397), 
         .D(state_back[2]), .Z(n19079)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i1_3_lut_4_lut.init = 16'h4404;
    LUT4 i1_3_lut_rep_450_4_lut (.A(n38371), .B(n38370), .C(n38372), .D(oled_dcn_N_1397), 
         .Z(n38264)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i1_3_lut_rep_450_4_lut.init = 16'hf4f0;
    LUT4 i1_2_lut_4_lut_adj_132 (.A(cnt_init[2]), .B(n38368), .C(cnt_init[0]), 
         .D(state_back[2]), .Z(n19)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_132.init = 16'hec00;
    LUT4 i1_2_lut_4_lut_adj_133 (.A(cnt_init[2]), .B(n38368), .C(cnt_init[0]), 
         .D(state_back[4]), .Z(n19_adj_1823)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_133.init = 16'hec00;
    LUT4 i20538_2_lut (.A(n2357[0]), .B(oled_dcn_N_1397), .Z(n2383[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20538_2_lut.init = 16'h2222;
    LUT4 i76_3_lut_4_lut (.A(cnt_init[2]), .B(n38368), .C(cnt_init[0]), 
         .D(n38264), .Z(n80)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C+!(D)))) */ ;
    defparam i76_3_lut_4_lut.init = 16'hefec;
    LUT4 i20586_2_lut (.A(n2357[11]), .B(oled_dcn_N_1397), .Z(n2383[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20586_2_lut.init = 16'h2222;
    PFUMX i31397 (.BLUT(n37395), .ALUT(n37394), .C0(\cnt_main[0] ), .Z(n37396));
    LUT4 i20588_2_lut (.A(n2357[10]), .B(oled_dcn_N_1397), .Z(n2383[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20588_2_lut.init = 16'h2222;
    LUT4 i20589_2_lut (.A(n2357[9]), .B(oled_dcn_N_1397), .Z(n2383[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20589_2_lut.init = 16'h2222;
    LUT4 i30703_3_lut_4_lut (.A(n38379), .B(sw1_c), .C(\cnt_main[0] ), 
         .D(n7443), .Z(n36378)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i30703_3_lut_4_lut.init = 16'hf202;
    LUT4 i20590_2_lut (.A(n2357[8]), .B(oled_dcn_N_1397), .Z(n2383[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20590_2_lut.init = 16'h2222;
    LUT4 i20591_2_lut (.A(n2357[7]), .B(oled_dcn_N_1397), .Z(n2383[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20591_2_lut.init = 16'h2222;
    LUT4 i20592_2_lut (.A(n2357[6]), .B(oled_dcn_N_1397), .Z(n2383[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20592_2_lut.init = 16'h2222;
    LUT4 i20593_2_lut (.A(n2357[5]), .B(oled_dcn_N_1397), .Z(n2383[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20593_2_lut.init = 16'h2222;
    LUT4 i20594_2_lut (.A(n2357[4]), .B(oled_dcn_N_1397), .Z(n2383[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20594_2_lut.init = 16'h2222;
    PFUMX i31380 (.BLUT(n37311), .ALUT(n37310), .C0(cnt[4]), .Z(n37312));
    LUT4 i20595_2_lut (.A(n2357[3]), .B(oled_dcn_N_1397), .Z(n2383[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20595_2_lut.init = 16'h2222;
    LUT4 i20596_2_lut (.A(n2357[2]), .B(oled_dcn_N_1397), .Z(n2383[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20596_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_adj_134 (.A(n16), .B(warning_TEM), .C(state[1]), .Z(n22)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i2_3_lut_adj_134.init = 16'hbfbf;
    LUT4 num_2988_mux_6_i1_4_lut (.A(n38559), .B(n37[0]), .C(state[3]), 
         .D(n5_adj_1805), .Z(n25[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988_mux_6_i1_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_135 (.A(warning_TEM), .B(state[0]), .Z(n5_adj_1805)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i1_2_lut_adj_135.init = 16'h2222;
    FD1P3IX y_p_i0_i7 (.D(n1903[7]), .SP(sys_clk_c_enable_286), .CD(n39784), 
            .CK(sys_clk_c), .Q(y_p[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam y_p_i0_i7.GSR = "ENABLED";
    LUT4 i20597_2_lut (.A(n2357[1]), .B(oled_dcn_N_1397), .Z(n2383[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20597_2_lut.init = 16'h2222;
    LUT4 cnt_scan_4__bdd_4_lut_32179 (.A(cnt_scan[4]), .B(cnt_scan[2]), 
         .C(cnt_scan[3]), .D(n38365), .Z(n8045)) /* synthesis lut_function=(A+(B (C)+!B !(C+!(D)))) */ ;
    defparam cnt_scan_4__bdd_4_lut_32179.init = 16'hebea;
    LUT4 i1_3_lut_rep_467_4_lut (.A(n38368), .B(n38372), .C(cnt_init[0]), 
         .D(n11_adj_1741), .Z(n38281)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i1_3_lut_rep_467_4_lut.init = 16'hff10;
    LUT4 i1_2_lut_3_lut_adj_136 (.A(state[2]), .B(n3765), .C(state_back[2]), 
         .Z(n35800)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_136.init = 16'h4040;
    LUT4 char_117__bdd_4_lut_32110 (.A(char[117]), .B(n38301), .C(n38493), 
         .D(cnt_main[4]), .Z(n38110)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_117__bdd_4_lut_32110.init = 16'h88f0;
    LUT4 n18243_bdd_4_lut_31814 (.A(n38301), .B(char[19]), .C(n15_adj_1824), 
         .D(cnt_main[4]), .Z(n38111)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18243_bdd_4_lut_31814.init = 16'h88f0;
    LUT4 char_30__bdd_4_lut_32430 (.A(char[14]), .B(num[2]), .C(char[38]), 
         .D(num[0]), .Z(n37961)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (((D)+!C)+!B))) */ ;
    defparam char_30__bdd_4_lut_32430.init = 16'h22c0;
    LUT4 mux_35_Mux_3_i31_4_lut (.A(n38553), .B(x_pl[3]), .C(cnt_main[4]), 
         .D(n38301), .Z(n1921[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_35_Mux_3_i31_4_lut.init = 16'hca0a;
    PFUMX i31826 (.BLUT(n38446), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38448));
    FD1P3IX y_p_i0_i5 (.D(n1903[5]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(y_p[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam y_p_i0_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_137 (.A(n39766), .B(n39765), .C(n37926), .D(n18), 
         .Z(n34213)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    defparam i1_4_lut_adj_137.init = 16'h7350;
    LUT4 i34_4_lut (.A(state_back[4]), .B(n4458), .C(state[4]), .D(state[5]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    defparam i34_4_lut.init = 16'h0a30;
    LUT4 i15206_2_lut (.A(sys_clk_c_enable_303), .B(state[0]), .Z(n20695)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i15206_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_138 (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(n38379), 
         .D(cnt_main[2]), .Z(n25668)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[12:20])
    defparam i1_2_lut_4_lut_adj_138.init = 16'he600;
    LUT4 i1_4_lut_4_lut_adj_139 (.A(state[1]), .B(n63), .C(n38319), .D(oled_dcn_N_1397), 
         .Z(n7_adj_1825)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_139.init = 16'h5450;
    LUT4 i3856_2_lut_rep_539 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n38353)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3856_2_lut_rep_539.init = 16'h8888;
    FD1P3IX y_p_i0_i4 (.D(n1903[4]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(y_p[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam y_p_i0_i4.GSR = "ENABLED";
    FD1P3IX y_p_i0_i1 (.D(n38123), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(y_p[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam y_p_i0_i1.GSR = "ENABLED";
    FD1P3IX state_i0_i5 (.D(n38715), .SP(sys_clk_c_enable_303), .CD(n20699), 
            .CK(sys_clk_c), .Q(state[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i5.GSR = "ENABLED";
    LUT4 flash_bit_I_0_1_lut (.A(flash_bit), .Z(flash_bit_N_1422)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(65[17:28])
    defparam flash_bit_I_0_1_lut.init = 16'h5555;
    LUT4 i30710_4_lut (.A(n7446), .B(n36390), .C(cnt_main[1]), .D(\cnt_main[0] ), 
         .Z(n36385)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i30710_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_140 (.A(state[5]), .B(n38409), .C(n38370), 
         .D(n38371), .Z(n5_adj_1821)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_140.init = 16'h0010;
    PFUMX i31347 (.BLUT(n37255), .ALUT(n37254), .C0(cnt[3]), .Z(n37256));
    FD1P3IX x_pl_i0_i3 (.D(n1921[3]), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(x_pl[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam x_pl_i0_i3.GSR = "ENABLED";
    LUT4 i20974_2_lut_3_lut_4_lut (.A(\cnt_main[0] ), .B(n38406), .C(char[30]), 
         .D(cnt_main[3]), .Z(n30_adj_1739)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i20974_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i20964_2_lut_3_lut_4_lut (.A(\cnt_main[0] ), .B(n38406), .C(char[22]), 
         .D(cnt_main[3]), .Z(n30_adj_1737)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i20964_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i20959_2_lut_3_lut_4_lut (.A(\cnt_main[0] ), .B(n38406), .C(char[18]), 
         .D(cnt_main[3]), .Z(n30_adj_1736)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i20959_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i20956_2_lut_3_lut_4_lut (.A(\cnt_main[0] ), .B(n38406), .C(char[16]), 
         .D(cnt_main[3]), .Z(n30_adj_1735)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i20956_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i3861_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n4460[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3861_2_lut_3_lut.init = 16'h7878;
    LUT4 i20941_2_lut_3_lut_4_lut (.A(\cnt_main[0] ), .B(n38406), .C(char[8]), 
         .D(cnt_main[3]), .Z(n30)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i20941_2_lut_3_lut_4_lut.init = 16'hf0e0;
    PFUMX i31344 (.BLUT(n37248), .ALUT(n37243), .C0(cnt_scan[3]), .Z(n37249));
    LUT4 i20943_2_lut_3_lut_4_lut (.A(\cnt_main[0] ), .B(n38406), .C(char[10]), 
         .D(cnt_main[3]), .Z(n30_adj_1731)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i20943_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_141 (.A(\cnt_main[0] ), .B(n38406), .C(char[4]), 
         .D(cnt_main[3]), .Z(n8_adj_1819)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_141.init = 16'hf0e0;
    LUT4 i20951_2_lut_3_lut_4_lut (.A(\cnt_main[0] ), .B(n38406), .C(char[14]), 
         .D(cnt_main[3]), .Z(n30_adj_1734)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i20951_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_142 (.A(\cnt_main[0] ), .B(n38406), .C(char[38]), 
         .D(cnt_main[3]), .Z(n6_adj_1729)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_142.init = 16'hf0e0;
    FD1P3IX state_i0_i4 (.D(n34213), .SP(sys_clk_c_enable_303), .CD(n20699), 
            .CK(sys_clk_c), .Q(state[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i4.GSR = "ENABLED";
    FD1P3IX state_i0_i3 (.D(n34269), .SP(sys_clk_c_enable_303), .CD(n20695), 
            .CK(sys_clk_c), .Q(state[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_143 (.A(n38196), .B(n11), .C(n35906), .D(warning_TEM), 
         .Z(sys_clk_c_enable_303)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_143.init = 16'ha080;
    PFUMX i31822 (.BLUT(n38440), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38442));
    CCU2D add_50_7 (.A0(cnt_c[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32759), 
          .COUT(n32760), .S0(n2357[5]), .S1(n2357[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_7.INIT0 = 16'h5aaa;
    defparam add_50_7.INIT1 = 16'h5aaa;
    defparam add_50_7.INJECT1_0 = "NO";
    defparam add_50_7.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(n38359), .B(n10), .C(n38306), .D(state[3]), .Z(n35906)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i5_4_lut.init = 16'hefff;
    LUT4 i3868_2_lut_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n4460[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3868_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX mux_37_Mux_2_i31 (.BLUT(n15_adj_1818), .ALUT(n30_adj_1770), .C0(cnt_main[4]), 
          .Z(n1939[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 i1_4_lut_adj_144 (.A(cnt_scan[4]), .B(n57), .C(n61), .D(cnt_scan[3]), 
         .Z(n64)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_144.init = 16'h5044;
    LUT4 i1_4_lut_adj_145 (.A(cnt_scan[2]), .B(n10681), .C(n35779), .D(cnt_scan[1]), 
         .Z(n61)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_145.init = 16'h5044;
    LUT4 i1_3_lut_adj_146 (.A(n17975), .B(n38342), .C(n2720), .Z(n35779)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_146.init = 16'h8080;
    LUT4 i12511_4_lut (.A(n17002), .B(n35828), .C(cnt_scan[0]), .D(n2721), 
         .Z(n17975)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12511_4_lut.init = 16'hcac0;
    LUT4 char_157__bdd_4_lut_32037 (.A(char[157]), .B(n38301), .C(n38490), 
         .D(cnt_main[4]), .Z(n38121)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_157__bdd_4_lut_32037.init = 16'h88f0;
    LUT4 char_125__bdd_4_lut_32036 (.A(char[125]), .B(n38301), .C(n38487), 
         .D(cnt_main[4]), .Z(n38113)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_125__bdd_4_lut_32036.init = 16'h88f0;
    LUT4 i11568_4_lut (.A(n10890), .B(n38265), .C(n2722), .D(n38339), 
         .Z(n17002)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[51:79])
    defparam i11568_4_lut.init = 16'h303a;
    PFUMX mux_37_Mux_3_i31 (.BLUT(n15_adj_1769), .ALUT(n30_adj_1768), .C0(cnt_main[4]), 
          .Z(n1939[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 n18243_bdd_4_lut_31816 (.A(n38301), .B(char[27]), .C(n15_adj_1826), 
         .D(cnt_main[4]), .Z(n38114)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18243_bdd_4_lut_31816.init = 16'h88f0;
    L6MUX21 i30702 (.D0(n36375), .D1(n36376), .SD(cnt_main[2]), .Z(n36377));
    PFUMX mux_37_Mux_0_i31 (.BLUT(n15_adj_1817), .ALUT(n30_adj_1810), .C0(cnt_main[4]), 
          .Z(n1939[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 i30350_2_lut_rep_541 (.A(cnt_main[3]), .B(cnt_main[4]), .Z(n38355)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30350_2_lut_rep_541.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_147 (.A(cnt_main[3]), .B(cnt_main[4]), 
         .C(n38422), .D(cnt_main[2]), .Z(n4_adj_1807)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_147.init = 16'h1000;
    LUT4 i31034_2_lut (.A(n2724), .B(n38339), .Z(n36523)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i31034_2_lut.init = 16'h1111;
    LUT4 i2_3_lut_4_lut_adj_148 (.A(cnt_main[3]), .B(cnt_main[4]), .C(cnt_main[2]), 
         .D(n38420), .Z(n6_adj_1806)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_148.init = 16'h0110;
    PFUMX i30693 (.BLUT(n36366), .ALUT(n36367), .C0(num[1]), .Z(n36368));
    LUT4 i15112_2_lut_4_lut (.A(n33019), .B(state[1]), .C(n38275), .D(n11), 
         .Z(n20701)) /* synthesis lut_function=(A (D)+!A !(B+(C+!(D)))) */ ;
    defparam i15112_2_lut_4_lut.init = 16'hab00;
    PFUMX mux_37_Mux_1_i31 (.BLUT(n15_adj_1766), .ALUT(n30_adj_1765), .C0(cnt_main[4]), 
          .Z(n1939[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 n37002_bdd_2_lut_31550_2_lut (.A(cnt_scan[2]), .B(n37002), .Z(n37243)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam n37002_bdd_2_lut_31550_2_lut.init = 16'h4444;
    LUT4 n36999_bdd_2_lut_31620_2_lut (.A(cnt_scan[2]), .B(n36999), .Z(n37208)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam n36999_bdd_2_lut_31620_2_lut.init = 16'h4444;
    LUT4 char_165__bdd_4_lut_32031 (.A(char[165]), .B(n38301), .C(n38442), 
         .D(cnt_main[4]), .Z(n38122)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_165__bdd_4_lut_32031.init = 16'h88f0;
    LUT4 i1_4_lut_4_lut_adj_149 (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(x_ph[4]), 
         .D(y_p[4]), .Z(n16_adj_1827)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i1_4_lut_4_lut_adj_149.init = 16'h5140;
    LUT4 led_c_7_bdd_2_lut_31676_2_lut (.A(cnt_scan[2]), .B(n37918), .Z(n37919)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam led_c_7_bdd_2_lut_31676_2_lut.init = 16'h4444;
    LUT4 i20533_3_lut (.A(\cnt_main[0] ), .B(cnt_main[4]), .C(warning_TEM), 
         .Z(cnt_main_4__N_1045[0])) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[12:57])
    defparam i20533_3_lut.init = 16'hdede;
    LUT4 i3_4_lut_4_lut_adj_150 (.A(\cnt_main[0] ), .B(n38355), .C(n38406), 
         .D(state[1]), .Z(n35704)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i3_4_lut_4_lut_adj_150.init = 16'h0100;
    L6MUX21 i30709 (.D0(n36382), .D1(n36383), .SD(cnt_main[2]), .Z(n36384));
    LUT4 i2_3_lut_4_lut_4_lut_adj_151 (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(n38355), .D(cnt_main[2]), .Z(n32424)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i2_3_lut_4_lut_4_lut_adj_151.init = 16'h0400;
    PFUMX i30700 (.BLUT(n8), .ALUT(n9_adj_1763), .C0(cnt_main[1]), .Z(n36375));
    LUT4 state_5__I_0_340_i9_2_lut_rep_545 (.A(state[4]), .B(state[5]), 
         .Z(n38359)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(143[5:9])
    defparam state_5__I_0_340_i9_2_lut_rep_545.init = 16'heeee;
    LUT4 i1_2_lut_rep_482_3_lut_4_lut (.A(state[4]), .B(state[5]), .C(state[2]), 
         .D(state[3]), .Z(n38296)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(143[5:9])
    defparam i1_2_lut_rep_482_3_lut_4_lut.init = 16'hfffe;
    LUT4 state_5__I_0_339_i10_2_lut_rep_534_3_lut (.A(state[4]), .B(state[5]), 
         .C(state[3]), .Z(n38348)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(143[5:9])
    defparam state_5__I_0_339_i10_2_lut_rep_534_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_152 (.A(state[4]), .B(state[5]), .C(state[1]), 
         .Z(n35856)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(143[5:9])
    defparam i1_2_lut_3_lut_adj_152.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_153 (.A(state[4]), .B(state[5]), .C(n21), 
         .D(n38436), .Z(n19_adj_1777)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(143[5:9])
    defparam i2_3_lut_4_lut_adj_153.init = 16'hfffe;
    LUT4 i20561_2_lut_rep_546 (.A(state[1]), .B(state[0]), .Z(n38360)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20561_2_lut_rep_546.init = 16'heeee;
    LUT4 y_p_1__bdd_4_lut_32030 (.A(y_p[1]), .B(n38301), .C(n38454), .D(cnt_main[4]), 
         .Z(n38123)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam y_p_1__bdd_4_lut_32030.init = 16'h88f0;
    LUT4 char_133__bdd_4_lut_32029 (.A(char[133]), .B(n38301), .C(n38496), 
         .D(cnt_main[4]), .Z(n38115)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_133__bdd_4_lut_32029.init = 16'h88f0;
    LUT4 i1_2_lut_rep_486_3_lut_4_lut (.A(state[1]), .B(state[0]), .C(n38_adj_1787), 
         .D(n39766), .Z(n38300)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_486_3_lut_4_lut.init = 16'h0010;
    LUT4 n18243_bdd_4_lut_31817 (.A(n38301), .B(char[34]), .C(n15_adj_1828), 
         .D(cnt_main[4]), .Z(n38116)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18243_bdd_4_lut_31817.init = 16'h88f0;
    PFUMX i30707 (.BLUT(n36378), .ALUT(n36379), .C0(cnt_main[1]), .Z(n36382));
    LUT4 i15210_2_lut_3_lut (.A(state[1]), .B(state[0]), .C(sys_clk_c_enable_303), 
         .Z(n20699)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i15210_2_lut_3_lut.init = 16'he0e0;
    L6MUX21 i30687 (.D0(n36360), .D1(n36361), .SD(cnt_main[2]), .Z(n36362));
    PFUMX i30701 (.BLUT(n11_adj_1761), .ALUT(n12), .C0(cnt_main[1]), .Z(n36376));
    LUT4 i20600_2_lut_rep_547 (.A(state[2]), .B(state[0]), .Z(n38361)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20600_2_lut_rep_547.init = 16'heeee;
    LUT4 char_13__bdd_4_lut_32023 (.A(char[13]), .B(n38301), .C(n38499), 
         .D(cnt_main[4]), .Z(n38124)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_13__bdd_4_lut_32023.init = 16'h88f0;
    LUT4 i1_2_lut_rep_548 (.A(cnt_scan[0]), .B(cnt_scan[2]), .Z(n38362)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_548.init = 16'h8888;
    CCU2D add_50_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32758), 
          .COUT(n32759), .S0(n2357[3]), .S1(n2357[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_5.INIT0 = 16'h5aaa;
    defparam add_50_5.INIT1 = 16'h5aaa;
    defparam add_50_5.INJECT1_0 = "NO";
    defparam add_50_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_154 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(n2890), 
         .Z(n35769)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_154.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_155 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[7]), 
         .Z(n43_adj_1829)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_155.init = 16'h1010;
    PFUMX i30708 (.BLUT(n36380), .ALUT(n36381), .C0(cnt_main[1]), .Z(n36383));
    LUT4 i20894_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[69]), .Z(n38443)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20894_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i30756_4_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n36431)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !((C)+!B))) */ ;
    defparam i30756_4_lut_3_lut.init = 16'h7979;
    LUT4 i1_2_lut_rep_551 (.A(cnt_scan[0]), .B(cnt_scan[1]), .Z(n38365)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_551.init = 16'h8888;
    LUT4 i30266_2_lut_4_lut (.A(oled_dcn_N_1397), .B(n38372), .C(n38308), 
         .D(state_back[4]), .Z(n35927)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i30266_2_lut_4_lut.init = 16'hec00;
    PFUMX i31219 (.BLUT(n37001), .ALUT(n37000), .C0(cnt_scan[1]), .Z(n37002));
    LUT4 i3832_2_lut_3_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n2531[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i3832_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_492_3_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(cnt_scan[2]), 
         .Z(n38306)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_492_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_adj_156 (.A(cnt_scan[4]), .B(n39566), .Z(n64_adj_1830)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_adj_156.init = 16'h4444;
    LUT4 i3834_2_lut_3_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n9168)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3834_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_3_lut_3_lut (.A(cnt_scan[0]), .B(y_p[5]), .C(cnt_scan[2]), 
         .Z(n4_adj_1831)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam i1_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i20863_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[149]), .Z(n38455)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20863_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 mux_82_i1_4_lut_4_lut (.A(cnt_scan[0]), .B(n9), .C(n9_adj_1812), 
         .D(n2522), .Z(cnt_scan_4__N_1055[0])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam mux_82_i1_4_lut_4_lut.init = 16'h4f40;
    LUT4 i2_2_lut_2_lut (.A(cnt_scan[0]), .B(n2722), .Z(n8_adj_1774)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam i2_2_lut_2_lut.init = 16'hdddd;
    PFUMX i32394 (.BLUT(n39565), .ALUT(n39563), .C0(cnt_scan[3]), .Z(n39566));
    PFUMX i30685 (.BLUT(n36356), .ALUT(n36357), .C0(cnt_main[1]), .Z(n36360));
    LUT4 i1_4_lut_4_lut_adj_157 (.A(cnt_init[0]), .B(n35927), .C(n19_adj_1823), 
         .D(state[2]), .Z(n6_adj_1832)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_157.init = 16'hf400;
    PFUMX i30686 (.BLUT(n36358), .ALUT(n36359), .C0(cnt_main[1]), .Z(n36361));
    LUT4 i1_2_lut_adj_158 (.A(cnt_scan[4]), .B(n37922), .Z(n64_adj_1833)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i1_2_lut_adj_158.init = 16'h4444;
    L6MUX21 i30711 (.D0(n11_adj_1834), .D1(n12_adj_1835), .SD(cnt_main[1]), 
            .Z(n36386));
    LUT4 i1_4_lut_4_lut_adj_159 (.A(cnt_init[0]), .B(n38435), .C(n38371), 
         .D(state[2]), .Z(n35807)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_159.init = 16'h0100;
    LUT4 n37006_bdd_3_lut (.A(n3270), .B(n3648), .C(cnt_scan[0]), .Z(n37917)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37006_bdd_3_lut.init = 16'hcaca;
    LUT4 i45_4_lut_3_lut (.A(state[0]), .B(state_5__N_1343[1]), .C(state[2]), 
         .Z(n28)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i45_4_lut_3_lut.init = 16'h4a4a;
    PFUMX i32392 (.BLUT(n39561), .ALUT(n39560), .C0(cnt_scan[1]), .Z(n39562));
    LUT4 n2892_bdd_4_lut_32002 (.A(n2892), .B(x_pl[3]), .C(cnt_scan[2]), 
         .D(cnt_scan[1]), .Z(n37920)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n2892_bdd_4_lut_32002.init = 16'ha00c;
    LUT4 led_c_7_bdd_2_lut_31679 (.A(n37920), .B(cnt_scan[0]), .Z(n37921)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_7_bdd_2_lut_31679.init = 16'h8888;
    LUT4 char_29__bdd_4_lut_31945 (.A(char[29]), .B(n38301), .C(n38472), 
         .D(cnt_main[4]), .Z(n38127)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_29__bdd_4_lut_31945.init = 16'h88f0;
    PFUMX mux_37_Mux_0_i11 (.BLUT(n7457[0]), .ALUT(n7462[0]), .C0(\cnt_main[0] ), 
          .Z(n11_adj_1834)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 i20906_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[53]), .Z(n38458)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20906_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 cnt_init_4__I_0_359_i7_2_lut_rep_554 (.A(cnt_init[3]), .B(cnt_init[4]), 
         .Z(n38368)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam cnt_init_4__I_0_359_i7_2_lut_rep_554.init = 16'heeee;
    LUT4 i31119_3_lut_rep_505_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n38319)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i31119_3_lut_rep_505_4_lut.init = 16'h0001;
    LUT4 i2_3_lut_4_lut_adj_160 (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n4791)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i2_3_lut_4_lut_adj_160.init = 16'h0100;
    PFUMX i31325 (.BLUT(n37213), .ALUT(n37208), .C0(cnt_scan[3]), .Z(n37214));
    LUT4 i2_3_lut_rep_495_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n38309)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i2_3_lut_rep_495_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_rep_466_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(oled_dcn_N_1397), .D(n38372), .Z(n38280)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i1_2_lut_rep_466_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_556 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n38370)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_rep_556.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_161 (.A(cnt_init[1]), .B(cnt_init[2]), .C(n35807), 
         .Z(n35808)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_3_lut_adj_161.init = 16'hb0b0;
    PFUMX mux_2379_i3 (.BLUT(\hour_ones[2] ), .ALUT(\hour_warning_ones[2] ), 
          .C0(sw1_c), .Z(n7447[2]));
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(n38371), 
         .D(cnt_init[0]), .Z(n63)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i30373_2_lut_rep_557 (.A(cnt_init[4]), .B(cnt_init[3]), .Z(n38371)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30373_2_lut_rep_557.init = 16'heeee;
    LUT4 i4_2_lut_rep_494_3_lut_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), 
         .C(cnt_init[2]), .D(cnt_init[1]), .Z(n38308)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i4_2_lut_rep_494_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_558 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n38372)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_558.init = 16'hdddd;
    FD1P3IX state_i0_i2 (.D(n34151), .SP(sys_clk_c_enable_303), .CD(n20695), 
            .CK(sys_clk_c), .Q(state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i2.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_535_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(cnt_init[4]), .D(cnt_init[3]), .Z(n38349)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_2_lut_rep_535_3_lut_4_lut.init = 16'hfffd;
    PFUMX mux_2379_i4 (.BLUT(\hour_ones[3] ), .ALUT(\hour_warning_ones[3] ), 
          .C0(sw1_c), .Z(n7447[3]));
    LUT4 oled_dcn_N_1397_bdd_2_lut_31964 (.A(n9), .B(n26795), .Z(n37923)) /* synthesis lut_function=(A (B)) */ ;
    defparam oled_dcn_N_1397_bdd_2_lut_31964.init = 16'h8888;
    LUT4 oled_dcn_N_1397_bdd_4_lut_31990 (.A(oled_dcn_N_1397), .B(n63), 
         .C(n38319), .D(state[4]), .Z(n37924)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B+(C (D)))) */ ;
    defparam oled_dcn_N_1397_bdd_4_lut_31990.init = 16'hfc44;
    PFUMX mux_2381_i3 (.BLUT(\min_ones[2] ), .ALUT(\min_warning_ones[2] ), 
          .C0(sw1_c), .Z(n7457[2]));
    LUT4 led_c_7_bdd_2_lut_31684 (.A(n37924), .B(state[2]), .Z(n37925)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_7_bdd_2_lut_31684.init = 16'h8888;
    LUT4 i1_4_lut_adj_162 (.A(cnt_scan[4]), .B(n18_adj_1836), .C(n38520), 
         .D(cnt_scan[3]), .Z(n64_adj_1837)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i1_4_lut_adj_162.init = 16'h5044;
    PFUMX mux_2381_i4 (.BLUT(\min_ones[3] ), .ALUT(\min_warning_ones[3] ), 
          .C0(sw1_c), .Z(n7457[3]));
    PFUMX mux_3286_i1 (.BLUT(hundres_0__N_354), .ALUT(hundres_0__N_354_adj_5), 
          .C0(sw1_c), .Z(n8142));
    PFUMX mux_3285_i1 (.BLUT(hundres_0__N_354_adj_6), .ALUT(hundres_0__N_354_adj_7), 
          .C0(sw1_c), .Z(n8155));
    PFUMX mux_2381_i2 (.BLUT(\min_ones[1] ), .ALUT(\min_warning_ones[1] ), 
          .C0(sw1_c), .Z(n7457[1]));
    LUT4 i1_4_lut_adj_163 (.A(n19_adj_1841), .B(cnt[4]), .C(n20_adj_1842), 
         .D(n4_adj_8), .Z(oled_dcn_N_1397)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_163.init = 16'hfefa;
    PFUMX mux_37_Mux_0_i12 (.BLUT(n7468[0]), .ALUT(\Tem_high[0] ), .C0(\cnt_main[0] ), 
          .Z(n12_adj_1835)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 i20958_4_lut_4_lut_4_lut_then_2_lut (.A(cnt_main[3]), .B(cnt_main[2]), 
         .Z(n38459)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20958_4_lut_4_lut_4_lut_then_2_lut.init = 16'h1111;
    PFUMX i47 (.BLUT(n6_adj_1752), .ALUT(n12_adj_1844), .C0(state[3]), 
          .Z(n24));
    PFUMX i47_adj_164 (.BLUT(n6_adj_1751), .ALUT(n12_adj_1845), .C0(state[3]), 
          .Z(n24_adj_1771));
    PFUMX i30699 (.BLUT(n36372), .ALUT(n36373), .C0(num[1]), .Z(n36374));
    LUT4 i8_4_lut (.A(cnt_c[5]), .B(cnt_c[11]), .C(cnt_c[10]), .D(cnt_c[13]), 
         .Z(n19_adj_1841)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    PFUMX i47_adj_165 (.BLUT(n6), .ALUT(n12_adj_1846), .C0(state[3]), 
          .Z(n24_adj_1764));
    LUT4 i1_4_lut_adj_166 (.A(cnt_scan[4]), .B(n10_adj_1847), .C(n38514), 
         .D(cnt_scan[3]), .Z(n14_adj_1848)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i1_4_lut_adj_166.init = 16'h5044;
    LUT4 i1_2_lut_rep_565 (.A(flash_bit), .B(time_set), .Z(n38379)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(61[8] 66[5])
    defparam i1_2_lut_rep_565.init = 16'hbbbb;
    PFUMX i47_adj_167 (.BLUT(n6_adj_1719), .ALUT(n12_adj_1849), .C0(state[3]), 
          .Z(n24_adj_1760));
    LUT4 i3_4_lut_adj_168 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(cnt_scan[4]), 
         .D(cnt_scan[1]), .Z(n18943)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_168.init = 16'hfdff;
    LUT4 i1_2_lut_rep_497_3_lut (.A(flash_bit), .B(time_set), .C(sw1_c), 
         .Z(n38311)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(61[8] 66[5])
    defparam i1_2_lut_rep_497_3_lut.init = 16'h0b0b;
    LUT4 i9_4_lut (.A(cnt_c[9]), .B(n18_adj_1850), .C(cnt_c[8]), .D(cnt_c[6]), 
         .Z(n20_adj_1842)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    PFUMX i31820 (.BLUT(n38437), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38439));
    PFUMX i47_adj_169 (.BLUT(n6_adj_1750), .ALUT(n12_adj_1851), .C0(state[3]), 
          .Z(n24_adj_1759));
    LUT4 i20224_3_lut_rep_510_4_lut (.A(flash_bit), .B(time_set), .C(\cnt_main[0] ), 
         .D(cnt_main[1]), .Z(n38324)) /* synthesis lut_function=(A (C+(D))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(61[8] 66[5])
    defparam i20224_3_lut_rep_510_4_lut.init = 16'hbff0;
    LUT4 i2_3_lut_rep_480_4_lut_4_lut (.A(state[3]), .B(n38359), .C(n38433), 
         .D(state[0]), .Z(n38294)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_3_lut_rep_480_4_lut_4_lut.init = 16'hfffd;
    PFUMX i47_adj_170 (.BLUT(n6_adj_1749), .ALUT(n12_adj_1852), .C0(state[3]), 
          .Z(n24_adj_1758));
    LUT4 i7_4_lut (.A(cnt_c[7]), .B(cnt_c[14]), .C(cnt_c[12]), .D(cnt_c[15]), 
         .Z(n18_adj_1850)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_4_lut (.A(state[3]), .B(state_back[1]), .C(state[0]), 
         .D(state[2]), .Z(n21_adj_1779)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i2_2_lut_4_lut_4_lut (.A(state[3]), .B(n9), .C(n38434), .D(n38359), 
         .Z(n6_adj_1814)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_2_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i3_4_lut_4_lut_adj_171 (.A(state[3]), .B(n37194), .C(state[2]), 
         .D(state[4]), .Z(n34269)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_4_lut_adj_171.init = 16'h0004;
    PFUMX i47_adj_172 (.BLUT(n6_adj_1815), .ALUT(n12_adj_1853), .C0(state[3]), 
          .Z(n24_adj_1755));
    PFUMX i47_adj_173 (.BLUT(n6_adj_1785), .ALUT(n12_adj_1854), .C0(state[3]), 
          .Z(n24_adj_1745));
    PFUMX i47_adj_174 (.BLUT(n6_adj_1748), .ALUT(n35800), .C0(state[3]), 
          .Z(n24_adj_1855));
    LUT4 i1_4_lut_4_lut_adj_175 (.A(cnt_main[3]), .B(cnt_main[2]), .C(n38391), 
         .D(n5), .Z(n20)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_175.init = 16'h5140;
    LUT4 n18243_bdd_4_lut (.A(n38301), .B(char[36]), .C(n15_adj_1856), 
         .D(cnt_main[4]), .Z(n38117)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18243_bdd_4_lut.init = 16'h88f0;
    PFUMX i44 (.BLUT(n28), .ALUT(n23), .C0(n36354), .Z(n26));
    LUT4 i1_2_lut_rep_577 (.A(\cnt_main[0] ), .B(cnt_main[1]), .Z(n38391)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_rep_577.init = 16'h2222;
    LUT4 i1_4_lut_adj_176 (.A(state_back[1]), .B(n35856), .C(state[0]), 
         .D(n24_adj_1857), .Z(n35)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_176.init = 16'haaa8;
    PFUMX i47_adj_177 (.BLUT(n6_adj_1746), .ALUT(n12_adj_1858), .C0(state[3]), 
          .Z(n24_adj_1859));
    PFUMX i30748 (.BLUT(n36415), .ALUT(n36416), .C0(num[1]), .Z(n36423));
    PFUMX i47_adj_178 (.BLUT(n6_adj_1832), .ALUT(n35801), .C0(state[3]), 
          .Z(n24_adj_1860));
    LUT4 i29_3_lut_4_lut (.A(cnt_init[0]), .B(n38280), .C(state[2]), .D(n8045), 
         .Z(n20492)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i29_3_lut_4_lut.init = 16'hefe0;
    LUT4 i1_3_lut_3_lut (.A(state[2]), .B(n3765), .C(state_back[3]), .Z(n12_adj_1858)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_3_lut_3_lut.init = 16'h5151;
    LUT4 i20958_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[21]), .Z(n38446)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20958_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i1_4_lut_4_lut_adj_179 (.A(state[2]), .B(n3765), .C(n64_adj_1830), 
         .D(char_reg[2]), .Z(n12_adj_1849)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_4_lut_adj_179.init = 16'h5450;
    LUT4 i1_4_lut_adj_180 (.A(cnt_init[0]), .B(n19079), .C(state_back[2]), 
         .D(n38372), .Z(n16_adj_1747)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_180.init = 16'h5444;
    LUT4 i1_4_lut_4_lut_adj_181 (.A(state[2]), .B(n3765), .C(n64), .D(char_reg[7]), 
         .Z(n12_adj_1844)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_4_lut_adj_181.init = 16'h5450;
    PFUMX i92 (.BLUT(n43_adj_1829), .ALUT(n35768), .C0(cnt_scan[1]), .Z(n57));
    LUT4 i1_4_lut_4_lut_adj_182 (.A(state[2]), .B(char_reg[5]), .C(n14_adj_1848), 
         .D(n3765), .Z(n12_adj_1853)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_4_lut_adj_182.init = 16'h5450;
    PFUMX i31314 (.BLUT(n37193), .ALUT(n37192), .C0(state[5]), .Z(n37194));
    PFUMX i5321 (.BLUT(n10680), .ALUT(n126), .C0(n2720), .Z(n10681));
    LUT4 i1_4_lut_4_lut_adj_183 (.A(state[2]), .B(n3765), .C(n37215), 
         .D(char_reg[1]), .Z(n12_adj_1846)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_4_lut_adj_183.init = 16'h5450;
    PFUMX i31928 (.BLUT(n38599), .ALUT(n38600), .C0(cnt[0]), .Z(n38601));
    LUT4 i1_4_lut_adj_184 (.A(state[1]), .B(n11_adj_1861), .C(n38319), 
         .D(n38308), .Z(state_5__N_1343[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    defparam i1_4_lut_adj_184.init = 16'heca0;
    LUT4 i1_3_lut_adj_185 (.A(cnt_init[0]), .B(state[1]), .C(oled_dcn_N_1397), 
         .Z(n11_adj_1861)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i1_3_lut_adj_185.init = 16'heaea;
    LUT4 i50_4_lut (.A(state_back[1]), .B(n3765), .C(state[3]), .D(n38305), 
         .Z(n31)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;
    defparam i50_4_lut.init = 16'h0a8a;
    PFUMX i31924 (.BLUT(n38593), .ALUT(n38594), .C0(cnt[1]), .Z(n38595));
    LUT4 i1_4_lut_4_lut_adj_186 (.A(state[2]), .B(n3765), .C(n64_adj_1833), 
         .D(char_reg[3]), .Z(n12_adj_1851)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_4_lut_adj_186.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_187 (.A(state[2]), .B(n3765), .C(n64_adj_1837), 
         .D(char_reg[4]), .Z(n12_adj_1852)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_4_lut_adj_187.init = 16'h5450;
    LUT4 i1_2_lut_3_lut_adj_188 (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n24628)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_3_lut_adj_188.init = 16'h2020;
    LUT4 i31137_2_lut (.A(state[5]), .B(state[3]), .Z(n36354)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i31137_2_lut.init = 16'heeee;
    PFUMX i31916 (.BLUT(n38581), .ALUT(n38582), .C0(cnt[1]), .Z(n38583));
    PFUMX i30749 (.BLUT(n36417), .ALUT(n36418), .C0(num[1]), .Z(n36424));
    LUT4 i1_4_lut_4_lut_adj_189 (.A(state[2]), .B(n3765), .C(n38686), 
         .D(char_reg[6]), .Z(n12_adj_1854)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_4_lut_adj_189.init = 16'h5450;
    LUT4 i20998_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n38422), 
         .D(n3_adj_1754), .Z(n15_adj_1730)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20998_4_lut_4_lut.init = 16'h5140;
    FD1P3IX cnt_main_i0_i0 (.D(cnt_main_4__N_1045[0]), .SP(sys_clk_c_enable_329), 
            .CD(n29787), .CK(sys_clk_c), .Q(\cnt_main[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_190 (.A(state[2]), .B(n3765), .C(n37250), 
         .D(char_reg[0]), .Z(n12_adj_1845)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_4_lut_adj_190.init = 16'h5450;
    PFUMX i31910 (.BLUT(n38572), .ALUT(n38573), .C0(cnt_scan[2]), .Z(n38574));
    LUT4 i30599_3_lut_4_lut (.A(cnt_init[0]), .B(n38280), .C(cnt[3]), 
         .D(cnt[4]), .Z(n36274)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i30599_3_lut_4_lut.init = 16'h0010;
    PFUMX i34 (.BLUT(n16_adj_1827), .ALUT(n11_adj_1744), .C0(cnt_scan[0]), 
          .Z(n18_adj_1836));
    FD1P3IX cnt_write_i0_i1 (.D(n4460[1]), .SP(sys_clk_c_enable_340), .CD(n20568), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i2 (.D(n4460[2]), .SP(sys_clk_c_enable_340), .CD(n20568), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    PFUMX i31900 (.BLUT(n38557), .ALUT(n38558), .C0(cnt_main[3]), .Z(n38559));
    PFUMX i31898 (.BLUT(n38554), .ALUT(n38555), .C0(cnt_main[3]), .Z(n38556));
    FD1P3IX cnt_write_i0_i3 (.D(n4460[3]), .SP(sys_clk_c_enable_340), .CD(n20568), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i4 (.D(n4460[4]), .SP(sys_clk_c_enable_340), .CD(n20568), 
            .CK(sys_clk_c), .Q(oled_csn_N_1381)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i1 (.D(n4484[1]), .SP(sys_clk_c_enable_367), .CD(n20549), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    PFUMX i31896 (.BLUT(n38551), .ALUT(n38552), .C0(cnt_main[3]), .Z(n38553));
    PFUMX i28 (.BLUT(n35704), .ALUT(n7_adj_1825), .C0(state[2]), .Z(n11_adj_1811));
    LUT4 i2_4_lut_adj_191 (.A(n35856), .B(n38361), .C(n21), .D(state[3]), 
         .Z(n27)) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;
    defparam i2_4_lut_adj_191.init = 16'hfefb;
    FD1P3IX cnt_delay_i0_i2 (.D(n4484[2]), .SP(sys_clk_c_enable_367), .CD(n20549), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    PFUMX i31890 (.BLUT(n38542), .ALUT(n38543), .C0(num[1]), .Z(n38339));
    LUT4 n37256_bdd_3_lut_4_lut (.A(cnt_init[0]), .B(n38280), .C(char_reg[0]), 
         .D(n37256), .Z(char_reg_7__N_1273[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam n37256_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_adj_192 (.A(state[2]), .B(state[0]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_192.init = 16'h8888;
    LUT4 i1_4_lut_adj_193 (.A(cnt_init[0]), .B(state_back[1]), .C(n38264), 
         .D(n38309), .Z(state_back_5__N_1367[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_193.init = 16'hcc40;
    PFUMX i31888 (.BLUT(n38539), .ALUT(n38540), .C0(num[1]), .Z(n38342));
    PFUMX i32085 (.BLUT(n38951), .ALUT(n38945), .C0(state[0]), .Z(n38952));
    LUT4 char_21__bdd_4_lut_31967 (.A(char[21]), .B(n38301), .C(n38448), 
         .D(cnt_main[4]), .Z(n38126)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_21__bdd_4_lut_31967.init = 16'h88f0;
    PFUMX i30750 (.BLUT(n36419), .ALUT(n36420), .C0(num[1]), .Z(n36425));
    FD1P3IX cnt_delay_i0_i3 (.D(n4484[3]), .SP(sys_clk_c_enable_367), .CD(n20549), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    LUT4 i20999_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n38422), 
         .D(n3_adj_1753), .Z(n15_adj_1728)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20999_4_lut_4_lut.init = 16'h5140;
    PFUMX i31969 (.BLUT(n38681), .ALUT(n38680), .C0(cnt_scan[2]), .Z(n38682));
    PFUMX i31216 (.BLUT(n36998), .ALUT(n36997), .C0(cnt_scan[1]), .Z(n36999));
    LUT4 i1_4_lut_adj_194 (.A(n24_adj_1860), .B(state_back[4]), .C(n38305), 
         .D(n27), .Z(state_back_5__N_1032[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_194.init = 16'hce0a;
    PFUMX i31874 (.BLUT(n38518), .ALUT(n38519), .C0(cnt_scan[1]), .Z(n38520));
    PFUMX i31767 (.BLUT(n38036), .ALUT(n38035), .C0(state[5]), .Z(n38037));
    LUT4 i1_2_lut_adj_195 (.A(n38342), .B(n2724), .Z(n7_adj_1775)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_195.init = 16'hbbbb;
    LUT4 i20_4_lut_4_lut (.A(state[2]), .B(n3765), .C(n80), .D(state[3]), 
         .Z(n8_adj_1789)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;
    defparam i20_4_lut_4_lut.init = 16'h44a0;
    PFUMX i31870 (.BLUT(n38512), .ALUT(n38513), .C0(cnt_scan[1]), .Z(n38514));
    PFUMX i28_adj_196 (.BLUT(n4_adj_1831), .ALUT(n35769), .C0(cnt_scan[1]), 
          .Z(n10_adj_1847));
    LUT4 i1_2_lut_adj_197 (.A(state[3]), .B(state[2]), .Z(n24_adj_1857)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_197.init = 16'h8888;
    LUT4 mux_280_Mux_6_i31_3_lut_4_lut (.A(cnt_init[0]), .B(n38280), .C(char_reg[6]), 
         .D(n37683), .Z(n1671[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam mux_280_Mux_6_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n37312_bdd_3_lut_4_lut (.A(cnt_init[0]), .B(n38280), .C(char_reg[7]), 
         .D(n37312), .Z(char_reg_7__N_1273[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam n37312_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_198 (.A(n24_adj_1859), .B(state_back[3]), .C(n38305), 
         .D(n27), .Z(state_back_5__N_1032[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_198.init = 16'hce0a;
    PFUMX i31862 (.BLUT(n38500), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38502));
    PFUMX i31860 (.BLUT(n38497), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38499));
    FD1P3IX cnt_delay_i0_i4 (.D(n4484[4]), .SP(sys_clk_c_enable_367), .CD(n20549), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    LUT4 i20929_4_lut_4_lut (.A(cnt_main[3]), .B(n38321), .C(n24628), 
         .D(char[36]), .Z(n15_adj_1856)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20929_4_lut_4_lut.init = 16'h5450;
    PFUMX i31858 (.BLUT(n38494), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38496));
    LUT4 n37164_bdd_3_lut_4_lut (.A(cnt_init[0]), .B(n38280), .C(char_reg[3]), 
         .D(n37164), .Z(char_reg_7__N_1273[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam n37164_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut_adj_199 (.A(n19122), .B(state[2]), .C(n35), .D(n31), 
         .Z(state_back_5__N_1032[1])) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i2_4_lut_adj_199.init = 16'hfbfa;
    FD1P3IX char_i0_i165 (.D(n38122), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[165])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i165.GSR = "ENABLED";
    FD1P3IX char_i0_i157 (.D(n38121), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[157])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i157.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n4484[5]), .SP(sys_clk_c_enable_367), .CD(n20549), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    LUT4 i20930_4_lut_4_lut (.A(cnt_main[3]), .B(n38321), .C(n24628), 
         .D(char[34]), .Z(n15_adj_1828)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20930_4_lut_4_lut.init = 16'h5450;
    FD1P3IX char_i0_i149 (.D(n38120), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[149])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i149.GSR = "ENABLED";
    FD1P3IX char_i0_i141 (.D(n38118), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[141])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i141.GSR = "ENABLED";
    FD1P3IX char_i0_i133 (.D(n38115), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[133])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i133.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n4484[6]), .SP(sys_clk_c_enable_367), .CD(n20549), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i7 (.D(n4484[7]), .SP(sys_clk_c_enable_367), .CD(n20549), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3IX char_i0_i125 (.D(n38113), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[125])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i125.GSR = "ENABLED";
    FD1P3IX char_i0_i117 (.D(n38110), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[117])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i117.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i8 (.D(n4484[8]), .SP(sys_clk_c_enable_367), .CD(n20549), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3IX char_i0_i109 (.D(n38139), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[109])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i109.GSR = "ENABLED";
    PFUMX i31856 (.BLUT(n38491), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38493));
    FD1P3IX cnt_delay_i0_i9 (.D(n4484[9]), .SP(sys_clk_c_enable_367), .CD(n20549), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n4484[10]), .SP(sys_clk_c_enable_367), 
            .CD(n20549), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_200 (.A(n24_adj_1855), .B(state_back[2]), .C(n38305), 
         .D(n27), .Z(state_back_5__N_1032[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_200.init = 16'hce0a;
    LUT4 i20936_4_lut_4_lut (.A(cnt_main[3]), .B(n38321), .C(n24628), 
         .D(char[27]), .Z(n15_adj_1826)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20936_4_lut_4_lut.init = 16'h5450;
    FD1P3IX cnt_delay_i0_i11 (.D(n4484[11]), .SP(sys_clk_c_enable_367), 
            .CD(n20549), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3AX oled_dat_333 (.D(n35662), .SP(sys_clk_c_enable_364), .CK(sys_clk_c), 
            .Q(oled_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam oled_dat_333.GSR = "ENABLED";
    FD1P3AY oled_clk_332 (.D(n38072), .SP(sys_clk_c_enable_365), .CK(sys_clk_c), 
            .Q(oled_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam oled_clk_332.GSR = "ENABLED";
    FD1P3AY oled_rst_330 (.D(n6725[0]), .SP(sys_clk_c_enable_366), .CK(sys_clk_c), 
            .Q(oled_res_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam oled_rst_330.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n4484[12]), .SP(sys_clk_c_enable_367), 
            .CD(n20549), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    PFUMX i31854 (.BLUT(n38488), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38490));
    FD1P3IX char_i0_i101 (.D(n38138), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[101])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i101.GSR = "ENABLED";
    FD1P3IX char_i0_i93 (.D(n38137), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[93])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i93.GSR = "ENABLED";
    PFUMX i30751 (.BLUT(n36421), .ALUT(n36422), .C0(num[1]), .Z(n36426));
    FD1P3IX cnt_scan_i0_i0 (.D(cnt_scan_4__N_1055[0]), .SP(sys_clk_c_enable_370), 
            .CD(n20614), .CK(sys_clk_c), .Q(cnt_scan[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_scan_i0_i0.GSR = "ENABLED";
    LUT4 i20944_4_lut_4_lut (.A(cnt_main[3]), .B(n38321), .C(n24628), 
         .D(char[24]), .Z(n15_adj_1732)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20944_4_lut_4_lut.init = 16'h5450;
    FD1P3IX char_i0_i85 (.D(n38136), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[85])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i85.GSR = "ENABLED";
    FD1P3IX char_i0_i77 (.D(n38135), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[77])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i77.GSR = "ENABLED";
    PFUMX i31852 (.BLUT(n38485), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38487));
    FD1P3IX num_2988__i1 (.D(n37[1]), .SP(sys_clk_c_enable_375), .CD(n20653), 
            .CK(sys_clk_c), .Q(num[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2988__i1.GSR = "ENABLED";
    FD1P3IX char_i0_i69 (.D(n38134), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[69])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i69.GSR = "ENABLED";
    FD1P3IX char_i0_i61 (.D(n38133), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i61.GSR = "ENABLED";
    PFUMX i30762 (.BLUT(n36433), .ALUT(n36434), .C0(cnt_write[2]), .Z(n36437));
    PFUMX i31850 (.BLUT(n38482), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38484));
    FD1P3IX char_i0_i53 (.D(n38132), .SP(sys_clk_c_enable_378), .CD(n39784), 
            .CK(sys_clk_c), .Q(char[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i53.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_201 (.A(char[28]), .B(n32424), .C(n16), .Z(n1939[28])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_201.init = 16'hecec;
    LUT4 i20962_4_lut_4_lut (.A(cnt_main[3]), .B(n38321), .C(n24628), 
         .D(char[19]), .Z(n15_adj_1824)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i20962_4_lut_4_lut.init = 16'h5450;
    PFUMX i31848 (.BLUT(n38479), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38481));
    PFUMX i31846 (.BLUT(n38476), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38478));
    PFUMX i31844 (.BLUT(n38473), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38475));
    PFUMX i31842 (.BLUT(n38470), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38472));
    PFUMX i74 (.BLUT(n34), .ALUT(n41_adj_1742), .C0(state[5]), .Z(n50));
    CCU2D add_50_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32757), 
          .COUT(n32758), .S0(n2357[1]), .S1(n2357[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_3.INIT0 = 16'h5aaa;
    defparam add_50_3.INIT1 = 16'h5aaa;
    defparam add_50_3.INJECT1_0 = "NO";
    defparam add_50_3.INJECT1_1 = "NO";
    PFUMX i31838 (.BLUT(n38464), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38466));
    CCU2D add_50_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n32757), 
          .S1(n2357[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_1.INIT0 = 16'hF000;
    defparam add_50_1.INIT1 = 16'h5555;
    defparam add_50_1.INJECT1_0 = "NO";
    defparam add_50_1.INJECT1_1 = "NO";
    PFUMX i20236 (.BLUT(n1_adj_1721), .ALUT(n2_adj_1820), .C0(n36352), 
          .Z(n1939[4]));
    PFUMX i31836 (.BLUT(n38461), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38463));
    PFUMX i31834 (.BLUT(n38458), .ALUT(n38459), .C0(cnt_main[1]), .Z(n38460));
    PFUMX mux_34_Mux_1_i31 (.BLUT(n14_adj_1762), .ALUT(n15_adj_1816), .C0(n36350), 
          .Z(n1912[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    \divide(WIDTH=32,N=12000000)  divide_1Hz (.GND_net(GND_net), .clk_in_1Hz(clk_in_1Hz), 
            .sys_clk_c(sys_clk_c), .sys_rst_n_c(sys_rst_n_c), .rst_n_in_N_1515(rst_n_in_N_1515)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(55[36] 59[5])
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000) 
//

module \divide(WIDTH=32,N=12000000)  (GND_net, clk_in_1Hz, sys_clk_c, 
            sys_rst_n_c, rst_n_in_N_1515) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_in_1Hz;
    input sys_clk_c;
    input sys_rst_n_c;
    output rst_n_in_N_1515;
    
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(53[9:19])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire n32936;
    wire [31:0]cnt_p;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(11[19:24])
    
    wire n32937, n32935, n32934, clkout_N_292, n32881;
    wire [31:0]n101;
    
    wire n32880, n32879, n32878, n32877, n32876, n32875, n32874, 
        n32873, n32872, n32871, n32870, n32869, n32868;
    wire [31:0]n200;
    
    wire n32867, n32866, n20581, n36188, n36534, n36186, n36184, 
        n28_adj_1715, n19, n27_adj_1716, n25, n26_adj_1717, n24, 
        n32945, n32944, n32943, n32942, n32941, n32940, n32939, 
        n32938;
    
    CCU2D add_27200_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32936), .COUT(n32937));
    defparam add_27200_8.INIT0 = 16'h5555;
    defparam add_27200_8.INIT1 = 16'h5aaa;
    defparam add_27200_8.INJECT1_0 = "NO";
    defparam add_27200_8.INJECT1_1 = "NO";
    CCU2D add_27200_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32935), .COUT(n32936));
    defparam add_27200_6.INIT0 = 16'h5555;
    defparam add_27200_6.INIT1 = 16'h5555;
    defparam add_27200_6.INJECT1_0 = "NO";
    defparam add_27200_6.INJECT1_1 = "NO";
    CCU2D add_27200_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32934), .COUT(n32935));
    defparam add_27200_4.INIT0 = 16'h5aaa;
    defparam add_27200_4.INIT1 = 16'h5aaa;
    defparam add_27200_4.INJECT1_0 = "NO";
    defparam add_27200_4.INJECT1_1 = "NO";
    CCU2D add_27200_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n32934));
    defparam add_27200_2.INIT0 = 16'h7000;
    defparam add_27200_2.INIT1 = 16'h5555;
    defparam add_27200_2.INJECT1_0 = "NO";
    defparam add_27200_2.INJECT1_1 = "NO";
    FD1S3AX clk_p_29 (.D(clkout_N_292), .CK(sys_clk_c), .Q(clk_in_1Hz)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=36, LSE_RCOL=5, LSE_LLINE=55, LSE_RLINE=59 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D cnt_p_2987_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32881), .S0(n101[31]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_2987_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32880), .COUT(n32881), .S0(n101[29]), 
          .S1(n101[30]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32879), .COUT(n32880), .S0(n101[27]), 
          .S1(n101[28]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32878), .COUT(n32879), .S0(n101[25]), 
          .S1(n101[26]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32877), .COUT(n32878), .S0(n101[23]), 
          .S1(n101[24]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32876), .COUT(n32877), .S0(n101[21]), 
          .S1(n101[22]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32875), .COUT(n32876), .S0(n101[19]), 
          .S1(n101[20]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32874), .COUT(n32875), .S0(n101[17]), 
          .S1(n101[18]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32873), .COUT(n32874), .S0(n101[15]), 
          .S1(n101[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32872), .COUT(n32873), .S0(n101[13]), 
          .S1(n101[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32871), .COUT(n32872), .S0(n101[11]), 
          .S1(n101[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32870), .COUT(n32871), .S0(n101[9]), .S1(n101[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32869), .COUT(n32870), .S0(n101[7]), .S1(n101[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32868), .COUT(n32869), .S0(n101[5]), .S1(n101[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32867), .COUT(n32868), .S0(n101[3]), .S1(n101[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32866), .COUT(n32867), .S0(n101[1]), .S1(n101[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_2987_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_2987_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_2987_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32866), .S1(n101[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_2987_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_2987_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_2987_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_p_2987__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n20581), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n20581), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n20581), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n20581), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n20581), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n20581), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_2987__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n20581), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i1.GSR = "ENABLED";
    LUT4 i31046_3_lut (.A(n36188), .B(n36534), .C(n36186), .Z(n20581)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i31046_3_lut.init = 16'h8080;
    LUT4 i30513_4_lut (.A(n200[1]), .B(cnt_p[11]), .C(n200[2]), .D(n200[3]), 
         .Z(n36188)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30513_4_lut.init = 16'h8000;
    LUT4 i31045_4_lut (.A(n36184), .B(n200[0]), .C(n28_adj_1715), .D(cnt_p[16]), 
         .Z(n36534)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i31045_4_lut.init = 16'h0800;
    LUT4 i30511_4_lut (.A(n200[5]), .B(cnt_p[17]), .C(cnt_p[12]), .D(cnt_p[20]), 
         .Z(n36186)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30511_4_lut.init = 16'h8000;
    LUT4 i30509_4_lut (.A(cnt_p[23]), .B(cnt_p[21]), .C(cnt_p[7]), .D(cnt_p[9]), 
         .Z(n36184)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30509_4_lut.init = 16'h8000;
    LUT4 i10_3_lut (.A(n19), .B(n200[6]), .C(cnt_p[18]), .Z(n28_adj_1715)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i10_3_lut.init = 16'hbfbf;
    LUT4 i1_4_lut (.A(n27_adj_1716), .B(n200[4]), .C(n25), .D(n26_adj_1717), 
         .Z(n19)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i12_4_lut (.A(cnt_p[19]), .B(n24), .C(cnt_p[8]), .D(cnt_p[14]), 
         .Z(n27_adj_1716)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_p[30]), .B(cnt_p[22]), .C(cnt_p[13]), .D(cnt_p[25]), 
         .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(cnt_p[28]), .B(cnt_p[15]), .C(cnt_p[31]), .D(cnt_p[29]), 
         .Z(n26_adj_1717)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt_p[26]), .B(cnt_p[24]), .C(cnt_p[10]), .D(cnt_p[27]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 rst_n_in_I_0_1_lut (.A(sys_rst_n_c), .Z(rst_n_in_N_1515)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(81[5:14])
    defparam rst_n_in_I_0_1_lut.init = 16'h5555;
    FD1S3IX cnt_p_2987__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n20581), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2987__i0.GSR = "ENABLED";
    CCU2D add_27200_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32945), 
          .S0(clkout_N_292));
    defparam add_27200_cout.INIT0 = 16'h0000;
    defparam add_27200_cout.INIT1 = 16'h0000;
    defparam add_27200_cout.INJECT1_0 = "NO";
    defparam add_27200_cout.INJECT1_1 = "NO";
    CCU2D add_27200_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32944), .COUT(n32945));
    defparam add_27200_24.INIT0 = 16'h5555;
    defparam add_27200_24.INIT1 = 16'h5555;
    defparam add_27200_24.INJECT1_0 = "NO";
    defparam add_27200_24.INJECT1_1 = "NO";
    CCU2D add_27200_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32943), .COUT(n32944));
    defparam add_27200_22.INIT0 = 16'h5555;
    defparam add_27200_22.INIT1 = 16'h5555;
    defparam add_27200_22.INJECT1_0 = "NO";
    defparam add_27200_22.INJECT1_1 = "NO";
    CCU2D add_27200_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32942), .COUT(n32943));
    defparam add_27200_20.INIT0 = 16'h5555;
    defparam add_27200_20.INIT1 = 16'h5555;
    defparam add_27200_20.INJECT1_0 = "NO";
    defparam add_27200_20.INJECT1_1 = "NO";
    CCU2D add_27200_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32941), .COUT(n32942));
    defparam add_27200_18.INIT0 = 16'h5555;
    defparam add_27200_18.INIT1 = 16'h5555;
    defparam add_27200_18.INJECT1_0 = "NO";
    defparam add_27200_18.INJECT1_1 = "NO";
    CCU2D add_27200_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32940), .COUT(n32941));
    defparam add_27200_16.INIT0 = 16'h5aaa;
    defparam add_27200_16.INIT1 = 16'h5555;
    defparam add_27200_16.INJECT1_0 = "NO";
    defparam add_27200_16.INJECT1_1 = "NO";
    CCU2D add_27200_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32939), .COUT(n32940));
    defparam add_27200_14.INIT0 = 16'h5aaa;
    defparam add_27200_14.INIT1 = 16'h5555;
    defparam add_27200_14.INJECT1_0 = "NO";
    defparam add_27200_14.INJECT1_1 = "NO";
    CCU2D add_27200_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32938), .COUT(n32939));
    defparam add_27200_12.INIT0 = 16'h5555;
    defparam add_27200_12.INIT1 = 16'h5aaa;
    defparam add_27200_12.INJECT1_0 = "NO";
    defparam add_27200_12.INJECT1_1 = "NO";
    CCU2D add_27200_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32937), .COUT(n32938));
    defparam add_27200_10.INIT0 = 16'h5aaa;
    defparam add_27200_10.INIT1 = 16'h5aaa;
    defparam add_27200_10.INJECT1_0 = "NO";
    defparam add_27200_10.INJECT1_1 = "NO";
    
endmodule
