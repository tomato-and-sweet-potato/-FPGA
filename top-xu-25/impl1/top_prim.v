// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Thu Feb 25 16:46:35 2021
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
    
    wire key1_pulse;
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
    
    wire n11094;
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
    
    wire time_set_N_215, n37157, n5303, n5201, n5389, n5388, n5387, 
        n5386, n5252, n5379, n5378, n5377, n5376, n5369, n5368, 
        n5367, n5366, n5365, n37258, warning_time_7__N_176, warning_N_213, 
        n739, n740, n741, n742, n743, n744, n745, n746, n782, 
        n783, n784, n785, n786, n787, n788, n789, n792, n793, 
        n794, n795, n796, n797, n798, n799, n818, n837;
    wire [7:0]sec_7__N_1;
    wire [7:0]min_7__N_11;
    wire [7:0]hour_7__N_19;
    
    wire uart_en_N_225, key_sec_pre, key_sec, key_sec_pre_adj_1936, 
        key_sec_adj_1937, n32, n8541;
    wire [3:0]hundres_0__N_347;
    wire [3:0]hundres_0__N_350;
    wire [3:0]hundres_0__N_350_adj_2007;
    
    wire hundres_0__N_355, sys_clk_c_enable_128;
    wire [3:0]hundres_0__N_350_adj_2033;
    
    wire hundres_0__N_355_adj_1939;
    wire [3:0]hundres_0__N_347_adj_2057;
    wire [3:0]hundres_0__N_350_adj_2059;
    
    wire hundres_0__N_355_adj_1942, sys_clk_c_enable_47;
    wire [3:0]hundres_0__N_350_adj_2085;
    
    wire hundres_0__N_355_adj_1944;
    wire [3:0]hundres_1__N_339_adj_2103;
    wire [3:0]hundres_0__N_350_adj_2111;
    wire [5:0]cnt_read;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(58[14:22])
    wire [2:0]state;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    
    wire sys_clk_c_enable_346, n34678;
    wire [2:0]state_back_2__N_516;
    
    wire one_wire_N_665, sys_clk_c_enable_34, n51, n70, n31, n80, 
        sys_clk_c_enable_28;
    wire [4:0]cnt_main_adj_2128;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[12:20])
    wire [4:0]cnt_scan;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    wire [15:0]cnt_adj_2133;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(47[35:38])
    
    wire sys_clk_c_enable_240, n8456, n73, n82, n8451, n85, n37416, 
        n52, n32322, n31897, n7448, n7445, n19, n18, n4, n7455, 
        n42, n35126, n4_adj_1946, n35124, n7474, n7472, n35122, 
        n12, n35120, n34483, n4_adj_1947, n11, n5977, n5976, n5975, 
        n5974, n5973, n5972, n5971, n5970, n5960, n5959, n5958, 
        n5957, n5956, n5955, n5954, n5953, n5943, n5942, n5941, 
        n5940, n5939, n5938, n5937, n5936, n5926, n5925, n5924, 
        n5923, n5922, n5921, n5920, n5919, n5909, n5908, n5907, 
        n5906, n5905, n5904, n5903, n5902, n2720, n2721, n2722, 
        n2724, n2889, n2890, n2891, n2892, n2893, n2894, n2895, 
        n3267, n3268, n3269, n3270, n3271, n3272, n3273, n3645, 
        n3646, n3647, n3648, n3649, n3650, n3651, n4023, n4024, 
        n4025, n4026, n4027, n4028, n4029, n4401, n4402, n4403, 
        n4404, n4405, n4406, n4407, n6, n35090, n35082, n35078, 
        n35072, n4_adj_1948, n35066, n37254, n6_adj_1949, rx_flag, 
        n15, n18049, n10325, n31640, n31639;
    wire [7:0]cnt_run;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(36[11:18])
    
    wire n31456;
    wire [4:0]state_adj_2156;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(41[11:16])
    wire [2:0]state_back_adj_2157;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(42[12:22])
    wire [8:0]music_cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(47[11:20])
    
    wire uart_music_mode, n35427, n31638, n123, n124, n125, n126, 
        n136, n139, n31455, n31637, n31458, n31636, n35461, n8157, 
        sys_clk_c_enable_354, n37253, n8144, clk_1s_enable_9, n23, 
        n28, n7, n8537, n8535, n5364, n5363, n5362, n5373, n5372, 
        n5375, n5374, n5383, n5382, n5385, n5384, one_wire_out, 
        n37249, n37248, n37247, n4_adj_1952, n38985, n34953, n37246, 
        sys_clk_c_enable_243, n11_adj_1953, n36155, n19393, n37243, 
        n37242, n24, n36897, n20, n34947, sys_clk_c_enable_302, 
        sys_clk_c_enable_350, n34937, n4_adj_1954, n31635, n31634, 
        n31633, n34627, n31632, n31631, n31630, n31629, n31457, 
        n37146, n8, n37231, n17, n36947, n58, n34666, n8447, 
        n34915, n3686, n36096, n31_adj_1955, n37223, n34, n37222, 
        n3582, sys_clk_c_enable_141, sys_clk_c_enable_79, sys_clk_c_enable_27, 
        n8442, n8460, n10, n35291, n31618, n34532, n34874, n4_adj_1956, 
        n50, n19396, n30619, n34619, n32080, n11_adj_1957, n35269, 
        n34721, n4_adj_1958, n4_adj_1959, n37140, n31617, n36704, 
        n4_adj_1960, n36703, n36702, n37404, n7_adj_1961, n34470, 
        n18926, n37403, n37402, n37401, n37398, n37397, n8_adj_1962, 
        n7_adj_1963, n22, n37134, n31616, n11_adj_1964, n31615, 
        n33626, n37130, n34690, n37384, n37129, sys_clk_c_enable_131, 
        sys_clk_c_enable_58, n62, n19_adj_1965, n18_adj_1966, clk_1s_enable_16, 
        n31608, n14554, sys_clk_c_enable_154, n37372, n39002, n4_adj_1967, 
        n37124, n32054, n34226, n32206, n34214, n31609, n26, n34745, 
        n34512, sys_clk_c_enable_296, n20604, n37366, n37365, sys_clk_c_enable_316, 
        sys_clk_c_enable_83, n37418, n34172, n10614, sys_clk_c_enable_265, 
        sys_clk_c_enable_330, n4_adj_1968, n6_adj_1969, n35982, n37351, 
        n37348, n37417, n27, n31826, n31825, n31824, n31823, n37338, 
        n4_adj_1970, n31818, n31817, n31816, n31815, n4_adj_1971, 
        n31810, n37327, n37184, n37321, n31809, n31808, sys_clk_c_enable_134, 
        n37319, n37318, n8_adj_1972, n37317, n4_adj_1973, n37314, 
        n6_adj_1974, n6_adj_1975, n31807, n5, n37313, n37308, n93, 
        n34623, n37306, n37305, n37303, sys_clk_c_enable_130, n35154, 
        n37474, n37293, n4_adj_1976, n65, n59, n31610, n53, n4_adj_1977, 
        n20647, n37284, n11620, n87, n4_adj_1978, n62_adj_1979, 
        n37275, n64, n25211, n31607, n37270, n34500, n37263, sys_clk_c_enable_368;
    
    VHI i31551 (.Z(VCC_net));
    FD1P3IX hour_warning__i0 (.D(n5943), .SP(sys_clk_c_enable_79), .CD(n8537), 
            .CK(sys_clk_c), .Q(hour_warning[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i0.GSR = "ENABLED";
    FD1P3AX min_t_i0_i0 (.D(n5909), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i0.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i0 (.D(n5926), .SP(sys_clk_c_enable_134), .CK(sys_clk_c), 
            .Q(sec_t[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i0.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i4 (.D(hour_warning[4]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(hour_waning_t[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i4.GSR = "ENABLED";
    FD1P3AY min_waning_t_i0_i0 (.D(min_warning[0]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(min_waning_t[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i0.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i0 (.D(hour_warning[0]), .SP(sys_clk_c_enable_141), 
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
    FD1S3AY min_warning__i0 (.D(n24), .CK(sys_clk_c), .Q(min_warning[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i0.GSR = "ENABLED";
    FD1P3IX warning_time__i0 (.D(n746), .SP(clk_1s_enable_9), .CD(n8535), 
            .CK(clk_1s), .Q(warning_time[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i0.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i3 (.D(hour_warning[3]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(hour_waning_t[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i3.GSR = "ENABLED";
    ROM128X1A mux_891_Mux_24 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3273)) /* synthesis initstate=0x001010012C1F82FDC3AD02CC0000FBAD */ ;
    defparam mux_891_Mux_24.initval = 128'h001010012C1F82FDC3AD02CC0000FBAD;
    ROM128X1A mux_891_Mux_28 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3269)) /* synthesis initstate=0x001808620D0000023C91810800000491 */ ;
    defparam mux_891_Mux_28.initval = 128'h001808620D0000023C91810800000491;
    ROM128X1A mux_891_Mux_25 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3272)) /* synthesis initstate=0x00100040580020020C42001C00000442 */ ;
    defparam mux_891_Mux_25.initval = 128'h00100040580020020C42001C00000442;
    ROM128X1A mux_891_Mux_26 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3271)) /* synthesis initstate=0x041BA2FA090040003C3001AC00000030 */ ;
    defparam mux_891_Mux_26.initval = 128'h041BA2FA090040003C3001AC00000030;
    FD1P3IX warning_time__i7 (.D(n739), .SP(clk_1s_enable_9), .CD(n8535), 
            .CK(clk_1s), .Q(warning_time[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i7.GSR = "ENABLED";
    FD1P3IX warning_time__i6 (.D(n740), .SP(clk_1s_enable_9), .CD(n8535), 
            .CK(clk_1s), .Q(warning_time[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i6.GSR = "ENABLED";
    FD1P3IX warning_time__i5 (.D(n741), .SP(clk_1s_enable_9), .CD(n8535), 
            .CK(clk_1s), .Q(warning_time[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i5.GSR = "ENABLED";
    FD1P3IX warning_time__i4 (.D(n742), .SP(clk_1s_enable_9), .CD(n8535), 
            .CK(clk_1s), .Q(warning_time[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i4.GSR = "ENABLED";
    FD1P3IX warning_time__i3 (.D(n743), .SP(clk_1s_enable_9), .CD(n8535), 
            .CK(clk_1s), .Q(warning_time[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i3.GSR = "ENABLED";
    FD1P3IX warning_time__i2 (.D(n744), .SP(clk_1s_enable_9), .CD(n8535), 
            .CK(clk_1s), .Q(warning_time[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i2.GSR = "ENABLED";
    FD1P3IX warning_time__i1 (.D(n745), .SP(clk_1s_enable_9), .CD(n8535), 
            .CK(clk_1s), .Q(warning_time[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_time__i1.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i2 (.D(n5924), .SP(sys_clk_c_enable_134), .CK(sys_clk_c), 
            .Q(sec_t[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i2.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i1 (.D(n5925), .SP(sys_clk_c_enable_134), .CK(sys_clk_c), 
            .Q(sec_t[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i1.GSR = "ENABLED";
    FD1P3AX min_t_i0_i7 (.D(n5902), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i7.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i3 (.D(n5923), .SP(sys_clk_c_enable_134), .CK(sys_clk_c), 
            .Q(sec_t[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i3.GSR = "ENABLED";
    ROM128X1A mux_891_Mux_39 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2889)) /* synthesis initstate=0x050D6D04950D7976000400200000EC04 */ ;
    defparam mux_891_Mux_39.initval = 128'h050D6D04950D7976000400200000EC04;
    ROM128X1A mux_891_Mux_37 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2890)) /* synthesis initstate=0x00A5E93E05A7FDFF016980700000FD69 */ ;
    defparam mux_891_Mux_37.initval = 128'h00A5E93E05A7FDFF016980700000FD69;
    ROM128X1A mux_891_Mux_30 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3267)) /* synthesis initstate=0x04A8927EACAA96BD4BEF426800007BEF */ ;
    defparam mux_891_Mux_30.initval = 128'h04A8927EACAA96BD4BEF426800007BEF;
    ROM128X1A mux_891_Mux_22 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3645)) /* synthesis initstate=0x0478923EBE7A96BD836F405000007B6F */ ;
    defparam mux_891_Mux_22.initval = 128'h0478923EBE7A96BD836F405000007B6F;
    ROM128X1A mux_891_Mux_21 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3646)) /* synthesis initstate=0x02831A80029002005C025F1200000002 */ ;
    defparam mux_891_Mux_21.initval = 128'h02831A80029002005C025F1200000002;
    ROM128X1A mux_891_Mux_20 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3647)) /* synthesis initstate=0x0588322212960A03AC160C5800000416 */ ;
    defparam mux_891_Mux_20.initval = 128'h0588322212960A03AC160C5800000416;
    ROM128X1A mux_891_Mux_19 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3648)) /* synthesis initstate=0x00003A40059D63E503C3AC320000CBC3 */ ;
    defparam mux_891_Mux_19.initval = 128'h00003A40059D63E503C3AC320000CBC3;
    ROM128X1A mux_891_Mux_18 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3649)) /* synthesis initstate=0x041FD7BE10102A002C2A0C5A0000002A */ ;
    defparam mux_891_Mux_18.initval = 128'h041FD7BE10102A002C2A0C5A0000002A;
    FD1P3IX min_warning__i7 (.D(n5970), .SP(sys_clk_c_enable_27), .CD(n8541), 
            .CK(sys_clk_c), .Q(min_warning[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i7.GSR = "ENABLED";
    FD1P3IX min_warning__i6 (.D(n5971), .SP(sys_clk_c_enable_27), .CD(n8541), 
            .CK(sys_clk_c), .Q(min_warning[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i6.GSR = "ENABLED";
    FD1P3IX min_warning__i5 (.D(n5972), .SP(sys_clk_c_enable_27), .CD(n8541), 
            .CK(sys_clk_c), .Q(min_warning[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i5.GSR = "ENABLED";
    FD1P3IX min_warning__i4 (.D(n5973), .SP(sys_clk_c_enable_27), .CD(n8541), 
            .CK(sys_clk_c), .Q(min_warning[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i4.GSR = "ENABLED";
    FD1P3IX min_warning__i3 (.D(n5974), .SP(sys_clk_c_enable_27), .CD(n8541), 
            .CK(sys_clk_c), .Q(min_warning[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i3.GSR = "ENABLED";
    FD1S3AY min_warning__i2 (.D(n20), .CK(sys_clk_c), .Q(min_warning[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i2.GSR = "ENABLED";
    FD1P3IX min_warning__i1 (.D(n5976), .SP(sys_clk_c_enable_27), .CD(n8541), 
            .CK(sys_clk_c), .Q(min_warning[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_warning__i1.GSR = "ENABLED";
    FD1P3AX min_t_i0_i6 (.D(n5903), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i6.GSR = "ENABLED";
    LUT4 i30050_4_lut (.A(warning_time[1]), .B(n34470), .C(warning_time[3]), 
         .D(warning_time[2]), .Z(warning_N_213)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i30050_4_lut.init = 16'h0313;
    CCU2D add_1912_5 (.A0(n5303), .B0(n37402), .C0(n5387), .D0(hour_t[2]), 
          .A1(n5303), .B1(n37402), .C1(n5386), .D1(hour_t[3]), .CIN(n31608), 
          .COUT(n31609), .S0(n5958), .S1(n5957));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1912_5.INIT0 = 16'he4b1;
    defparam add_1912_5.INIT1 = 16'he4b1;
    defparam add_1912_5.INJECT1_0 = "NO";
    defparam add_1912_5.INJECT1_1 = "NO";
    FD1P3AX min_t_i0_i5 (.D(n5904), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i5.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i7 (.D(n5919), .SP(sys_clk_c_enable_134), .CK(sys_clk_c), 
            .Q(sec_t[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i7.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i2 (.D(hour_warning[2]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(hour_waning_t[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i2.GSR = "ENABLED";
    FD1P3AX min_t_i0_i4 (.D(n5905), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i4.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i0 (.D(n5960), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(hour_t[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i0.GSR = "ENABLED";
    FD1P3AX Temp_H_i6 (.D(hundres_1__N_339_adj_2103[1]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam Temp_H_i6.GSR = "ENABLED";
    FD1P3AX Temp_H_i5 (.D(hundres_1__N_339_adj_2103[0]), .SP(clk_1s), .CK(sys_clk_c), 
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
    FD1P3AX hour_waning_t_i0_i1 (.D(hour_warning[1]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(hour_waning_t[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i1.GSR = "ENABLED";
    FD1P3AX min_t_i0_i3 (.D(n5906), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i3.GSR = "ENABLED";
    FD1P3AX min_t_i0_i2 (.D(n5907), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i2.GSR = "ENABLED";
    FD1P3JX uart_send_data_i0_i1 (.D(Temp_H[1]), .SP(sys_clk_c_enable_350), 
            .PD(n20647), .CK(sys_clk_c), .Q(uart_send_data[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i1.GSR = "DISABLED";
    ROM128X1A mux_891_Mux_17 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3650)) /* synthesis initstate=0x00001001001002005C120F9200000012 */ ;
    defparam mux_891_Mux_17.initval = 128'h00001001001002005C120F9200000012;
    FD1P3JX uart_send_data_i0_i2 (.D(Temp_H[2]), .SP(sys_clk_c_enable_350), 
            .PD(n20647), .CK(sys_clk_c), .Q(uart_send_data[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i2.GSR = "DISABLED";
    IB sw2_pad (.I(sw2), .O(sw2_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(11[8:11])
    IB sw1_pad (.I(sw1), .O(sw1_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(4[8:17])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    OB led_pad (.I(GND_net), .O(led));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(9[13:16])
    OB oled_mosi_pad (.I(oled_mosi_c), .O(oled_mosi));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(18[9:18])
    OB oled_sck_pad (.I(oled_sck_c), .O(oled_sck));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(17[9:17])
    OB oled_dc_pad (.I(oled_dc_c), .O(oled_dc));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(16[9:16])
    FD1P3AX min_t_i0_i1 (.D(n5908), .SP(sys_clk_c_enable_58), .CK(sys_clk_c), 
            .Q(min_t[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_t_i0_i1.GSR = "ENABLED";
    OB oled_cs_pad (.I(oled_cs_c), .O(oled_cs));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(15[9:16])
    OB oled_res_pad (.I(oled_res_c), .O(oled_res));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(14[9:17])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(20[10:18])
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(19[18:22])
    CCU2D add_132_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[0]), .B1(sec[7]), .C1(n18049), .D1(sec[6]), .COUT(n31633), 
          .S1(n789));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(214[14:24])
    defparam add_132_1.INIT0 = 16'hF000;
    defparam add_132_1.INIT1 = 16'h5556;
    defparam add_132_1.INJECT1_0 = "NO";
    defparam add_132_1.INJECT1_1 = "NO";
    ROM128X1A mux_891_Mux_29 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3268)) /* synthesis initstate=0x075300C0184000000484403800000084 */ ;
    defparam mux_891_Mux_29.initval = 128'h075300C0184000000484403800000084;
    PFUMX i30734 (.BLUT(n37416), .ALUT(n37417), .C0(cnt_adj_2133[0]), 
          .Z(n37418));
    FD1P3JX uart_send_data_i0_i3 (.D(Temp_H[3]), .SP(sys_clk_c_enable_350), 
            .PD(n20647), .CK(sys_clk_c), .Q(uart_send_data[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i3.GSR = "DISABLED";
    ROM128X1A mux_891_Mux_32 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2895)) /* synthesis initstate=0x0000090417F5797400A800000000E8A8 */ ;
    defparam mux_891_Mux_32.initval = 128'h0000090417F5797400A800000000E8A8;
    ROM128X1A mux_891_Mux_33 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2894)) /* synthesis initstate=0x0000090403EFF9FD832500600000FB25 */ ;
    defparam mux_891_Mux_33.initval = 128'h0000090403EFF9FD832500600000FB25;
    ROM128X1A mux_891_Mux_34 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2893)) /* synthesis initstate=0x07F5690452EFF9FE236104580000FF61 */ ;
    defparam mux_891_Mux_34.initval = 128'h07F5690452EFF9FE236104580000FF61;
    ROM128X1A mux_891_Mux_35 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2892)) /* synthesis initstate=0x02EFE9FC00E7F9FE105128000000FC51 */ ;
    defparam mux_891_Mux_35.initval = 128'h02EFE9FC00E7F9FE105128000000FC51;
    ROM128X1A mux_891_Mux_36 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n2891)) /* synthesis initstate=0x02E7E9BC10E7F9FF215104480000FD51 */ ;
    defparam mux_891_Mux_36.initval = 128'h02E7E9BC10E7F9FF215104480000FD51;
    FD1P3IX hour_warning__i7 (.D(n5936), .SP(sys_clk_c_enable_79), .CD(n8537), 
            .CK(sys_clk_c), .Q(hour_warning[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i7.GSR = "ENABLED";
    FD1S3AX sec_i4 (.D(sec_7__N_1[4]), .CK(clk_1s), .Q(sec[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i4.GSR = "ENABLED";
    FD1S3AX sec_i5 (.D(sec_7__N_1[5]), .CK(clk_1s), .Q(sec[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i5.GSR = "ENABLED";
    FD1S3AX sec_i6 (.D(sec_7__N_1[6]), .CK(clk_1s), .Q(sec[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i6.GSR = "ENABLED";
    FD1S3AX sec_i7 (.D(sec_7__N_1[7]), .CK(clk_1s), .Q(sec[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i7.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i6 (.D(n5920), .SP(sys_clk_c_enable_134), .CK(sys_clk_c), 
            .Q(sec_t[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i6.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i7 (.D(min_warning[7]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(min_waning_t[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i7.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i5 (.D(n5921), .SP(sys_clk_c_enable_134), .CK(sys_clk_c), 
            .Q(sec_t[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i5.GSR = "ENABLED";
    ROM128X1A mux_891_Mux_16 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3651)) /* synthesis initstate=0x000012407C1F86FF83EF00D20000FFEF */ ;
    defparam mux_891_Mux_16.initval = 128'h000012407C1F86FF83EF00D20000FFEF;
    FD1P3AX min_waning_t_i0_i6 (.D(min_warning[6]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(min_waning_t[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i6.GSR = "ENABLED";
    FD1P3IX hour_warning__i6 (.D(n5937), .SP(sys_clk_c_enable_79), .CD(n8537), 
            .CK(sys_clk_c), .Q(hour_warning[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i6.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i5 (.D(min_warning[5]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(min_waning_t[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i5.GSR = "ENABLED";
    ROM128X1A mux_891_Mux_14 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4023)) /* synthesis initstate=0x04989E3EACA892AD117F11080000597F */ ;
    defparam mux_891_Mux_14.initval = 128'h04989E3EACA892AD117F11080000597F;
    FD1P3AX min_waning_t_i0_i4 (.D(min_warning[4]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(min_waning_t[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i4.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i3 (.D(min_warning[3]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(min_waning_t[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i3.GSR = "ENABLED";
    CCU2D add_122_9 (.A0(warning_time[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31632), .S0(n739));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(191[22:41])
    defparam add_122_9.INIT0 = 16'h5aaa;
    defparam add_122_9.INIT1 = 16'h0000;
    defparam add_122_9.INJECT1_0 = "NO";
    defparam add_122_9.INJECT1_1 = "NO";
    ROM128X1A mux_891_Mux_6 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4401)) /* synthesis initstate=0x07226192950679A20004004000004404 */ ;
    defparam mux_891_Mux_6.initval = 128'h07226192950679A20004004000004404;
    ROM128X1A mux_891_Mux_4 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4403)) /* synthesis initstate=0x02E3E1B610EAE1972379045800002F79 */ ;
    defparam mux_891_Mux_4.initval = 128'h02E3E1B610EAE1972379045800002F79;
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(12[18:26])
    ROM128X1A mux_891_Mux_3 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4404)) /* synthesis initstate=0x02E7E1B600E2E1934221280000002621 */ ;
    defparam mux_891_Mux_3.initval = 128'h02E7E1B600E2E1934221280000002621;
    FD1P3IX hour_warning__i5 (.D(n5938), .SP(sys_clk_c_enable_79), .CD(n8537), 
            .CK(sys_clk_c), .Q(hour_warning[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i5.GSR = "ENABLED";
    ROM128X1A mux_892_Mux_3 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n124)) /* synthesis initstate=0x0000000091DC0303010384C3F70384C3 */ ;
    defparam mux_892_Mux_3.initval = 128'h0000000091DC0303010384C3F70384C3;
    ROM128X1A mux_891_Mux_27 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n3270)) /* synthesis initstate=0x011441441A0D096503402D580000CB40 */ ;
    defparam mux_891_Mux_27.initval = 128'h011441441A0D096503402D580000CB40;
    FD1P3IX hour_warning__i4 (.D(n5939), .SP(sys_clk_c_enable_79), .CD(n8537), 
            .CK(sys_clk_c), .Q(hour_warning[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i4.GSR = "ENABLED";
    FD1P3IX hour_warning__i3 (.D(n5940), .SP(sys_clk_c_enable_79), .CD(n8537), 
            .CK(sys_clk_c), .Q(hour_warning[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i3.GSR = "ENABLED";
    FD1P3IX hour_warning__i2 (.D(n5941), .SP(sys_clk_c_enable_79), .CD(n8537), 
            .CK(sys_clk_c), .Q(hour_warning[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i2.GSR = "ENABLED";
    PFUMX i30485 (.BLUT(n36703), .ALUT(n36702), .C0(cnt_adj_2133[4]), 
          .Z(n36704));
    BB one_wire_pad (.I(one_wire_N_665), .T(n10325), .B(one_wire), .O(one_wire_out));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(63[2] 264[5])
    ROM128X1A mux_892_Mux_1 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n126)) /* synthesis initstate=0x00000000054D4A4A014A244A954A244A */ ;
    defparam mux_892_Mux_1.initval = 128'h00000000054D4A4A014A244A954A244A;
    ROM128X1A mux_892_Mux_2 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n125)) /* synthesis initstate=0x000000005994949451139113B7139113 */ ;
    defparam mux_892_Mux_2.initval = 128'h000000005994949451139113B7139113;
    FD1S3AX sec_i3 (.D(sec_7__N_1[3]), .CK(clk_1s), .Q(sec[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i3.GSR = "ENABLED";
    FD1S3AX sec_i2 (.D(sec_7__N_1[2]), .CK(clk_1s), .Q(sec[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i2.GSR = "ENABLED";
    FD1P3AX warning_185 (.D(warning_N_213), .SP(warning_time_7__N_176), 
            .CK(clk_1s), .Q(warning));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam warning_185.GSR = "ENABLED";
    FD1P3IX hour_warning__i1 (.D(n5942), .SP(sys_clk_c_enable_79), .CD(n8537), 
            .CK(sys_clk_c), .Q(hour_warning[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_warning__i1.GSR = "ENABLED";
    FD1S3AX sec_i1 (.D(sec_7__N_1[1]), .CK(clk_1s), .Q(sec[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam sec_i1.GSR = "ENABLED";
    FD1P3AX uart_send_data_i0_i7 (.D(n3582), .SP(sys_clk_c_enable_350), 
            .CK(sys_clk_c), .Q(uart_send_data[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i7.GSR = "DISABLED";
    FD1P3AX time_set_175 (.D(time_set_N_215), .SP(key1_pulse), .CK(sys_clk_c), 
            .Q(time_set));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam time_set_175.GSR = "ENABLED";
    ROM128X1A mux_892_Mux_5 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n123)) /* synthesis initstate=0x00000000CE03DFDF44DCF5DC48DCF5DC */ ;
    defparam mux_892_Mux_5.initval = 128'h00000000CE03DFDF44DCF5DC48DCF5DC;
    ROM128X1A mux_891_Mux_1 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4406)) /* synthesis initstate=0x0000005007E7E18D8385803000001B85 */ ;
    defparam mux_891_Mux_1.initval = 128'h0000005007E7E18D8385803000001B85;
    ROM128X1A mux_891_Mux_2 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4405)) /* synthesis initstate=0x07E2009052E7E117A305040800002F05 */ ;
    defparam mux_891_Mux_2.initval = 128'h07E2009052E7E117A305040800002F05;
    LUT4 i3_4_lut (.A(n37403), .B(hour_warning[5]), .C(hour_warning[4]), 
         .D(n34), .Z(n32054)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut.init = 16'hfeee;
    ROM128X1A mux_891_Mux_5 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4402)) /* synthesis initstate=0x02BAE19E01A8E18F0169002000001D69 */ ;
    defparam mux_891_Mux_5.initval = 128'h02BAE19E01A8E18F0169002000001D69;
    ROM128X1A mux_891_Mux_0 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4407)) /* synthesis initstate=0x0000001017F86D6000A800200000C0A8 */ ;
    defparam mux_891_Mux_0.initval = 128'h0000001017F86D6000A800200000C0A8;
    LUT4 i29456_4_lut (.A(hour_warning[4]), .B(hour_warning[2]), .C(hour_warning[3]), 
         .D(n34953), .Z(n35126)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29456_4_lut.init = 16'hfffe;
    CCU2D add_1903_9 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[6]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[7]), 
          .D1(GND_net), .CIN(n31618), .S0(n5937), .S1(n5936));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1903_9.INIT0 = 16'h2d2d;
    defparam add_1903_9.INIT1 = 16'h2d2d;
    defparam add_1903_9.INJECT1_0 = "NO";
    defparam add_1903_9.INJECT1_1 = "NO";
    CCU2D add_1903_7 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[4]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[5]), 
          .D1(GND_net), .CIN(n31617), .COUT(n31618), .S0(n5939), .S1(n5938));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1903_7.INIT0 = 16'h2d2d;
    defparam add_1903_7.INIT1 = 16'h2d2d;
    defparam add_1903_7.INJECT1_0 = "NO";
    defparam add_1903_7.INJECT1_1 = "NO";
    CCU2D add_1903_5 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[2]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[3]), 
          .D1(GND_net), .CIN(n31616), .COUT(n31617), .S0(n5941), .S1(n5940));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1903_5.INIT0 = 16'h2d2d;
    defparam add_1903_5.INIT1 = 16'h2d2d;
    defparam add_1903_5.INJECT1_0 = "NO";
    defparam add_1903_5.INJECT1_1 = "NO";
    CCU2D add_1903_3 (.A0(key_sec_pre), .B0(key_sec), .C0(hour_warning[0]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(hour_warning[1]), 
          .D1(GND_net), .CIN(n31615), .COUT(n31616), .S0(n5943), .S1(n5942));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1903_3.INIT0 = 16'hd2d2;
    defparam add_1903_3.INIT1 = 16'h2d2d;
    defparam add_1903_3.INJECT1_0 = "NO";
    defparam add_1903_3.INJECT1_1 = "NO";
    ROM128X1A mux_891_Mux_8 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4029)) /* synthesis initstate=0x000004402C1F86ED93FD012C0000DBFD */ ;
    defparam mux_891_Mux_8.initval = 128'h000004402C1F86ED93FD012C0000DBFD;
    ROM128X1A mux_891_Mux_9 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4028)) /* synthesis initstate=0x0000000070002C120018007C00002418 */ ;
    defparam mux_891_Mux_9.initval = 128'h0000000070002C120018007C00002418;
    ROM128X1A mux_891_Mux_10 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4027)) /* synthesis initstate=0x040DEDAF2500040060B1820C000000B1 */ ;
    defparam mux_891_Mux_10.initval = 128'h040DEDAF2500040060B1820C000000B1;
    ROM128X1A mux_891_Mux_11 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4026)) /* synthesis initstate=0x05020410320D05E4835C2E180000CB5C */ ;
    defparam mux_891_Mux_11.initval = 128'h05020410320D05E4835C2E180000CB5C;
    ROM128X1A mux_891_Mux_12 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4025)) /* synthesis initstate=0x000A0422210044036010022800000410 */ ;
    defparam mux_891_Mux_12.initval = 128'h000A0422210044036010022800000410;
    ROM128X1A mux_891_Mux_13 (.AD0(n37318), .AD1(n37314), .AD2(n2724), 
            .AD3(n37317), .AD4(n2722), .AD5(n2721), .AD6(n2720), .DO0(n4024)) /* synthesis initstate=0x0361048030460C100210105800002210 */ ;
    defparam mux_891_Mux_13.initval = 128'h0361048030460C100210105800002210;
    CCU2D add_1903_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre), .B1(key_sec), .C1(GND_net), .D1(GND_net), 
          .COUT(n31615));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1903_1.INIT0 = 16'hF000;
    defparam add_1903_1.INIT1 = 16'h2222;
    defparam add_1903_1.INJECT1_0 = "NO";
    defparam add_1903_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(hour_warning[3]), .B(hour_warning[2]), .C(hour_warning[1]), 
         .D(hour_warning[0]), .Z(n34)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'heaaa;
    FD1P3JX uart_send_data_i0_i4 (.D(Temp_H[4]), .SP(sys_clk_c_enable_350), 
            .PD(n20647), .CK(sys_clk_c), .Q(uart_send_data[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i4.GSR = "DISABLED";
    FD1P3JX uart_send_data_i0_i5 (.D(Temp_H[5]), .SP(sys_clk_c_enable_350), 
            .PD(n20647), .CK(sys_clk_c), .Q(uart_send_data[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i5.GSR = "DISABLED";
    LUT4 i4_3_lut (.A(music_cnt[1]), .B(n8_adj_1972), .C(n35090), .Z(n34619)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i4_3_lut.init = 16'h0808;
    LUT4 i3_4_lut_adj_271 (.A(music_cnt[4]), .B(music_cnt[3]), .C(n37327), 
         .D(music_cnt[0]), .Z(n8_adj_1972)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_271.init = 16'h8000;
    CCU2D add_122_7 (.A0(warning_time[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31631), .COUT(n31632), .S0(n741), .S1(n740));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(191[22:41])
    defparam add_122_7.INIT0 = 16'h5aaa;
    defparam add_122_7.INIT1 = 16'h5aaa;
    defparam add_122_7.INJECT1_0 = "NO";
    defparam add_122_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_then_2_lut_4_lut (.A(clk_1mhz), .B(n37321), .C(sys_rst_n_c), 
         .D(n37305), .Z(n37474)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_then_2_lut_4_lut.init = 16'h4000;
    LUT4 cnt_1__bdd_3_lut_30690 (.A(cnt_adj_2133[1]), .B(cnt_adj_2133[2]), 
         .C(cnt_adj_2133[0]), .Z(n36947)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam cnt_1__bdd_3_lut_30690.init = 16'h2c2c;
    FD1P3AX sec_t_i0_i4 (.D(n5922), .SP(sys_clk_c_enable_134), .CK(sys_clk_c), 
            .Q(sec_t[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam sec_t_i0_i4.GSR = "ENABLED";
    IB key3_pad (.I(key3), .O(key3_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(7[8:12])
    IB key2_pad (.I(key2), .O(key2_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(6[8:12])
    IB key1_pad (.I(key1), .O(key1_c));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(5[8:12])
    FD1P3AY min_waning_t_i0_i2 (.D(min_warning[2]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(min_waning_t[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i2.GSR = "ENABLED";
    FD1P3AX min_waning_t_i0_i1 (.D(min_warning[1]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(min_waning_t[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam min_waning_t_i0_i1.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i7 (.D(hour_warning[7]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(hour_waning_t[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i7.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i6 (.D(hour_warning[6]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(hour_waning_t[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i6.GSR = "ENABLED";
    FD1P3AX hour_waning_t_i0_i5 (.D(hour_warning[5]), .SP(sys_clk_c_enable_141), 
            .CK(sys_clk_c), .Q(hour_waning_t[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_waning_t_i0_i5.GSR = "ENABLED";
    LUT4 i19_1_lut (.A(key_mode[0]), .Z(n6)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(91[11:24])
    defparam i19_1_lut.init = 16'h5555;
    FD1P3AX hour_t_i0_i1 (.D(n5959), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(hour_t[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i1.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i2 (.D(n5958), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(hour_t[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i2.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i3 (.D(n5957), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(hour_t[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i3.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i4 (.D(n5956), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(hour_t[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i4.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i5 (.D(n5955), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(hour_t[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i5.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i6 (.D(n5954), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(hour_t[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i6.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i7 (.D(n5953), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(hour_t[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam hour_t_i0_i7.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(n7_adj_1961), .B(n37351), .C(n34619), .D(n10), 
         .Z(n34745)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    CCU2D add_122_5 (.A0(warning_time[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31630), .COUT(n31631), .S0(n743), .S1(n742));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(191[22:41])
    defparam add_122_5.INIT0 = 16'h5aaa;
    defparam add_122_5.INIT1 = 16'h5aaa;
    defparam add_122_5.INJECT1_0 = "NO";
    defparam add_122_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_632 (.A(key_mode[0]), .B(key_mode[2]), .Z(n37397)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_rep_632.init = 16'heeee;
    CCU2D add_122_3 (.A0(warning_time[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31629), .COUT(n31630), .S0(n745), .S1(n744));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(191[22:41])
    defparam add_122_3.INIT0 = 16'h5aaa;
    defparam add_122_3.INIT1 = 16'h5aaa;
    defparam add_122_3.INJECT1_0 = "NO";
    defparam add_122_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_548_3_lut (.A(key_mode[0]), .B(key_mode[2]), .C(key_mode[1]), 
         .Z(n37313)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_rep_548_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(key_mode[0]), .B(key_mode[2]), .C(sw1_c), 
         .Z(n4_adj_1958)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_3_lut.init = 16'hefef;
    LUT4 i2_3_lut_rep_471 (.A(sys_clk_c_enable_240), .B(clk_1s), .C(sys_rst_n_c), 
         .Z(sys_clk_c_enable_350)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam i2_3_lut_rep_471.init = 16'h8080;
    CCU2D add_122_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(warning_time[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31629), .S1(n746));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(191[22:41])
    defparam add_122_1.INIT0 = 16'hF000;
    defparam add_122_1.INIT1 = 16'h5555;
    defparam add_122_1.INJECT1_0 = "NO";
    defparam add_122_1.INJECT1_1 = "NO";
    LUT4 i15163_2_lut_4_lut (.A(sys_clk_c_enable_240), .B(clk_1s), .C(sys_rst_n_c), 
         .D(n3582), .Z(n20647)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam i15163_2_lut_4_lut.init = 16'h8000;
    CCU2D equal_2974_16 (.A0(hour[1]), .B0(hour_waning_t[1]), .C0(hour[0]), 
          .D0(hour_waning_t[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31458), .S1(warning_time_7__N_176));
    defparam equal_2974_16.INIT0 = 16'h9009;
    defparam equal_2974_16.INIT1 = 16'hFFFF;
    defparam equal_2974_16.INJECT1_0 = "YES";
    defparam equal_2974_16.INJECT1_1 = "NO";
    CCU2D equal_2974_11 (.A0(min[5]), .B0(min_waning_t[5]), .C0(min[4]), 
          .D0(min_waning_t[4]), .A1(min[3]), .B1(min_waning_t[3]), .C1(min[2]), 
          .D1(min_waning_t[2]), .CIN(n31455), .COUT(n31456));
    defparam equal_2974_11.INIT0 = 16'h9009;
    defparam equal_2974_11.INIT1 = 16'h9009;
    defparam equal_2974_11.INJECT1_0 = "YES";
    defparam equal_2974_11.INJECT1_1 = "YES";
    CCU2D equal_2974_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[7]), .B1(min_waning_t[7]), .C1(min[6]), .D1(min_waning_t[6]), 
          .COUT(n31455));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(188[7:28])
    defparam equal_2974_0.INIT0 = 16'hF000;
    defparam equal_2974_0.INIT1 = 16'h9009;
    defparam equal_2974_0.INJECT1_0 = "NO";
    defparam equal_2974_0.INJECT1_1 = "YES";
    CCU2D equal_2974_15 (.A0(hour[5]), .B0(hour_waning_t[5]), .C0(hour[4]), 
          .D0(hour_waning_t[4]), .A1(hour[3]), .B1(hour_waning_t[3]), 
          .C1(hour[2]), .D1(hour_waning_t[2]), .CIN(n31457), .COUT(n31458));
    defparam equal_2974_15.INIT0 = 16'h9009;
    defparam equal_2974_15.INIT1 = 16'h9009;
    defparam equal_2974_15.INJECT1_0 = "YES";
    defparam equal_2974_15.INJECT1_1 = "YES";
    LUT4 i1_2_lut_rep_633 (.A(key_mode[2]), .B(key_mode[1]), .Z(n37398)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_rep_633.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_272 (.A(key_mode[2]), .B(key_mode[1]), .C(key_mode[0]), 
         .Z(n34627)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_3_lut_adj_272.init = 16'h0404;
    LUT4 min_7__I_0_i8_4_lut (.A(n782), .B(min_t[7]), .C(n37313), .D(n818), 
         .Z(min_7__N_11[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam min_7__I_0_i8_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_458_4_lut (.A(n37308), .B(n52), .C(state[0]), .D(state[1]), 
         .Z(n37223)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(4[8:17])
    defparam i1_2_lut_rep_458_4_lut.init = 16'h3aff;
    LUT4 i1_2_lut_rep_638 (.A(hour_warning[7]), .B(hour_warning[6]), .Z(n37403)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_638.init = 16'heeee;
    LUT4 i29286_2_lut_3_lut (.A(hour_warning[7]), .B(hour_warning[6]), .C(hour_warning[0]), 
         .Z(n34953)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i29286_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_639 (.A(key_mode[2]), .B(key_mode[1]), .Z(n37404)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_rep_639.init = 16'heeee;
    LUT4 i30038_3_lut_4_lut_4_lut (.A(key_mode[2]), .B(key_mode[1]), .C(sw1_c), 
         .D(key_mode[0]), .Z(time_set_N_215)) /* synthesis lut_function=(!(A+(B (C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i30038_3_lut_4_lut_4_lut.init = 16'h1115;
    CCU2D add_1912_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5303), .B1(n37402), .C1(GND_net), .D1(GND_net), .COUT(n31607));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1912_1.INIT0 = 16'hF000;
    defparam add_1912_1.INIT1 = 16'heeee;
    defparam add_1912_1.INJECT1_0 = "NO";
    defparam add_1912_1.INJECT1_1 = "NO";
    CCU2D add_1912_9 (.A0(n5303), .B0(n37402), .C0(n5383), .D0(hour_t[6]), 
          .A1(n5303), .B1(n37402), .C1(n5382), .D1(hour_t[7]), .CIN(n31610), 
          .S0(n5954), .S1(n5953));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1912_9.INIT0 = 16'he4b1;
    defparam add_1912_9.INIT1 = 16'he4b1;
    defparam add_1912_9.INJECT1_0 = "NO";
    defparam add_1912_9.INJECT1_1 = "NO";
    LUT4 sec_7__I_0_i1_4_lut (.A(n799), .B(sec_t[0]), .C(n37313), .D(n32080), 
         .Z(sec_7__N_1[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i1_4_lut.init = 16'hc0ca;
    LUT4 min_7__I_0_i7_4_lut (.A(n783), .B(min_t[6]), .C(n37313), .D(n818), 
         .Z(min_7__N_11[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam min_7__I_0_i7_4_lut.init = 16'hc0ca;
    FD1P3JX uart_send_data_i0_i6 (.D(Temp_H[6]), .SP(sys_clk_c_enable_350), 
            .PD(n20647), .CK(sys_clk_c), .Q(uart_send_data[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i6.GSR = "DISABLED";
    LUT4 i2_3_lut (.A(sec[7]), .B(sec[6]), .C(n18049), .Z(n32080)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut (.A(cnt_adj_2133[0]), .B(cnt_adj_2133[1]), .C(cnt_adj_2133[2]), 
         .D(cnt_adj_2133[3]), .Z(n4_adj_1967)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfe00;
    LUT4 i1_2_lut_4_lut (.A(n93), .B(cnt_run[3]), .C(n37284), .D(n17), 
         .Z(n34666)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(36[11:18])
    defparam i1_2_lut_4_lut.init = 16'h0002;
    LUT4 i3_4_lut_adj_273 (.A(n6_adj_1949), .B(sec[5]), .C(sec[4]), .D(sec[3]), 
         .Z(n18049)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_273.init = 16'h8000;
    LUT4 i3532_3_lut (.A(sec[0]), .B(sec[2]), .C(sec[1]), .Z(n6_adj_1949)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i3532_3_lut.init = 16'hecec;
    LUT4 min_7__I_0_i6_4_lut (.A(n784), .B(min_t[5]), .C(n37313), .D(n818), 
         .Z(min_7__N_11[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam min_7__I_0_i6_4_lut.init = 16'hc0ca;
    FD1P3IX key_mode_2976__i1 (.D(n19), .SP(key1_pulse), .CD(n30619), 
            .CK(sys_clk_c), .Q(key_mode[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam key_mode_2976__i1.GSR = "ENABLED";
    FD1P3IX key_mode_2976__i2 (.D(n18), .SP(key1_pulse), .CD(n30619), 
            .CK(sys_clk_c), .Q(key_mode[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam key_mode_2976__i2.GSR = "ENABLED";
    FD1P3IX uart_en_189 (.D(n39002), .SP(sys_clk_c_enable_240), .CD(n20604), 
            .CK(sys_clk_c), .Q(uart_en));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_en_189.GSR = "ENABLED";
    FD1P3IX hour_i1 (.D(hour_t[1]), .SP(clk_1s_enable_16), .CD(n25211), 
            .CK(clk_1s), .Q(hour[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i1.GSR = "ENABLED";
    FD1P3IX hour_i2 (.D(hour_t[2]), .SP(clk_1s_enable_16), .CD(n25211), 
            .CK(clk_1s), .Q(hour[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i2.GSR = "ENABLED";
    FD1P3IX hour_i3 (.D(hour_t[3]), .SP(clk_1s_enable_16), .CD(n25211), 
            .CK(clk_1s), .Q(hour[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i3.GSR = "ENABLED";
    FD1P3IX hour_i4 (.D(hour_t[4]), .SP(clk_1s_enable_16), .CD(n25211), 
            .CK(clk_1s), .Q(hour[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i4.GSR = "ENABLED";
    FD1P3IX hour_i5 (.D(hour_t[5]), .SP(clk_1s_enable_16), .CD(n25211), 
            .CK(clk_1s), .Q(hour[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i5.GSR = "ENABLED";
    FD1P3IX hour_i6 (.D(hour_t[6]), .SP(clk_1s_enable_16), .CD(n25211), 
            .CK(clk_1s), .Q(hour[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i6.GSR = "ENABLED";
    CCU2D equal_2974_13 (.A0(min[1]), .B0(min_waning_t[1]), .C0(min[0]), 
          .D0(min_waning_t[0]), .A1(hour[7]), .B1(hour_waning_t[7]), .C1(hour[6]), 
          .D1(hour_waning_t[6]), .CIN(n31456), .COUT(n31457));
    defparam equal_2974_13.INIT0 = 16'h9009;
    defparam equal_2974_13.INIT1 = 16'h9009;
    defparam equal_2974_13.INJECT1_0 = "YES";
    defparam equal_2974_13.INJECT1_1 = "YES";
    LUT4 i1_4_lut_adj_274 (.A(n37275), .B(n37319), .C(n34627), .D(n4_adj_1948), 
         .Z(n5252)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_274.init = 16'h5111;
    FD1P3IX hour_i7 (.D(hour_t[7]), .SP(clk_1s_enable_16), .CD(n25211), 
            .CK(clk_1s), .Q(hour[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(206[12] 224[6])
    defparam hour_i7.GSR = "ENABLED";
    LUT4 i15_4_lut (.A(n80), .B(n3686), .C(state_adj_2156[1]), .D(n4_adj_1973), 
         .Z(sys_clk_c_enable_28)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(36[11:18])
    defparam i15_4_lut.init = 16'hc505;
    LUT4 min_7__I_0_i1_4_lut (.A(n789), .B(min_t[0]), .C(n37313), .D(n818), 
         .Z(min_7__N_11[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam min_7__I_0_i1_4_lut.init = 16'hc0ca;
    LUT4 i12_4_lut (.A(uart_music_mode), .B(n124), .C(warning), .D(n70), 
         .Z(n34226)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i12_4_lut.init = 16'hc505;
    LUT4 i13_4_lut (.A(uart_music_mode), .B(n125), .C(warning), .D(n70), 
         .Z(n34214)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i13_4_lut.init = 16'hc505;
    LUT4 i2_3_lut_rep_495 (.A(n34512), .B(state_adj_2156[1]), .C(state_adj_2156[0]), 
         .Z(sys_clk_c_enable_368)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam i2_3_lut_rep_495.init = 16'h0808;
    LUT4 i2_4_lut (.A(min[7]), .B(min[6]), .C(n5), .D(n6_adj_1975), 
         .Z(n818)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hfeee;
    LUT4 i1_4_lut_adj_275 (.A(min[0]), .B(min[4]), .C(min[2]), .D(min[1]), 
         .Z(n5)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_275.init = 16'hc8c0;
    LUT4 i2_2_lut (.A(min[5]), .B(min[3]), .Z(n6_adj_1975)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i15183_2_lut_rep_472_4_lut (.A(n34512), .B(state_adj_2156[1]), 
         .C(state_adj_2156[0]), .D(n32322), .Z(sys_clk_c_enable_302)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam i15183_2_lut_rep_472_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_rep_646 (.A(clk_1mhz), .B(n37321), .C(sys_rst_n_c), 
         .Z(n38985)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_646.init = 16'h4040;
    LUT4 i1_4_lut_adj_276 (.A(sw1_c), .B(n35120), .C(n23), .D(n34623), 
         .Z(n4_adj_1948)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_276.init = 16'h5150;
    LUT4 i29450_4_lut (.A(min_t[6]), .B(n35072), .C(n34915), .D(min_t[5]), 
         .Z(n35120)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29450_4_lut.init = 16'hfffe;
    LUT4 i20656_4_lut (.A(min_warning[2]), .B(n8541), .C(n5975), .D(sys_clk_c_enable_27), 
         .Z(n20)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i20656_4_lut.init = 16'h3022;
    LUT4 i1_4_lut_adj_277 (.A(n37402), .B(min_t[7]), .C(min_t[6]), .D(n31897), 
         .Z(n23)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_277.init = 16'haaa8;
    LUT4 i2_4_lut_adj_278 (.A(hour[7]), .B(n8), .C(n37384), .D(hour[4]), 
         .Z(n837)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_278.init = 16'hfefa;
    LUT4 i29402_4_lut (.A(min_t[2]), .B(min_t[4]), .C(min_t[0]), .D(min_t[7]), 
         .Z(n35072)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29402_4_lut.init = 16'hfffe;
    LUT4 i3525_4_lut (.A(hour[2]), .B(hour[3]), .C(hour[1]), .D(hour[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i3525_4_lut.init = 16'heccc;
    LUT4 i29249_2_lut (.A(min_t[3]), .B(min_t[1]), .Z(n34915)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29249_2_lut.init = 16'heeee;
    LUT4 i29928_4_lut (.A(n37242), .B(rx_flag), .C(n31_adj_1955), .D(n37303), 
         .Z(sys_clk_c_enable_47)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam i29928_4_lut.init = 16'h3f3b;
    LUT4 i1_4_lut_adj_279 (.A(key1_pulse), .B(key_mode[2]), .C(n27), .D(key_mode[1]), 
         .Z(n30619)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i1_4_lut_adj_279.init = 16'ha888;
    LUT4 i1_2_lut (.A(sw1_c), .B(key_mode[0]), .Z(n27)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i26162_2_lut (.A(key_mode[1]), .B(key_mode[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i26162_2_lut.init = 16'h6666;
    LUT4 cnt_0__bdd_3_lut_30484_4_lut (.A(cnt_adj_2133[1]), .B(cnt_adj_2133[2]), 
         .C(cnt_adj_2133[4]), .D(cnt_adj_2133[0]), .Z(n36096)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam cnt_0__bdd_3_lut_30484_4_lut.init = 16'h001e;
    LUT4 i26169_3_lut (.A(key_mode[2]), .B(key_mode[1]), .C(key_mode[0]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i26169_3_lut.init = 16'h6a6a;
    LUT4 i1_3_lut_4_lut_adj_280 (.A(n37319), .B(n37313), .C(n34532), .D(key1_pulse), 
         .Z(n5201)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_280.init = 16'h00f1;
    LUT4 i29651_3_lut (.A(n139), .B(cnt_run[0]), .C(n37258), .Z(n34172)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(36[11:18])
    defparam i29651_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_281 (.A(n38985), .B(n62_adj_1979), .C(n37305), .D(state_back_2__N_516[2]), 
         .Z(sys_clk_c_enable_265)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_281.init = 16'ha088;
    LUT4 i1_4_lut_adj_282 (.A(n37247), .B(n4_adj_1970), .C(n65), .D(n37243), 
         .Z(n62_adj_1979)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_282.init = 16'ha8a0;
    LUT4 n11051_bdd_3_lut_30239_4_lut (.A(cnt_adj_2133[1]), .B(cnt_adj_2133[2]), 
         .C(cnt_adj_2133[3]), .D(cnt_adj_2133[0]), .Z(n36155)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam n11051_bdd_3_lut_30239_4_lut.init = 16'h001f;
    LUT4 i3_4_lut_adj_283 (.A(min_t[5]), .B(min_t[3]), .C(min_t[4]), .D(n32), 
         .Z(n31897)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_283.init = 16'h8000;
    LUT4 i54_3_lut (.A(uart_music_mode), .B(n70), .C(warning), .Z(n51)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(72[10:17])
    defparam i54_3_lut.init = 16'hc5c5;
    LUT4 min_7__I_0_i5_4_lut (.A(n785), .B(min_t[4]), .C(n37313), .D(n818), 
         .Z(min_7__N_11[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam min_7__I_0_i5_4_lut.init = 16'hc0ca;
    LUT4 i1_3_lut (.A(min_t[2]), .B(min_t[1]), .C(min_t[0]), .Z(n32)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut.init = 16'heaea;
    KEY_U0 key_2 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre), .key_sec(key_sec), 
           .key2_c(key2_c), .n37402(n37402), .key_sec_adj_13(key_sec_adj_1937), 
           .key_sec_pre_adj_14(key_sec_pre_adj_1936), .n37319(n37319), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(47[6] 52[3])
    LUT4 min_7__I_0_i4_4_lut (.A(n786), .B(min_t[3]), .C(n37313), .D(n818), 
         .Z(min_7__N_11[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam min_7__I_0_i4_4_lut.init = 16'hc0ca;
    CCU2D add_1894_9 (.A0(n5201), .B0(n37402), .C0(n5373), .D0(sec_t[6]), 
          .A1(n5201), .B1(n37402), .C1(n5372), .D1(sec_t[7]), .CIN(n31826), 
          .S0(n5920), .S1(n5919));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1894_9.INIT0 = 16'he4b1;
    defparam add_1894_9.INIT1 = 16'he4b1;
    defparam add_1894_9.INJECT1_0 = "NO";
    defparam add_1894_9.INJECT1_1 = "NO";
    LUT4 min_7__I_0_i3_4_lut (.A(n787), .B(min_t[2]), .C(n37313), .D(n818), 
         .Z(min_7__N_11[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam min_7__I_0_i3_4_lut.init = 16'hc0ca;
    CCU2D add_1894_7 (.A0(n5201), .B0(n37402), .C0(n5375), .D0(sec_t[4]), 
          .A1(n5201), .B1(n37402), .C1(n5374), .D1(sec_t[5]), .CIN(n31825), 
          .COUT(n31826), .S0(n5922), .S1(n5921));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1894_7.INIT0 = 16'he4b1;
    defparam add_1894_7.INIT1 = 16'he4b1;
    defparam add_1894_7.INJECT1_0 = "NO";
    defparam add_1894_7.INJECT1_1 = "NO";
    CCU2D add_1894_5 (.A0(n5201), .B0(n37402), .C0(n5377), .D0(sec_t[2]), 
          .A1(n5201), .B1(n37402), .C1(n5376), .D1(sec_t[3]), .CIN(n31824), 
          .COUT(n31825), .S0(n5924), .S1(n5923));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1894_5.INIT0 = 16'he4b1;
    defparam add_1894_5.INIT1 = 16'he4b1;
    defparam add_1894_5.INJECT1_0 = "NO";
    defparam add_1894_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_284 (.A(sys_rst_n_c), .B(n80), .C(state_adj_2156[1]), 
         .Z(sys_clk_c_enable_34)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(36[11:18])
    defparam i2_3_lut_adj_284.init = 16'h0202;
    LUT4 i29950_4_lut_4_lut (.A(n37319), .B(key1_pulse), .C(n4_adj_1958), 
         .D(key_mode[1]), .Z(sys_clk_c_enable_27)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i29950_4_lut_4_lut.init = 16'h0200;
    LUT4 i1_4_lut_adj_285 (.A(n37275), .B(n37319), .C(n58), .D(n4_adj_1946), 
         .Z(n5303)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_285.init = 16'h5111;
    LUT4 i1_4_lut_adj_286 (.A(n37402), .B(n35122), .C(n50), .D(n34623), 
         .Z(n58)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i1_4_lut_adj_286.init = 16'hb3a0;
    LUT4 min_7__I_0_i2_4_lut (.A(n788), .B(min_t[1]), .C(n37313), .D(n818), 
         .Z(min_7__N_11[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam min_7__I_0_i2_4_lut.init = 16'hc0ca;
    LUT4 i29452_4_lut (.A(hour_t[6]), .B(n35078), .C(n34937), .D(hour_t[3]), 
         .Z(n35122)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29452_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_287 (.A(n11_adj_1953), .B(n37263), .C(cnt_scan[3]), 
         .D(n18926), .Z(n34483)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut_adj_287.init = 16'hfffb;
    LUT4 i3_4_lut_adj_288 (.A(hour_t[6]), .B(hour_t[5]), .C(hour_t[7]), 
         .D(n62), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_288.init = 16'hfffe;
    LUT4 i2_4_lut_adj_289 (.A(n85), .B(key_mode[1]), .C(n82), .D(n37372), 
         .Z(n34532)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_289.init = 16'h8000;
    LUT4 i1_4_lut_adj_290 (.A(n35124), .B(n37402), .C(n34623), .D(n73), 
         .Z(n85)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_290.init = 16'hdc50;
    LUT4 i29454_4_lut (.A(sec_t[6]), .B(n35082), .C(n34947), .D(sec_t[5]), 
         .Z(n35124)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29454_4_lut.init = 16'hfffe;
    CCU2D add_1894_3 (.A0(n37402), .B0(n5201), .C0(n5379), .D0(sec_t[0]), 
          .A1(n5201), .B1(n37402), .C1(n5378), .D1(sec_t[1]), .CIN(n31823), 
          .COUT(n31824), .S0(n5926), .S1(n5925));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1894_3.INIT0 = 16'hd1e2;
    defparam add_1894_3.INIT1 = 16'he4b1;
    defparam add_1894_3.INJECT1_0 = "NO";
    defparam add_1894_3.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_291 (.A(sec_t[5]), .B(n4_adj_1968), .C(n6_adj_1969), 
         .D(sec_t[3]), .Z(n73)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i2_4_lut_adj_291.init = 16'heccc;
    LUT4 i29412_4_lut (.A(sec_t[2]), .B(sec_t[4]), .C(sec_t[0]), .D(sec_t[7]), 
         .Z(n35082)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29412_4_lut.init = 16'hfffe;
    LUT4 i29281_2_lut (.A(sec_t[3]), .B(sec_t[1]), .Z(n34947)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29281_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_292 (.A(sec_t[6]), .B(sec_t[7]), .Z(n4_adj_1968)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_292.init = 16'heeee;
    LUT4 i2_4_lut_adj_293 (.A(sec_t[4]), .B(sec_t[2]), .C(sec_t[1]), .D(sec_t[0]), 
         .Z(n6_adj_1969)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_293.init = 16'ha888;
    LUT4 i29408_4_lut (.A(hour_t[1]), .B(hour_t[7]), .C(hour_t[2]), .D(hour_t[5]), 
         .Z(n35078)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29408_4_lut.init = 16'hfffe;
    LUT4 i29271_2_lut (.A(hour_t[0]), .B(hour_t[4]), .Z(n34937)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29271_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_294 (.A(hour_t[4]), .B(hour_t[3]), .C(hour_t[2]), 
         .D(n4), .Z(n62)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_294.init = 16'ha888;
    LUT4 i1_2_lut_adj_295 (.A(hour_t[0]), .B(hour_t[1]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_295.init = 16'h8888;
    CCU2D add_1894_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5201), .B1(n37402), .C1(GND_net), .D1(GND_net), .COUT(n31823));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1894_1.INIT0 = 16'hF000;
    defparam add_1894_1.INIT1 = 16'heeee;
    defparam add_1894_1.INJECT1_0 = "NO";
    defparam add_1894_1.INJECT1_1 = "NO";
    CCU2D add_1885_9 (.A0(n5252), .B0(n37402), .C0(n5363), .D0(min_t[6]), 
          .A1(n5252), .B1(n37402), .C1(n5362), .D1(min_t[7]), .CIN(n31818), 
          .S0(n5903), .S1(n5902));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1885_9.INIT0 = 16'he4b1;
    defparam add_1885_9.INIT1 = 16'he4b1;
    defparam add_1885_9.INJECT1_0 = "NO";
    defparam add_1885_9.INJECT1_1 = "NO";
    CCU2D add_1885_7 (.A0(n5252), .B0(n37402), .C0(n5365), .D0(min_t[4]), 
          .A1(n5252), .B1(n37402), .C1(n5364), .D1(min_t[5]), .CIN(n31817), 
          .COUT(n31818), .S0(n5905), .S1(n5904));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1885_7.INIT0 = 16'he4b1;
    defparam add_1885_7.INIT1 = 16'he4b1;
    defparam add_1885_7.INJECT1_0 = "NO";
    defparam add_1885_7.INJECT1_1 = "NO";
    CCU2D add_1885_5 (.A0(n5252), .B0(n37402), .C0(n5367), .D0(min_t[2]), 
          .A1(n5252), .B1(n37402), .C1(n5366), .D1(min_t[3]), .CIN(n31816), 
          .COUT(n31817), .S0(n5907), .S1(n5906));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1885_5.INIT0 = 16'he4b1;
    defparam add_1885_5.INIT1 = 16'he4b1;
    defparam add_1885_5.INJECT1_0 = "NO";
    defparam add_1885_5.INJECT1_1 = "NO";
    CCU2D add_1885_3 (.A0(n37402), .B0(n5252), .C0(n5369), .D0(min_t[0]), 
          .A1(n5252), .B1(n37402), .C1(n5368), .D1(min_t[1]), .CIN(n31815), 
          .COUT(n31816), .S0(n5909), .S1(n5908));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1885_3.INIT0 = 16'hd1e2;
    defparam add_1885_3.INIT1 = 16'he4b1;
    defparam add_1885_3.INJECT1_0 = "NO";
    defparam add_1885_3.INJECT1_1 = "NO";
    CCU2D add_1885_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5252), .B1(n37402), .C1(GND_net), .D1(GND_net), .COUT(n31815));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1885_1.INIT0 = 16'hF000;
    defparam add_1885_1.INIT1 = 16'heeee;
    defparam add_1885_1.INJECT1_0 = "NO";
    defparam add_1885_1.INJECT1_1 = "NO";
    LUT4 i3197_1_lut (.A(warning_time_7__N_176), .Z(n8535)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(188[7:28])
    defparam i3197_1_lut.init = 16'h5555;
    LUT4 i29895_2_lut_2_lut (.A(warning_time_7__N_176), .B(warning_N_213), 
         .Z(clk_1s_enable_9)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i29895_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut_adj_296 (.A(n38985), .B(n37222), .C(n37305), .D(state_back_2__N_516[2]), 
         .Z(sys_clk_c_enable_346)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(4[8:17])
    defparam i1_4_lut_adj_296.init = 16'ha088;
    PFUMX mux_3192_i4 (.BLUT(n8447), .ALUT(n8451), .C0(sw1_c), .Z(n7455));
    PFUMX mux_3192_i3 (.BLUT(n4_adj_1947), .ALUT(n4_adj_1960), .C0(sw1_c), 
          .Z(n19396));
    LUT4 i2_3_lut_rep_488_4_lut (.A(cnt_run[5]), .B(n37338), .C(cnt_run[3]), 
         .D(n93), .Z(n37253)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_rep_488_4_lut.init = 16'h0100;
    PFUMX mux_3193_i4 (.BLUT(n8456), .ALUT(n8460), .C0(sw1_c), .Z(n7445));
    PFUMX mux_3193_i3 (.BLUT(n4_adj_1956), .ALUT(n4_adj_1978), .C0(sw1_c), 
          .Z(n19393));
    LUT4 i29984_3_lut_4_lut (.A(clk_1mhz), .B(n37321), .C(n36897), .D(state_back_2__N_516[2]), 
         .Z(sys_clk_c_enable_330)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29984_3_lut_4_lut.init = 16'h4404;
    LUT4 i11397_2_lut_rep_489_3_lut (.A(clk_1mhz), .B(n37321), .C(state_back_2__N_516[2]), 
         .Z(n37254)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i11397_2_lut_rep_489_3_lut.init = 16'hfbfb;
    LUT4 i29931_2_lut_3_lut_4_lut (.A(clk_1mhz), .B(n37321), .C(state[1]), 
         .D(state_back_2__N_516[2]), .Z(sys_clk_c_enable_316)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29931_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_466_3_lut_4_lut (.A(clk_1mhz), .B(n37321), .C(cnt_read[0]), 
         .D(sys_rst_n_c), .Z(n37231)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_466_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_3_lut_4_lut (.A(clk_1mhz), .B(n37321), .C(state_back_2__N_516[2]), 
         .D(sys_rst_n_c), .Z(n34690)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i29981_2_lut_3_lut_4_lut (.A(clk_1mhz), .B(n37321), .C(n35461), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_296)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29981_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i29970_2_lut_rep_480_3_lut_4_lut (.A(clk_1mhz), .B(n37321), .C(state[0]), 
         .D(state_back_2__N_516[2]), .Z(sys_clk_c_enable_243)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29970_2_lut_rep_480_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_297 (.A(state_adj_2156[1]), .B(state_adj_2156[0]), 
         .C(n3686), .D(state_back_adj_2157[0]), .Z(n31)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(41[11:16])
    defparam i1_4_lut_adj_297.init = 16'h3313;
    LUT4 i1121_2_lut (.A(uart_en_N_225), .B(warning_TEM), .Z(n3582)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(331[10] 337[8])
    defparam i1121_2_lut.init = 16'h8888;
    LUT4 i2632_4_lut (.A(n7_adj_1963), .B(warning_TEM), .C(uart_en_N_225), 
         .D(n8_adj_1962), .Z(sys_clk_c_enable_240)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(331[10] 337[8])
    defparam i2632_4_lut.init = 16'hcfca;
    LUT4 i2_2_lut_adj_298 (.A(warning_time[0]), .B(warning_time[2]), .Z(n7_adj_1963)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(332[9:21])
    defparam i2_2_lut_adj_298.init = 16'heeee;
    LUT4 i3_3_lut (.A(n34470), .B(warning_time[1]), .C(warning_time[3]), 
         .Z(n8_adj_1962)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(332[9:21])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_adj_299 (.A(Temp_H[6]), .B(Temp_H[5]), .C(Temp_H[4]), 
         .D(n4_adj_1976), .Z(uart_en_N_225)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_299.init = 16'hfeee;
    LUT4 i1_2_lut_adj_300 (.A(Temp_H[3]), .B(Temp_H[2]), .Z(n4_adj_1976)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_300.init = 16'h8888;
    CCU2D add_1921_9 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[6]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[7]), 
          .D1(GND_net), .CIN(n31810), .S0(n5971), .S1(n5970));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1921_9.INIT0 = 16'h2d2d;
    defparam add_1921_9.INIT1 = 16'h2d2d;
    defparam add_1921_9.INJECT1_0 = "NO";
    defparam add_1921_9.INJECT1_1 = "NO";
    LUT4 i94_4_lut (.A(n37293), .B(cnt_run[0]), .C(state_adj_2156[0]), 
         .D(n37258), .Z(n80)) /* synthesis lut_function=((B (C (D))+!B (C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(36[11:18])
    defparam i94_4_lut.init = 16'hf575;
    LUT4 sec_7__I_0_i5_4_lut (.A(n795), .B(sec_t[4]), .C(n37313), .D(n32080), 
         .Z(sec_7__N_1[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i5_4_lut.init = 16'hc0ca;
    CCU2D add_1921_7 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[4]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[5]), 
          .D1(GND_net), .CIN(n31809), .COUT(n31810), .S0(n5973), .S1(n5972));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1921_7.INIT0 = 16'h2d2d;
    defparam add_1921_7.INIT1 = 16'h2d2d;
    defparam add_1921_7.INJECT1_0 = "NO";
    defparam add_1921_7.INJECT1_1 = "NO";
    CCU2D add_1921_5 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[2]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[3]), 
          .D1(GND_net), .CIN(n31808), .COUT(n31809), .S0(n5975), .S1(n5974));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1921_5.INIT0 = 16'h2d2d;
    defparam add_1921_5.INIT1 = 16'h2d2d;
    defparam add_1921_5.INJECT1_0 = "NO";
    defparam add_1921_5.INJECT1_1 = "NO";
    LUT4 mux_3193_i2_3_lut (.A(hundres_0__N_350_adj_2033[3]), .B(hundres_0__N_350_adj_2059[3]), 
         .C(sw1_c), .Z(n11620)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(111[119:149])
    defparam mux_3193_i2_3_lut.init = 16'hcaca;
    CCU2D add_1921_3 (.A0(key_sec_pre), .B0(key_sec), .C0(min_warning[0]), 
          .D0(GND_net), .A1(key_sec_pre), .B1(key_sec), .C1(min_warning[1]), 
          .D1(GND_net), .CIN(n31807), .COUT(n31808), .S0(n5977), .S1(n5976));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1921_3.INIT0 = 16'hd2d2;
    defparam add_1921_3.INIT1 = 16'h2d2d;
    defparam add_1921_3.INJECT1_0 = "NO";
    defparam add_1921_3.INJECT1_1 = "NO";
    LUT4 sec_7__I_0_i6_4_lut (.A(n794), .B(sec_t[5]), .C(n37313), .D(n32080), 
         .Z(sec_7__N_1[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i6_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i7_4_lut (.A(n793), .B(sec_t[6]), .C(n37313), .D(n32080), 
         .Z(sec_7__N_1[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i7_4_lut.init = 16'hc0ca;
    LUT4 cnt_0__bdd_3_lut_30648 (.A(cnt_adj_2133[0]), .B(cnt_adj_2133[1]), 
         .C(cnt_adj_2133[2]), .Z(n36703)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam cnt_0__bdd_3_lut_30648.init = 16'h4040;
    LUT4 cnt_0__bdd_4_lut_30647 (.A(cnt_adj_2133[0]), .B(cnt_adj_2133[3]), 
         .C(cnt_adj_2133[1]), .D(cnt_adj_2133[2]), .Z(n36702)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_30647.init = 16'h0311;
    LUT4 sec_7__I_0_i8_4_lut (.A(n792), .B(sec_t[7]), .C(n37313), .D(n32080), 
         .Z(sec_7__N_1[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i8_4_lut.init = 16'hc0ca;
    CCU2D add_1921_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre), .B1(key_sec), .C1(GND_net), .D1(GND_net), 
          .COUT(n31807));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1921_1.INIT0 = 16'hF000;
    defparam add_1921_1.INIT1 = 16'h2222;
    defparam add_1921_1.INJECT1_0 = "NO";
    defparam add_1921_1.INJECT1_1 = "NO";
    LUT4 i29946_4_lut (.A(n37319), .B(n37404), .C(sw1_c), .D(key_mode[0]), 
         .Z(n35427)) /* synthesis lut_function=(!(A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam i29946_4_lut.init = 16'h7555;
    PFUMX mux_3193_i1 (.BLUT(hour_tens[0]), .ALUT(hour_warning_tens[0]), 
          .C0(sw1_c), .Z(n7448));
    LUT4 hour_7__I_0_i1_3_lut_4_lut (.A(key_mode[1]), .B(n37397), .C(hour_t[0]), 
         .D(n837), .Z(hour_7__N_19[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam hour_7__I_0_i1_3_lut_4_lut.init = 16'he0f1;
    LUT4 i1_2_lut_rep_483_3_lut_4_lut (.A(key_mode[1]), .B(n37397), .C(n37319), 
         .D(key1_pulse), .Z(n37248)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_rep_483_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(n37397), .C(n837), 
         .D(n818), .Z(clk_1s_enable_16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_301 (.A(cnt_run[7]), .B(n34512), .C(n37253), .D(n6_adj_1974), 
         .Z(sys_clk_c_enable_354)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam i4_4_lut_adj_301.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_302 (.A(key_mode[1]), .B(n37397), .C(n837), 
         .D(n818), .Z(n25211)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_2_lut_3_lut_4_lut_adj_302.init = 16'h1110;
    LUT4 i29979_2_lut_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(n37397), .C(key1_pulse), 
         .D(n37319), .Z(sys_clk_c_enable_141)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i29979_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_rep_510_4_lut (.A(key_mode[1]), .B(n37397), .C(n37319), 
         .D(key1_pulse), .Z(n37275)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i1_3_lut_rep_510_4_lut.init = 16'hff0e;
    LUT4 mux_3192_i2_3_lut (.A(hundres_0__N_350_adj_2007[3]), .B(hundres_0__N_350_adj_2085[3]), 
         .C(sw1_c), .Z(n14554)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(113[119:148])
    defparam mux_3192_i2_3_lut.init = 16'hcaca;
    LUT4 mux_282_Mux_5_i15_4_lut_4_lut (.A(cnt_adj_2133[0]), .B(n37365), 
         .C(cnt_adj_2133[4]), .D(cnt_adj_2133[3]), .Z(n15)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!((D)+!C)))) */ ;
    defparam mux_282_Mux_5_i15_4_lut_4_lut.init = 16'h1303;
    LUT4 i5663_2_lut_rep_600 (.A(cnt_adj_2133[1]), .B(cnt_adj_2133[2]), 
         .Z(n37365)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam i5663_2_lut_rep_600.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_303 (.A(n37270), .B(n37246), .C(state[1]), 
         .D(n34690), .Z(n32206)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(4[8:17])
    defparam i1_2_lut_4_lut_adj_303.init = 16'hca00;
    LUT4 n12_bdd_4_lut_4_lut_then_4_lut (.A(cnt_adj_2133[4]), .B(cnt_adj_2133[1]), 
         .C(cnt_adj_2133[2]), .D(cnt_adj_2133[3]), .Z(n37417)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam n12_bdd_4_lut_4_lut_then_4_lut.init = 16'h0082;
    LUT4 i1_2_lut_3_lut_4_lut_adj_304 (.A(n37402), .B(n37401), .C(n37397), 
         .D(key_mode[1]), .Z(n82)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_304.init = 16'heeef;
    LUT4 i1_3_lut_4_lut_adj_305 (.A(n37402), .B(n37401), .C(key1_pulse), 
         .D(sw1_c), .Z(n34721)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_305.init = 16'h0e00;
    LUT4 i29947_2_lut_3_lut_4_lut (.A(n37402), .B(n37401), .C(n35427), 
         .D(key1_pulse), .Z(sys_clk_c_enable_79)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i29947_2_lut_3_lut_4_lut.init = 16'h00e0;
    LUT4 sec_7__I_0_i4_4_lut (.A(n796), .B(sec_t[3]), .C(n37313), .D(n32080), 
         .Z(sec_7__N_1[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i4_4_lut.init = 16'hc0ca;
    LUT4 i20648_4_lut (.A(min_warning[0]), .B(n8541), .C(n5977), .D(sys_clk_c_enable_27), 
         .Z(n24)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i20648_4_lut.init = 16'h3022;
    LUT4 sec_7__I_0_i3_4_lut (.A(n797), .B(sec_t[2]), .C(n37313), .D(n32080), 
         .Z(sec_7__N_1[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i3_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i2_4_lut (.A(n798), .B(sec_t[1]), .C(n37313), .D(n32080), 
         .Z(sec_7__N_1[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(211[14] 223[8])
    defparam sec_7__I_0_i2_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_adj_306 (.A(cnt_run[1]), .B(cnt_run[0]), .Z(n93)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(36[11:18])
    defparam i1_2_lut_adj_306.init = 16'h2222;
    LUT4 i3_4_lut_adj_307 (.A(n34721), .B(n37397), .C(n34627), .D(n4_adj_1971), 
         .Z(n8541)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i3_4_lut_adj_307.init = 16'h2000;
    LUT4 i29273_2_lut_rep_562 (.A(music_cnt[2]), .B(music_cnt[6]), .Z(n37327)) /* synthesis lut_function=(A (B)) */ ;
    defparam i29273_2_lut_rep_562.init = 16'h8888;
    LUT4 i7_3_lut_4_lut (.A(music_cnt[2]), .B(music_cnt[6]), .C(cnt_run[3]), 
         .D(music_cnt[4]), .Z(n19_adj_1965)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_308 (.A(n11), .B(key_mode[1]), .C(n42), .D(n35066), 
         .Z(n4_adj_1971)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_308.init = 16'hc0c8;
    LUT4 i5_4_lut (.A(n34721), .B(key_mode[0]), .C(n12), .D(n37404), 
         .Z(n8537)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i5_4_lut.init = 16'h0080;
    LUT4 i4_3_lut_adj_309 (.A(n34623), .B(min_warning[5]), .C(min_warning[2]), 
         .Z(n11)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i4_3_lut_adj_309.init = 16'h0202;
    LUT4 i1_4_lut_adj_310 (.A(n37402), .B(min_warning[7]), .C(n26), .D(min_warning[6]), 
         .Z(n42)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_310.init = 16'haaa8;
    LUT4 i29396_4_lut (.A(min_warning[3]), .B(min_warning[4]), .C(min_warning[1]), 
         .D(n34874), .Z(n35066)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29396_4_lut.init = 16'hfffe;
    LUT4 i124_2_lut_rep_573 (.A(cnt_run[2]), .B(cnt_run[4]), .Z(n37338)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i124_2_lut_rep_573.init = 16'heeee;
    LUT4 i126_2_lut_rep_519_3_lut (.A(cnt_run[2]), .B(cnt_run[4]), .C(cnt_run[5]), 
         .Z(n37284)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i126_2_lut_rep_519_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_311 (.A(cnt_run[2]), .B(cnt_run[4]), .C(cnt_run[5]), 
         .Z(n4_adj_1977)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_311.init = 16'h1010;
    LUT4 i5693_3_lut_3_lut (.A(cnt_adj_2133[0]), .B(cnt_adj_2133[1]), .C(cnt_adj_2133[2]), 
         .Z(n11094)) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam i5693_3_lut_3_lut.init = 16'hd1d1;
    LUT4 n12_bdd_4_lut_4_lut_else_4_lut (.A(cnt_adj_2133[4]), .B(cnt_adj_2133[1]), 
         .C(cnt_adj_2133[2]), .D(cnt_adj_2133[3]), .Z(n37416)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B+(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam n12_bdd_4_lut_4_lut_else_4_lut.init = 16'h547e;
    LUT4 i30015_3_lut_3_lut_4_lut (.A(key_mode[0]), .B(n37249), .C(n37404), 
         .D(n37248), .Z(sys_clk_c_enable_154)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam i30015_3_lut_3_lut_4_lut.init = 16'h02ff;
    LUT4 i3_4_lut_adj_312 (.A(min_warning[5]), .B(min_warning[4]), .C(min_warning[3]), 
         .D(n28), .Z(n26)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i3_4_lut_adj_312.init = 16'h8000;
    CCU2D add_133_9 (.A0(sec[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31640), 
          .S0(n792));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(216[14:24])
    defparam add_133_9.INIT0 = 16'h5aaa;
    defparam add_133_9.INIT1 = 16'h0000;
    defparam add_133_9.INJECT1_0 = "NO";
    defparam add_133_9.INJECT1_1 = "NO";
    PFUMX i84 (.BLUT(n59), .ALUT(n53), .C0(n37366), .Z(n64));
    CCU2D add_133_7 (.A0(sec[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31639), 
          .COUT(n31640), .S0(n794), .S1(n793));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(216[14:24])
    defparam add_133_7.INIT0 = 16'h5aaa;
    defparam add_133_7.INIT1 = 16'h5aaa;
    defparam add_133_7.INJECT1_0 = "NO";
    defparam add_133_7.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_313 (.A(min_warning[2]), .B(min_warning[1]), .C(min_warning[0]), 
         .Z(n28)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut_adj_313.init = 16'heaea;
    LUT4 i1_2_lut_3_lut_4_lut_adj_314 (.A(state_adj_2156[1]), .B(state_adj_2156[0]), 
         .C(sys_clk_c_enable_83), .D(warning), .Z(sys_clk_c_enable_130)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam i1_2_lut_3_lut_4_lut_adj_314.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_adj_315 (.A(state_adj_2156[1]), .B(state_adj_2156[0]), 
         .C(cnt_run[6]), .Z(n6_adj_1974)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam i1_2_lut_3_lut_adj_315.init = 16'h0404;
    LUT4 i1_3_lut_4_lut_adj_316 (.A(state_adj_2156[1]), .B(state_adj_2156[0]), 
         .C(cnt_run[0]), .D(n37258), .Z(n70)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(187[12] 198[6])
    defparam i1_3_lut_4_lut_adj_316.init = 16'h0004;
    LUT4 i29209_3_lut (.A(min_warning[7]), .B(min_warning[6]), .C(min_warning[0]), 
         .Z(n34874)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i29209_3_lut.init = 16'hfefe;
    DS18B20Z u_DS18B20Z (.n37305(n37305), .\state_back_2__N_516[2] (state_back_2__N_516[2]), 
            .n37223(n37223), .clk_1mhz(clk_1mhz), .sys_clk_c(sys_clk_c), 
            .n37366(n37366), .\state[1] (state[1]), .\state[0] (state[0]), 
            .one_wire_N_665(one_wire_N_665), .n37321(n37321), .sys_clk_c_enable_316(sys_clk_c_enable_316), 
            .n52(n52), .n37308(n37308), .n38985(n38985), .n37246(n37246), 
            .n37270(n37270), .\hundres_1__N_339[1] (hundres_1__N_339_adj_2103[1]), 
            .\hundres_1__N_339[0] (hundres_1__N_339_adj_2103[0]), .\ds18b20_data[8] (ds18b20_data[8]), 
            .\ds18b20_data[7] (ds18b20_data[7]), .\ds18b20_data[6] (ds18b20_data[6]), 
            .\ds18b20_data[5] (ds18b20_data[5]), .\ds18b20_data[4] (ds18b20_data[4]), 
            .n36897(n36897), .one_wire_out(one_wire_out), .\cnt_read[0] (cnt_read[0]), 
            .sys_clk_c_enable_131(sys_clk_c_enable_131), .n37247(n37247), 
            .n4(n4_adj_1970), .n53(n53), .n35461(n35461), .sys_clk_c_enable_243(sys_clk_c_enable_243), 
            .n37306(n37306), .sys_clk_c_enable_265(sys_clk_c_enable_265), 
            .GND_net(GND_net), .n37222(n37222), .n37243(n37243), .n59(n59), 
            .sys_clk_c_enable_346(sys_clk_c_enable_346), .n32206(n32206), 
            .n37254(n37254), .sys_clk_c_enable_296(sys_clk_c_enable_296), 
            .n37231(n37231), .n64(n64), .n65(n65), .n10325(n10325), 
            .n34690(n34690), .sys_clk_c_enable_330(sys_clk_c_enable_330), 
            .n7(n7), .n37474(n37474)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(300[11] 306[2])
    PFUMX i30 (.BLUT(n11_adj_1964), .ALUT(n34745), .C0(cnt_run[1]), .Z(n33626));
    LUT4 m1_lut (.Z(n39002)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2D add_133_5 (.A0(sec[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31638), 
          .COUT(n31639), .S0(n796), .S1(n795));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(216[14:24])
    defparam add_133_5.INIT0 = 16'h5aaa;
    defparam add_133_5.INIT1 = 16'h5aaa;
    defparam add_133_5.INJECT1_0 = "NO";
    defparam add_133_5.INJECT1_1 = "NO";
    LUT4 i4_3_lut_adj_317 (.A(n34623), .B(hour_warning[1]), .C(hour_warning[5]), 
         .Z(n11_adj_1957)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i4_3_lut_adj_317.init = 16'h0202;
    CCU2D add_133_3 (.A0(sec[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31637), 
          .COUT(n31638), .S0(n798), .S1(n797));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(216[14:24])
    defparam add_133_3.INIT0 = 16'h5aaa;
    defparam add_133_3.INIT1 = 16'h5aaa;
    defparam add_133_3.INJECT1_0 = "NO";
    defparam add_133_3.INJECT1_1 = "NO";
    CCU2D add_133_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n31637), 
          .S1(n799));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(216[14:24])
    defparam add_133_1.INIT0 = 16'hF000;
    defparam add_133_1.INIT1 = 16'h5555;
    defparam add_133_1.INJECT1_0 = "NO";
    defparam add_133_1.INJECT1_1 = "NO";
    CCU2D add_132_9 (.A0(min[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31636), 
          .S0(n782));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(214[14:24])
    defparam add_132_9.INIT0 = 16'h5aaa;
    defparam add_132_9.INIT1 = 16'h0000;
    defparam add_132_9.INJECT1_0 = "NO";
    defparam add_132_9.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_318 (.A(n37348), .B(n93), .C(cnt_run[3]), .D(n17), 
         .Z(n87)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut_adj_318.init = 16'h0004;
    LUT4 i1_2_lut_adj_319 (.A(cnt_run[4]), .B(cnt_run[2]), .Z(n4_adj_1959)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_319.init = 16'h2222;
    LUT4 i1_2_lut_adj_320 (.A(n87), .B(cnt_run[5]), .Z(n34678)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_320.init = 16'h2222;
    LUT4 i1_4_lut_adj_321 (.A(sys_clk_c_enable_130), .B(n34500), .C(n37258), 
         .D(n136), .Z(sys_clk_c_enable_128)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_321.init = 16'h8a88;
    LUT4 i11_4_lut (.A(music_cnt[3]), .B(n22), .C(n18_adj_1966), .D(n35090), 
         .Z(n34500)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i11_4_lut.init = 16'h0080;
    KEY_U1 key_1 (.sys_clk_c(sys_clk_c), .key1_c(key1_c), .key1_pulse(key1_pulse), 
           .n37249(n37249), .n37248(n37248), .\key_mode[0] (key_mode[0]), 
           .n37398(n37398), .sys_clk_c_enable_58(sys_clk_c_enable_58), .n37313(n37313), 
           .n37319(n37319), .sec({sec}), .n5371({n5372, n5373, n5374, 
           n5375, n5376, n5377, n5378, n5379}), .hour({hour}), .n5381({n5382, 
           n5383, n5384, n5385, n5386, n5387, n5388, n5389}), 
           .min({min}), .n5361({n5362, n5363, n5364, n5365, n5366, 
           n5367, n5368, n5369}), .sw1_c(sw1_c), .sys_clk_c_enable_134(sys_clk_c_enable_134), 
           .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(39[6] 44[3])
    LUT4 i10_4_lut (.A(n19_adj_1965), .B(n7_adj_1961), .C(cnt_run[1]), 
         .D(n37284), .Z(n22)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i10_4_lut.init = 16'h0020;
    LUT4 i6_2_lut (.A(music_cnt[0]), .B(music_cnt[1]), .Z(n18_adj_1966)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6_2_lut.init = 16'h8888;
    LUT4 i29420_3_lut (.A(music_cnt[5]), .B(music_cnt[8]), .C(music_cnt[7]), 
         .Z(n35090)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i29420_3_lut.init = 16'hfefe;
    CCU2D add_132_7 (.A0(min[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31635), 
          .COUT(n31636), .S0(n784), .S1(n783));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(214[14:24])
    defparam add_132_7.INIT0 = 16'h5aaa;
    defparam add_132_7.INIT1 = 16'h5aaa;
    defparam add_132_7.INJECT1_0 = "NO";
    defparam add_132_7.INJECT1_1 = "NO";
    CCU2D add_132_5 (.A0(min[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31634), 
          .COUT(n31635), .S0(n786), .S1(n785));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(214[14:24])
    defparam add_132_5.INIT0 = 16'h5aaa;
    defparam add_132_5.INIT1 = 16'h5aaa;
    defparam add_132_5.INJECT1_0 = "NO";
    defparam add_132_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_322 (.A(cnt_run[4]), .B(cnt_run[2]), .Z(n4_adj_1952)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_322.init = 16'h4444;
    VLO i1 (.Z(GND_net));
    LUT4 n11051_bdd_3_lut_30205_4_lut (.A(cnt_adj_2133[1]), .B(cnt_adj_2133[2]), 
         .C(cnt_adj_2133[3]), .D(cnt_adj_2133[0]), .Z(n35982)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam n11051_bdd_3_lut_30205_4_lut.init = 16'h011f;
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D add_132_3 (.A0(min[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31633), 
          .COUT(n31634), .S0(n788), .S1(n787));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(214[14:24])
    defparam add_132_3.INIT0 = 16'h5aaa;
    defparam add_132_3.INIT1 = 16'h5aaa;
    defparam add_132_3.INJECT1_0 = "NO";
    defparam add_132_3.INJECT1_1 = "NO";
    music_play m_music_play (.uart_recv_data({uart_recv_data}), .\state[0] (state_adj_2156[0]), 
            .sys_clk_c(sys_clk_c), .sys_clk_c_enable_28(sys_clk_c_enable_28), 
            .n31(n31), .music_cnt({music_cnt}), .sys_clk_c_enable_354(sys_clk_c_enable_354), 
            .\state[1] (state_adj_2156[1]), .cnt_run({cnt_run}), .sys_clk_c_enable_130(sys_clk_c_enable_130), 
            .n34172(n34172), .\music_tone[0] (music_tone[0]), .\state_back[0] (state_back_adj_2157[0]), 
            .sys_clk_c_enable_34(sys_clk_c_enable_34), .uart_recv_done(uart_recv_done), 
            .sys_clk_c_enable_302(sys_clk_c_enable_302), .warning_TEM(warning_TEM), 
            .sys_clk_c_enable_83(sys_clk_c_enable_83), .uart_music_mode(uart_music_mode), 
            .n37351(n37351), .n37348(n37348), .n10(n10), .n37258(n37258), 
            .n11(n11_adj_1964), .GND_net(GND_net), .n39002(n39002), .sys_clk_c_enable_128(sys_clk_c_enable_128), 
            .n33626(n33626), .\music_tone[4] (music_tone[4]), .\music_tone[3] (music_tone[3]), 
            .\music_tone[2] (music_tone[2]), .\music_tone[1] (music_tone[1]), 
            .sys_clk_c_enable_368(sys_clk_c_enable_368), .n32322(n32322), 
            .n136(n136), .n139(n139), .warning(warning), .n123(n123), 
            .n126(n126), .n3686(n3686), .n17(n17), .n7(n7_adj_1961), 
            .n34666(n34666), .n87(n87), .n4(n4_adj_1977), .n34678(n34678), 
            .n4_adj_10(n4_adj_1959), .n4_adj_11(n4_adj_1952), .n4_adj_12(n4_adj_1973), 
            .sys_rst_n_c(sys_rst_n_c), .n34512(n34512), .n51(n51), .n37293(n37293), 
            .n34226(n34226), .n34214(n34214)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(437[13] 450[6])
    LUT4 i3_4_lut_adj_323 (.A(warning_time[4]), .B(warning_time[6]), .C(warning_time[5]), 
         .D(warning_time[7]), .Z(n34470)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(332[9:21])
    defparam i3_4_lut_adj_323.init = 16'hfffe;
    BCD_U4 bcd_min (.\hundres_0__N_350[3] (hundres_0__N_350_adj_2007[3]), 
           .n8157(n8157), .n8447(n8447), .\min[3] (min[3]), .\min[2] (min[2]), 
           .\min[7] (min[7]), .\min[4] (min[4]), .n4(n4_adj_1947), .hundres_0__N_355(hundres_0__N_355), 
           .\min[1] (min[1]), .\min_ones[1] (min_ones[1]), .\min_ones[3] (min_ones[3]), 
           .\min_ones[2] (min_ones[2]), .\min[6] (min[6]), .\min[5] (min[5]), 
           .\min_tens[0] (min_tens[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(253[6] 259[3])
    CCU2D add_1912_7 (.A0(n5303), .B0(n37402), .C0(n5385), .D0(hour_t[4]), 
          .A1(n5303), .B1(n37402), .C1(n5384), .D1(hour_t[5]), .CIN(n31609), 
          .COUT(n31610), .S0(n5956), .S1(n5955));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1912_7.INIT0 = 16'he4b1;
    defparam add_1912_7.INIT1 = 16'he4b1;
    defparam add_1912_7.INJECT1_0 = "NO";
    defparam add_1912_7.INJECT1_1 = "NO";
    CCU2D add_1912_3 (.A0(n37402), .B0(n5303), .C0(n5389), .D0(hour_t[0]), 
          .A1(n5303), .B1(n37402), .C1(n5388), .D1(hour_t[1]), .CIN(n31607), 
          .COUT(n31608), .S0(n5960), .S1(n5959));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(107[6] 179[11])
    defparam add_1912_3.INIT0 = 16'hd1e2;
    defparam add_1912_3.INIT1 = 16'he4b1;
    defparam add_1912_3.INJECT1_0 = "NO";
    defparam add_1912_3.INJECT1_1 = "NO";
    \divide(WIDTH=32,N=12000000)_U2  devide_1s (.clk_1s(clk_1s), .sys_clk_c(sys_clk_c), 
            .GND_net(GND_net), .n20604(n20604)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(30[37] 36[3])
    GSR GSR_INST (.GSR(sys_rst_n_c));
    FD1P3JX uart_send_data_i0_i0 (.D(Temp_H[0]), .SP(sys_clk_c_enable_350), 
            .PD(n20647), .CK(sys_clk_c), .Q(uart_send_data[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(316[8] 341[6])
    defparam uart_send_data_i0_i0.GSR = "DISABLED";
    BCD_U7 bcd_T (.\ds18b20_data[8] (ds18b20_data[8]), .\hundres_1__N_339[0] (hundres_1__N_339_adj_2103[0]), 
           .\hundres_1__N_339[1] (hundres_1__N_339_adj_2103[1]), .\ds18b20_data[6] (ds18b20_data[6]), 
           .\hundres_0__N_350[1] (hundres_0__N_350_adj_2111[1]), .n37146(n37146), 
           .n37157(n37157), .\Tem_high[0] (Tem_high[0]), .n37184(n37184), 
           .\ds18b20_data[5] (ds18b20_data[5]), .n10614(n10614), .\cnt_main[0] (cnt_main_adj_2128[0]), 
           .n7472(n7472), .n35269(n35269), .\ds18b20_data[7] (ds18b20_data[7]), 
           .n7474(n7474), .n35291(n35291), .\Tem_high[2] (Tem_high[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(292[5] 298[3])
    FD1P3IX key_mode_2976__i0 (.D(n6), .SP(key1_pulse), .CD(n30619), .CK(sys_clk_c), 
            .Q(key_mode[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(99[22:37])
    defparam key_mode_2976__i0.GSR = "ENABLED";
    BCD_U6 bcd_hour (.n37384(n37384), .\hour[7] (hour[7]), .\hour[3] (hour[3]), 
           .\hour[4] (hour[4]), .\hour[2] (hour[2]), .\hundres_0__N_350[3] (hundres_0__N_350_adj_2033[3]), 
           .n8144(n8144), .n4(n4_adj_1956), .\hour[6] (hour[6]), .\hour[5] (hour[5]), 
           .hundres_0__N_355(hundres_0__N_355_adj_1939), .\hour[1] (hour[1]), 
           .\hour_ones[1] (hour_ones[1]), .\hour_tens[0] (hour_tens[0]), 
           .\hour_ones[3] (hour_ones[3]), .\hour_ones[2] (hour_ones[2]), 
           .n8456(n8456)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(261[6] 267[3])
    Beeper m_beep (.\music_tone[0] (music_tone[0]), .GND_net(GND_net), .\music_tone[4] (music_tone[4]), 
           .beep_c(beep_c), .sys_clk_c(sys_clk_c), .\music_tone[1] (music_tone[1]), 
           .\music_tone[3] (music_tone[3]), .\music_tone[2] (music_tone[2]), 
           .sw2_c(sw2_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(420[9] 426[2])
    BCD_U3 bcd_min_warning (.\min_warning[7] (min_warning[7]), .\hundres_0__N_350[3] (hundres_0__N_350_adj_2085[3]), 
           .n8157(n8157), .n8451(n8451), .\min_warning[3] (min_warning[3]), 
           .\min_warning[2] (min_warning[2]), .\min_warning[1] (min_warning[1]), 
           .\min_warning_ones[3] (min_warning_ones[3]), .n4(n4_adj_1960), 
           .\min_warning[4] (min_warning[4]), .hundres_0__N_355(hundres_0__N_355_adj_1944), 
           .\min_warning_ones[2] (min_warning_ones[2]), .\min_warning[5] (min_warning[5]), 
           .\min_warning[6] (min_warning[6]), .\min_warning_ones[1] (min_warning_ones[1]), 
           .\min_warning_tens[0] (min_warning_tens[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(277[7] 283[3])
    LUT4 i1_4_lut_adj_324 (.A(n37306), .B(n7), .C(n37305), .D(state_back_2__N_516[2]), 
         .Z(sys_clk_c_enable_131)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_adj_324.init = 16'h5044;
    \uart_recv(CLK_FREQ=12000000)  u_uart_recv (.sys_clk_c(sys_clk_c), .sys_clk_c_enable_47(sys_clk_c_enable_47), 
            .rx_flag(rx_flag), .uart_recv_done(uart_recv_done), .uart_rxd_c(uart_rxd_c), 
            .n37303(n37303), .uart_recv_data({uart_recv_data}), .GND_net(GND_net), 
            .n31(n31_adj_1955), .n37242(n37242)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(411[1] 418[6])
    LUT4 i1_4_lut_adj_325 (.A(n11_adj_1957), .B(n32054), .C(n35126), .D(n37402), 
         .Z(n12)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(88[13] 180[7])
    defparam i1_4_lut_adj_325.init = 16'hce0a;
    BCD bcd_sec (.\sec[4] (sec[4]), .\sec[1] (sec[1]), .n37140(n37140), 
        .\hundres_0__N_350[1] (hundres_0__N_350[1]), .\hundres_0__N_350[2] (hundres_0__N_350[2]), 
        .n37124(n37124), .\hundres_0__N_347[0] (hundres_0__N_347[0]), .n4(n4_adj_1954), 
        .\sec[2] (sec[2]), .n37134(n37134), .\sec[3] (sec[3]), .\sec[7] (sec[7]), 
        .\hundres_0__N_347[1] (hundres_0__N_347[1]), .n8442(n8442), .\sec[5] (sec[5]), 
        .\sec[6] (sec[6]), .n37129(n37129)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(245[6] 251[3])
    uart_send u_uart_send (.sys_clk_c(sys_clk_c), .uart_en(uart_en), .uart_send_data({uart_send_data}), 
            .uart_txd_c(uart_txd_c), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(347[11] 356[2])
    KEY key_3 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre_adj_1936), 
        .key_sec(key_sec_adj_1937), .key3_c(key3_c), .n37401(n37401), 
        .key_sec_adj_8(key_sec), .key_sec_pre_adj_9(key_sec_pre), .n34623(n34623), 
        .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(55[6] 60[3])
    LUT4 i29484_2_lut (.A(cnt_adj_2133[4]), .B(cnt_adj_2133[3]), .Z(n35154)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(134[20] 137[14])
    defparam i29484_2_lut.init = 16'h1111;
    BCD_U5 bcd_hour_warning (.\hour_warning[4] (hour_warning[4]), .\hour_warning[3] (hour_warning[3]), 
           .\hour_warning[7] (hour_warning[7]), .n37130(n37130), .\hundres_0__N_347[1] (hundres_0__N_347_adj_2057[1]), 
           .\hour_warning[1] (hour_warning[1]), .\hour_warning_ones[1] (hour_warning_ones[1]), 
           .n8144(n8144), .\hundres_0__N_350[3] (hundres_0__N_350_adj_2059[3]), 
           .n4(n4_adj_1978), .\hour_warning[2] (hour_warning[2]), .\hour_warning_tens[0] (hour_warning_tens[0]), 
           .hundres_0__N_355(hundres_0__N_355_adj_1942), .\hour_warning_ones[3] (hour_warning_ones[3]), 
           .\hour_warning_ones[2] (hour_warning_ones[2]), .\hour_warning[5] (hour_warning[5]), 
           .\hour_warning[6] (hour_warning[6])) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(269[7] 275[3])
    OLED12832 oled1 (.sys_clk_c(sys_clk_c), .sw1_c(sw1_c), .n8442(n8442), 
            .n37134(n37134), .oled_cs_c(oled_cs_c), .oled_dc_c(oled_dc_c), 
            .n11(n11_adj_1953), .\cnt_scan[3] (cnt_scan[3]), .n4(n4_adj_1954), 
            .\hundres_0__N_347[1] (hundres_0__N_347[1]), .oled_mosi_c(oled_mosi_c), 
            .n37317(n37317), .n4024(n4024), .n4402(n4402), .n2894(n2894), 
            .n3646(n3646), .n3268(n3268), .warning_TEM(warning_TEM), .n3267(n3267), 
            .n3645(n3645), .n2889(n2889), .key_mode({key_mode}), .n37372(n37372), 
            .n4_adj_1(n4_adj_1946), .n37318(n37318), .n2724(n2724), .n2722(n2722), 
            .n2721(n2721), .n2720(n2720), .\cnt_main[0] (cnt_main_adj_2128[0]), 
            .n4028(n4028), .n4406(n4406), .n3650(n3650), .n3272(n3272), 
            .n2895(n2895), .\cnt[0] (cnt_adj_2133[0]), .\cnt[1] (cnt_adj_2133[1]), 
            .\cnt[2] (cnt_adj_2133[2]), .\cnt[4] (cnt_adj_2133[4]), .oled_sck_c(oled_sck_c), 
            .n37314(n37314), .\cnt[3] (cnt_adj_2133[3]), .oled_res_c(oled_res_c), 
            .n4029(n4029), .n4407(n4407), .n3273(n3273), .n3651(n3651), 
            .n4025(n4025), .n4403(n4403), .n3269(n3269), .n3647(n3647), 
            .n3271(n3271), .n3649(n3649), .n4023(n4023), .n4401(n4401), 
            .n4027(n4027), .n4405(n4405), .n2893(n2893), .n37418(n37418), 
            .\min_tens[0] (min_tens[0]), .\min_warning_tens[0] (min_warning_tens[0]), 
            .\Tem_high[2] (Tem_high[2]), .n3270(n3270), .n4026(n4026), 
            .\min[0] (min[0]), .\min_warning[0] (min_warning[0]), .n3648(n3648), 
            .n4404(n4404), .n2892(n2892), .\hour[0] (hour[0]), .\hour_warning[0] (hour_warning[0]), 
            .n8157(n8157), .n14554(n14554), .n8144(n8144), .n11620(n11620), 
            .n7455(n7455), .n19396(n19396), .n19393(n19393), .\ds18b20_data[5] (ds18b20_data[5]), 
            .n37157(n37157), .\hundres_0__N_350[1] (hundres_0__N_350_adj_2111[1]), 
            .n37146(n37146), .n37184(n37184), .n10614(n10614), .n2890(n2890), 
            .n35982(n35982), .n15(n15), .n36704(n36704), .n37263(n37263), 
            .GND_net(GND_net), .n7445(n7445), .n18926(n18926), .\ds18b20_data[4] (ds18b20_data[4]), 
            .n34483(n34483), .n36947(n36947), .n35269(n35269), .n35291(n35291), 
            .n7448(n7448), .\hour_ones[2] (hour_ones[2]), .\hour_warning_ones[2] (hour_warning_ones[2]), 
            .\hour_ones[3] (hour_ones[3]), .\hour_warning_ones[3] (hour_warning_ones[3]), 
            .n36155(n36155), .\min_ones[2] (min_ones[2]), .\min_warning_ones[2] (min_warning_ones[2]), 
            .\min_ones[3] (min_ones[3]), .\min_warning_ones[3] (min_warning_ones[3]), 
            .hundres_0__N_355(hundres_0__N_355_adj_1939), .hundres_0__N_355_adj_2(hundres_0__N_355_adj_1942), 
            .hundres_0__N_355_adj_3(hundres_0__N_355), .hundres_0__N_355_adj_4(hundres_0__N_355_adj_1944), 
            .\hour_ones[1] (hour_ones[1]), .\hour_warning_ones[1] (hour_warning_ones[1]), 
            .\min_ones[1] (min_ones[1]), .\min_warning_ones[1] (min_warning_ones[1]), 
            .\Tem_high[0] (Tem_high[0]), .n2891(n2891), .\hundres_0__N_347[0] (hundres_0__N_347[0]), 
            .\hundres_0__N_350[1]_adj_5 (hundres_0__N_350[1]), .\hundres_0__N_350[2] (hundres_0__N_350[2]), 
            .n37129(n37129), .\sec[0] (sec[0]), .n7472(n7472), .n36096(n36096), 
            .n4_adj_6(n4_adj_1967), .n37130(n37130), .\hundres_0__N_350[3] (hundres_0__N_350_adj_2059[3]), 
            .\hundres_0__N_347[1]_adj_7 (hundres_0__N_347_adj_2057[1]), .n8460(n8460), 
            .\sec[1] (sec[1]), .n37124(n37124), .n37140(n37140), .time_set(time_set), 
            .n7474(n7474), .n11094(n11094), .n35154(n35154), .sys_rst_n_c(sys_rst_n_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(363[12] 394[3])
    
endmodule
//
// Verilog Description of module KEY_U0
//

module KEY_U0 (sys_clk_c, key_sec_pre, key_sec, key2_c, n37402, key_sec_adj_13, 
            key_sec_pre_adj_14, n37319, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key2_c;
    output n37402;
    input key_sec_adj_13;
    input key_sec_pre_adj_14;
    output n37319;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire key_rst_pre, key_rst;
    wire [17:0]cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire sys_clk_c_enable_220, n21, n34, n30, n22, n31, n28, n31704, 
        n31703, n31702, n31701, n31700, n31699, n31698, n31697, 
        n31696;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key2_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1S3IX cnt_2979__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i0.GSR = "ENABLED";
    FD1S3IX cnt_2979__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i17.GSR = "ENABLED";
    FD1S3IX cnt_2979__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i16.GSR = "ENABLED";
    FD1S3IX cnt_2979__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i15.GSR = "ENABLED";
    FD1S3IX cnt_2979__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i14.GSR = "ENABLED";
    FD1S3IX cnt_2979__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i13.GSR = "ENABLED";
    FD1S3IX cnt_2979__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i12.GSR = "ENABLED";
    FD1S3IX cnt_2979__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i11.GSR = "ENABLED";
    FD1S3IX cnt_2979__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i10.GSR = "ENABLED";
    FD1S3IX cnt_2979__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i9.GSR = "ENABLED";
    FD1S3IX cnt_2979__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i8.GSR = "ENABLED";
    FD1S3IX cnt_2979__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i7.GSR = "ENABLED";
    FD1S3IX cnt_2979__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i6.GSR = "ENABLED";
    FD1S3IX cnt_2979__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i5.GSR = "ENABLED";
    FD1S3IX cnt_2979__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i4.GSR = "ENABLED";
    FD1S3IX cnt_2979__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i3.GSR = "ENABLED";
    FD1S3IX cnt_2979__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i2.GSR = "ENABLED";
    FD1S3IX cnt_2979__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979__i1.GSR = "ENABLED";
    LUT4 key_sec_pre_I_0_2_lut_rep_637 (.A(key_sec_pre), .B(key_sec), .Z(n37402)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_637.init = 16'h2222;
    LUT4 i21044_2_lut_rep_554_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), 
         .C(key_sec_adj_13), .D(key_sec_pre_adj_14), .Z(n37319)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam i21044_2_lut_rep_554_3_lut_4_lut.init = 16'h2f22;
    FD1P3AY key_sec_29 (.D(key2_c), .SP(sys_clk_c_enable_220), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_220)) /* synthesis lut_function=(A (B (C (D)))) */ ;
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
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    CCU2D cnt_2979_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31704), .S0(n77[17]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2979_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2979_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2979_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2979_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31703), .COUT(n31704), .S0(n77[15]), .S1(n77[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2979_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2979_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2979_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2979_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31702), .COUT(n31703), .S0(n77[13]), .S1(n77[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2979_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2979_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2979_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_2979_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31701), .COUT(n31702), .S0(n77[11]), .S1(n77[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2979_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2979_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2979_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_2979_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31700), .COUT(n31701), .S0(n77[9]), .S1(n77[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2979_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2979_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2979_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2979_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31699), 
          .COUT(n31700), .S0(n77[7]), .S1(n77[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2979_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2979_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2979_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2979_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31698), 
          .COUT(n31699), .S0(n77[5]), .S1(n77[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2979_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2979_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2979_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_2979_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31697), 
          .COUT(n31698), .S0(n77[3]), .S1(n77[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2979_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2979_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2979_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_2979_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31696), 
          .COUT(n31697), .S0(n77[1]), .S1(n77[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2979_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2979_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2979_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_2979_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31696), .S1(n77[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2979_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2979_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2979_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2979_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module DS18B20Z
//

module DS18B20Z (n37305, \state_back_2__N_516[2] , n37223, clk_1mhz, 
            sys_clk_c, n37366, \state[1] , \state[0] , one_wire_N_665, 
            n37321, sys_clk_c_enable_316, n52, n37308, n38985, n37246, 
            n37270, \hundres_1__N_339[1] , \hundres_1__N_339[0] , \ds18b20_data[8] , 
            \ds18b20_data[7] , \ds18b20_data[6] , \ds18b20_data[5] , \ds18b20_data[4] , 
            n36897, one_wire_out, \cnt_read[0] , sys_clk_c_enable_131, 
            n37247, n4, n53, n35461, sys_clk_c_enable_243, n37306, 
            sys_clk_c_enable_265, GND_net, n37222, n37243, n59, sys_clk_c_enable_346, 
            n32206, n37254, sys_clk_c_enable_296, n37231, n64, n65, 
            n10325, n34690, sys_clk_c_enable_330, n7, n37474) /* synthesis syn_module_defined=1 */ ;
    output n37305;
    output \state_back_2__N_516[2] ;
    input n37223;
    output clk_1mhz;
    input sys_clk_c;
    output n37366;
    output \state[1] ;
    output \state[0] ;
    output one_wire_N_665;
    output n37321;
    input sys_clk_c_enable_316;
    output n52;
    output n37308;
    input n38985;
    output n37246;
    output n37270;
    output \hundres_1__N_339[1] ;
    output \hundres_1__N_339[0] ;
    output \ds18b20_data[8] ;
    output \ds18b20_data[7] ;
    output \ds18b20_data[6] ;
    output \ds18b20_data[5] ;
    output \ds18b20_data[4] ;
    output n36897;
    input one_wire_out;
    output \cnt_read[0] ;
    input sys_clk_c_enable_131;
    output n37247;
    output n4;
    output n53;
    output n35461;
    input sys_clk_c_enable_243;
    output n37306;
    input sys_clk_c_enable_265;
    input GND_net;
    output n37222;
    output n37243;
    output n59;
    input sys_clk_c_enable_346;
    input n32206;
    input n37254;
    input sys_clk_c_enable_296;
    input n37231;
    input n64;
    output n65;
    output n10325;
    input n34690;
    input sys_clk_c_enable_330;
    output n7;
    input n37474;
    
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=\u_DS18B20Z/clk_1mhz */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(36[10:18])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire n6, sys_clk_c_enable_40, clk_1mhz_N_667;
    wire [5:0]cnt_write;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(57[14:23])
    
    wire n19867, n19785;
    wire [19:0]num_delay_19__N_605;
    wire [2:0]cnt_init;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(54[14:22])
    
    wire n38, one_wire_N_668;
    wire [19:0]cnt_delay;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(55[15:24])
    
    wire sys_clk_c_enable_376, n11365;
    wire [19:0]num_delay;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(56[15:24])
    
    wire sys_clk_c_enable_30, n37386, sys_clk_c_enable_31;
    wire [2:0]cnt_1mhz;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(37[14:22])
    wire [2:0]n8;
    wire [2:0]state_2__N_552;
    
    wire n1, n37357, n2, n37104, n37105;
    wire [19:0]n3001;
    
    wire n37367;
    wire [3:0]cnt_main;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(51[14:22])
    
    wire n24264, n10, n37307, n29, n34950, sys_clk_c_enable_293, 
        n37374, n37325, n37244, n37300, n12, n37481, n20353;
    wire [3:0]n25;
    wire [5:0]cnt_read;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(58[14:22])
    
    wire n16946, n17969, n17971, n35244, n36278, n35246, one_wire_N_666, 
        one_wire_N_673, one_wire_N_678, n37446, n37449, n12161, n17658, 
        n17972, n37345, n34544, n37453, n24322, n37452, n37459, 
        n37458;
    wire [2:0]state_back_2__N_516;
    
    wire n36457, n37382, n37465, n37309, n37464, n37473;
    wire [7:0]data_wr;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(52[14:21])
    
    wire sys_clk_c_enable_86, n7_c, n7_adj_1915, n37340, sys_clk_c_enable_94;
    wire [15:0]temperature;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(59[15:26])
    wire [7:0]data_wr_buffer;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(53[14:28])
    
    wire sys_clk_c_enable_97, n36894, n37480, n37479, n36896, n36895;
    wire [7:0]temperature_buffer;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(60[14:32])
    
    wire sys_clk_c_enable_100, n37376, sys_clk_c_enable_101, n2_adj_1916, 
        n20307, n32227, sys_clk_c_enable_335, n37377, n37378, n36;
    wire [2:0]state_back;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(62[15:25])
    
    wire n36960, n4_c, sys_clk_c_enable_102, sys_clk_c_enable_103, sys_clk_c_enable_104, 
        sys_clk_c_enable_106, n6_adj_1917, n26491, sys_clk_c_enable_319, 
        n37511, n37510, n38581, n38580, n38583, n37380, n17970, 
        n29837;
    wire [5:0]n208;
    
    wire n4_adj_1918, n31890, n12149, n37381, n29498, sys_clk_c_enable_132, 
        n36961, n37267, n3, n36962, n36963, n2_adj_1919, n37383, 
        n35060, n15, n17, n39, n37385, n96, n34702, n38578, 
        n261, n20533;
    wire [19:0]n263;
    
    wire n38579, n37395, n37304;
    wire [5:0]n153;
    
    wire n6_adj_1920, n38585, n37241, n69, n30, n52_adj_1922, n24270, 
        n34698;
    wire [2:0]n109;
    
    wire n37358, sys_clk_c_enable_347, n20592, n34943, sys_clk_c_enable_266, 
        n31650, n31649, n31648, n31647, n37311, n29481, n31646, 
        sys_clk_c_enable_284, sys_clk_c_enable_287, n31645, n37337, 
        n27_adj_1924, n37466, n37448, n34672, n37460, n37339, n102, 
        n31644, n37251, n37272, n34515, n31643, n37215, n37335, 
        n26663, n37343, sys_clk_c_enable_340, n4_adj_1925, n37204, 
        n31642, sys_clk_c_enable_305;
    wire [2:0]state_2__N_513;
    
    wire n31641, n37324, n31797, n31796, n3_adj_1926, n9, n31795, 
        sys_clk_c_enable_306, n34478, n31794, n31793, n5, n34793, 
        n34573, n37323, n37341, n35186, n12_adj_1927, n31792, n6_adj_1928, 
        n37283, n34504, n35076, n31791, n31790;
    wire [2:0]n2387;
    
    wire n37346, n31789, n5_adj_1929, n37512, n2_adj_1930, n31788, 
        n34490, n7_adj_1931, n3_adj_1932;
    wire [2:0]state_2__N_549;
    
    LUT4 i2_4_lut (.A(n37305), .B(n6), .C(\state_back_2__N_516[2] ), .D(n37223), 
         .Z(sys_clk_c_enable_40)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut.init = 16'h8c88;
    FD1S3AX clk_1mhz_112 (.D(clk_1mhz_N_667), .CK(sys_clk_c), .Q(clk_1mhz)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(42[12] 47[6])
    defparam clk_1mhz_112.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_601 (.A(cnt_write[4]), .B(cnt_write[0]), .Z(n37366)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_601.init = 16'h8888;
    LUT4 mux_54_Mux_5_i7_4_lut (.A(n19867), .B(n19785), .C(\state_back_2__N_516[2] ), 
         .D(\state[1] ), .Z(num_delay_19__N_605[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_5_i7_4_lut.init = 16'hc5cf;
    LUT4 i14380_2_lut (.A(cnt_init[2]), .B(\state[0] ), .Z(n19867)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i14380_2_lut.init = 16'heeee;
    LUT4 i24144_3_lut_4_lut_3_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .Z(n38)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i24144_3_lut_4_lut_3_lut.init = 16'h4242;
    FD1S3AX one_wire_buffer_121 (.D(one_wire_N_668), .CK(clk_1mhz), .Q(one_wire_N_665)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam one_wire_buffer_121.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i0 (.D(n11365), .SP(sys_clk_c_enable_376), .CK(sys_clk_c), 
            .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i12 (.D(n37386), .SP(sys_clk_c_enable_30), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i12.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i8 (.D(num_delay_19__N_605[8]), .SP(sys_clk_c_enable_31), 
            .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i8.GSR = "DISABLED";
    FD1S3IX cnt_1mhz_2981__i0 (.D(n8[0]), .CK(sys_clk_c), .CD(n37321), 
            .Q(cnt_1mhz[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam cnt_1mhz_2981__i0.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i5 (.D(num_delay_19__N_605[5]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    PFUMX state_2__I_0_132_Mux_0_i2 (.BLUT(state_2__N_552[0]), .ALUT(n1), 
          .C0(n37357), .Z(n2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;
    L6MUX21 i29558 (.D0(n37104), .D1(n37105), .SD(cnt_write[5]), .Z(n3001[6]));
    LUT4 i1_2_lut_rep_602 (.A(cnt_write[0]), .B(cnt_write[4]), .Z(n37367)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_602.init = 16'h2222;
    FD1P3IX cnt_main_i0_i1 (.D(n10), .SP(sys_clk_c_enable_316), .CD(n24264), 
            .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    LUT4 cnt_write_4__bdd_4_lut_31105 (.A(cnt_write[4]), .B(cnt_write[0]), 
         .C(cnt_write[5]), .D(n37307), .Z(n52)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A !(B+!(C+!(D))))) */ ;
    defparam cnt_write_4__bdd_4_lut_31105.init = 16'h4dec;
    LUT4 i29925_4_lut (.A(n29), .B(\state[0] ), .C(n6), .D(n34950), 
         .Z(sys_clk_c_enable_293)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C))+!A)) */ ;
    defparam i29925_4_lut.init = 16'h20a0;
    LUT4 i1_4_lut (.A(n37305), .B(\state_back_2__N_516[2] ), .C(n37308), 
         .D(n37374), .Z(n29)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hbabb;
    LUT4 i29283_4_lut (.A(n37325), .B(n37244), .C(n37300), .D(n12), 
         .Z(n34950)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i29283_4_lut.init = 16'haaa8;
    LUT4 i1_4_lut_adj_238 (.A(cnt_write[5]), .B(n37366), .C(n37481), .D(n20353), 
         .Z(n12)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut_adj_238.init = 16'h5554;
    FD1P3IX cnt_main_i0_i2 (.D(n25[2]), .SP(sys_clk_c_enable_316), .CD(n24264), 
            .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    LUT4 i11519_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n16946)) /* synthesis lut_function=(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i11519_3_lut_4_lut.init = 16'hb6db;
    LUT4 i12506_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n17969)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (D)+!B (C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i12506_2_lut_4_lut_4_lut.init = 16'h006d;
    LUT4 i12508_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n17971)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i12508_2_lut_4_lut_4_lut.init = 16'h0049;
    LUT4 i29744_3_lut (.A(n35244), .B(n36278), .C(cnt_write[4]), .Z(n35246)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29744_3_lut.init = 16'hcaca;
    FD1P3AX i107_128 (.D(one_wire_N_678), .SP(one_wire_N_673), .CK(clk_1mhz), 
            .Q(one_wire_N_666)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i107_128.GSR = "ENABLED";
    LUT4 i29418_3_lut_4_lut_else_2_lut (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(cnt_write[4]), .D(cnt_write[2]), .Z(n37446)) /* synthesis lut_function=(!(A (C)+!A (B+(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29418_3_lut_4_lut_else_2_lut.init = 16'h0a0b;
    LUT4 i14297_3_lut_else_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n37449)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i14297_3_lut_else_4_lut.init = 16'h41a4;
    LUT4 cnt_write_0__bdd_4_lut (.A(cnt_write[0]), .B(n37307), .C(n12161), 
         .D(cnt_write[4]), .Z(n37105)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam cnt_write_0__bdd_4_lut.init = 16'h88f0;
    PFUMX i12509 (.BLUT(n17658), .ALUT(n17971), .C0(cnt_read[5]), .Z(n17972));
    LUT4 i1_4_lut_4_lut_then_4_lut (.A(n37345), .B(\state_back_2__N_516[2] ), 
         .C(n34544), .D(\state[0] ), .Z(n37453)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'hf0d0;
    LUT4 i1_4_lut_4_lut_else_4_lut (.A(\state_back_2__N_516[2] ), .B(n34544), 
         .C(n24322), .D(\state[0] ), .Z(n37452)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_4_lut_else_4_lut.init = 16'hc8cc;
    LUT4 i14356_3_lut_then_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n37459)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i14356_3_lut_then_4_lut.init = 16'h1a41;
    LUT4 i14356_3_lut_else_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n37458)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B (C+!(D))+!B ((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i14356_3_lut_else_4_lut.init = 16'ha41a;
    LUT4 i29905_2_lut_rep_609 (.A(\state[0] ), .B(\state[1] ), .Z(n37374)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i29905_2_lut_rep_609.init = 16'h4444;
    LUT4 i20972_2_lut_3_lut (.A(\state[0] ), .B(\state[1] ), .C(\state_back_2__N_516[2] ), 
         .Z(state_back_2__N_516[0])) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i20972_2_lut_3_lut.init = 16'h0b0b;
    LUT4 n7_bdd_3_lut_4_lut (.A(\state[0] ), .B(\state[1] ), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n36457)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam n7_bdd_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_then_4_lut (.A(cnt_init[0]), .B(\state[0] ), .C(n37382), 
         .D(n52), .Z(n37465)) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h02ce;
    LUT4 i1_4_lut_else_4_lut (.A(n37309), .B(\state[0] ), .Z(n37464)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h8888;
    LUT4 i1_4_lut_else_2_lut (.A(n38985), .B(n37246), .C(\state[1] ), 
         .D(n37270), .Z(n37473)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(62[15:25])
    defparam i1_4_lut_else_2_lut.init = 16'h8a80;
    FD1P3AX data_wr_i0_i7 (.D(n7_c), .SP(sys_clk_c_enable_86), .CK(sys_clk_c), 
            .Q(data_wr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n7_adj_1915), .SP(sys_clk_c_enable_86), .CK(sys_clk_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i1 (.D(n37340), .SP(sys_clk_c_enable_86), .CK(sys_clk_c), 
            .Q(data_wr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i1.GSR = "DISABLED";
    FD1P3AX data_out_i0_i10 (.D(temperature[10]), .SP(sys_clk_c_enable_94), 
            .CK(sys_clk_c), .Q(\hundres_1__N_339[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i10.GSR = "DISABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n25[3]), .SP(sys_clk_c_enable_316), .CD(n24264), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    FD1P3AX data_out_i0_i9 (.D(temperature[9]), .SP(sys_clk_c_enable_94), 
            .CK(sys_clk_c), .Q(\hundres_1__N_339[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i9.GSR = "DISABLED";
    FD1P3AX data_out_i0_i8 (.D(temperature[8]), .SP(sys_clk_c_enable_94), 
            .CK(sys_clk_c), .Q(\ds18b20_data[8] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i8.GSR = "DISABLED";
    FD1P3AX data_out_i0_i7 (.D(temperature[7]), .SP(sys_clk_c_enable_94), 
            .CK(sys_clk_c), .Q(\ds18b20_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i7.GSR = "DISABLED";
    FD1P3AX data_out_i0_i6 (.D(temperature[6]), .SP(sys_clk_c_enable_94), 
            .CK(sys_clk_c), .Q(\ds18b20_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i5 (.D(temperature[5]), .SP(sys_clk_c_enable_94), 
            .CK(sys_clk_c), .Q(\ds18b20_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i5.GSR = "DISABLED";
    FD1P3AX data_out_i0_i4 (.D(temperature[4]), .SP(sys_clk_c_enable_94), 
            .CK(sys_clk_c), .Q(\ds18b20_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i4.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i7 (.D(data_wr[7]), .SP(sys_clk_c_enable_97), 
            .CK(sys_clk_c), .Q(data_wr_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i7.GSR = "DISABLED";
    LUT4 one_wire_N_676_bdd_4_lut (.A(n37307), .B(cnt_write[5]), .C(cnt_write[0]), 
         .D(cnt_write[4]), .Z(n36894)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam one_wire_N_676_bdd_4_lut.init = 16'h30f2;
    FD1P3AX data_wr_buffer_i0_i6 (.D(data_wr[6]), .SP(sys_clk_c_enable_97), 
            .CK(sys_clk_c), .Q(data_wr_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i4 (.D(data_wr[1]), .SP(sys_clk_c_enable_97), 
            .CK(sys_clk_c), .Q(data_wr_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i4.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_then_3_lut (.A(cnt_write[3]), .B(cnt_write[4]), 
         .C(cnt_write[2]), .Z(n37480)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;
    defparam i1_2_lut_4_lut_then_3_lut.init = 16'h2323;
    LUT4 i1_2_lut_4_lut_else_3_lut (.A(cnt_write[3]), .B(cnt_write[4]), 
         .C(cnt_write[1]), .D(cnt_write[2]), .Z(n37479)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_2_lut_4_lut_else_3_lut.init = 16'h0001;
    LUT4 n36896_bdd_3_lut (.A(n36896), .B(n36895), .C(\state[1] ), .Z(n36897)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36896_bdd_3_lut.init = 16'hcaca;
    FD1P3AX temperature_buffer_i0_i1 (.D(one_wire_out), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(temperature_buffer[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i1.GSR = "DISABLED";
    LUT4 i21337_2_lut_rep_611 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n37376)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(112[7] 121[14])
    defparam i21337_2_lut_rep_611.init = 16'hdddd;
    FD1P3AX temperature_buffer_i0_i2 (.D(one_wire_out), .SP(sys_clk_c_enable_101), 
            .CK(sys_clk_c), .Q(temperature_buffer[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i2.GSR = "DISABLED";
    LUT4 mux_54_Mux_4_i2_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), 
         .C(\state[0] ), .D(n3001[6]), .Z(n2_adj_1916)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(112[7] 121[14])
    defparam mux_54_Mux_4_i2_3_lut_4_lut.init = 16'hfd0d;
    LUT4 i1_4_lut_adj_239 (.A(\state_back_2__N_516[2] ), .B(n34544), .C(n20307), 
         .D(n32227), .Z(sys_clk_c_enable_335)) /* synthesis lut_function=(A (B)+!A !((C+(D))+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_4_lut_adj_239.init = 16'h888c;
    LUT4 i1_2_lut_rep_612 (.A(cnt_read[4]), .B(cnt_read[5]), .Z(n37377)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(58[14:22])
    defparam i1_2_lut_rep_612.init = 16'h8888;
    LUT4 i2_3_lut_3_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(n37378), 
         .D(\cnt_read[0] ), .Z(n36)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(58[14:22])
    defparam i2_3_lut_3_lut_4_lut.init = 16'hf8ff;
    LUT4 state_2__N_552_2__bdd_3_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), 
         .C(state_back[2]), .D(\state[0] ), .Z(n36960)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(58[14:22])
    defparam state_2__N_552_2__bdd_3_lut_4_lut.init = 16'hf077;
    LUT4 i1_3_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(\cnt_read[0] ), 
         .D(\state[0] ), .Z(n4_c)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(58[14:22])
    defparam i1_3_lut_4_lut.init = 16'hfff8;
    FD1P3AX temperature_buffer_i0_i4 (.D(one_wire_out), .SP(sys_clk_c_enable_102), 
            .CK(sys_clk_c), .Q(temperature_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i4.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i5 (.D(one_wire_out), .SP(sys_clk_c_enable_103), 
            .CK(sys_clk_c), .Q(temperature_buffer[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i5.GSR = "DISABLED";
    LUT4 i2_3_lut_rep_540_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(n37378), 
         .D(\cnt_read[0] ), .Z(n37305)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(58[14:22])
    defparam i2_3_lut_rep_540_4_lut.init = 16'h0700;
    FD1P3AX temperature_buffer_i0_i6 (.D(one_wire_out), .SP(sys_clk_c_enable_104), 
            .CK(sys_clk_c), .Q(temperature_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i7 (.D(one_wire_out), .SP(sys_clk_c_enable_106), 
            .CK(sys_clk_c), .Q(temperature_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i7.GSR = "DISABLED";
    LUT4 i29376_2_lut_rep_613 (.A(\state[1] ), .B(\state[0] ), .Z(n37378)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29376_2_lut_rep_613.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(\state[1] ), .B(\state[0] ), .C(\state_back_2__N_516[2] ), 
         .Z(n6_adj_1917)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hefef;
    LUT4 i29992_2_lut_3_lut (.A(\state[1] ), .B(\state[0] ), .C(\cnt_read[0] ), 
         .Z(n26491)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i29992_2_lut_3_lut.init = 16'h0101;
    LUT4 i29917_2_lut_rep_461_2_lut_3_lut_4_lut (.A(\state[1] ), .B(\state[0] ), 
         .C(n37321), .D(clk_1mhz), .Z(sys_clk_c_enable_319)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i29917_2_lut_rep_461_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i29762_4_lut_4_lut_then_4_lut (.A(cnt_write[4]), .B(cnt_write[1]), 
         .C(cnt_write[3]), .D(cnt_write[2]), .Z(n37511)) /* synthesis lut_function=(A+!(B (C (D)+!C !(D))+!B !((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29762_4_lut_4_lut_then_4_lut.init = 16'hbfeb;
    LUT4 i29762_4_lut_4_lut_else_4_lut (.A(cnt_write[4]), .B(cnt_write[1]), 
         .C(cnt_write[3]), .D(cnt_write[2]), .Z(n37510)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29762_4_lut_4_lut_else_4_lut.init = 16'hd6bd;
    LUT4 n38582_bdd_3_lut_4_lut (.A(n38581), .B(data_wr_buffer[4]), .C(cnt_write[2]), 
         .D(n38580), .Z(n38583)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n38582_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_rep_615 (.A(cnt_write[3]), .B(cnt_write[2]), .Z(n37380)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_615.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n12161)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h4014;
    PFUMX i12507 (.BLUT(n16946), .ALUT(n17969), .C0(cnt_read[5]), .Z(n17970));
    LUT4 i29914_2_lut_rep_542_3_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[1]), .Z(n37307)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i29914_2_lut_rep_542_3_lut.init = 16'h0101;
    FD1P3IX cnt_read_i0_i1 (.D(n208[1]), .SP(sys_clk_c_enable_319), .CD(n29837), 
            .CK(sys_clk_c), .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_240 (.A(cnt_main[1]), .B(n4_adj_1918), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n31890)) /* synthesis lut_function=(!(A ((D)+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i2_4_lut_adj_240.init = 16'h0488;
    LUT4 i21340_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[2]), 
         .D(cnt_write[1]), .Z(n12149)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i21340_4_lut_4_lut_4_lut.init = 16'h1041;
    LUT4 i1_2_lut_rep_479_2_lut_3_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(n37381), .D(cnt_write[1]), .Z(n37244)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_rep_479_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_2_lut (.A(\state[0] ), .B(cnt_main[0]), .Z(n4_adj_1918)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_616 (.A(cnt_write[5]), .B(cnt_write[4]), .Z(n37381)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_616.init = 16'h8888;
    LUT4 i38_2_lut_3_lut_4_lut (.A(cnt_write[5]), .B(cnt_write[4]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n29498)) /* synthesis lut_function=(!(A (B (C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i38_2_lut_3_lut_4_lut.init = 16'h777f;
    LUT4 i3556_2_lut_rep_617 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n37382)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3556_2_lut_rep_617.init = 16'h8888;
    FD1P3AX state_back_i0_i2 (.D(\state_back_2__N_516[2] ), .SP(sys_clk_c_enable_131), 
            .CK(sys_clk_c), .Q(state_back[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i2.GSR = "ENABLED";
    FD1P3AX state_back_i0_i1 (.D(n37325), .SP(sys_clk_c_enable_132), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i2 (.D(n208[2]), .SP(sys_clk_c_enable_319), .CD(n29837), 
            .CK(sys_clk_c), .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_543_3_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(cnt_init[0]), 
         .Z(n37308)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_543_3_lut.init = 16'h7070;
    LUT4 state_2__N_552_2__bdd_4_lut (.A(n37307), .B(cnt_write[0]), .C(cnt_write[5]), 
         .D(cnt_write[4]), .Z(n36961)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C)+!B (C (D)))) */ ;
    defparam state_2__N_552_2__bdd_4_lut.init = 16'haf3f;
    LUT4 i1_2_lut_rep_502_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), 
         .C(\state[0] ), .D(cnt_init[0]), .Z(n37267)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_2_lut_rep_502_3_lut_4_lut.init = 16'hf7f0;
    LUT4 state_2__I_0_i3_4_lut (.A(\state[0] ), .B(n17972), .C(\state_back_2__N_516[2] ), 
         .D(n26491), .Z(n3)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam state_2__I_0_i3_4_lut.init = 16'h3afa;
    LUT4 n31890_bdd_3_lut (.A(n31890), .B(n36962), .C(\state[1] ), .Z(n36963)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n31890_bdd_3_lut.init = 16'hcaca;
    LUT4 state_2__I_0_144_i2_4_lut (.A(n37345), .B(cnt_write[0]), .C(\state[0] ), 
         .D(n37381), .Z(n2_adj_1919)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam state_2__I_0_144_i2_4_lut.init = 16'h0aca;
    LUT4 i2400_1_lut_rep_618 (.A(cnt_init[0]), .Z(n37383)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(112[7] 121[14])
    defparam i2400_1_lut_rep_618.init = 16'h5555;
    LUT4 i1_4_lut_4_lut (.A(cnt_init[0]), .B(n35060), .C(cnt_init[2]), 
         .D(\state_back_2__N_516[2] ), .Z(n15)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(112[7] 121[14])
    defparam i1_4_lut_4_lut.init = 16'hff10;
    LUT4 i1_3_lut_3_lut (.A(cnt_init[0]), .B(cnt_init[1]), .C(cnt_init[2]), 
         .Z(n17)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(112[7] 121[14])
    defparam i1_3_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_4_lut_adj_241 (.A(n37247), .B(n37374), .C(n37345), .D(n17), 
         .Z(n39)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_241.init = 16'hddd5;
    LUT4 i1_2_lut_rep_620 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n37385)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_620.init = 16'h8888;
    LUT4 i112_2_lut_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .Z(n96)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i112_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i2_3_lut_rep_544_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n37309)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_rep_544_4_lut.init = 16'h0008;
    FD1S3IX cnt_1mhz_2981__i2 (.D(n8[2]), .CK(sys_clk_c), .CD(n37321), 
            .Q(cnt_1mhz[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam cnt_1mhz_2981__i2.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_2981__i1 (.D(n8[1]), .CK(sys_clk_c), .CD(n37321), 
            .Q(cnt_1mhz[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam cnt_1mhz_2981__i1.GSR = "ENABLED";
    LUT4 i27_2_lut_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i27_2_lut_3_lut.init = 16'h7878;
    LUT4 i3627_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i3627_3_lut_4_lut.init = 16'h7f80;
    LUT4 i29441_2_lut_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .D(\state[1] ), .Z(n34702)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29441_2_lut_3_lut_4_lut.init = 16'h0007;
    LUT4 i30027_2_lut_rep_621 (.A(\state[1] ), .B(\state_back_2__N_516[2] ), 
         .Z(n37386)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i30027_2_lut_rep_621.init = 16'h1111;
    FD1P3IX cnt_read_i0_i3 (.D(n208[3]), .SP(sys_clk_c_enable_319), .CD(n29837), 
            .CK(sys_clk_c), .Q(cnt_read[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i4 (.D(n208[4]), .SP(sys_clk_c_enable_319), .CD(n29837), 
            .CK(sys_clk_c), .Q(cnt_read[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i5 (.D(n208[5]), .SP(sys_clk_c_enable_319), .CD(n29837), 
            .CK(sys_clk_c), .Q(cnt_read[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i5.GSR = "ENABLED";
    LUT4 cnt_write_4__bdd_4_lut_31333 (.A(cnt_write[4]), .B(cnt_write[5]), 
         .C(cnt_write[3]), .D(data_wr_buffer[6]), .Z(n38578)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C)))) */ ;
    defparam cnt_write_4__bdd_4_lut_31333.init = 16'h1410;
    LUT4 i15058_2_lut_3_lut (.A(n261), .B(\state_back_2__N_516[2] ), .C(sys_clk_c_enable_376), 
         .Z(n20533)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i15058_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i21371_2_lut_3_lut (.A(n261), .B(\state_back_2__N_516[2] ), .C(n263[0]), 
         .Z(n11365)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i21371_2_lut_3_lut.init = 16'h4040;
    LUT4 cnt_write_4__bdd_4_lut_31411 (.A(cnt_write[4]), .B(cnt_write[5]), 
         .C(cnt_write[3]), .D(data_wr_buffer[7]), .Z(n38579)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))))) */ ;
    defparam cnt_write_4__bdd_4_lut_31411.init = 16'h4200;
    LUT4 data_wr_buffer_4__bdd_4_lut (.A(cnt_write[4]), .B(cnt_write[5]), 
         .C(cnt_write[3]), .D(cnt_write[1]), .Z(n38581)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam data_wr_buffer_4__bdd_4_lut.init = 16'h2014;
    LUT4 i1_2_lut_rep_630 (.A(cnt_write[0]), .B(cnt_write[1]), .Z(n37395)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_630.init = 16'h8888;
    LUT4 i1_2_lut_rep_539_3_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n37304)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_539_3_lut.init = 16'h8080;
    LUT4 i3678_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n153[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i3678_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_adj_242 (.A(state_back[1]), .B(n261), .Z(n6_adj_1920)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_2_lut_adj_242.init = 16'h8888;
    LUT4 one_wire_I_0_4_lut (.A(one_wire_out), .B(n4), .C(one_wire_N_673), 
         .D(n38585), .Z(one_wire_N_668)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam one_wire_I_0_4_lut.init = 16'h3a0a;
    LUT4 i20851_2_lut_rep_476 (.A(\state[0] ), .B(n52), .Z(n37241)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20851_2_lut_rep_476.init = 16'h8888;
    LUT4 n38584_bdd_2_lut_3_lut (.A(n38583), .B(cnt_write[0]), .C(\state_back_2__N_516[2] ), 
         .Z(n38585)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n38584_bdd_2_lut_3_lut.init = 16'h0808;
    LUT4 i1_3_lut_4_lut_adj_243 (.A(n37270), .B(\state[1] ), .C(n38985), 
         .D(\state_back_2__N_516[2] ), .Z(n6)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_3_lut_4_lut_adj_243.init = 16'hf0e0;
    LUT4 i30022_2_lut (.A(\state[0] ), .B(\state[1] ), .Z(n4)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i30022_2_lut.init = 16'h7777;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(cnt_write[5]), .B(n37267), .C(n37367), 
         .D(\state[1] ), .Z(n53)) /* synthesis lut_function=(!((B (C)+!B (C+(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h080a;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_write[5]), .B(cnt_write[4]), .C(n37380), 
         .D(cnt_write[1]), .Z(n69)) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h555d;
    LUT4 i29980_4_lut (.A(n30), .B(n52_adj_1922), .C(n37325), .D(\state[0] ), 
         .Z(n35461)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B))) */ ;
    defparam i29980_4_lut.init = 16'h1333;
    FD1P3IX cnt_init_i0_i0 (.D(n37383), .SP(sys_clk_c_enable_243), .CD(n24270), 
            .CK(sys_clk_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_244 (.A(n34698), .B(\state[1] ), .C(\state_back_2__N_516[2] ), 
         .D(\state[0] ), .Z(sys_clk_c_enable_376)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;
    defparam i2_4_lut_adj_244.init = 16'h2002;
    LUT4 i83_3_lut_4_lut_4_lut (.A(n37306), .B(\state_back_2__N_516[2] ), 
         .C(n37377), .D(n37378), .Z(n29837)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i83_3_lut_4_lut_4_lut.init = 16'h0051;
    PFUMX i30345 (.BLUT(n36457), .ALUT(n19785), .C0(\state_back_2__N_516[2] ), 
          .Z(num_delay_19__N_605[2]));
    LUT4 cnt_write_1__bdd_3_lut_31467 (.A(cnt_write[1]), .B(cnt_write[3]), 
         .C(cnt_write[2]), .Z(n36278)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;
    defparam cnt_write_1__bdd_3_lut_31467.init = 16'h9e9e;
    FD1P3IX cnt_init_i0_i2 (.D(n109[2]), .SP(sys_clk_c_enable_243), .CD(n24270), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i1 (.D(n37358), .SP(sys_clk_c_enable_243), .CD(n24270), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i1 (.D(n153[1]), .SP(sys_clk_c_enable_347), .CD(n20592), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i2 (.D(n34943), .SP(sys_clk_c_enable_347), .CD(n20592), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i3 (.D(n153[3]), .SP(sys_clk_c_enable_347), .CD(n20592), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i4 (.D(n153[4]), .SP(sys_clk_c_enable_347), .CD(n20592), 
            .CK(sys_clk_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i5 (.D(n153[5]), .SP(sys_clk_c_enable_347), .CD(n20592), 
            .CK(sys_clk_c), .Q(cnt_write[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i5.GSR = "ENABLED";
    LUT4 i26191_3_lut (.A(cnt_1mhz[2]), .B(cnt_1mhz[1]), .C(cnt_1mhz[0]), 
         .Z(n8[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam i26191_3_lut.init = 16'h6a6a;
    FD1P3AX num_delay_i0_i1 (.D(num_delay_19__N_605[1]), .SP(sys_clk_c_enable_265), 
            .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i1.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i2 (.D(num_delay_19__N_605[2]), .SP(sys_clk_c_enable_266), 
            .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i2.GSR = "DISABLED";
    LUT4 i26184_2_lut (.A(cnt_1mhz[1]), .B(cnt_1mhz[0]), .Z(n8[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam i26184_2_lut.init = 16'h6666;
    CCU2D add_48_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31650), 
          .S0(n263[19]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_21.INIT0 = 16'h5aaa;
    defparam add_48_21.INIT1 = 16'h0000;
    defparam add_48_21.INJECT1_0 = "NO";
    defparam add_48_21.INJECT1_1 = "NO";
    CCU2D add_48_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31649), .COUT(n31650), .S0(n263[17]), .S1(n263[18]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_19.INIT0 = 16'h5aaa;
    defparam add_48_19.INIT1 = 16'h5aaa;
    defparam add_48_19.INJECT1_0 = "NO";
    defparam add_48_19.INJECT1_1 = "NO";
    LUT4 i3692_3_lut_4_lut (.A(cnt_write[3]), .B(n37304), .C(cnt_write[4]), 
         .D(cnt_write[5]), .Z(n153[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(125[25:41])
    defparam i3692_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3611_1_lut (.A(cnt_main[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(88[24:39])
    defparam i3611_1_lut.init = 16'h5555;
    CCU2D add_48_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31648), .COUT(n31649), .S0(n263[15]), .S1(n263[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_17.INIT0 = 16'h5aaa;
    defparam add_48_17.INIT1 = 16'h5aaa;
    defparam add_48_17.INJECT1_0 = "NO";
    defparam add_48_17.INJECT1_1 = "NO";
    LUT4 i25_3_lut_rep_457_4_lut (.A(\state[0] ), .B(n37309), .C(\state[1] ), 
         .D(n37246), .Z(n37222)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i25_3_lut_rep_457_4_lut.init = 16'hf808;
    CCU2D add_48_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31647), .COUT(n31648), .S0(n263[13]), .S1(n263[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_15.INIT0 = 16'h5aaa;
    defparam add_48_15.INIT1 = 16'h5aaa;
    defparam add_48_15.INJECT1_0 = "NO";
    defparam add_48_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_482_3_lut (.A(\state[0] ), .B(n37309), .C(\state[1] ), 
         .Z(n37247)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_2_lut_rep_482_3_lut.init = 16'hf8f8;
    LUT4 i12201_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n17658)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i12201_3_lut_4_lut.init = 16'h2492;
    LUT4 i2_3_lut_4_lut_4_lut (.A(\state_back_2__N_516[2] ), .B(n37305), 
         .C(n6), .D(n37223), .Z(sys_clk_c_enable_30)) /* synthesis lut_function=(A (B (C))+!A (C (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hd080;
    FD1P3IX cnt_delay_i0_i1 (.D(n263[1]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i2 (.D(n263[2]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    LUT4 i3735_3_lut_4_lut (.A(cnt_read[3]), .B(n37311), .C(cnt_read[4]), 
         .D(cnt_read[5]), .Z(n208[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3735_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX cnt_delay_i0_i3 (.D(n263[3]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    LUT4 i3649_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n109[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(111[24:39])
    defparam i3649_3_lut.init = 16'h6a6a;
    LUT4 i2_4_lut_adj_245 (.A(n34698), .B(\state[1] ), .C(\state_back_2__N_516[2] ), 
         .D(\state[0] ), .Z(sys_clk_c_enable_347)) /* synthesis lut_function=(!((B (C+!(D))+!B (C+(D)))+!A)) */ ;
    defparam i2_4_lut_adj_245.init = 16'h0802;
    LUT4 i21260_4_lut (.A(n37376), .B(\state_back_2__N_516[2] ), .C(\state[1] ), 
         .D(\state[0] ), .Z(num_delay_19__N_605[8])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i21260_4_lut.init = 16'h0323;
    LUT4 i3664_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n153[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(125[25:41])
    defparam i3664_2_lut.init = 16'h6666;
    LUT4 i24098_3_lut_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[3]), .C(cnt_write[2]), 
         .D(cnt_write[4]), .Z(n29481)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i24098_3_lut_4_lut_4_lut.init = 16'h0179;
    CCU2D add_48_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31646), .COUT(n31647), .S0(n263[11]), .S1(n263[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_13.INIT0 = 16'h5aaa;
    defparam add_48_13.INIT1 = 16'h5aaa;
    defparam add_48_13.INJECT1_0 = "NO";
    defparam add_48_13.INJECT1_1 = "NO";
    FD1P3AX temperature_i0_i4 (.D(temperature_buffer[4]), .SP(sys_clk_c_enable_284), 
            .CK(sys_clk_c), .Q(temperature[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i4.GSR = "ENABLED";
    FD1P3AX temperature_i0_i5 (.D(temperature_buffer[5]), .SP(sys_clk_c_enable_284), 
            .CK(sys_clk_c), .Q(temperature[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i5.GSR = "ENABLED";
    FD1P3AX temperature_i0_i6 (.D(temperature_buffer[6]), .SP(sys_clk_c_enable_284), 
            .CK(sys_clk_c), .Q(temperature[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_i0_i7 (.D(temperature_buffer[7]), .SP(sys_clk_c_enable_284), 
            .CK(sys_clk_c), .Q(temperature[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i7.GSR = "ENABLED";
    FD1P3AX temperature_i0_i8 (.D(temperature_buffer[0]), .SP(sys_clk_c_enable_287), 
            .CK(sys_clk_c), .Q(temperature[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i8.GSR = "ENABLED";
    FD1P3AX temperature_i0_i9 (.D(temperature_buffer[1]), .SP(sys_clk_c_enable_287), 
            .CK(sys_clk_c), .Q(temperature[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i9.GSR = "ENABLED";
    FD1P3AX temperature_i0_i10 (.D(temperature_buffer[2]), .SP(sys_clk_c_enable_287), 
            .CK(sys_clk_c), .Q(temperature[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i10.GSR = "ENABLED";
    CCU2D add_48_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31645), .COUT(n31646), .S0(n263[9]), .S1(n263[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_11.INIT0 = 16'h5aaa;
    defparam add_48_11.INIT1 = 16'h5aaa;
    defparam add_48_11.INJECT1_0 = "NO";
    defparam add_48_11.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_246 (.A(cnt_write[2]), .B(n37337), .C(cnt_write[0]), 
         .D(cnt_write[1]), .Z(n27_adj_1924)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_246.init = 16'hf0f1;
    LUT4 i1_4_lut_adj_247 (.A(n38985), .B(n37466), .C(n37305), .D(\state_back_2__N_516[2] ), 
         .Z(sys_clk_c_enable_266)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_247.init = 16'ha088;
    LUT4 i26182_1_lut (.A(cnt_1mhz[0]), .Z(n8[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(46[16:31])
    defparam i26182_1_lut.init = 16'h5555;
    LUT4 i2_4_lut_4_lut (.A(n37367), .B(cnt_write[5]), .C(n27_adj_1924), 
         .D(n37244), .Z(n30)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i2_4_lut_4_lut.init = 16'hffb8;
    LUT4 i1_4_lut_4_lut_adj_248 (.A(n37367), .B(cnt_write[5]), .C(n37448), 
         .D(n37243), .Z(n59)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_4_lut_adj_248.init = 16'h4700;
    LUT4 i1_2_lut_adj_249 (.A(cnt_main[1]), .B(n34672), .Z(sys_clk_c_enable_284)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_249.init = 16'h4444;
    FD1P3IX num_delay_i0_i3 (.D(n37460), .SP(sys_clk_c_enable_346), .CD(n32206), 
            .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i3.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_250 (.A(n37339), .B(cnt_main[0]), .C(n102), .D(n37254), 
         .Z(n34672)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_4_lut_adj_250.init = 16'h0002;
    LUT4 i1_2_lut_adj_251 (.A(cnt_main[1]), .B(n34672), .Z(sys_clk_c_enable_287)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_adj_251.init = 16'h8888;
    FD1P3IX cnt_delay_i0_i4 (.D(n263[4]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n263[5]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i4 (.D(num_delay_19__N_605[4]), .SP(sys_clk_c_enable_293), 
            .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i4.GSR = "DISABLED";
    CCU2D add_48_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31644), .COUT(n31645), .S0(n263[7]), .S1(n263[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_9.INIT0 = 16'h5aaa;
    defparam add_48_9.INIT1 = 16'h5aaa;
    defparam add_48_9.INJECT1_0 = "NO";
    defparam add_48_9.INJECT1_1 = "NO";
    LUT4 i2_4_lut_4_lut_adj_252 (.A(n37386), .B(n37251), .C(n37272), .D(n37306), 
         .Z(n34515)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;
    defparam i2_4_lut_4_lut_adj_252.init = 16'h00d0;
    FD1P3AX num_delay_i0_i6 (.D(num_delay_19__N_605[6]), .SP(sys_clk_c_enable_296), 
            .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i6.GSR = "DISABLED";
    CCU2D add_48_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31643), .COUT(n31644), .S0(n263[5]), .S1(n263[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_7.INIT0 = 16'h5aaa;
    defparam add_48_7.INIT1 = 16'h5aaa;
    defparam add_48_7.INJECT1_0 = "NO";
    defparam add_48_7.INJECT1_1 = "NO";
    LUT4 i29976_3_lut_4_lut (.A(cnt_read[5]), .B(n37215), .C(cnt_read[1]), 
         .D(n37335), .Z(sys_clk_c_enable_103)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i29976_3_lut_4_lut.init = 16'h0020;
    LUT4 i29964_3_lut_4_lut (.A(cnt_read[5]), .B(n37215), .C(cnt_read[2]), 
         .D(n26663), .Z(sys_clk_c_enable_106)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i29964_3_lut_4_lut.init = 16'h2000;
    LUT4 i29908_3_lut_4_lut (.A(cnt_read[5]), .B(n37215), .C(cnt_read[3]), 
         .D(n37343), .Z(sys_clk_c_enable_340)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i29908_3_lut_4_lut.init = 16'h0001;
    FD1P3IX cnt_delay_i0_i6 (.D(n263[6]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    LUT4 i29967_3_lut_4_lut (.A(cnt_read[5]), .B(n37215), .C(cnt_read[2]), 
         .D(n26663), .Z(sys_clk_c_enable_100)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i29967_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_4_lut (.A(cnt_write[2]), .B(n37337), .C(cnt_write[1]), 
         .D(cnt_write[0]), .Z(n4_adj_1925)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_439_4_lut (.A(cnt_read[4]), .B(n37231), .C(n6_adj_1917), 
         .D(cnt_read[5]), .Z(n37204)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_rep_439_4_lut.init = 16'hfeff;
    LUT4 i3685_2_lut_3_lut_4_lut (.A(cnt_write[2]), .B(n37395), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n153[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i3685_2_lut_3_lut_4_lut.init = 16'h78f0;
    CCU2D add_48_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31642), .COUT(n31643), .S0(n263[3]), .S1(n263[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_5.INIT0 = 16'h5aaa;
    defparam add_48_5.INIT1 = 16'h5aaa;
    defparam add_48_5.INJECT1_0 = "NO";
    defparam add_48_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_507_4_lut (.A(\cnt_read[0] ), .B(n37378), .C(n37377), 
         .D(\state_back_2__N_516[2] ), .Z(n37272)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (D))) */ ;
    defparam i1_2_lut_rep_507_4_lut.init = 16'h02ff;
    FD1P3AX state_i0_i0 (.D(state_2__N_513[0]), .SP(sys_clk_c_enable_305), 
            .CK(sys_clk_c), .Q(\state[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(cnt_write[1]), .B(n37380), .C(n37381), 
         .D(n64), .Z(n65)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h1f00;
    CCU2D add_48_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31641), .COUT(n31642), .S0(n263[1]), .S1(n263[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_3.INIT0 = 16'h5aaa;
    defparam add_48_3.INIT1 = 16'h5aaa;
    defparam add_48_3.INJECT1_0 = "NO";
    defparam add_48_3.INJECT1_1 = "NO";
    LUT4 i32_3_lut_rep_481_4_lut (.A(cnt_init[0]), .B(n37382), .C(\state[0] ), 
         .D(n52), .Z(n37246)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;
    defparam i32_3_lut_rep_481_4_lut.init = 16'h02f2;
    LUT4 i1_2_lut_rep_505_4_lut (.A(cnt_main[2]), .B(cnt_main[3]), .C(n37385), 
         .D(\state[0] ), .Z(n37270)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_505_4_lut.init = 16'h1000;
    LUT4 i3728_2_lut_3_lut_4_lut (.A(cnt_read[2]), .B(n37324), .C(cnt_read[4]), 
         .D(cnt_read[3]), .Z(n208[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3728_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i24_2_lut (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n10)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut.init = 16'h6666;
    CCU2D sub_2358_add_2_21 (.A0(cnt_delay[19]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31797), .S1(n261));
    defparam sub_2358_add_2_21.INIT0 = 16'h5999;
    defparam sub_2358_add_2_21.INIT1 = 16'h0000;
    defparam sub_2358_add_2_21.INJECT1_0 = "NO";
    defparam sub_2358_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_2358_add_2_19 (.A0(cnt_delay[17]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31796), .COUT(n31797));
    defparam sub_2358_add_2_19.INIT0 = 16'h5999;
    defparam sub_2358_add_2_19.INIT1 = 16'h5555;
    defparam sub_2358_add_2_19.INJECT1_0 = "NO";
    defparam sub_2358_add_2_19.INJECT1_1 = "NO";
    LUT4 i12_3_lut (.A(n3_adj_1926), .B(n9), .C(\state_back_2__N_516[2] ), 
         .Z(state_2__N_513[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i12_3_lut.init = 16'hcaca;
    CCU2D sub_2358_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31795), .COUT(n31796));
    defparam sub_2358_add_2_17.INIT0 = 16'h5555;
    defparam sub_2358_add_2_17.INIT1 = 16'h5999;
    defparam sub_2358_add_2_17.INJECT1_0 = "NO";
    defparam sub_2358_add_2_17.INJECT1_1 = "NO";
    FD1P3AX state_back_i0_i0 (.D(state_back_2__N_516[0]), .SP(sys_clk_c_enable_306), 
            .CK(sys_clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    LUT4 i4974_1_lut (.A(one_wire_N_666), .Z(n10325)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(63[2] 264[5])
    defparam i4974_1_lut.init = 16'h5555;
    LUT4 i11_4_lut (.A(n34478), .B(state_back[0]), .C(\state[0] ), .D(n37377), 
         .Z(n9)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i11_4_lut.init = 16'hc5cf;
    CCU2D sub_2358_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31794), .COUT(n31795));
    defparam sub_2358_add_2_15.INIT0 = 16'h5999;
    defparam sub_2358_add_2_15.INIT1 = 16'h5999;
    defparam sub_2358_add_2_15.INJECT1_0 = "NO";
    defparam sub_2358_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_2358_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31793), .COUT(n31794));
    defparam sub_2358_add_2_13.INIT0 = 16'h5555;
    defparam sub_2358_add_2_13.INIT1 = 16'h5999;
    defparam sub_2358_add_2_13.INJECT1_0 = "NO";
    defparam sub_2358_add_2_13.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(n5), .B(n37306), .C(\state_back_2__N_516[2] ), .D(n34793), 
         .Z(n34544)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i3_4_lut.init = 16'h2202;
    LUT4 i1_4_lut_adj_253 (.A(\state[0] ), .B(n34573), .C(n37325), .D(n37300), 
         .Z(n5)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_4_lut_adj_253.init = 16'h4ccc;
    LUT4 i3560_3_lut_rep_556 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .Z(n37321)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i3560_3_lut_rep_556.init = 16'hc8c8;
    LUT4 i242_2_lut_rep_541_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n37306)) /* synthesis lut_function=(A ((D)+!B)+!A (((D)+!C)+!B)) */ ;
    defparam i242_2_lut_rep_541_4_lut.init = 16'hff37;
    LUT4 clk_1mhz_I_0_2_lut_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(clk_1mhz_N_667)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam clk_1mhz_I_0_2_lut_4_lut.init = 16'h37c8;
    LUT4 i1_2_lut_4_lut_adj_254 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n34698)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_254.init = 16'h00c8;
    LUT4 i3705_1_lut_rep_558 (.A(\cnt_read[0] ), .Z(n37323)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3705_1_lut_rep_558.init = 16'h5555;
    LUT4 i3709_2_lut_rep_559 (.A(cnt_read[1]), .B(\cnt_read[0] ), .Z(n37324)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3709_2_lut_rep_559.init = 16'h8888;
    LUT4 i3714_2_lut_3_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), .C(cnt_read[2]), 
         .Z(n208[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3714_2_lut_3_lut.init = 16'h7878;
    LUT4 i3716_2_lut_rep_546_3_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[2]), .Z(n37311)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3716_2_lut_rep_546_3_lut.init = 16'h8080;
    LUT4 i3721_2_lut_3_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n208[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3721_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3_4_lut_adj_255 (.A(\state[0] ), .B(n34690), .C(n10), .D(n37341), 
         .Z(sys_clk_c_enable_86)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_255.init = 16'h0080;
    LUT4 i1_2_lut_adj_256 (.A(cnt_main[2]), .B(cnt_main[1]), .Z(n7_c)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_adj_256.init = 16'hbbbb;
    LUT4 i29515_2_lut_rep_560 (.A(\state_back_2__N_516[2] ), .B(\state[1] ), 
         .Z(n37325)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i29515_2_lut_rep_560.init = 16'h4444;
    LUT4 i29516_1_lut_2_lut (.A(\state_back_2__N_516[2] ), .B(\state[1] ), 
         .Z(n35186)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i29516_1_lut_2_lut.init = 16'hbbbb;
    CCU2D add_48_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31641), .S1(n263[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(260[29:45])
    defparam add_48_1.INIT0 = 16'hF000;
    defparam add_48_1.INIT1 = 16'h5555;
    defparam add_48_1.INJECT1_0 = "NO";
    defparam add_48_1.INJECT1_1 = "NO";
    FD1P3IX cnt_main_i0_i0 (.D(n25[0]), .SP(sys_clk_c_enable_316), .CD(n24264), 
            .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i0 (.D(n37323), .SP(sys_clk_c_enable_319), .CD(n29837), 
            .CK(sys_clk_c), .Q(\cnt_read[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_257 (.A(n37267), .B(n34515), .C(n35186), .D(n37241), 
         .Z(sys_clk_c_enable_306)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_257.init = 16'hc0c8;
    PFUMX i29 (.BLUT(n34702), .ALUT(n6_adj_1920), .C0(\state_back_2__N_516[2] ), 
          .Z(n12_adj_1927));
    FD1P3IX cnt_delay_i0_i7 (.D(n263[7]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i8 (.D(n263[8]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n263[9]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(state_2__N_513[1]), .SP(sys_clk_c_enable_330), 
            .CK(sys_clk_c), .Q(\state[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n263[10]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    CCU2D sub_2358_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31792), .COUT(n31793));
    defparam sub_2358_add_2_11.INIT0 = 16'h5555;
    defparam sub_2358_add_2_11.INIT1 = 16'h5555;
    defparam sub_2358_add_2_11.INJECT1_0 = "NO";
    defparam sub_2358_add_2_11.INJECT1_1 = "NO";
    LUT4 i21223_2_lut (.A(cnt_read[3]), .B(cnt_read[1]), .Z(n26663)) /* synthesis lut_function=(A (B)) */ ;
    defparam i21223_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_570 (.A(cnt_read[3]), .B(cnt_read[2]), .Z(n37335)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_570.init = 16'heeee;
    LUT4 i29973_4_lut (.A(n37231), .B(n6_adj_1917), .C(cnt_read[4]), .D(n6_adj_1928), 
         .Z(sys_clk_c_enable_101)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i29973_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_read[3]), .B(cnt_read[2]), .C(\cnt_read[0] ), 
         .D(cnt_read[1]), .Z(n34478)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_258 (.A(cnt_read[3]), .B(cnt_read[2]), 
         .C(cnt_read[5]), .D(cnt_read[1]), .Z(n6_adj_1928)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_258.init = 16'hfffe;
    PFUMX i31334 (.BLUT(n38579), .ALUT(n38578), .C0(cnt_write[1]), .Z(n38580));
    LUT4 i29296_2_lut_rep_572 (.A(cnt_write[4]), .B(cnt_write[3]), .Z(n37337)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29296_2_lut_rep_572.init = 16'heeee;
    LUT4 i3_3_lut_rep_518_4_lut (.A(cnt_write[4]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n37283)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_rep_518_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(cnt_write[4]), .B(cnt_write[3]), .C(cnt_write[2]), 
         .D(cnt_write[0]), .Z(n20353)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_574 (.A(cnt_main[3]), .B(cnt_main[2]), .Z(n37339)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_574.init = 16'h2222;
    LUT4 state_1__bdd_3_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(\state[0] ), 
         .D(cnt_main[0]), .Z(n36896)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_1__bdd_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_3_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(\state[0] ), 
         .Z(n34504)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_575 (.A(cnt_main[2]), .B(cnt_main[1]), .Z(n37340)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_575.init = 16'h8888;
    LUT4 i31_1_lut_2_lut (.A(cnt_main[2]), .B(cnt_main[1]), .Z(n7_adj_1915)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i31_1_lut_2_lut.init = 16'h7777;
    LUT4 i29340_2_lut_rep_576 (.A(\state[1] ), .B(cnt_main[3]), .Z(n37341)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29340_2_lut_rep_576.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_259 (.A(\state[1] ), .B(n37246), .C(n34515), 
         .D(\state_back_2__N_516[2] ), .Z(sys_clk_c_enable_132)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_3_lut_4_lut_adj_259.init = 16'hf0d0;
    LUT4 i3_4_lut_adj_260 (.A(cnt_read[3]), .B(cnt_read[4]), .C(cnt_read[5]), 
         .D(n35076), .Z(sys_clk_c_enable_102)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_260.init = 16'h0008;
    LUT4 i1_3_lut_rep_450_4_lut (.A(\cnt_read[0] ), .B(n38985), .C(n6_adj_1917), 
         .D(cnt_read[4]), .Z(n37215)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_rep_450_4_lut.init = 16'hfffb;
    LUT4 i5849_2_lut_rep_578 (.A(cnt_read[1]), .B(cnt_read[2]), .Z(n37343)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(194[7] 254[14])
    defparam i5849_2_lut_rep_578.init = 16'hbbbb;
    LUT4 i29941_2_lut_rep_580 (.A(cnt_init[0]), .B(cnt_init[2]), .Z(n37345)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i29941_2_lut_rep_580.init = 16'h1111;
    LUT4 i3_4_lut_adj_261 (.A(cnt_read[3]), .B(cnt_read[2]), .C(cnt_read[1]), 
         .D(n37204), .Z(sys_clk_c_enable_104)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_261.init = 16'h0002;
    CCU2D sub_2358_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31791), .COUT(n31792));
    defparam sub_2358_add_2_9.INIT0 = 16'h5999;
    defparam sub_2358_add_2_9.INIT1 = 16'h5999;
    defparam sub_2358_add_2_9.INJECT1_0 = "NO";
    defparam sub_2358_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_2358_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31790), .COUT(n31791));
    defparam sub_2358_add_2_7.INIT0 = 16'h5999;
    defparam sub_2358_add_2_7.INIT1 = 16'h5999;
    defparam sub_2358_add_2_7.INJECT1_0 = "NO";
    defparam sub_2358_add_2_7.INJECT1_1 = "NO";
    LUT4 i4_2_lut_3_lut (.A(cnt_init[0]), .B(cnt_init[2]), .C(cnt_init[1]), 
         .Z(n2387[0])) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i4_2_lut_3_lut.init = 16'hefef;
    LUT4 i18736_1_lut_rep_581 (.A(cnt_write[0]), .Z(n37346)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i18736_1_lut_rep_581.init = 16'h5555;
    CCU2D sub_2358_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31789), .COUT(n31790));
    defparam sub_2358_add_2_5.INIT0 = 16'h5999;
    defparam sub_2358_add_2_5.INIT1 = 16'h5999;
    defparam sub_2358_add_2_5.INJECT1_0 = "NO";
    defparam sub_2358_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_262 (.A(cnt_write[0]), .B(n4), .C(n5_adj_1929), 
         .D(\state_back_2__N_516[2] ), .Z(num_delay_19__N_605[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_4_lut_adj_262.init = 16'hff10;
    LUT4 i29781_3_lut_4_lut_4_lut (.A(cnt_write[0]), .B(n2387[0]), .C(\state[0] ), 
         .D(n37512), .Z(n2_adj_1930)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29781_3_lut_4_lut_4_lut.init = 16'hfc5c;
    CCU2D sub_2358_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31788), .COUT(n31789));
    defparam sub_2358_add_2_3.INIT0 = 16'h5999;
    defparam sub_2358_add_2_3.INIT1 = 16'h5999;
    defparam sub_2358_add_2_3.INJECT1_0 = "NO";
    defparam sub_2358_add_2_3.INJECT1_1 = "NO";
    LUT4 n29505_bdd_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[4]), .C(n12149), 
         .D(n38), .Z(n37104)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam n29505_bdd_4_lut_4_lut.init = 16'hd1c0;
    CCU2D sub_2358_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n31788));
    defparam sub_2358_add_2_1.INIT0 = 16'h0000;
    defparam sub_2358_add_2_1.INIT1 = 16'h5999;
    defparam sub_2358_add_2_1.INJECT1_0 = "NO";
    defparam sub_2358_add_2_1.INJECT1_1 = "NO";
    LUT4 i3707_2_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), .Z(n208[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(193[24:39])
    defparam i3707_2_lut.init = 16'h6666;
    LUT4 i18849_1_lut_rep_592 (.A(\state[1] ), .Z(n37357)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i18849_1_lut_rep_592.init = 16'h5555;
    LUT4 mux_54_Mux_4_i7_4_lut_4_lut (.A(\state[1] ), .B(\state_back_2__N_516[2] ), 
         .C(n19785), .D(n2_adj_1916), .Z(num_delay_19__N_605[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam mux_54_Mux_4_i7_4_lut_4_lut.init = 16'hf3d1;
    FD1P3AX state_i0_i2 (.D(state_2__N_513[2]), .SP(sys_clk_c_enable_335), 
            .CK(sys_clk_c), .Q(\state_back_2__N_516[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam state_i0_i2.GSR = "ENABLED";
    LUT4 i2_3_lut_3_lut (.A(\state[1] ), .B(cnt_write[5]), .C(\state_back_2__N_516[2] ), 
         .Z(n34490)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i2_3_lut_4_lut_4_lut_adj_263 (.A(\state[1] ), .B(n37382), .C(n37254), 
         .D(\state[0] ), .Z(n24270)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_4_lut_adj_263.init = 16'h000d;
    LUT4 i3_4_lut_4_lut (.A(\state[1] ), .B(n34690), .C(n37385), .D(n34504), 
         .Z(sys_clk_c_enable_94)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    PFUMX state_2__I_0_i7 (.BLUT(n2_adj_1930), .ALUT(n3), .C0(n35186), 
          .Z(one_wire_N_678)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;
    FD1P3IX cnt_delay_i0_i11 (.D(n263[11]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n263[12]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_478_3_lut_4_lut_4_lut (.A(\state[1] ), .B(\state[0] ), 
         .C(n37382), .D(cnt_init[0]), .Z(n37243)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_478_3_lut_4_lut_4_lut.init = 16'hdfdd;
    LUT4 i2_3_lut_3_lut_adj_264 (.A(\state[1] ), .B(\state[0] ), .C(n24322), 
         .Z(n32227)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_3_lut_adj_264.init = 16'h0404;
    LUT4 i15104_3_lut_4_lut_4_lut_4_lut (.A(\state[1] ), .B(n37381), .C(sys_clk_c_enable_347), 
         .D(n37307), .Z(n20592)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i15104_3_lut_4_lut_4_lut_4_lut.init = 16'h50d0;
    LUT4 i2_3_lut_3_lut_adj_265 (.A(cnt_main[3]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .Z(n24322)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_3_lut_adj_265.init = 16'hfdfd;
    FD1P3IX cnt_delay_i0_i13 (.D(n263[13]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    LUT4 i30054_4_lut_4_lut (.A(\state[0] ), .B(n4_adj_1925), .C(n34490), 
         .D(n38985), .Z(sys_clk_c_enable_97)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i30054_4_lut_4_lut.init = 16'h0200;
    FD1P3AX temperature_buffer_i0_i0 (.D(one_wire_out), .SP(sys_clk_c_enable_340), 
            .CK(sys_clk_c), .Q(temperature_buffer[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i0.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_4_lut_adj_266 (.A(\state[0] ), .B(n34490), .C(n37283), 
         .D(cnt_write[0]), .Z(n34573)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;
    defparam i1_4_lut_4_lut_4_lut_adj_266.init = 16'hddfd;
    LUT4 i20652_3_lut_3_lut_3_lut (.A(\state[0] ), .B(n7_adj_1931), .C(cnt_main[3]), 
         .Z(n1)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;
    defparam i20652_3_lut_3_lut_3_lut.init = 16'h5d5d;
    LUT4 i2_3_lut_4_lut_4_lut_adj_267 (.A(\state[0] ), .B(\state[1] ), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n20307)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_267.init = 16'h0004;
    LUT4 state_2__I_0_144_i3_4_lut_4_lut (.A(\state[0] ), .B(n26491), .C(\state_back_2__N_516[2] ), 
         .D(n17970), .Z(n3_adj_1932)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam state_2__I_0_144_i3_4_lut_4_lut.init = 16'hc505;
    LUT4 i8_3_lut_4_lut_4_lut (.A(\state[0] ), .B(n37246), .C(\state[1] ), 
         .D(n37309), .Z(n7)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam i8_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 i117_2_lut_2_lut (.A(\state[0] ), .B(\state[1] ), .Z(n102)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i117_2_lut_2_lut.init = 16'hdddd;
    LUT4 i4_4_lut_4_lut_4_lut (.A(\state[0] ), .B(n4_c), .C(n261), .D(\state[1] ), 
         .Z(n34793)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!B))) */ ;
    defparam i4_4_lut_4_lut_4_lut.init = 16'h00c4;
    LUT4 i1_2_lut_rep_486_4_lut_4_lut (.A(\state[0] ), .B(n37385), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n37251)) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_486_4_lut_4_lut.init = 16'h555d;
    LUT4 i2_4_lut_4_lut_adj_268 (.A(\state[0] ), .B(n96), .C(sys_clk_c_enable_316), 
         .D(cnt_main[3]), .Z(n24264)) /* synthesis lut_function=(A (B (C (D)))+!A (C)) */ ;
    defparam i2_4_lut_4_lut_adj_268.init = 16'hd050;
    LUT4 mux_17_Mux_0_i7_4_lut_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(cnt_main[2]), .Z(n7_adj_1931)) /* synthesis lut_function=(!(A (B (C))+!A !(B))) */ ;
    defparam mux_17_Mux_0_i7_4_lut_3_lut.init = 16'h6e6e;
    LUT4 i14873_2_lut_rep_535_3_lut (.A(cnt_write[0]), .B(cnt_write[4]), 
         .C(cnt_write[5]), .Z(n37300)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i14873_2_lut_rep_535_3_lut.init = 16'h2020;
    PFUMX i55 (.BLUT(n39), .ALUT(n36), .C0(\state_back_2__N_516[2] ), 
          .Z(n52_adj_1922));
    LUT4 i1_4_lut_4_lut_adj_269 (.A(cnt_init[2]), .B(\state[0] ), .C(n3001[6]), 
         .D(n37325), .Z(num_delay_19__N_605[6])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_269.init = 16'hd100;
    LUT4 i3642_2_lut_rep_593 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n37358)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(111[24:39])
    defparam i3642_2_lut_rep_593.init = 16'h6666;
    LUT4 i20989_2_lut_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(state_2__N_552[0])) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(111[24:39])
    defparam i20989_2_lut_2_lut_3_lut.init = 16'h6f6f;
    PFUMX state_2__I_0_144_i7 (.BLUT(n2_adj_1919), .ALUT(n3_adj_1932), .C0(n35186), 
          .Z(one_wire_N_673)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;
    PFUMX i30657 (.BLUT(n36963), .ALUT(n36960), .C0(\state_back_2__N_516[2] ), 
          .Z(state_2__N_513[2]));
    PFUMX i30655 (.BLUT(n37308), .ALUT(n36961), .C0(\state[0] ), .Z(n36962));
    FD1P3IX cnt_delay_i0_i14 (.D(n263[14]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_270 (.A(\state[0] ), .B(\state[1] ), .C(n12_adj_1927), 
         .D(n15), .Z(state_2__N_513[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(61[15:20])
    defparam i1_4_lut_adj_270.init = 16'heca0;
    LUT4 i29390_3_lut (.A(cnt_init[1]), .B(\state[0] ), .C(one_wire_out), 
         .Z(n35060)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i29390_3_lut.init = 16'hfefe;
    FD1P3IX cnt_delay_i0_i15 (.D(n263[15]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    LUT4 i29574_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[3]), 
         .D(cnt_write[0]), .Z(n35244)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(126[7] 189[14])
    defparam i29574_4_lut_4_lut.init = 16'h0ada;
    FD1P3IX num_delay_i0_i0 (.D(n19785), .SP(sys_clk_c_enable_346), .CD(n32206), 
            .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i0.GSR = "DISABLED";
    PFUMX i30796 (.BLUT(n37510), .ALUT(n37511), .C0(cnt_write[5]), .Z(n37512));
    FD1P3IX cnt_write_i0_i0 (.D(n37346), .SP(sys_clk_c_enable_347), .CD(n20592), 
            .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i16 (.D(n263[16]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i17 (.D(n263[17]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i18 (.D(n263[18]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    PFUMX i30776 (.BLUT(n37479), .ALUT(n37480), .C0(cnt_write[0]), .Z(n37481));
    PFUMX i30609 (.BLUT(n37345), .ALUT(n36894), .C0(\state[0] ), .Z(n36895));
    PFUMX i30772 (.BLUT(n37473), .ALUT(n37474), .C0(\state_back_2__N_516[2] ), 
          .Z(sys_clk_c_enable_31));
    PFUMX i30766 (.BLUT(n37464), .ALUT(n37465), .C0(\state[1] ), .Z(n37466));
    FD1P3IX cnt_delay_i0_i19 (.D(n263[19]), .SP(sys_clk_c_enable_376), .CD(n20533), 
            .CK(sys_clk_c), .Q(cnt_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    PFUMX i30762 (.BLUT(n37458), .ALUT(n37459), .C0(cnt_read[1]), .Z(n37460));
    PFUMX i30758 (.BLUT(n37452), .ALUT(n37453), .C0(\state[1] ), .Z(sys_clk_c_enable_305));
    L6MUX21 state_2__I_0_132_Mux_0_i3 (.D0(state_2__N_549[0]), .D1(n2), 
            .SD(n4), .Z(n3_adj_1926)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=306 */ ;
    PFUMX i30756 (.BLUT(n37449), .ALUT(n37458), .C0(cnt_read[1]), .Z(n19785));
    PFUMX i30754 (.BLUT(n37446), .ALUT(n37367), .C0(cnt_write[3]), .Z(n37448));
    PFUMX i24120 (.BLUT(n29498), .ALUT(n69), .C0(cnt_write[0]), .Z(state_2__N_549[0]));
    LUT4 i29406_3_lut_4_lut (.A(\cnt_read[0] ), .B(n38985), .C(n37343), 
         .D(n6_adj_1917), .Z(n35076)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29406_3_lut_4_lut.init = 16'hfffb;
    LUT4 i29277_4_lut_4_lut_3_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .Z(n34943)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/ds18b20.v(74[12] 263[6])
    defparam i29277_4_lut_4_lut_3_lut.init = 16'h6a6a;
    PFUMX i18 (.BLUT(n35246), .ALUT(n29481), .C0(cnt_write[5]), .Z(n5_adj_1929));
    
endmodule
//
// Verilog Description of module KEY_U1
//

module KEY_U1 (sys_clk_c, key1_c, key1_pulse, n37249, n37248, \key_mode[0] , 
            n37398, sys_clk_c_enable_58, n37313, n37319, sec, n5371, 
            hour, n5381, min, n5361, sw1_c, sys_clk_c_enable_134, 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input key1_c;
    output key1_pulse;
    output n37249;
    input n37248;
    input \key_mode[0] ;
    input n37398;
    output sys_clk_c_enable_58;
    input n37313;
    input n37319;
    input [7:0]sec;
    output [7:0]n5371;
    input [7:0]hour;
    output [7:0]n5381;
    input [7:0]min;
    output [7:0]n5361;
    input sw1_c;
    output sys_clk_c_enable_134;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire key_rst_pre, key_rst, key_sec_pre, key_sec;
    wire [17:0]cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire sys_clk_c_enable_223, n21, n34, n30, n22, n31, n28, n31695, 
        n31694, n31693, n31692, n31691, n31690, n31689, n31688, 
        n31687;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key1_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1S3IX cnt_2978__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i0.GSR = "ENABLED";
    FD1S3IX cnt_2978__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i17.GSR = "ENABLED";
    FD1S3IX cnt_2978__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i16.GSR = "ENABLED";
    FD1S3IX cnt_2978__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i15.GSR = "ENABLED";
    FD1S3IX cnt_2978__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i14.GSR = "ENABLED";
    FD1S3IX cnt_2978__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i13.GSR = "ENABLED";
    FD1S3IX cnt_2978__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i12.GSR = "ENABLED";
    FD1S3IX cnt_2978__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i11.GSR = "ENABLED";
    FD1S3IX cnt_2978__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i10.GSR = "ENABLED";
    FD1S3IX cnt_2978__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i9.GSR = "ENABLED";
    FD1S3IX cnt_2978__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i8.GSR = "ENABLED";
    FD1S3IX cnt_2978__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i7.GSR = "ENABLED";
    FD1S3IX cnt_2978__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i6.GSR = "ENABLED";
    FD1S3IX cnt_2978__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i5.GSR = "ENABLED";
    FD1S3IX cnt_2978__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i4.GSR = "ENABLED";
    FD1S3IX cnt_2978__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i3.GSR = "ENABLED";
    FD1S3IX cnt_2978__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i2.GSR = "ENABLED";
    FD1S3IX cnt_2978__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978__i1.GSR = "ENABLED";
    LUT4 key_sec_pre_I_0_2_lut (.A(key_sec_pre), .B(key_sec), .Z(key1_pulse)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut.init = 16'h2222;
    LUT4 i30001_4_lut (.A(n37249), .B(n37248), .C(\key_mode[0] ), .D(n37398), 
         .Z(sys_clk_c_enable_58)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;
    defparam i30001_4_lut.init = 16'h3733;
    FD1P3AY key_sec_29 (.D(key1_c), .SP(sys_clk_c_enable_223), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_223)) /* synthesis lut_function=(A (B (C (D)))) */ ;
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
    LUT4 i21234_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(sec[1]), .Z(n5371[1])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21234_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    LUT4 i20843_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(sec[0]), .Z(n5371[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i20843_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21238_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(sec[5]), .Z(n5371[5])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21238_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21235_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(sec[2]), .Z(n5371[2])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21235_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21236_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(sec[3]), .Z(n5371[3])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21236_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21237_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(sec[4]), .Z(n5371[4])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21237_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21240_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(sec[7]), .Z(n5371[7])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21240_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21239_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(sec[6]), .Z(n5371[6])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21239_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20953_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(hour[7]), .Z(n5381[7])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i20953_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20954_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(hour[6]), .Z(n5381[6])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i20954_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20957_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(hour[3]), .Z(n5381[3])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i20957_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20958_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(hour[2]), .Z(n5381[2])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i20958_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21390_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(min[7]), .Z(n5361[7])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21390_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21389_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(min[6]), .Z(n5361[6])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21389_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21387_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(min[4]), .Z(n5361[4])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21387_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21388_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(min[5]), .Z(n5361[5])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21388_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21385_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(min[2]), .Z(n5361[2])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21385_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21386_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(min[3]), .Z(n5361[3])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21386_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20894_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(min[0]), .Z(n5361[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i20894_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i21384_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(min[1]), .Z(n5361[1])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i21384_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20956_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(hour[4]), .Z(n5381[4])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i20956_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20955_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(hour[5]), .Z(n5381[5])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i20955_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20654_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(hour[0]), .Z(n5381[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i20654_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i20959_2_lut_3_lut_4_lut_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(hour[1]), .Z(n5381[1])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i20959_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_484_4_lut (.A(n37313), .B(key1_pulse), .C(n37319), 
         .D(sw1_c), .Z(n37249)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;
    defparam i1_2_lut_rep_484_4_lut.init = 16'hffce;
    LUT4 i29995_3_lut_4_lut_4_lut (.A(n37248), .B(n37398), .C(n37249), 
         .D(\key_mode[0] ), .Z(sys_clk_c_enable_134)) /* synthesis lut_function=(!(A ((C+!(D))+!B))) */ ;
    defparam i29995_3_lut_4_lut_4_lut.init = 16'h5d55;
    CCU2D cnt_2978_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31695), .S0(n77[17]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2978_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2978_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2978_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2978_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31694), .COUT(n31695), .S0(n77[15]), .S1(n77[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2978_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2978_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2978_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2978_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31693), .COUT(n31694), .S0(n77[13]), .S1(n77[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2978_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2978_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2978_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_2978_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31692), .COUT(n31693), .S0(n77[11]), .S1(n77[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2978_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2978_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2978_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_2978_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31691), .COUT(n31692), .S0(n77[9]), .S1(n77[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2978_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2978_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2978_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2978_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31690), 
          .COUT(n31691), .S0(n77[7]), .S1(n77[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2978_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2978_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2978_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2978_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31689), 
          .COUT(n31690), .S0(n77[5]), .S1(n77[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2978_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2978_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2978_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_2978_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31688), 
          .COUT(n31689), .S0(n77[3]), .S1(n77[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2978_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2978_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2978_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_2978_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31687), 
          .COUT(n31688), .S0(n77[1]), .S1(n77[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2978_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2978_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2978_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_2978_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31687), .S1(n77[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2978_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2978_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2978_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2978_add_4_1.INJECT1_1 = "NO";
    
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

module music_play (uart_recv_data, \state[0] , sys_clk_c, sys_clk_c_enable_28, 
            n31, music_cnt, sys_clk_c_enable_354, \state[1] , cnt_run, 
            sys_clk_c_enable_130, n34172, \music_tone[0] , \state_back[0] , 
            sys_clk_c_enable_34, uart_recv_done, sys_clk_c_enable_302, 
            warning_TEM, sys_clk_c_enable_83, uart_music_mode, n37351, 
            n37348, n10, n37258, n11, GND_net, n39002, sys_clk_c_enable_128, 
            n33626, \music_tone[4] , \music_tone[3] , \music_tone[2] , 
            \music_tone[1] , sys_clk_c_enable_368, n32322, n136, n139, 
            warning, n123, n126, n3686, n17, n7, n34666, n87, 
            n4, n34678, n4_adj_10, n4_adj_11, n4_adj_12, sys_rst_n_c, 
            n34512, n51, n37293, n34226, n34214) /* synthesis syn_module_defined=1 */ ;
    input [7:0]uart_recv_data;
    output \state[0] ;
    input sys_clk_c;
    input sys_clk_c_enable_28;
    input n31;
    output [8:0]music_cnt;
    input sys_clk_c_enable_354;
    output \state[1] ;
    output [7:0]cnt_run;
    input sys_clk_c_enable_130;
    input n34172;
    output \music_tone[0] ;
    output \state_back[0] ;
    input sys_clk_c_enable_34;
    input uart_recv_done;
    input sys_clk_c_enable_302;
    output warning_TEM;
    output sys_clk_c_enable_83;
    output uart_music_mode;
    output n37351;
    output n37348;
    output n10;
    output n37258;
    output n11;
    input GND_net;
    input n39002;
    input sys_clk_c_enable_128;
    input n33626;
    output \music_tone[4] ;
    output \music_tone[3] ;
    output \music_tone[2] ;
    output \music_tone[1] ;
    input sys_clk_c_enable_368;
    output n32322;
    output n136;
    output n139;
    input warning;
    input n123;
    input n126;
    output n3686;
    output n17;
    output n7;
    input n34666;
    input n87;
    input n4;
    input n34678;
    input n4_adj_10;
    input n4_adj_11;
    output n4_adj_12;
    input sys_rst_n_c;
    output n34512;
    input n51;
    output n37293;
    input n34226;
    input n34214;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire n4_c, n10_c, n37287, uart_data_busy_N_1704, n20691;
    wire [8:0]n41;
    
    wire recv_done_d1, recv_done_d0, sys_clk_c_enable_147;
    wire [7:0]music_tone_7__N_1635;
    wire [15:0]n121;
    
    wire n20676;
    wire [15:0]n69;
    wire [7:0]n131;
    wire [15:0]cnt_delay;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(44[12:21])
    
    wire n31759;
    wire [15:0]clk_cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(49[13:20])
    wire [15:0]n69_adj_1914;
    
    wire sys_clk_c_enable_124, sys_clk_c_enable_125, sys_clk_c_enable_126, 
        sys_clk_c_enable_127, sys_clk_c_enable_129, n31758, n31757, 
        n31756, n31755, n31754, n31753, n381, n31752, n31751, 
        n31750, n31670, n31749, n31748, n31669, n31747, n31746, 
        n31745, n31744, n31742, n31741, n31668, n31740, n31739, 
        n31667, n37292, n7_c, n8, n8_adj_1900, n8_adj_1901, n8_adj_1902, 
        n8_adj_1903, n32023, n31803, n31802, n31801, n31800, n31799, 
        n31798, n17_c, n18, n16_adj_1905, n35042, n35040, n15_adj_1906, 
        n34993, n4_adj_1908, n4_adj_1909;
    
    LUT4 i2_4_lut_rep_522 (.A(uart_recv_data[6]), .B(n4_c), .C(n10_c), 
         .D(uart_recv_data[2]), .Z(n37287)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_4_lut_rep_522.init = 16'hfeff;
    FD1P3AX state__i0 (.D(n31), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(\state[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam state__i0.GSR = "ENABLED";
    LUT4 uart_recv_data_7__I_0_i16_1_lut_4_lut (.A(uart_recv_data[6]), .B(n4_c), 
         .C(n10_c), .D(uart_recv_data[2]), .Z(uart_data_busy_N_1704)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam uart_recv_data_7__I_0_i16_1_lut_4_lut.init = 16'h0100;
    FD1P3IX music_cnt_2987__i8 (.D(n41[8]), .SP(sys_clk_c_enable_354), .CD(n20691), 
            .CK(sys_clk_c), .Q(music_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987__i8.GSR = "DISABLED";
    FD1P3AX state__i1 (.D(\state[0] ), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(\state[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam state__i1.GSR = "ENABLED";
    FD1S3AX recv_done_d1_586 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam recv_done_d1_586.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i0 (.D(n34172), .SP(sys_clk_c_enable_130), .CK(sys_clk_c), 
            .Q(cnt_run[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    FD1P3AX music_tone__i1 (.D(music_tone_7__N_1635[0]), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .Q(\music_tone[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam music_tone__i1.GSR = "DISABLED";
    FD1P3AX state_back_i0_i0 (.D(\state[0] ), .SP(sys_clk_c_enable_34), 
            .CK(sys_clk_c), .Q(\state_back[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    FD1S3AX recv_done_d0_585 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam recv_done_d0_585.GSR = "ENABLED";
    FD1P3IX cnt_delay_2988__i1 (.D(n69[1]), .SP(sys_clk_c_enable_302), .CD(n20676), 
            .CK(sys_clk_c), .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i1.GSR = "DISABLED";
    FD1P3IX cnt_delay_2988__i2 (.D(n69[2]), .SP(sys_clk_c_enable_302), .CD(n20676), 
            .CK(sys_clk_c), .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i2.GSR = "DISABLED";
    FD1P3AY uart_data_busy_591 (.D(uart_data_busy_N_1704), .SP(sys_clk_c_enable_83), 
            .CK(sys_clk_c), .Q(warning_TEM)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam uart_data_busy_591.GSR = "ENABLED";
    FD1P3AX uart_music_mode_589 (.D(n37287), .SP(sys_clk_c_enable_83), .CK(sys_clk_c), 
            .Q(uart_music_mode)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam uart_music_mode_589.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_493_4_lut (.A(n37351), .B(n37348), .C(cnt_run[1]), 
         .D(n10), .Z(n37258)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i2_3_lut_rep_493_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(n37351), .B(n37348), .C(n10), .D(n131[1]), 
         .Z(n11)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i2_3_lut_4_lut.init = 16'h0100;
    FD1P3IX cnt_delay_2988__i3 (.D(n69[3]), .SP(sys_clk_c_enable_302), .CD(n20676), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i3.GSR = "DISABLED";
    FD1P3IX cnt_delay_2988__i4 (.D(n69[4]), .SP(sys_clk_c_enable_302), .CD(n20676), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i4.GSR = "DISABLED";
    FD1P3IX cnt_delay_2988__i5 (.D(n69[5]), .SP(sys_clk_c_enable_302), .CD(n20676), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i5.GSR = "DISABLED";
    FD1P3IX cnt_delay_2988__i6 (.D(n69[6]), .SP(sys_clk_c_enable_302), .CD(n20676), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i6.GSR = "DISABLED";
    CCU2D clk_cnt_2989_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31759), .S0(n69_adj_1914[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_2989_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_2989_add_4_17.INJECT1_1 = "NO";
    FD1P3AX cnt_run_i0_i7 (.D(n39002), .SP(sys_clk_c_enable_124), .CK(sys_clk_c), 
            .Q(cnt_run[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i6 (.D(n39002), .SP(sys_clk_c_enable_125), .CK(sys_clk_c), 
            .Q(cnt_run[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n39002), .SP(sys_clk_c_enable_126), .CK(sys_clk_c), 
            .Q(cnt_run[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i4 (.D(n39002), .SP(sys_clk_c_enable_127), .CK(sys_clk_c), 
            .Q(cnt_run[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n39002), .SP(sys_clk_c_enable_128), .CK(sys_clk_c), 
            .Q(cnt_run[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i2 (.D(n39002), .SP(sys_clk_c_enable_129), .CK(sys_clk_c), 
            .Q(cnt_run[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i1 (.D(n33626), .SP(sys_clk_c_enable_130), .CK(sys_clk_c), 
            .Q(cnt_run[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_2988__i7 (.D(n69[7]), .SP(sys_clk_c_enable_302), .CD(n20676), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i7.GSR = "DISABLED";
    CCU2D clk_cnt_2989_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31758), .COUT(n31759), .S0(n69_adj_1914[13]), 
          .S1(n69_adj_1914[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_2989_add_4_15.INJECT1_1 = "NO";
    FD1P3AX music_tone__i5 (.D(music_tone_7__N_1635[4]), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .Q(\music_tone[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam music_tone__i5.GSR = "DISABLED";
    FD1P3AX music_tone__i4 (.D(music_tone_7__N_1635[3]), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .Q(\music_tone[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam music_tone__i4.GSR = "DISABLED";
    FD1P3AX music_tone__i3 (.D(music_tone_7__N_1635[2]), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .Q(\music_tone[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam music_tone__i3.GSR = "DISABLED";
    FD1P3AX music_tone__i2 (.D(music_tone_7__N_1635[1]), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .Q(\music_tone[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=437, LSE_RLINE=450 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam music_tone__i2.GSR = "DISABLED";
    CCU2D clk_cnt_2989_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31757), .COUT(n31758), .S0(n69_adj_1914[11]), 
          .S1(n69_adj_1914[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_2989_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_2989_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31756), .COUT(n31757), .S0(n69_adj_1914[9]), 
          .S1(n69_adj_1914[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_2989_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_2989_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31755), .COUT(n31756), .S0(n69_adj_1914[7]), 
          .S1(n69_adj_1914[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_2989_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_2989_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31754), .COUT(n31755), .S0(n69_adj_1914[5]), 
          .S1(n69_adj_1914[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_2989_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_2989_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31753), .COUT(n31754), .S0(n69_adj_1914[3]), 
          .S1(n69_adj_1914[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_2989_add_4_5.INJECT1_1 = "NO";
    LUT4 i15198_2_lut_3_lut (.A(sys_clk_c_enable_368), .B(n32322), .C(n381), 
         .Z(n20676)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam i15198_2_lut_3_lut.init = 16'h2020;
    CCU2D clk_cnt_2989_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31752), .COUT(n31753), .S0(n69_adj_1914[1]), 
          .S1(n69_adj_1914[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_2989_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_2989_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_2989_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31752), .S1(n69_adj_1914[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_2989_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_2989_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_2989_add_4_1.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_2988__i8 (.D(n69[8]), .SP(sys_clk_c_enable_302), .CD(n20676), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i8.GSR = "DISABLED";
    FD1P3IX cnt_delay_2988__i9 (.D(n69[9]), .SP(sys_clk_c_enable_302), .CD(n20676), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i9.GSR = "DISABLED";
    CCU2D cnt_delay_2988_add_4_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31751), .S0(n69[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_17.INIT1 = 16'h0000;
    defparam cnt_delay_2988_add_4_17.INJECT1_0 = "NO";
    defparam cnt_delay_2988_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_delay_2988_add_4_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31750), .COUT(n31751), .S0(n69[13]), .S1(n69[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_15.INJECT1_0 = "NO";
    defparam cnt_delay_2988_add_4_15.INJECT1_1 = "NO";
    CCU2D add_114_9 (.A0(cnt_run[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31670), 
          .S0(n131[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(263[17:29])
    defparam add_114_9.INIT0 = 16'h5aaa;
    defparam add_114_9.INIT1 = 16'h0000;
    defparam add_114_9.INJECT1_0 = "NO";
    defparam add_114_9.INJECT1_1 = "NO";
    CCU2D cnt_delay_2988_add_4_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31749), .COUT(n31750), .S0(n69[11]), .S1(n69[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_13.INJECT1_0 = "NO";
    defparam cnt_delay_2988_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_delay_2988_add_4_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31748), .COUT(n31749), .S0(n69[9]), .S1(n69[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_11.INJECT1_0 = "NO";
    defparam cnt_delay_2988_add_4_11.INJECT1_1 = "NO";
    CCU2D add_114_7 (.A0(cnt_run[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31669), .COUT(n31670), .S0(n131[5]), .S1(n131[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(263[17:29])
    defparam add_114_7.INIT0 = 16'h5aaa;
    defparam add_114_7.INIT1 = 16'h5aaa;
    defparam add_114_7.INJECT1_0 = "NO";
    defparam add_114_7.INJECT1_1 = "NO";
    CCU2D cnt_delay_2988_add_4_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31747), .COUT(n31748), .S0(n69[7]), .S1(n69[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_9.INJECT1_0 = "NO";
    defparam cnt_delay_2988_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_delay_2988_add_4_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31746), .COUT(n31747), .S0(n69[5]), .S1(n69[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_7.INJECT1_0 = "NO";
    defparam cnt_delay_2988_add_4_7.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_2988__i10 (.D(n69[10]), .SP(sys_clk_c_enable_302), 
            .CD(n20676), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i10.GSR = "DISABLED";
    FD1P3IX cnt_delay_2988__i11 (.D(n69[11]), .SP(sys_clk_c_enable_302), 
            .CD(n20676), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i11.GSR = "DISABLED";
    FD1P3IX cnt_delay_2988__i12 (.D(n69[12]), .SP(sys_clk_c_enable_302), 
            .CD(n20676), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i12.GSR = "DISABLED";
    CCU2D cnt_delay_2988_add_4_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31745), .COUT(n31746), .S0(n69[3]), .S1(n69[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_5.INJECT1_0 = "NO";
    defparam cnt_delay_2988_add_4_5.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_2988__i13 (.D(n69[13]), .SP(sys_clk_c_enable_302), 
            .CD(n20676), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i13.GSR = "DISABLED";
    CCU2D cnt_delay_2988_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31744), .COUT(n31745), .S0(n69[1]), .S1(n69[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_delay_2988_add_4_3.INJECT1_0 = "NO";
    defparam cnt_delay_2988_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_delay_2988_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31744), .S1(n69[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988_add_4_1.INIT0 = 16'hF000;
    defparam cnt_delay_2988_add_4_1.INIT1 = 16'h0555;
    defparam cnt_delay_2988_add_4_1.INJECT1_0 = "NO";
    defparam cnt_delay_2988_add_4_1.INJECT1_1 = "NO";
    CCU2D music_cnt_2987_add_4_9 (.A0(music_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31742), .S0(n41[7]), .S1(n41[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987_add_4_9.INIT0 = 16'hfaaa;
    defparam music_cnt_2987_add_4_9.INIT1 = 16'hfaaa;
    defparam music_cnt_2987_add_4_9.INJECT1_0 = "NO";
    defparam music_cnt_2987_add_4_9.INJECT1_1 = "NO";
    CCU2D music_cnt_2987_add_4_7 (.A0(music_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31741), .COUT(n31742), .S0(n41[5]), .S1(n41[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987_add_4_7.INIT0 = 16'hfaaa;
    defparam music_cnt_2987_add_4_7.INIT1 = 16'hfaaa;
    defparam music_cnt_2987_add_4_7.INJECT1_0 = "NO";
    defparam music_cnt_2987_add_4_7.INJECT1_1 = "NO";
    CCU2D add_114_5 (.A0(cnt_run[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31668), .COUT(n31669), .S0(n136), .S1(n131[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(263[17:29])
    defparam add_114_5.INIT0 = 16'h5aaa;
    defparam add_114_5.INIT1 = 16'h5aaa;
    defparam add_114_5.INJECT1_0 = "NO";
    defparam add_114_5.INJECT1_1 = "NO";
    CCU2D music_cnt_2987_add_4_5 (.A0(music_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31740), .COUT(n31741), .S0(n41[3]), .S1(n41[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987_add_4_5.INIT0 = 16'hfaaa;
    defparam music_cnt_2987_add_4_5.INIT1 = 16'hfaaa;
    defparam music_cnt_2987_add_4_5.INJECT1_0 = "NO";
    defparam music_cnt_2987_add_4_5.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_2988__i14 (.D(n69[14]), .SP(sys_clk_c_enable_302), 
            .CD(n20676), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i14.GSR = "DISABLED";
    CCU2D music_cnt_2987_add_4_3 (.A0(music_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31739), .COUT(n31740), .S0(n41[1]), .S1(n41[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987_add_4_3.INIT0 = 16'hfaaa;
    defparam music_cnt_2987_add_4_3.INIT1 = 16'hfaaa;
    defparam music_cnt_2987_add_4_3.INJECT1_0 = "NO";
    defparam music_cnt_2987_add_4_3.INJECT1_1 = "NO";
    CCU2D add_114_3 (.A0(cnt_run[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31667), .COUT(n31668), .S0(n131[1]), .S1(n131[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(263[17:29])
    defparam add_114_3.INIT0 = 16'h5aaa;
    defparam add_114_3.INIT1 = 16'h5aaa;
    defparam add_114_3.INJECT1_0 = "NO";
    defparam add_114_3.INJECT1_1 = "NO";
    CCU2D music_cnt_2987_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31739), .S1(n41[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987_add_4_1.INIT0 = 16'hF000;
    defparam music_cnt_2987_add_4_1.INIT1 = 16'h0555;
    defparam music_cnt_2987_add_4_1.INJECT1_0 = "NO";
    defparam music_cnt_2987_add_4_1.INJECT1_1 = "NO";
    CCU2D add_114_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31667), .S1(n139));   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(263[17:29])
    defparam add_114_1.INIT0 = 16'hF000;
    defparam add_114_1.INIT1 = 16'h5555;
    defparam add_114_1.INJECT1_0 = "NO";
    defparam add_114_1.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_2988__i15 (.D(n69[15]), .SP(sys_clk_c_enable_302), 
            .CD(n20676), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i15.GSR = "DISABLED";
    FD1P3IX clk_cnt_2989__i1 (.D(n69_adj_1914[1]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i1.GSR = "DISABLED";
    FD1P3IX clk_cnt_2989__i2 (.D(n69_adj_1914[2]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i2.GSR = "DISABLED";
    LUT4 i2_2_lut_4_lut (.A(n37292), .B(n10), .C(cnt_run[1]), .D(\state[1] ), 
         .Z(n7_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i2_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n37292), .B(n10), .C(cnt_run[1]), .D(n131[7]), 
         .Z(n8)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i1_2_lut_4_lut.init = 16'h0100;
    FD1P3IX clk_cnt_2989__i3 (.D(n69_adj_1914[3]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i3.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_adj_227 (.A(n37292), .B(n10), .C(cnt_run[1]), 
         .D(n131[6]), .Z(n8_adj_1900)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i1_2_lut_4_lut_adj_227.init = 16'h0100;
    LUT4 i1_2_lut_4_lut_adj_228 (.A(n37292), .B(n10), .C(cnt_run[1]), 
         .D(n131[5]), .Z(n8_adj_1901)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i1_2_lut_4_lut_adj_228.init = 16'h0100;
    LUT4 i1_2_lut_4_lut_adj_229 (.A(n37292), .B(n10), .C(cnt_run[1]), 
         .D(n131[4]), .Z(n8_adj_1902)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i1_2_lut_4_lut_adj_229.init = 16'h0100;
    FD1P3IX clk_cnt_2989__i4 (.D(n69_adj_1914[4]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i4.GSR = "DISABLED";
    LUT4 mux_3287_i5_4_lut (.A(warning), .B(uart_recv_data[4]), .C(sys_clk_c_enable_83), 
         .D(uart_music_mode), .Z(music_tone_7__N_1635[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(102[7] 324[5])
    defparam mux_3287_i5_4_lut.init = 16'hc0c5;
    LUT4 i1_2_lut_4_lut_adj_230 (.A(n37292), .B(n10), .C(cnt_run[1]), 
         .D(n131[2]), .Z(n8_adj_1903)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i1_2_lut_4_lut_adj_230.init = 16'h0100;
    LUT4 mux_3287_i4_4_lut (.A(n123), .B(uart_recv_data[3]), .C(sys_clk_c_enable_83), 
         .D(n32023), .Z(music_tone_7__N_1635[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(102[7] 324[5])
    defparam mux_3287_i4_4_lut.init = 16'hc0ca;
    FD1P3IX clk_cnt_2989__i5 (.D(n69_adj_1914[5]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i5.GSR = "DISABLED";
    FD1P3IX clk_cnt_2989__i6 (.D(n69_adj_1914[6]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i6.GSR = "DISABLED";
    LUT4 mux_3287_i1_4_lut (.A(n126), .B(uart_recv_data[0]), .C(sys_clk_c_enable_83), 
         .D(n32023), .Z(music_tone_7__N_1635[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(102[7] 324[5])
    defparam mux_3287_i1_4_lut.init = 16'hc0ca;
    LUT4 i4_4_lut (.A(n7_c), .B(\state[0] ), .C(cnt_run[0]), .D(warning), 
         .Z(n32023)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(111[8] 323[6])
    defparam i4_4_lut.init = 16'hfbff;
    FD1P3IX clk_cnt_2989__i7 (.D(n69_adj_1914[7]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i7.GSR = "DISABLED";
    FD1P3IX clk_cnt_2989__i8 (.D(n69_adj_1914[8]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i8.GSR = "DISABLED";
    FD1P3IX clk_cnt_2989__i9 (.D(n69_adj_1914[9]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i9.GSR = "DISABLED";
    FD1P3IX clk_cnt_2989__i0 (.D(n69_adj_1914[0]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i0.GSR = "DISABLED";
    FD1P3IX cnt_delay_2988__i0 (.D(n69[0]), .SP(sys_clk_c_enable_302), .CD(n20676), 
            .CK(sys_clk_c), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(312[42:58])
    defparam cnt_delay_2988__i0.GSR = "DISABLED";
    FD1P3IX music_cnt_2987__i0 (.D(n41[0]), .SP(sys_clk_c_enable_354), .CD(n20691), 
            .CK(sys_clk_c), .Q(music_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987__i0.GSR = "DISABLED";
    LUT4 i1218_2_lut (.A(n381), .B(n32322), .Z(n3686)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(314[26] 317[24])
    defparam i1218_2_lut.init = 16'h2222;
    LUT4 i1_2_lut (.A(cnt_run[2]), .B(cnt_run[3]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D sub_2360_add_2_14 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31803), .S1(n381));
    defparam sub_2360_add_2_14.INIT0 = 16'h5555;
    defparam sub_2360_add_2_14.INIT1 = 16'h0000;
    defparam sub_2360_add_2_14.INJECT1_0 = "NO";
    defparam sub_2360_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_2360_add_2_12 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31802), .COUT(n31803));
    defparam sub_2360_add_2_12.INIT0 = 16'h5555;
    defparam sub_2360_add_2_12.INIT1 = 16'h5555;
    defparam sub_2360_add_2_12.INJECT1_0 = "NO";
    defparam sub_2360_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_2360_add_2_10 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31801), .COUT(n31802));
    defparam sub_2360_add_2_10.INIT0 = 16'h5555;
    defparam sub_2360_add_2_10.INIT1 = 16'h5555;
    defparam sub_2360_add_2_10.INJECT1_0 = "NO";
    defparam sub_2360_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_2360_add_2_8 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31800), .COUT(n31801));
    defparam sub_2360_add_2_8.INIT0 = 16'h5555;
    defparam sub_2360_add_2_8.INIT1 = 16'h5555;
    defparam sub_2360_add_2_8.INJECT1_0 = "NO";
    defparam sub_2360_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_2360_add_2_6 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31799), .COUT(n31800));
    defparam sub_2360_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_2360_add_2_6.INIT1 = 16'h5555;
    defparam sub_2360_add_2_6.INJECT1_0 = "NO";
    defparam sub_2360_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_2360_add_2_4 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31798), .COUT(n31799));
    defparam sub_2360_add_2_4.INIT0 = 16'h5555;
    defparam sub_2360_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_2360_add_2_4.INJECT1_0 = "NO";
    defparam sub_2360_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_2360_add_2_2 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31798));
    defparam sub_2360_add_2_2.INIT0 = 16'h5000;
    defparam sub_2360_add_2_2.INIT1 = 16'h5555;
    defparam sub_2360_add_2_2.INJECT1_0 = "NO";
    defparam sub_2360_add_2_2.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(clk_cnt[9]), .B(n17_c), .C(clk_cnt[5]), .D(n18), 
         .Z(n32322)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i15206_2_lut (.A(sys_clk_c_enable_354), .B(n17), .Z(n20691)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam i15206_2_lut.init = 16'h2222;
    LUT4 i7_4_lut (.A(clk_cnt[12]), .B(clk_cnt[2]), .C(clk_cnt[8]), .D(clk_cnt[4]), 
         .Z(n17_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(clk_cnt[1]), .B(n16_adj_1905), .C(n35042), .D(n35040), 
         .Z(n18)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i8_4_lut.init = 16'hefff;
    LUT4 i8_4_lut_adj_231 (.A(n15_adj_1906), .B(music_cnt[0]), .C(n34993), 
         .D(music_cnt[4]), .Z(n17)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i8_4_lut_adj_231.init = 16'hbfff;
    LUT4 i6_4_lut (.A(music_cnt[6]), .B(music_cnt[7]), .C(music_cnt[8]), 
         .D(music_cnt[5]), .Z(n15_adj_1906)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i6_4_lut.init = 16'hfffd;
    LUT4 i6_4_lut_adj_232 (.A(clk_cnt[15]), .B(clk_cnt[0]), .C(clk_cnt[3]), 
         .D(clk_cnt[14]), .Z(n16_adj_1905)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_232.init = 16'hfffe;
    LUT4 i29372_2_lut (.A(clk_cnt[11]), .B(clk_cnt[10]), .Z(n35042)) /* synthesis lut_function=(A (B)) */ ;
    defparam i29372_2_lut.init = 16'h8888;
    LUT4 i29370_3_lut (.A(clk_cnt[7]), .B(clk_cnt[13]), .C(clk_cnt[6]), 
         .Z(n35040)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i29370_3_lut.init = 16'h8080;
    LUT4 i29326_3_lut (.A(music_cnt[1]), .B(music_cnt[2]), .C(music_cnt[3]), 
         .Z(n34993)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i29326_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_233 (.A(uart_recv_data[0]), .B(uart_recv_data[3]), 
         .Z(n4_c)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_233.init = 16'heeee;
    LUT4 i4_4_lut_adj_234 (.A(uart_recv_data[5]), .B(uart_recv_data[7]), 
         .C(uart_recv_data[4]), .D(uart_recv_data[1]), .Z(n10_c)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i4_4_lut_adj_234.init = 16'hefff;
    FD1P3IX clk_cnt_2989__i10 (.D(n69_adj_1914[10]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i10.GSR = "DISABLED";
    FD1P3IX clk_cnt_2989__i11 (.D(n69_adj_1914[11]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i11.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_583 (.A(cnt_run[7]), .B(cnt_run[6]), .Z(n37348)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_583.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(cnt_run[7]), .B(cnt_run[6]), .C(cnt_run[0]), 
         .Z(n7)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_586 (.A(cnt_run[4]), .B(cnt_run[5]), .Z(n37351)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i1_2_lut_rep_586.init = 16'heeee;
    LUT4 i2_2_lut_rep_527_3_lut_4_lut (.A(cnt_run[4]), .B(cnt_run[5]), .C(cnt_run[6]), 
         .D(cnt_run[7]), .Z(n37292)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(265[7:11])
    defparam i2_2_lut_rep_527_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX clk_cnt_2989__i12 (.D(n69_adj_1914[12]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i12.GSR = "DISABLED";
    LUT4 i13936_4_lut (.A(sys_clk_c_enable_130), .B(n8), .C(n34666), .D(n4_adj_1908), 
         .Z(sys_clk_c_enable_124)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i13936_4_lut.init = 16'ha888;
    LUT4 i1_2_lut_adj_235 (.A(cnt_run[6]), .B(cnt_run[7]), .Z(n4_adj_1908)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(280[12:30])
    defparam i1_2_lut_adj_235.init = 16'h4444;
    LUT4 i13934_4_lut (.A(sys_clk_c_enable_130), .B(n8_adj_1900), .C(n34666), 
         .D(n4_adj_1909), .Z(sys_clk_c_enable_125)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i13934_4_lut.init = 16'ha888;
    LUT4 i1_2_lut_adj_236 (.A(cnt_run[7]), .B(cnt_run[6]), .Z(n4_adj_1909)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(280[12:30])
    defparam i1_2_lut_adj_236.init = 16'h4444;
    LUT4 i13932_4_lut (.A(sys_clk_c_enable_130), .B(n87), .C(n8_adj_1901), 
         .D(n4), .Z(sys_clk_c_enable_126)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i13932_4_lut.init = 16'ha8a0;
    LUT4 i13930_4_lut (.A(sys_clk_c_enable_130), .B(n34678), .C(n8_adj_1902), 
         .D(n4_adj_10), .Z(sys_clk_c_enable_127)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i13930_4_lut.init = 16'ha8a0;
    FD1P3IX music_cnt_2987__i1 (.D(n41[1]), .SP(sys_clk_c_enable_354), .CD(n20691), 
            .CK(sys_clk_c), .Q(music_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987__i1.GSR = "DISABLED";
    FD1P3IX music_cnt_2987__i2 (.D(n41[2]), .SP(sys_clk_c_enable_354), .CD(n20691), 
            .CK(sys_clk_c), .Q(music_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987__i2.GSR = "DISABLED";
    FD1P3IX music_cnt_2987__i3 (.D(n41[3]), .SP(sys_clk_c_enable_354), .CD(n20691), 
            .CK(sys_clk_c), .Q(music_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987__i3.GSR = "DISABLED";
    LUT4 i13926_4_lut (.A(sys_clk_c_enable_130), .B(n8_adj_1903), .C(n34678), 
         .D(n4_adj_11), .Z(sys_clk_c_enable_129)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(85[10] 324[5])
    defparam i13926_4_lut.init = 16'ha888;
    LUT4 i30007_2_lut_rep_595 (.A(recv_done_d0), .B(recv_done_d1), .Z(sys_clk_c_enable_83)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam i30007_2_lut_rep_595.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(recv_done_d0), .B(recv_done_d1), .C(\state[0] ), 
         .D(warning), .Z(n4_adj_12)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0d00;
    LUT4 i2_3_lut_4_lut_adj_237 (.A(recv_done_d0), .B(recv_done_d1), .C(sys_rst_n_c), 
         .D(warning), .Z(n34512)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam i2_3_lut_4_lut_adj_237.init = 16'hd000;
    FD1P3IX music_cnt_2987__i4 (.D(n41[4]), .SP(sys_clk_c_enable_354), .CD(n20691), 
            .CK(sys_clk_c), .Q(music_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987__i4.GSR = "DISABLED";
    FD1P3IX music_cnt_2987__i5 (.D(n41[5]), .SP(sys_clk_c_enable_354), .CD(n20691), 
            .CK(sys_clk_c), .Q(music_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987__i5.GSR = "DISABLED";
    FD1P3IX music_cnt_2987__i6 (.D(n41[6]), .SP(sys_clk_c_enable_354), .CD(n20691), 
            .CK(sys_clk_c), .Q(music_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987__i6.GSR = "DISABLED";
    FD1P3IX music_cnt_2987__i7 (.D(n41[7]), .SP(sys_clk_c_enable_354), .CD(n20691), 
            .CK(sys_clk_c), .Q(music_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(283[23:39])
    defparam music_cnt_2987__i7.GSR = "DISABLED";
    LUT4 i93_3_lut_4_lut (.A(recv_done_d0), .B(recv_done_d1), .C(n51), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_147)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam i93_3_lut_4_lut.init = 16'hf200;
    LUT4 i26207_2_lut_rep_528_3_lut (.A(recv_done_d0), .B(recv_done_d1), 
         .C(warning), .Z(n37293)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam i26207_2_lut_rep_528_3_lut.init = 16'hd0d0;
    FD1P3IX clk_cnt_2989__i13 (.D(n69_adj_1914[13]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i13.GSR = "DISABLED";
    LUT4 mux_3287_i3_3_lut_4_lut (.A(recv_done_d0), .B(recv_done_d1), .C(uart_recv_data[2]), 
         .D(n34226), .Z(music_tone_7__N_1635[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam mux_3287_i3_3_lut_4_lut.init = 16'hfd20;
    FD1P3IX clk_cnt_2989__i14 (.D(n69_adj_1914[14]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i14.GSR = "DISABLED";
    FD1P3IX clk_cnt_2989__i15 (.D(n69_adj_1914[15]), .SP(sys_clk_c_enable_368), 
            .CD(sys_clk_c_enable_302), .CK(sys_clk_c), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(315[36:50])
    defparam clk_cnt_2989__i15.GSR = "DISABLED";
    LUT4 mux_3287_i2_3_lut_4_lut (.A(recv_done_d0), .B(recv_done_d1), .C(uart_recv_data[1]), 
         .D(n34214), .Z(music_tone_7__N_1635[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/music_player.v(66[10] 69[8])
    defparam mux_3287_i2_3_lut_4_lut.init = 16'hfd20;
    
endmodule
//
// Verilog Description of module BCD_U4
//

module BCD_U4 (\hundres_0__N_350[3] , n8157, n8447, \min[3] , \min[2] , 
            \min[7] , \min[4] , n4, hundres_0__N_355, \min[1] , \min_ones[1] , 
            \min_ones[3] , \min_ones[2] , \min[6] , \min[5] , \min_tens[0] ) /* synthesis syn_module_defined=1 */ ;
    output \hundres_0__N_350[3] ;
    input n8157;
    output n8447;
    input \min[3] ;
    input \min[2] ;
    input \min[7] ;
    input \min[4] ;
    output n4;
    output hundres_0__N_355;
    input \min[1] ;
    output \min_ones[1] ;
    output \min_ones[3] ;
    output \min_ones[2] ;
    input \min[6] ;
    input \min[5] ;
    output \min_tens[0] ;
    
    
    wire n37167;
    wire [3:0]hundres_1__N_340;
    
    wire n37294, n37128, n37133;
    wire [3:0]hundres_0__N_347;
    wire [3:0]hundres_1__N_339;
    
    wire n37259, n37492, n37491, n37179;
    wire [3:0]hundres_1__N_341;
    wire [3:0]hundres_0__N_350;
    
    wire n37138, n37362, n37144, n37210, n37493;
    
    LUT4 i3496_2_lut_rep_363_3_lut_4_lut_4_lut (.A(n37167), .B(hundres_1__N_340[3]), 
         .C(\hundres_0__N_350[3] ), .D(n37294), .Z(n37128)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i3496_2_lut_rep_363_3_lut_4_lut_4_lut.init = 16'hf4fa;
    LUT4 i3990_3_lut_4_lut (.A(\hundres_0__N_350[3] ), .B(n37133), .C(n8157), 
         .D(hundres_0__N_347[1]), .Z(n8447)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i3990_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3500_2_lut_rep_390_4_lut_4_lut_then_4_lut (.A(hundres_1__N_339[2]), 
         .B(hundres_1__N_339[1]), .C(n37259), .D(\min[3] ), .Z(n37492)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C))) */ ;
    defparam i3500_2_lut_rep_390_4_lut_4_lut_then_4_lut.init = 16'hf676;
    LUT4 i3500_2_lut_rep_390_4_lut_4_lut_else_4_lut (.A(hundres_1__N_339[2]), 
         .B(hundres_1__N_339[1]), .C(n37259), .D(\min[3] ), .Z(n37491)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C (D))))) */ ;
    defparam i3500_2_lut_rep_390_4_lut_4_lut_else_4_lut.init = 16'h7e6e;
    LUT4 i4655_2_lut_3_lut_3_lut_4_lut (.A(\min[2] ), .B(n37179), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_0__N_350[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4655_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4640_2_lut_rep_373_4_lut_4_lut (.A(\min[2] ), .B(n37179), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n37138)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4640_2_lut_rep_373_4_lut_4_lut.init = 16'h554a;
    LUT4 i4662_3_lut_4_lut_3_lut_4_lut (.A(\min[2] ), .B(n37179), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(\hundres_0__N_350[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4662_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4648_3_lut_4_lut (.A(\min[2] ), .B(n37179), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_0__N_350[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4648_3_lut_4_lut.init = 16'h998c;
    LUT4 i4676_3_lut_4_lut_3_lut_4_lut (.A(n37362), .B(\min[7] ), .C(hundres_1__N_340[3]), 
         .D(n37167), .Z(hundres_0__N_347[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4676_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4668_2_lut_rep_368_3_lut_3_lut_4_lut (.A(n37362), .B(\min[7] ), 
         .C(hundres_1__N_340[3]), .D(n37167), .Z(n37133)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4668_2_lut_rep_368_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i3544_2_lut_rep_379_3_lut_4_lut (.A(n37362), .B(\min[7] ), .C(hundres_1__N_340[3]), 
         .D(n37167), .Z(n37144)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3544_2_lut_rep_379_3_lut_4_lut.init = 16'h8880;
    LUT4 i4739_3_lut_4_lut_3_lut_4_lut (.A(\min[4] ), .B(n37259), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4739_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4717_2_lut_rep_445_4_lut_4_lut (.A(\min[4] ), .B(n37259), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(n37210)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4717_2_lut_rep_445_4_lut_4_lut.init = 16'h554a;
    LUT4 i4732_2_lut_3_lut_3_lut_4_lut (.A(\min[4] ), .B(n37259), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4732_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4725_3_lut_4_lut (.A(\min[4] ), .B(n37259), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4725_3_lut_4_lut.init = 16'h998c;
    LUT4 i1_3_lut_4_lut (.A(n37167), .B(n37144), .C(n8157), .D(\hundres_0__N_350[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i3495_4_lut (.A(n37128), .B(n37493), .C(hundres_0__N_347[1]), 
         .D(n37294), .Z(hundres_0__N_355)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3495_4_lut.init = 16'hb3a0;
    LUT4 i4689_2_lut_rep_414_4_lut_4_lut (.A(\min[3] ), .B(n37210), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(n37179)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4689_2_lut_rep_414_4_lut_4_lut.init = 16'h554a;
    LUT4 i4704_2_lut_3_lut_3_lut_4_lut (.A(\min[3] ), .B(n37210), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(hundres_1__N_341[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4704_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4711_3_lut_rep_402_4_lut_3_lut_4_lut (.A(\min[3] ), .B(n37210), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(n37167)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4711_3_lut_rep_402_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4697_3_lut_4_lut (.A(\min[3] ), .B(n37210), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(hundres_1__N_341[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4697_3_lut_4_lut.init = 16'h998c;
    LUT4 i4612_2_lut_4_lut_4_lut (.A(n37138), .B(\min[1] ), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\min_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4612_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4627_2_lut_3_lut_3_lut_4_lut (.A(n37138), .B(\min[1] ), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\min_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4627_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4620_3_lut_4_lut (.A(n37138), .B(\min[1] ), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\min_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4620_3_lut_4_lut.init = 16'h998a;
    PFUMX i30784 (.BLUT(n37491), .ALUT(n37492), .C0(\min[4] ), .Z(n37493));
    LUT4 i4604_2_lut_rep_597 (.A(\min[6] ), .B(\min[5] ), .Z(n37362)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4604_2_lut_rep_597.init = 16'heeee;
    LUT4 i3545_2_lut_rep_529_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(n37294)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3545_2_lut_rep_529_3_lut.init = 16'he0e0;
    LUT4 i13879_2_lut_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(hundres_1__N_339[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i13879_2_lut_3_lut.init = 16'h1010;
    LUT4 i4599_3_lut_4_lut_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(hundres_1__N_339[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4599_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i4591_2_lut_rep_494_3_lut_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(n37259)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4591_2_lut_rep_494_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i4634_3_lut_4_lut_3_lut_4_lut (.A(n37138), .B(\min[1] ), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\min_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4634_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000)_U2 
//

module \divide(WIDTH=32,N=12000000)_U2  (clk_1s, sys_clk_c, GND_net, n20604) /* synthesis syn_module_defined=1 */ ;
    output clk_1s;
    input sys_clk_c;
    input GND_net;
    output n20604;
    
    wire clk_1s /* synthesis is_clock=1, SET_AS_NETWORK=clk_1s */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(29[7:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire clkout_N_293, n31684;
    wire [31:0]cnt_p;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(11[19:24])
    wire [31:0]n101;
    
    wire n31685, n31683, n31682, n31681, n31680, n20576;
    wire [31:0]n200;
    
    wire n31679, n31678, n31677, n31676, n31675, n31674, n31673, 
        n31672, n31671, n31851, n31850, n31849, n31848, n31847, 
        n31846, n31845, n31844, n31843, n31842, n31841, n31840, 
        n35056, n35399, n35054, n35050, n28_adj_1880, n19, n27_adj_1881, 
        n25, n26_adj_1882, n24, n31686;
    
    FD1S3AX clk_p_29 (.D(clkout_N_293), .CK(sys_clk_c), .Q(clk_1s)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=37, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D cnt_p_2977_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31684), .COUT(n31685), .S0(n101[27]), 
          .S1(n101[28]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31683), .COUT(n31684), .S0(n101[25]), 
          .S1(n101[26]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31682), .COUT(n31683), .S0(n101[23]), 
          .S1(n101[24]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31681), .COUT(n31682), .S0(n101[21]), 
          .S1(n101[22]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31680), .COUT(n31681), .S0(n101[19]), 
          .S1(n101[20]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_21.INJECT1_1 = "NO";
    FD1S3IX cnt_p_2977__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n20576), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n20576), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n20576), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n20576), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n20576), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n20576), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_2977__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n20576), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i1.GSR = "ENABLED";
    CCU2D cnt_p_2977_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31679), .COUT(n31680), .S0(n101[17]), 
          .S1(n101[18]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31678), .COUT(n31679), .S0(n101[15]), 
          .S1(n101[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31677), .COUT(n31678), .S0(n101[13]), 
          .S1(n101[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31676), .COUT(n31677), .S0(n101[11]), 
          .S1(n101[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31675), .COUT(n31676), .S0(n101[9]), .S1(n101[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31674), .COUT(n31675), .S0(n101[7]), .S1(n101[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31673), .COUT(n31674), .S0(n101[5]), .S1(n101[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31672), .COUT(n31673), .S0(n101[3]), .S1(n101[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31671), .COUT(n31672), .S0(n101[1]), .S1(n101[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31671), .S1(n101[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_2977_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_2977_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_1.INJECT1_1 = "NO";
    CCU2D add_26099_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31851), 
          .S0(clkout_N_293));
    defparam add_26099_cout.INIT0 = 16'h0000;
    defparam add_26099_cout.INIT1 = 16'h0000;
    defparam add_26099_cout.INJECT1_0 = "NO";
    defparam add_26099_cout.INJECT1_1 = "NO";
    CCU2D add_26099_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31850), .COUT(n31851));
    defparam add_26099_24.INIT0 = 16'h5555;
    defparam add_26099_24.INIT1 = 16'h5555;
    defparam add_26099_24.INJECT1_0 = "NO";
    defparam add_26099_24.INJECT1_1 = "NO";
    CCU2D add_26099_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31849), .COUT(n31850));
    defparam add_26099_22.INIT0 = 16'h5555;
    defparam add_26099_22.INIT1 = 16'h5555;
    defparam add_26099_22.INJECT1_0 = "NO";
    defparam add_26099_22.INJECT1_1 = "NO";
    CCU2D add_26099_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31848), .COUT(n31849));
    defparam add_26099_20.INIT0 = 16'h5555;
    defparam add_26099_20.INIT1 = 16'h5555;
    defparam add_26099_20.INJECT1_0 = "NO";
    defparam add_26099_20.INJECT1_1 = "NO";
    CCU2D add_26099_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31847), .COUT(n31848));
    defparam add_26099_18.INIT0 = 16'h5555;
    defparam add_26099_18.INIT1 = 16'h5555;
    defparam add_26099_18.INJECT1_0 = "NO";
    defparam add_26099_18.INJECT1_1 = "NO";
    CCU2D add_26099_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31846), .COUT(n31847));
    defparam add_26099_16.INIT0 = 16'h5aaa;
    defparam add_26099_16.INIT1 = 16'h5555;
    defparam add_26099_16.INJECT1_0 = "NO";
    defparam add_26099_16.INJECT1_1 = "NO";
    CCU2D add_26099_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31845), .COUT(n31846));
    defparam add_26099_14.INIT0 = 16'h5aaa;
    defparam add_26099_14.INIT1 = 16'h5555;
    defparam add_26099_14.INJECT1_0 = "NO";
    defparam add_26099_14.INJECT1_1 = "NO";
    CCU2D add_26099_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31844), .COUT(n31845));
    defparam add_26099_12.INIT0 = 16'h5555;
    defparam add_26099_12.INIT1 = 16'h5aaa;
    defparam add_26099_12.INJECT1_0 = "NO";
    defparam add_26099_12.INJECT1_1 = "NO";
    CCU2D add_26099_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31843), .COUT(n31844));
    defparam add_26099_10.INIT0 = 16'h5aaa;
    defparam add_26099_10.INIT1 = 16'h5aaa;
    defparam add_26099_10.INJECT1_0 = "NO";
    defparam add_26099_10.INJECT1_1 = "NO";
    CCU2D add_26099_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31842), .COUT(n31843));
    defparam add_26099_8.INIT0 = 16'h5555;
    defparam add_26099_8.INIT1 = 16'h5aaa;
    defparam add_26099_8.INJECT1_0 = "NO";
    defparam add_26099_8.INJECT1_1 = "NO";
    CCU2D add_26099_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31841), .COUT(n31842));
    defparam add_26099_6.INIT0 = 16'h5555;
    defparam add_26099_6.INIT1 = 16'h5555;
    defparam add_26099_6.INJECT1_0 = "NO";
    defparam add_26099_6.INJECT1_1 = "NO";
    CCU2D add_26099_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31840), .COUT(n31841));
    defparam add_26099_4.INIT0 = 16'h5aaa;
    defparam add_26099_4.INIT1 = 16'h5aaa;
    defparam add_26099_4.INJECT1_0 = "NO";
    defparam add_26099_4.INJECT1_1 = "NO";
    CCU2D add_26099_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n31840));
    defparam add_26099_2.INIT0 = 16'h7000;
    defparam add_26099_2.INIT1 = 16'h5555;
    defparam add_26099_2.INJECT1_0 = "NO";
    defparam add_26099_2.INJECT1_1 = "NO";
    LUT4 i15113_1_lut (.A(clk_1s), .Z(n20604)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(30[9] 33[14])
    defparam i15113_1_lut.init = 16'h5555;
    FD1S3IX cnt_p_2977__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n20576), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977__i0.GSR = "ENABLED";
    LUT4 i29919_3_lut (.A(n35056), .B(n35399), .C(n35054), .Z(n20576)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i29919_3_lut.init = 16'h8080;
    LUT4 i29386_4_lut (.A(n200[1]), .B(cnt_p[11]), .C(n200[2]), .D(n200[3]), 
         .Z(n35056)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29386_4_lut.init = 16'h8000;
    LUT4 i29918_4_lut (.A(n35050), .B(n200[0]), .C(n28_adj_1880), .D(cnt_p[16]), 
         .Z(n35399)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i29918_4_lut.init = 16'h0800;
    LUT4 i29384_4_lut (.A(n200[5]), .B(cnt_p[17]), .C(cnt_p[12]), .D(cnt_p[20]), 
         .Z(n35054)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29384_4_lut.init = 16'h8000;
    LUT4 i29380_4_lut (.A(cnt_p[23]), .B(cnt_p[21]), .C(cnt_p[7]), .D(cnt_p[9]), 
         .Z(n35050)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29380_4_lut.init = 16'h8000;
    LUT4 i10_3_lut (.A(n19), .B(n200[6]), .C(cnt_p[18]), .Z(n28_adj_1880)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i10_3_lut.init = 16'hbfbf;
    LUT4 i1_4_lut (.A(n27_adj_1881), .B(n200[4]), .C(n25), .D(n26_adj_1882), 
         .Z(n19)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i12_4_lut (.A(cnt_p[19]), .B(n24), .C(cnt_p[8]), .D(cnt_p[14]), 
         .Z(n27_adj_1881)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_p[30]), .B(cnt_p[22]), .C(cnt_p[13]), .D(cnt_p[25]), 
         .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(cnt_p[28]), .B(cnt_p[15]), .C(cnt_p[31]), .D(cnt_p[29]), 
         .Z(n26_adj_1882)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt_p[26]), .B(cnt_p[24]), .C(cnt_p[10]), .D(cnt_p[27]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i9_4_lut.init = 16'hfffe;
    CCU2D cnt_p_2977_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31686), .S0(n101[31]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_2977_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_2977_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31685), .COUT(n31686), .S0(n101[29]), 
          .S1(n101[30]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2977_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_2977_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_2977_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_2977_add_4_31.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module BCD_U7
//

module BCD_U7 (\ds18b20_data[8] , \hundres_1__N_339[0] , \hundres_1__N_339[1] , 
            \ds18b20_data[6] , \hundres_0__N_350[1] , n37146, n37157, 
            \Tem_high[0] , n37184, \ds18b20_data[5] , n10614, \cnt_main[0] , 
            n7472, n35269, \ds18b20_data[7] , n7474, n35291, \Tem_high[2] ) /* synthesis syn_module_defined=1 */ ;
    input \ds18b20_data[8] ;
    input \hundres_1__N_339[0] ;
    input \hundres_1__N_339[1] ;
    input \ds18b20_data[6] ;
    output \hundres_0__N_350[1] ;
    output n37146;
    output n37157;
    output \Tem_high[0] ;
    output n37184;
    input \ds18b20_data[5] ;
    output n10614;
    input \cnt_main[0] ;
    input n7472;
    output n35269;
    input \ds18b20_data[7] ;
    input n7474;
    output n35291;
    output \Tem_high[2] ;
    
    
    wire n37371, n37301, n37265;
    wire [3:0]hundres_1__N_340;
    
    wire n37462, n37461;
    wire [3:0]hundres_1__N_341;
    
    wire n37191, n37172, n37171, n38991, n38990, n38989, n37190;
    wire [3:0]hundres_0__N_347;
    
    wire n37214, n37240, n37159, n37139, n37203;
    
    LUT4 i3444_2_lut_rep_606 (.A(\ds18b20_data[8] ), .B(\hundres_1__N_339[0] ), 
         .Z(n37371)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3444_2_lut_rep_606.init = 16'heeee;
    LUT4 i3565_2_lut_rep_536_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_339[0] ), 
         .C(\hundres_1__N_339[1] ), .Z(n37301)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3565_2_lut_rep_536_3_lut.init = 16'he0e0;
    LUT4 i4122_2_lut_rep_500_3_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_339[0] ), 
         .C(\hundres_1__N_339[1] ), .Z(n37265)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4122_2_lut_rep_500_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4130_3_lut_4_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_339[0] ), 
         .C(\hundres_1__N_339[1] ), .Z(hundres_1__N_340[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4130_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i13959_2_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_339[0] ), 
         .C(\hundres_1__N_339[1] ), .Z(hundres_1__N_340[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i13959_2_lut_3_lut.init = 16'h1010;
    LUT4 i4045_2_lut_rep_419_4_lut_4_lut_then_4_lut (.A(\ds18b20_data[6] ), 
         .B(n37265), .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), 
         .Z(n37462)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4045_2_lut_rep_419_4_lut_4_lut_then_4_lut.init = 16'h2526;
    LUT4 i4045_2_lut_rep_419_4_lut_4_lut_else_4_lut (.A(\ds18b20_data[6] ), 
         .B(n37265), .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), 
         .Z(n37461)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4045_2_lut_rep_419_4_lut_4_lut_else_4_lut.init = 16'h9592;
    LUT4 i12167_2_lut_rep_381_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n37191), 
         .C(\hundres_0__N_350[1] ), .D(n37172), .Z(n37146)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i12167_2_lut_rep_381_3_lut_4_lut.init = 16'hf600;
    LUT4 i3395_3_lut_rep_392_4_lut (.A(hundres_1__N_341[1]), .B(n37191), 
         .C(\hundres_0__N_350[1] ), .D(n37172), .Z(n37157)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3395_3_lut_rep_392_4_lut.init = 16'hf666;
    LUT4 i4018_3_lut_4_lut_3_lut_4_lut (.A(hundres_1__N_341[1]), .B(n37191), 
         .C(\hundres_0__N_350[1] ), .D(n37172), .Z(\Tem_high[0] )) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4018_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5258_2_lut_4_lut_4_lut (.A(n37184), .B(\ds18b20_data[5] ), .C(\hundres_0__N_350[1] ), 
         .D(n37171), .Z(n10614)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i5258_2_lut_4_lut_4_lut.init = 16'h3320;
    LUT4 i29864_3_lut_4_lut (.A(n38991), .B(n37301), .C(\cnt_main[0] ), 
         .D(n7472), .Z(n35269)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i29864_3_lut_4_lut.init = 16'h4f40;
    LUT4 i4037_2_lut_rep_382_4_lut_4_lut_then_4_lut (.A(n37265), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(n38990)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i4037_2_lut_rep_382_4_lut_4_lut_then_4_lut.init = 16'h9ffa;
    LUT4 i4037_2_lut_rep_382_4_lut_4_lut_else_4_lut (.A(n37265), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(n38989)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4037_2_lut_rep_382_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i4009_2_lut_rep_407_3_lut (.A(\ds18b20_data[6] ), .B(n37190), .C(\ds18b20_data[5] ), 
         .Z(n37172)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4009_2_lut_rep_407_3_lut.init = 16'hf6f6;
    LUT4 i4116_3_lut_4_lut_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n37265), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(hundres_0__N_347[0])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4116_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i12189_2_lut_rep_449_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n37265), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(n37214)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i12189_2_lut_rep_449_3_lut_4_lut.init = 16'heee0;
    LUT4 i3392_3_lut_rep_475 (.A(\ds18b20_data[7] ), .B(n37265), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(n37240)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3392_3_lut_rep_475.init = 16'hffe0;
    LUT4 i4102_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n37265), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(hundres_1__N_341[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4102_3_lut_4_lut.init = 16'h998c;
    LUT4 i29858_3_lut_4_lut (.A(n37159), .B(n37139), .C(\cnt_main[0] ), 
         .D(n7474), .Z(n35291)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i29858_3_lut_4_lut.init = 16'h6f60;
    LUT4 i4053_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n37240), .C(\ds18b20_data[6] ), 
         .D(n37190), .Z(\hundres_0__N_350[1] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4053_3_lut_4_lut.init = 16'h6966;
    LUT4 i4058_2_lut_rep_438_3_lut (.A(\ds18b20_data[7] ), .B(n37240), .C(\ds18b20_data[6] ), 
         .Z(n37203)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4058_2_lut_rep_438_3_lut.init = 16'hf6f6;
    LUT4 i11497_2_lut_rep_426_4_lut (.A(hundres_1__N_340[1]), .B(n37214), 
         .C(hundres_1__N_341[1]), .D(n37203), .Z(n37191)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i11497_2_lut_rep_426_4_lut.init = 16'hf600;
    LUT4 i3393_3_lut_rep_425_4_lut (.A(hundres_1__N_340[1]), .B(n37214), 
         .C(hundres_1__N_341[1]), .D(n37203), .Z(n37190)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3393_3_lut_rep_425_4_lut.init = 16'hf666;
    LUT4 i4060_2_lut_rep_406_3_lut_3_lut_4_lut (.A(hundres_1__N_340[1]), .B(n37214), 
         .C(hundres_1__N_341[1]), .D(n37203), .Z(n37171)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4060_2_lut_rep_406_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4067_3_lut_rep_394_4_lut_3_lut_4_lut (.A(hundres_1__N_340[1]), .B(n37214), 
         .C(hundres_1__N_341[1]), .D(n37203), .Z(n37159)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4067_3_lut_rep_394_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3562_2_lut_rep_374_3_lut_4_lut (.A(n37371), .B(\hundres_1__N_339[1] ), 
         .C(n37159), .D(hundres_0__N_347[0]), .Z(n37139)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3562_2_lut_rep_374_3_lut_4_lut.init = 16'h8880;
    PFUMX i31543 (.BLUT(n38989), .ALUT(n38990), .C0(n37203), .Z(n38991));
    LUT4 i4032_3_lut_4_lut_3_lut_4_lut (.A(n37371), .B(\hundres_1__N_339[1] ), 
         .C(n37159), .D(hundres_0__N_347[0]), .Z(\Tem_high[2] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4032_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    PFUMX i30764 (.BLUT(n37461), .ALUT(n37462), .C0(\ds18b20_data[7] ), 
          .Z(n37184));
    
endmodule
//
// Verilog Description of module BCD_U6
//

module BCD_U6 (n37384, \hour[7] , \hour[3] , \hour[4] , \hour[2] , 
            \hundres_0__N_350[3] , n8144, n4, \hour[6] , \hour[5] , 
            hundres_0__N_355, \hour[1] , \hour_ones[1] , \hour_tens[0] , 
            \hour_ones[3] , \hour_ones[2] , n8456) /* synthesis syn_module_defined=1 */ ;
    output n37384;
    input \hour[7] ;
    input \hour[3] ;
    input \hour[4] ;
    input \hour[2] ;
    output \hundres_0__N_350[3] ;
    input n8144;
    output n4;
    input \hour[6] ;
    input \hour[5] ;
    output hundres_0__N_355;
    input \hour[1] ;
    output \hour_ones[1] ;
    output \hour_tens[0] ;
    output \hour_ones[3] ;
    output \hour_ones[2] ;
    output n8456;
    
    
    wire n37161;
    wire [3:0]hundres_1__N_340;
    
    wire n37131, n37142;
    wire [3:0]hundres_0__N_347;
    wire [3:0]hundres_1__N_339;
    
    wire n37489, n37488, n37174;
    wire [3:0]hundres_1__N_341;
    
    wire n37136;
    wire [3:0]hundres_0__N_350;
    
    wire n37255, n37289, n38995, n38996, n37193, n38997, n37232, 
        n37126, n37206, n37185;
    
    LUT4 i4514_2_lut_rep_366_3_lut_3_lut_4_lut (.A(n37384), .B(\hour[7] ), 
         .C(n37161), .D(hundres_1__N_340[3]), .Z(n37131)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i4514_2_lut_rep_366_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i3546_2_lut_rep_377_3_lut_4_lut (.A(n37384), .B(\hour[7] ), .C(n37161), 
         .D(hundres_1__N_340[3]), .Z(n37142)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3546_2_lut_rep_377_3_lut_4_lut.init = 16'h8880;
    LUT4 i4522_3_lut_4_lut_3_lut_4_lut (.A(n37384), .B(\hour[7] ), .C(n37161), 
         .D(hundres_1__N_340[3]), .Z(hundres_0__N_347[1])) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4522_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i4535_2_lut_rep_409_4_lut_4_lut_then_4_lut (.A(\hour[3] ), .B(\hour[4] ), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n37489)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4535_2_lut_rep_409_4_lut_4_lut_then_4_lut.init = 16'h2524;
    LUT4 i4535_2_lut_rep_409_4_lut_4_lut_else_4_lut (.A(\hour[3] ), .B(\hour[4] ), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n37488)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4535_2_lut_rep_409_4_lut_4_lut_else_4_lut.init = 16'h959a;
    LUT4 i4486_2_lut_rep_371_4_lut_4_lut (.A(n37174), .B(\hour[2] ), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n37136)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4486_2_lut_rep_371_4_lut_4_lut.init = 16'h332c;
    LUT4 i4508_3_lut_4_lut_3_lut_4_lut (.A(n37174), .B(\hour[2] ), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(\hundres_0__N_350[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4508_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4501_2_lut_3_lut_3_lut_4_lut (.A(n37174), .B(\hour[2] ), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_0__N_350[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4501_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4494_3_lut_4_lut (.A(n37174), .B(\hour[2] ), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_0__N_350[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4494_3_lut_4_lut.init = 16'h998a;
    LUT4 i1_3_lut_4_lut (.A(n37161), .B(n37142), .C(n8144), .D(\hundres_0__N_350[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i4450_2_lut_rep_619 (.A(\hour[6] ), .B(\hour[5] ), .Z(n37384)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4450_2_lut_rep_619.init = 16'heeee;
    LUT4 i4437_2_lut_rep_490_3_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), 
         .C(\hour[7] ), .Z(n37255)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4437_2_lut_rep_490_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i3535_2_lut_rep_524_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(n37289)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3535_2_lut_rep_524_3_lut.init = 16'he0e0;
    LUT4 i13955_2_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(hundres_1__N_339[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i13955_2_lut_3_lut.init = 16'h1010;
    LUT4 i4445_3_lut_4_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(hundres_1__N_339[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4445_3_lut_4_lut_3_lut.init = 16'h8a8a;
    PFUMX i31547 (.BLUT(n38995), .ALUT(n38996), .C0(n37193), .Z(n38997));
    LUT4 i4571_3_lut_4_lut (.A(n37255), .B(\hour[4] ), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4571_3_lut_4_lut.init = 16'h998a;
    LUT4 i3401_3_lut_rep_467 (.A(n37255), .B(\hour[4] ), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(n37232)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3401_3_lut_rep_467.init = 16'hffe0;
    LUT4 i3480_4_lut (.A(n37126), .B(n38997), .C(hundres_0__N_347[1]), 
         .D(n37289), .Z(hundres_0__N_355)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3480_4_lut.init = 16'hb3a0;
    LUT4 i4527_2_lut_rep_384_4_lut_4_lut_then_4_lut (.A(\hour[4] ), .B(n37255), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n38996)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i4527_2_lut_rep_384_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    LUT4 i4527_2_lut_rep_384_4_lut_4_lut_else_4_lut (.A(\hour[4] ), .B(n37255), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n38995)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4527_2_lut_rep_384_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i4585_3_lut_4_lut_3_lut_4_lut (.A(n37255), .B(\hour[4] ), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4585_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3402_3_lut_rep_420_4_lut (.A(hundres_1__N_339[1]), .B(n37206), 
         .C(hundres_1__N_340[1]), .D(n37193), .Z(n37185)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3402_3_lut_rep_420_4_lut.init = 16'hf666;
    LUT4 i4550_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_339[1]), .B(n37206), 
         .C(hundres_1__N_340[1]), .D(n37193), .Z(hundres_1__N_341[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4550_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4557_3_lut_rep_396_4_lut_3_lut_4_lut (.A(hundres_1__N_339[1]), .B(n37206), 
         .C(hundres_1__N_340[1]), .D(n37193), .Z(n37161)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4557_3_lut_rep_396_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3481_2_lut_rep_361_3_lut_4_lut_4_lut (.A(hundres_1__N_340[3]), .B(n37161), 
         .C(\hundres_0__N_350[3] ), .D(n37289), .Z(n37126)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i3481_2_lut_rep_361_3_lut_4_lut_4_lut.init = 16'hf2fc;
    LUT4 i4543_3_lut_4_lut (.A(\hour[4] ), .B(n37232), .C(\hour[3] ), 
         .D(n37185), .Z(hundres_1__N_341[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4543_3_lut_4_lut.init = 16'h6966;
    LUT4 i4548_2_lut_rep_428_3_lut (.A(\hour[4] ), .B(n37232), .C(\hour[3] ), 
         .Z(n37193)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4548_2_lut_rep_428_3_lut.init = 16'hf6f6;
    LUT4 i4458_2_lut_4_lut_4_lut (.A(n37136), .B(\hour[1] ), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\hour_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4458_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4480_3_lut_4_lut_3_lut_4_lut (.A(n37136), .B(\hour[1] ), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\hour_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4480_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4473_2_lut_3_lut_3_lut_4_lut (.A(n37136), .B(\hour[1] ), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\hour_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4473_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4466_3_lut_4_lut (.A(n37136), .B(\hour[1] ), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\hour_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4466_3_lut_4_lut.init = 16'h998a;
    LUT4 i12170_2_lut_rep_441_3_lut_4_lut (.A(n37255), .B(\hour[4] ), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(n37206)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i12170_2_lut_rep_441_3_lut_4_lut.init = 16'heee0;
    LUT4 i3934_3_lut_4_lut (.A(\hundres_0__N_350[3] ), .B(n37131), .C(n8144), 
         .D(hundres_0__N_347[1]), .Z(n8456)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i3934_3_lut_4_lut.init = 16'h1fe0;
    PFUMX i30782 (.BLUT(n37488), .ALUT(n37489), .C0(n37255), .Z(n37174));
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (\music_tone[0] , GND_net, \music_tone[4] , beep_c, sys_clk_c, 
            \music_tone[1] , \music_tone[3] , \music_tone[2] , sw2_c) /* synthesis syn_module_defined=1 */ ;
    input \music_tone[0] ;
    input GND_net;
    input \music_tone[4] ;
    output beep_c;
    input sys_clk_c;
    input \music_tone[1] ;
    input \music_tone[3] ;
    input \music_tone[2] ;
    input sw2_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire n37419, n37420;
    wire [15:0]time_end;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(31[12:20])
    
    wire n31625;
    wire [17:0]time_cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(65[12:20])
    wire [17:0]n5997;
    
    wire n31626, n15, n32024, piano_out_N_1537, n3677;
    wire [17:0]n77;
    
    wire n31624, n31623, n31622, n31621, n31620, n36257, n35856, 
        n37438, n37437, n37441, n37440, n37444, n37443, n37422, 
        n38987, n37471, n37470, n37483, n37482, n37486, n37485, 
        n37507, n37506, n38986, n35855, n36128, n36245, n36256, 
        n36126, n31628, n6016, n31627, n36244, n37426, n31738, 
        n31737, n31736, n37425, n31735, n31734, n31733, n31732, 
        n31731, n31730, n29, n34, n30, n31, n28, n37423;
    
    PFUMX i30736 (.BLUT(n37419), .ALUT(n37420), .C0(\music_tone[0] ), 
          .Z(time_end[12]));
    CCU2D add_1923_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31625), .COUT(n31626), .S0(n5997[11]), 
          .S1(n5997[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1923_13.INIT0 = 16'h5999;
    defparam add_1923_13.INIT1 = 16'h5999;
    defparam add_1923_13.INJECT1_0 = "NO";
    defparam add_1923_13.INJECT1_1 = "NO";
    PFUMX tone_4__I_0_Mux_8_i31 (.BLUT(n15), .ALUT(n32024), .C0(\music_tone[4] ), 
          .Z(time_end[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=420, LSE_RLINE=426 */ ;
    FD1S3AX piano_out_20 (.D(piano_out_N_1537), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=420, LSE_RLINE=426 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i0.GSR = "ENABLED";
    CCU2D add_1923_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31624), .COUT(n31625), .S0(n5997[9]), 
          .S1(n5997[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1923_11.INIT0 = 16'h5999;
    defparam add_1923_11.INIT1 = 16'h5999;
    defparam add_1923_11.INJECT1_0 = "NO";
    defparam add_1923_11.INJECT1_1 = "NO";
    CCU2D add_1923_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31623), .COUT(n31624), .S0(n5997[7]), 
          .S1(n5997[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1923_9.INIT0 = 16'h5999;
    defparam add_1923_9.INIT1 = 16'h5999;
    defparam add_1923_9.INJECT1_0 = "NO";
    defparam add_1923_9.INJECT1_1 = "NO";
    CCU2D add_1923_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31622), .COUT(n31623), .S0(n5997[5]), 
          .S1(n5997[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1923_7.INIT0 = 16'h5999;
    defparam add_1923_7.INIT1 = 16'h5999;
    defparam add_1923_7.INJECT1_0 = "NO";
    defparam add_1923_7.INJECT1_1 = "NO";
    CCU2D add_1923_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31621), .COUT(n31622), .S0(n5997[3]), 
          .S1(n5997[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1923_5.INIT0 = 16'h5999;
    defparam add_1923_5.INIT1 = 16'h5999;
    defparam add_1923_5.INJECT1_0 = "NO";
    defparam add_1923_5.INJECT1_1 = "NO";
    CCU2D add_1923_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31620), .COUT(n31621), .S0(n5997[1]), 
          .S1(n5997[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1923_3.INIT0 = 16'h5999;
    defparam add_1923_3.INIT1 = 16'h5999;
    defparam add_1923_3.INJECT1_0 = "NO";
    defparam add_1923_3.INJECT1_1 = "NO";
    CCU2D add_1923_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n31620), .S1(n5997[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1923_1.INIT0 = 16'h0000;
    defparam add_1923_1.INIT1 = 16'h5999;
    defparam add_1923_1.INJECT1_0 = "NO";
    defparam add_1923_1.INJECT1_1 = "NO";
    LUT4 n34_bdd_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[4] ), .Z(n36257)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n34_bdd_4_lut_4_lut.init = 16'hf921;
    LUT4 n18_bdd_4_lut_30092 (.A(\music_tone[1] ), .B(\music_tone[0] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n35856)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A (B (C+!(D))+!B (C (D)+!C !(D)))) */ ;
    defparam n18_bdd_4_lut_30092.init = 16'hd8c7;
    LUT4 i30046_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n37438)) /* synthesis lut_function=(A (B+(D))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam i30046_4_lut_then_4_lut.init = 16'hafcc;
    LUT4 i30046_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n37437)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam i30046_4_lut_else_4_lut.init = 16'hefff;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[1] ), .Z(n37441)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_then_4_lut.init = 16'hfbfc;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[1] ), .Z(n37440)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (D)+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_else_4_lut.init = 16'hcd9b;
    LUT4 n36632_bdd_3_lut_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[4] ), 
         .C(\music_tone[2] ), .D(\music_tone[0] ), .Z(n37444)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B (D)+!B (C+(D)))) */ ;
    defparam n36632_bdd_3_lut_then_4_lut.init = 16'hdfb8;
    LUT4 n36632_bdd_3_lut_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[4] ), 
         .C(\music_tone[2] ), .D(\music_tone[0] ), .Z(n37443)) /* synthesis lut_function=(A (B+(D))+!A !(B (C))) */ ;
    defparam n36632_bdd_3_lut_else_4_lut.init = 16'hbf9d;
    LUT4 tone_4__I_0_Mux_6_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n37422)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C (D))+!B !((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_6_i31_else_4_lut.init = 16'hbf67;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n38987)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_then_4_lut.init = 16'he0c0;
    LUT4 n36217_bdd_3_lut_4_lut_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[4] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n37471)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))+!A (C)) */ ;
    defparam n36217_bdd_3_lut_4_lut_then_4_lut.init = 16'hf8da;
    LUT4 n36217_bdd_3_lut_4_lut_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[4] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n37470)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;
    defparam n36217_bdd_3_lut_4_lut_else_4_lut.init = 16'hbe9b;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n37483)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_then_4_lut.init = 16'ha899;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n37482)) /* synthesis lut_function=(A (B)+!A !(B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_else_4_lut.init = 16'h8999;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n37486)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(C (D)+!C !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_then_4_lut.init = 16'hadf0;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n37485)) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_else_4_lut.init = 16'ha4f1;
    LUT4 n36228_bdd_3_lut_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n37507)) /* synthesis lut_function=(A (D)+!A (B+(C (D)+!C !(D)))) */ ;
    defparam n36228_bdd_3_lut_then_4_lut.init = 16'hfe45;
    LUT4 n36228_bdd_3_lut_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n37506)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(B)) */ ;
    defparam n36228_bdd_3_lut_else_4_lut.init = 16'hbb91;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n38986)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_else_4_lut.init = 16'hc0c1;
    FD1S3IX time_cnt_2986__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i17.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_2986__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n3677), 
            .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986__i1.GSR = "ENABLED";
    LUT4 i2_2_lut_4_lut_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[3] ), .D(\music_tone[0] ), .Z(n32024)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam i2_2_lut_4_lut_4_lut.init = 16'hfdf5;
    LUT4 n18_bdd_4_lut_30073_4_lut (.A(\music_tone[1] ), .B(\music_tone[4] ), 
         .C(\music_tone[2] ), .D(\music_tone[0] ), .Z(n35855)) /* synthesis lut_function=(A (B)+!A (B+(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam n18_bdd_4_lut_30073_4_lut.init = 16'hdcdd;
    LUT4 n36127_bdd_3_lut_4_lut (.A(\music_tone[1] ), .B(\music_tone[4] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n36128)) /* synthesis lut_function=(A (B ((D)+!C)+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam n36127_bdd_3_lut_4_lut.init = 16'hcc2d;
    LUT4 music_tone_4__bdd_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[1] ), .Z(n36245)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam music_tone_4__bdd_4_lut_4_lut.init = 16'hcf35;
    LUT4 i20723_4_lut_4_lut_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n15)) /* synthesis lut_function=(!(A (C (D))+!A !(B+(C+!(D))))) */ ;
    defparam i20723_4_lut_4_lut_4_lut_4_lut.init = 16'h5eff;
    LUT4 n34_bdd_2_lut_3_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .Z(n36256)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(37[2] 62[9])
    defparam n34_bdd_2_lut_3_lut.init = 16'hf8f8;
    LUT4 music_tone_0__bdd_4_lut_30256 (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n36126)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam music_tone_0__bdd_4_lut_30256.init = 16'hf18b;
    CCU2D add_1923_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31628), .S0(n5997[17]), .S1(n6016));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1923_19.INIT0 = 16'h5555;
    defparam add_1923_19.INIT1 = 16'h0000;
    defparam add_1923_19.INJECT1_0 = "NO";
    defparam add_1923_19.INJECT1_1 = "NO";
    CCU2D add_1923_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31627), .COUT(n31628), .S0(n5997[15]), 
          .S1(n5997[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1923_17.INIT0 = 16'h5999;
    defparam add_1923_17.INIT1 = 16'h5555;
    defparam add_1923_17.INJECT1_0 = "NO";
    defparam add_1923_17.INJECT1_1 = "NO";
    CCU2D add_1923_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31626), .COUT(n31627), .S0(n5997[13]), 
          .S1(n5997[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[14:32])
    defparam add_1923_15.INIT0 = 16'h5999;
    defparam add_1923_15.INIT1 = 16'h5999;
    defparam add_1923_15.INJECT1_0 = "NO";
    defparam add_1923_15.INJECT1_1 = "NO";
    LUT4 music_tone_4__bdd_3_lut (.A(\music_tone[2] ), .B(\music_tone[3] ), 
         .C(\music_tone[0] ), .Z(n36244)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam music_tone_4__bdd_3_lut.init = 16'hecec;
    LUT4 tone_4__I_0_Mux_2_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n37426)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_2_i31_then_4_lut.init = 16'hfb8b;
    CCU2D time_cnt_2986_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31738), .S0(n77[17]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_2986_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_2986_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_2986_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_2986_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31737), .COUT(n31738), .S0(n77[15]), .S1(n77[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_2986_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_2986_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_2986_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_2986_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31736), .COUT(n31737), .S0(n77[13]), .S1(n77[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_2986_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_2986_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_2986_add_4_15.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_2_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n37425)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C)+!B (D))) */ ;
    defparam tone_4__I_0_Mux_2_i31_else_4_lut.init = 16'hae3d;
    CCU2D time_cnt_2986_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31735), .COUT(n31736), .S0(n77[11]), .S1(n77[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_2986_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_2986_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_2986_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_2986_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31734), .COUT(n31735), .S0(n77[9]), .S1(n77[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_2986_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_2986_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_2986_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_2986_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31733), .COUT(n31734), .S0(n77[7]), .S1(n77[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_2986_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_2986_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_2986_add_4_9.INJECT1_1 = "NO";
    CCU2D time_cnt_2986_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31732), .COUT(n31733), .S0(n77[5]), .S1(n77[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_2986_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_2986_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_2986_add_4_7.INJECT1_1 = "NO";
    CCU2D time_cnt_2986_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31731), .COUT(n31732), .S0(n77[3]), .S1(n77[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_2986_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_2986_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_2986_add_4_5.INJECT1_1 = "NO";
    CCU2D time_cnt_2986_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31730), .COUT(n31731), .S0(n77[1]), .S1(n77[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_2986_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_2986_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_2986_add_4_3.INJECT1_1 = "NO";
    CCU2D time_cnt_2986_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31730), .S1(n77[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(75[15:30])
    defparam time_cnt_2986_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_2986_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_2986_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_2986_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_1537)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n5997[1]), .B(n5997[6]), .C(n5997[16]), .D(n5997[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n5997[5]), .C(n28), .D(n5997[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n5997[10]), .B(n5997[4]), .C(n5997[8]), .D(n5997[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n5997[14]), .B(n5997[17]), .C(n5997[15]), .D(n5997[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n5997[12]), .B(n5997[7]), .C(n5997[0]), .D(n5997[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    PFUMX i30074 (.BLUT(n35856), .ALUT(n35855), .C0(\music_tone[3] ), 
          .Z(time_end[11]));
    PFUMX i30740 (.BLUT(n37425), .ALUT(n37426), .C0(\music_tone[0] ), 
          .Z(time_end[2]));
    PFUMX i30244 (.BLUT(n36257), .ALUT(n36256), .C0(\music_tone[2] ), 
          .Z(time_end[5]));
    PFUMX i30235 (.BLUT(n36245), .ALUT(n36244), .C0(\music_tone[4] ), 
          .Z(time_end[3]));
    LUT4 i1209_2_lut (.A(n6016), .B(sw2_c), .Z(n3677)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(72[11] 76[5])
    defparam i1209_2_lut.init = 16'hbbbb;
    PFUMX i30194 (.BLUT(n36128), .ALUT(n36126), .C0(\music_tone[0] ), 
          .Z(time_end[1]));
    PFUMX i31541 (.BLUT(n38986), .ALUT(n38987), .C0(\music_tone[1] ), 
          .Z(time_end[15]));
    PFUMX i30738 (.BLUT(n37422), .ALUT(n37423), .C0(\music_tone[0] ), 
          .Z(time_end[6]));
    LUT4 tone_4__I_0_Mux_6_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n37423)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (C+(D))) */ ;
    defparam tone_4__I_0_Mux_6_i31_then_4_lut.init = 16'hffd2;
    LUT4 tone_4__I_0_Mux_12_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n37420)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_then_4_lut.init = 16'hfa93;
    PFUMX i30794 (.BLUT(n37506), .ALUT(n37507), .C0(\music_tone[0] ), 
          .Z(time_end[4]));
    PFUMX i30780 (.BLUT(n37485), .ALUT(n37486), .C0(\music_tone[0] ), 
          .Z(time_end[13]));
    PFUMX i30778 (.BLUT(n37482), .ALUT(n37483), .C0(\music_tone[0] ), 
          .Z(time_end[14]));
    PFUMX i30770 (.BLUT(n37470), .ALUT(n37471), .C0(\music_tone[0] ), 
          .Z(time_end[10]));
    PFUMX i30752 (.BLUT(n37443), .ALUT(n37444), .C0(\music_tone[1] ), 
          .Z(time_end[0]));
    PFUMX i30750 (.BLUT(n37440), .ALUT(n37441), .C0(\music_tone[0] ), 
          .Z(time_end[9]));
    PFUMX i30748 (.BLUT(n37437), .ALUT(n37438), .C0(\music_tone[2] ), 
          .Z(time_end[7]));
    LUT4 tone_4__I_0_Mux_12_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n37419)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_else_4_lut.init = 16'hfa4b;
    
endmodule
//
// Verilog Description of module BCD_U3
//

module BCD_U3 (\min_warning[7] , \hundres_0__N_350[3] , n8157, n8451, 
            \min_warning[3] , \min_warning[2] , \min_warning[1] , \min_warning_ones[3] , 
            n4, \min_warning[4] , hundres_0__N_355, \min_warning_ones[2] , 
            \min_warning[5] , \min_warning[6] , \min_warning_ones[1] , 
            \min_warning_tens[0] ) /* synthesis syn_module_defined=1 */ ;
    input \min_warning[7] ;
    output \hundres_0__N_350[3] ;
    input n8157;
    output n8451;
    input \min_warning[3] ;
    input \min_warning[2] ;
    input \min_warning[1] ;
    output \min_warning_ones[3] ;
    output n4;
    input \min_warning[4] ;
    output hundres_0__N_355;
    output \min_warning_ones[2] ;
    input \min_warning[5] ;
    input \min_warning[6] ;
    output \min_warning_ones[1] ;
    output \min_warning_tens[0] ;
    
    
    wire n37355;
    wire [3:0]hundres_1__N_340;
    
    wire n37165, n37132;
    wire [3:0]hundres_0__N_347;
    
    wire n37143;
    wire [3:0]hundres_1__N_339;
    
    wire n37257, n37501, n37500, n37177;
    wire [3:0]hundres_1__N_341;
    
    wire n37137;
    wire [3:0]hundres_0__N_350;
    
    wire n37209, n37127, n37502, n37291;
    
    LUT4 i4206_2_lut_rep_367_3_lut_3_lut_4_lut (.A(n37355), .B(\min_warning[7] ), 
         .C(hundres_1__N_340[3]), .D(n37165), .Z(n37132)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4206_2_lut_rep_367_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4214_3_lut_4_lut_3_lut_4_lut (.A(n37355), .B(\min_warning[7] ), 
         .C(hundres_1__N_340[3]), .D(n37165), .Z(hundres_0__N_347[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4214_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i3540_2_lut_rep_378_3_lut_4_lut (.A(n37355), .B(\min_warning[7] ), 
         .C(hundres_1__N_340[3]), .D(n37165), .Z(n37143)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3540_2_lut_rep_378_3_lut_4_lut.init = 16'h8880;
    LUT4 i3962_3_lut_4_lut (.A(\hundres_0__N_350[3] ), .B(n37132), .C(n8157), 
         .D(hundres_0__N_347[1]), .Z(n8451)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i3962_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3455_2_lut_rep_388_4_lut_4_lut_then_4_lut (.A(hundres_1__N_339[2]), 
         .B(hundres_1__N_339[1]), .C(n37257), .D(\min_warning[3] ), .Z(n37501)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C))) */ ;
    defparam i3455_2_lut_rep_388_4_lut_4_lut_then_4_lut.init = 16'hf676;
    LUT4 i3455_2_lut_rep_388_4_lut_4_lut_else_4_lut (.A(hundres_1__N_339[2]), 
         .B(hundres_1__N_339[1]), .C(n37257), .D(\min_warning[3] ), .Z(n37500)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C (D))))) */ ;
    defparam i3455_2_lut_rep_388_4_lut_4_lut_else_4_lut.init = 16'h7e6e;
    LUT4 i4200_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[2] ), .B(n37177), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(\hundres_0__N_350[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4200_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4178_2_lut_rep_372_4_lut_4_lut (.A(\min_warning[2] ), .B(n37177), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n37137)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4178_2_lut_rep_372_4_lut_4_lut.init = 16'h554a;
    LUT4 i4193_2_lut_3_lut_3_lut_4_lut (.A(\min_warning[2] ), .B(n37177), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(hundres_0__N_350[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4193_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4186_3_lut_4_lut (.A(\min_warning[2] ), .B(n37177), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_0__N_350[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4186_3_lut_4_lut.init = 16'h998c;
    LUT4 i4165_2_lut_3_lut_3_lut_4_lut (.A(n37137), .B(\min_warning[1] ), 
         .C(hundres_0__N_350[1]), .D(hundres_0__N_350[2]), .Z(\min_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4165_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i1_3_lut_4_lut (.A(n37165), .B(n37143), .C(n8157), .D(\hundres_0__N_350[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i4277_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[4] ), .B(n37257), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4277_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4255_2_lut_rep_444_4_lut_4_lut (.A(\min_warning[4] ), .B(n37257), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n37209)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4255_2_lut_rep_444_4_lut_4_lut.init = 16'h554a;
    LUT4 i4270_2_lut_3_lut_3_lut_4_lut (.A(\min_warning[4] ), .B(n37257), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4270_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4263_3_lut_4_lut (.A(\min_warning[4] ), .B(n37257), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4263_3_lut_4_lut.init = 16'h998c;
    LUT4 i3450_4_lut (.A(n37127), .B(n37502), .C(hundres_0__N_347[1]), 
         .D(n37291), .Z(hundres_0__N_355)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3450_4_lut.init = 16'hb3a0;
    LUT4 i4227_2_lut_rep_412_4_lut_4_lut (.A(\min_warning[3] ), .B(n37209), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(n37177)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4227_2_lut_rep_412_4_lut_4_lut.init = 16'h554a;
    LUT4 i4249_3_lut_rep_400_4_lut_3_lut_4_lut (.A(\min_warning[3] ), .B(n37209), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(n37165)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4249_3_lut_rep_400_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4242_2_lut_3_lut_3_lut_4_lut (.A(\min_warning[3] ), .B(n37209), 
         .C(hundres_1__N_340[1]), .D(hundres_1__N_340[2]), .Z(hundres_1__N_341[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4242_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4235_3_lut_4_lut (.A(\min_warning[3] ), .B(n37209), .C(hundres_1__N_340[1]), 
         .D(hundres_1__N_340[2]), .Z(hundres_1__N_341[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4235_3_lut_4_lut.init = 16'h998c;
    LUT4 i4158_3_lut_4_lut (.A(n37137), .B(\min_warning[1] ), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\min_warning_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4158_3_lut_4_lut.init = 16'h998a;
    LUT4 i3451_2_lut_rep_362_3_lut_4_lut_4_lut (.A(n37165), .B(hundres_1__N_340[3]), 
         .C(\hundres_0__N_350[3] ), .D(n37291), .Z(n37127)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i3451_2_lut_rep_362_3_lut_4_lut_4_lut.init = 16'hf4fa;
    LUT4 i3461_2_lut_rep_590 (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .Z(n37355)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3461_2_lut_rep_590.init = 16'heeee;
    LUT4 i3543_2_lut_rep_526_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(n37291)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3543_2_lut_rep_526_3_lut.init = 16'he0e0;
    LUT4 i13896_2_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_339[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i13896_2_lut_3_lut.init = 16'h1010;
    LUT4 i4081_3_lut_4_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_339[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4081_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4073_2_lut_rep_492_3_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(n37257)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4073_2_lut_rep_492_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4150_2_lut_4_lut_4_lut (.A(n37137), .B(\min_warning[1] ), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\min_warning_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4150_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4172_3_lut_4_lut_3_lut_4_lut (.A(n37137), .B(\min_warning[1] ), 
         .C(hundres_0__N_350[1]), .D(hundres_0__N_350[2]), .Z(\min_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4172_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    PFUMX i30790 (.BLUT(n37500), .ALUT(n37501), .C0(\min_warning[4] ), 
          .Z(n37502));
    
endmodule
//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000) 
//

module \uart_recv(CLK_FREQ=12000000)  (sys_clk_c, sys_clk_c_enable_47, rx_flag, 
            uart_recv_done, uart_rxd_c, n37303, uart_recv_data, GND_net, 
            n31, n37242) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_clk_c_enable_47;
    output rx_flag;
    output uart_recv_done;
    input uart_rxd_c;
    output n37303;
    output [7:0]uart_recv_data;
    input GND_net;
    output n31;
    output n37242;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    wire [7:0]rxdata;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(43[12:18])
    
    wire n8549, n19332, uart_rxd_d1, uart_rxd_d0, n20481, uart_data_7__N_1490;
    wire [15:0]n2016;
    
    wire n34747, n19335, n19314, n19326, n19323, n19320, n19317, 
        n19329, n34748, n34763, sys_clk_c_enable_198;
    wire [15:0]clk_cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(40[12:19])
    
    wire n14, n34726, n34753, n34741, n34776, n37373, n37302, 
        n37266, n37375, n37268, n20580;
    wire [15:0]n69;
    
    wire n20577, n34742, n31729, n31728, n31727, n31726, n31725, 
        n31724, n31723, n31722, n19254, n4, n31900, rx_flag_N_1491, 
        n34479, n6, n15, n37350;
    
    FD1P3IX rxdata__i0 (.D(n19332), .SP(sys_clk_c_enable_47), .CD(n8549), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n20481), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_1490), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[7]), .C(n2016[8]), .D(n34747), 
         .Z(n19335)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    FD1P3IX rxdata__i7 (.D(n19335), .SP(sys_clk_c_enable_47), .CD(n8549), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    FD1P3IX rxdata__i6 (.D(n19314), .SP(sys_clk_c_enable_47), .CD(n8549), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n19326), .SP(sys_clk_c_enable_47), .CD(n8549), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n19323), .SP(sys_clk_c_enable_47), .CD(n8549), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n19320), .SP(sys_clk_c_enable_47), .CD(n8549), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n19317), .SP(sys_clk_c_enable_47), .CD(n8549), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n19329), .SP(sys_clk_c_enable_47), .CD(n8549), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_212 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n2016[7]), 
         .D(n34748), .Z(n19314)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_212.init = 16'heca0;
    LUT4 i1_4_lut_adj_213 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n2016[6]), 
         .D(n34763), .Z(n19326)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_213.init = 16'heca0;
    FD1P3JX rx_cnt_FSM_i0 (.D(n2016[15]), .SP(sys_clk_c_enable_198), .PD(n8549), 
            .CK(sys_clk_c), .Q(n2016[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(clk_cnt[7]), .B(clk_cnt[12]), .C(clk_cnt[13]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(74[37:59])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_214 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n2016[5]), 
         .D(n34726), .Z(n19323)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_214.init = 16'heca0;
    LUT4 i1_4_lut_adj_215 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n2016[4]), 
         .D(n34753), .Z(n19320)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_215.init = 16'heca0;
    LUT4 i1_4_lut_adj_216 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n2016[3]), 
         .D(n34741), .Z(n19317)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_216.init = 16'heca0;
    LUT4 i1_4_lut_adj_217 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n2016[2]), 
         .D(n34776), .Z(n19329)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_217.init = 16'heca0;
    LUT4 i1_2_lut_rep_608 (.A(n2016[1]), .B(n2016[3]), .Z(n37373)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_608.init = 16'heeee;
    LUT4 i1_2_lut_rep_537_3_lut (.A(n2016[1]), .B(n2016[3]), .C(n2016[2]), 
         .Z(n37302)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_537_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_501_3_lut_4_lut (.A(n2016[1]), .B(n2016[3]), .C(n2016[5]), 
         .D(n2016[2]), .Z(n37266)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_501_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_610 (.A(n2016[7]), .B(n2016[8]), .Z(n37375)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_610.init = 16'heeee;
    LUT4 i1_2_lut_rep_538_3_lut (.A(n2016[7]), .B(n2016[8]), .C(n2016[6]), 
         .Z(n37303)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_538_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_503_3_lut_4_lut (.A(n2016[7]), .B(n2016[8]), .C(n2016[4]), 
         .D(n2016[6]), .Z(n37268)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_503_3_lut_4_lut.init = 16'hfffe;
    FD1S3IX clk_cnt_2985__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_2985__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i1.GSR = "ENABLED";
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n20577), 
            .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n20577), 
            .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n20577), 
            .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n20577), 
            .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n20577), 
            .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n20577), 
            .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n20577), 
            .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n2016[0]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2016[4]), .B(n37266), .C(n2016[8]), 
         .D(n2016[6]), .Z(n34748)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_218 (.A(n2016[4]), .B(n37266), .C(n2016[7]), 
         .D(n2016[6]), .Z(n34747)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_218.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_219 (.A(n2016[5]), .B(n37268), .C(n2016[3]), 
         .D(n2016[2]), .Z(n34742)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_219.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_220 (.A(n2016[5]), .B(n37268), .C(n2016[1]), 
         .D(n2016[2]), .Z(n34741)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_220.init = 16'hfffe;
    FD1P3IX rx_cnt_FSM_i2 (.D(n2016[1]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n2016[2]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n2016[3]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n2016[4]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n2016[5]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n2016[6]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n2016[7]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n2016[8]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(uart_data_7__N_1490));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_1490), .SP(sys_clk_c_enable_198), 
            .CD(n8549), .CK(sys_clk_c), .Q(n2016[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n2016[10]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[11]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n2016[11]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n2016[12]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[13]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i14 (.D(n2016[13]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i15 (.D(n2016[14]), .SP(sys_clk_c_enable_198), .CD(n8549), 
            .CK(sys_clk_c), .Q(n2016[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    CCU2D clk_cnt_2985_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31729), .S0(n69[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_2985_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_2985_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_2985_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31728), .COUT(n31729), .S0(n69[13]), .S1(n69[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_2985_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_2985_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31727), .COUT(n31728), .S0(n69[11]), .S1(n69[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_2985_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_2985_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31726), .COUT(n31727), .S0(n69[9]), .S1(n69[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_2985_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_2985_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31725), .COUT(n31726), .S0(n69[7]), .S1(n69[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_2985_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_2985_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31724), .COUT(n31725), .S0(n69[5]), .S1(n69[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_2985_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_2985_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31723), .COUT(n31724), .S0(n69[3]), .S1(n69[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_2985_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_2985_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31722), .COUT(n31723), .S0(n69[1]), .S1(n69[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_2985_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_2985_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_2985_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31722), .S1(n69[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_2985_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_2985_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_2985_add_4_1.INJECT1_1 = "NO";
    LUT4 i29921_4_lut (.A(rx_flag), .B(clk_cnt[6]), .C(n19254), .D(n4), 
         .Z(n20580)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(92[9:26])
    defparam i29921_4_lut.init = 16'hfdf5;
    LUT4 i1_4_lut_adj_221 (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n31900), 
         .D(clk_cnt[3]), .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_221.init = 16'hccc8;
    LUT4 i15086_1_lut (.A(uart_data_7__N_1490), .Z(n20577)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(101[23:36])
    defparam i15086_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_222 (.A(n2016[5]), .B(n37302), .C(n37375), 
         .D(n2016[4]), .Z(n34763)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_222.init = 16'hfffe;
    LUT4 i14993_4_lut (.A(uart_data_7__N_1490), .B(rx_flag_N_1491), .C(rx_flag), 
         .D(n31), .Z(n20481)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(70[10] 78[8])
    defparam i14993_4_lut.init = 16'hfcdc;
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_1491)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_223 (.A(n2016[4]), .B(n37303), .C(n37373), 
         .D(n2016[5]), .Z(n34776)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_223.init = 16'hfffe;
    LUT4 i3223_1_lut (.A(rx_flag), .Z(n8549)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(70[10] 78[8])
    defparam i3223_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_224 (.A(uart_rxd_d1), .B(rxdata[0]), .C(n2016[1]), 
         .D(n34742), .Z(n19332)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_224.init = 16'heca0;
    LUT4 i4_4_lut (.A(clk_cnt[0]), .B(n34479), .C(clk_cnt[4]), .D(n6), 
         .Z(n31)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(74[37:59])
    defparam i4_4_lut.init = 16'hffef;
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(74[37:59])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(clk_cnt[2]), .B(n19254), .C(clk_cnt[5]), .D(clk_cnt[3]), 
         .Z(n34479)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[15]), .C(n14), .D(clk_cnt[14]), 
         .Z(n19254)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(74[37:59])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[8]), .B(clk_cnt[9]), .C(clk_cnt[10]), .D(clk_cnt[11]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(74[37:59])
    defparam i6_4_lut.init = 16'hfffe;
    FD1S3IX clk_cnt_2985__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n20580), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(87[24:38])
    defparam clk_cnt_2985__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_477_3_lut_4_lut (.A(n2016[2]), .B(n37373), .C(n2016[4]), 
         .D(n2016[5]), .Z(n37242)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_477_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_225 (.A(n2016[2]), .B(n37373), .C(n37303), 
         .D(n2016[5]), .Z(n34753)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_225.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_226 (.A(n2016[2]), .B(n37373), .C(n37303), 
         .D(n2016[4]), .Z(n34726)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_226.init = 16'hfffe;
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n20577), 
            .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=411, LSE_RLINE=418 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    LUT4 i29997_4_lut (.A(clk_cnt[6]), .B(clk_cnt[4]), .C(n37350), .D(n34479), 
         .Z(sys_clk_c_enable_198)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart_recv.v(100[13:35])
    defparam i29997_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_rep_585 (.A(clk_cnt[0]), .B(clk_cnt[1]), .Z(n37350)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_585.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(clk_cnt[0]), .B(clk_cnt[1]), .C(clk_cnt[2]), 
         .Z(n31900)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module BCD
//

module BCD (\sec[4] , \sec[1] , n37140, \hundres_0__N_350[1] , \hundres_0__N_350[2] , 
            n37124, \hundres_0__N_347[0] , n4, \sec[2] , n37134, \sec[3] , 
            \sec[7] , \hundres_0__N_347[1] , n8442, \sec[5] , \sec[6] , 
            n37129) /* synthesis syn_module_defined=1 */ ;
    input \sec[4] ;
    input \sec[1] ;
    output n37140;
    output \hundres_0__N_350[1] ;
    output \hundres_0__N_350[2] ;
    output n37124;
    output \hundres_0__N_347[0] ;
    output n4;
    input \sec[2] ;
    output n37134;
    input \sec[3] ;
    input \sec[7] ;
    output \hundres_0__N_347[1] ;
    output n8442;
    input \sec[5] ;
    input \sec[6] ;
    output n37129;
    
    
    wire n37262;
    wire [3:0]hundres_1__N_339;
    
    wire n37468, n37467, n37169;
    wire [3:0]hundres_1__N_341;
    
    wire n37182, n37170, n37189, n37212;
    wire [3:0]hundres_1__N_340;
    
    wire n37239, n37201, n37364, n37168, n37295;
    
    LUT4 i4864_2_lut_rep_417_4_lut_4_lut_then_4_lut (.A(n37262), .B(\sec[4] ), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n37468)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4864_2_lut_rep_417_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i4864_2_lut_rep_417_4_lut_4_lut_else_4_lut (.A(n37262), .B(\sec[4] ), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n37467)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4864_2_lut_rep_417_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i3381_3_lut_rep_359_4_lut (.A(\sec[1] ), .B(n37140), .C(\hundres_0__N_350[1] ), 
         .D(\hundres_0__N_350[2] ), .Z(n37124)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3381_3_lut_rep_359_4_lut.init = 16'hffe0;
    LUT4 i3510_2_lut_4_lut_4_lut (.A(n37169), .B(hundres_1__N_341[2]), .C(hundres_1__N_341[1]), 
         .D(\hundres_0__N_347[0] ), .Z(n4)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i3510_2_lut_4_lut_4_lut.init = 16'hff6c;
    LUT4 i4837_3_lut_rep_369_4_lut_3_lut_4_lut (.A(\sec[2] ), .B(n37182), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n37134)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4837_3_lut_rep_369_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4830_2_lut_3_lut_3_lut_4_lut (.A(\sec[2] ), .B(n37182), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(\hundres_0__N_350[2] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4830_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4815_2_lut_rep_375_4_lut_4_lut (.A(\sec[2] ), .B(n37182), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n37140)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4815_2_lut_rep_375_4_lut_4_lut.init = 16'h554a;
    LUT4 i3377_3_lut_rep_405 (.A(\sec[2] ), .B(n37182), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(n37170)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3377_3_lut_rep_405.init = 16'hffe0;
    LUT4 i4823_3_lut_4_lut (.A(\sec[2] ), .B(n37182), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(\hundres_0__N_350[1] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4823_3_lut_4_lut.init = 16'h998c;
    LUT4 i3512_2_lut_rep_404_3_lut (.A(\sec[3] ), .B(n37189), .C(\sec[2] ), 
         .Z(n37169)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3512_2_lut_rep_404_3_lut.init = 16'hf6f6;
    LUT4 i12202_2_lut_rep_447_3_lut_4_lut (.A(\sec[4] ), .B(n37262), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(n37212)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i12202_2_lut_rep_447_3_lut_4_lut.init = 16'heee0;
    LUT4 i4914_3_lut_4_lut_3_lut_4_lut (.A(\sec[4] ), .B(n37262), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4914_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3374_3_lut_rep_474 (.A(\sec[4] ), .B(n37262), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(n37239)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3374_3_lut_rep_474.init = 16'hffe0;
    LUT4 i4900_3_lut_4_lut (.A(\sec[4] ), .B(n37262), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4900_3_lut_4_lut.init = 16'h998c;
    LUT4 i3516_2_lut_rep_436_3_lut (.A(\sec[4] ), .B(n37239), .C(\sec[3] ), 
         .Z(n37201)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3516_2_lut_rep_436_3_lut.init = 16'hf6f6;
    LUT4 i4843_2_lut_3_lut_3_lut_4_lut (.A(n37364), .B(\sec[7] ), .C(hundres_1__N_340[3]), 
         .D(n37168), .Z(\hundres_0__N_347[0] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4843_2_lut_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4872_3_lut_4_lut (.A(\sec[4] ), .B(n37239), .C(\sec[3] ), .D(n37189), 
         .Z(hundres_1__N_341[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4872_3_lut_4_lut.init = 16'h6966;
    LUT4 i4851_3_lut_4_lut_3_lut_4_lut (.A(n37364), .B(\sec[7] ), .C(hundres_1__N_340[3]), 
         .D(n37168), .Z(\hundres_0__N_347[1] )) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4851_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 n4_bdd_4_lut_30858 (.A(n4), .B(n37295), .C(n37168), .D(hundres_1__N_340[3]), 
         .Z(n8442)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A !((C+(D))+!B)) */ ;
    defparam n4_bdd_4_lut_30858.init = 16'ha20c;
    LUT4 i4886_3_lut_rep_403_4_lut_3_lut_4_lut (.A(hundres_1__N_339[1]), .B(n37212), 
         .C(hundres_1__N_340[1]), .D(n37201), .Z(n37168)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4886_3_lut_rep_403_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4879_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_339[1]), .B(n37212), 
         .C(hundres_1__N_340[1]), .D(n37201), .Z(hundres_1__N_341[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4879_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3375_3_lut_rep_424_4_lut (.A(hundres_1__N_339[1]), .B(n37212), 
         .C(hundres_1__N_340[1]), .D(n37201), .Z(n37189)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3375_3_lut_rep_424_4_lut.init = 16'hf666;
    LUT4 i3520_2_lut_rep_599 (.A(\sec[5] ), .B(\sec[6] ), .Z(n37364)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3520_2_lut_rep_599.init = 16'heeee;
    LUT4 i3539_2_lut_rep_530_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(n37295)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3539_2_lut_rep_530_3_lut.init = 16'he0e0;
    LUT4 i13950_2_lut_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(hundres_1__N_339[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i13950_2_lut_3_lut.init = 16'h1010;
    LUT4 i4753_3_lut_4_lut_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(hundres_1__N_339[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4753_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4745_2_lut_rep_497_3_lut_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(n37262)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4745_2_lut_rep_497_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i3508_2_lut_rep_364_3_lut (.A(\sec[2] ), .B(n37170), .C(\sec[1] ), 
         .Z(n37129)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3508_2_lut_rep_364_3_lut.init = 16'hf6f6;
    PFUMX i30768 (.BLUT(n37467), .ALUT(n37468), .C0(\sec[3] ), .Z(n37182));
    
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
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire uart_en_d1, uart_en_d0, uart_tx_busy, n20502;
    wire [15:0]n2106;
    
    wire sys_clk_c_enable_181, n37354, n11237;
    wire [7:0]tx_data;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(22[12:19])
    
    wire n11238, n35200, n35211;
    wire [15:0]clk_cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    
    wire n20579;
    wire [15:0]n69;
    
    wire n35208, n17832;
    wire [0:0]n5318;
    
    wire n17203, n37396, n37352, n35130, n32165, sys_clk_c_enable_273, 
        uart_tx_busy_N_743, n28996, uart_txd_N_746, n35132, n35100, 
        n35102, n34998, n31721, n31720, n31719, n31718, n32262, 
        n4, n31717, n16, n31716, n31715, n31714, n11230, n32071;
    wire [0:0]n5347;
    
    wire n10, n17831;
    
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(42[10] 45[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n20502), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(42[10] 45[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    FD1P3JX tx_cnt_FSM_i0 (.D(n2106[15]), .SP(sys_clk_c_enable_181), .PD(n37354), 
            .CK(sys_clk_c), .Q(n2106[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i5833_3_lut (.A(n11237), .B(tx_data[4]), .C(n2106[5]), .Z(n11238)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i5833_3_lut.init = 16'hcaca;
    LUT4 i5832_3_lut (.A(tx_data[2]), .B(tx_data[3]), .C(n2106[4]), .Z(n11237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i5832_3_lut.init = 16'hcaca;
    LUT4 i30017_4_lut (.A(n2106[8]), .B(n2106[7]), .C(n2106[6]), .D(n35200), 
         .Z(n35211)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i30017_4_lut.init = 16'hfffe;
    LUT4 i29530_3_lut (.A(n2106[5]), .B(n2106[4]), .C(n2106[3]), .Z(n35200)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i29530_3_lut.init = 16'h0101;
    FD1S3IX clk_cnt_2983__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_2983__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i1.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i1 (.D(n2106[0]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[1]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    LUT4 i29749_4_lut_4_lut (.A(n2106[8]), .B(n35208), .C(n17832), .D(n5318[0]), 
         .Z(n17203)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam i29749_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_rep_631 (.A(clk_cnt[5]), .B(clk_cnt[6]), .Z(n37396)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    defparam i1_2_lut_rep_631.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(clk_cnt[5]), .B(clk_cnt[6]), .C(n37352), .D(n35130), 
         .Z(sys_clk_c_enable_181)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_3_lut_4_lut (.A(uart_en_d0), .B(uart_en_d1), .C(uart_tx_busy), 
         .D(n32165), .Z(n20502)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(42[10] 45[8])
    defparam i1_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1_2_lut_3_lut (.A(uart_en_d0), .B(uart_en_d1), .C(n32165), .Z(sys_clk_c_enable_273)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(42[10] 45[8])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    FD1P3IX tx_cnt_FSM_i2 (.D(n2106[1]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n2106[2]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[3]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n2106[3]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n2106[4]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[5]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n2106[5]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n2106[6]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n2106[7]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n2106[8]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_743));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_743), .SP(sys_clk_c_enable_181), 
            .CD(n37354), .CK(sys_clk_c), .Q(n2106[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n2106[10]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[11]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n2106[11]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n2106[12]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[13]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n2106[13]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n2106[14]), .SP(sys_clk_c_enable_181), .CD(n37354), 
            .CK(sys_clk_c), .Q(n2106[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(89[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    FD1P3IX tx_data_i1 (.D(uart_send_data[1]), .SP(sys_clk_c_enable_273), 
            .CD(n28996), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i1.GSR = "ENABLED";
    FD1S3JX uart_txd_47 (.D(uart_txd_N_746), .CK(sys_clk_c), .PD(n37354), 
            .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(101[10] 116[26])
    defparam uart_txd_47.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(clk_cnt[1]), .B(n37396), .C(uart_tx_busy_N_743), 
         .D(n35132), .Z(n32165)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0080;
    LUT4 i29462_3_lut (.A(n35130), .B(clk_cnt[2]), .C(clk_cnt[0]), .Z(n35132)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i29462_3_lut.init = 16'hfefe;
    LUT4 i29460_4_lut (.A(n35100), .B(clk_cnt[13]), .C(n35102), .D(n34998), 
         .Z(n35130)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29460_4_lut.init = 16'hfffe;
    LUT4 i29432_4_lut (.A(clk_cnt[15]), .B(clk_cnt[12]), .C(clk_cnt[8]), 
         .D(clk_cnt[4]), .Z(n35102)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29432_4_lut.init = 16'hfffe;
    LUT4 i29330_2_lut (.A(clk_cnt[11]), .B(clk_cnt[3]), .Z(n34998)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29330_2_lut.init = 16'heeee;
    FD1P3IX tx_data_i2 (.D(uart_send_data[2]), .SP(sys_clk_c_enable_273), 
            .CD(n28996), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i2.GSR = "ENABLED";
    LUT4 i29430_4_lut (.A(clk_cnt[10]), .B(clk_cnt[7]), .C(clk_cnt[14]), 
         .D(clk_cnt[9]), .Z(n35100)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29430_4_lut.init = 16'hfffe;
    FD1P3IX tx_data_i3 (.D(uart_send_data[3]), .SP(sys_clk_c_enable_273), 
            .CD(n28996), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1P3IX tx_data_i4 (.D(uart_send_data[4]), .SP(sys_clk_c_enable_273), 
            .CD(n28996), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1P3IX tx_data_i5 (.D(uart_send_data[5]), .SP(sys_clk_c_enable_273), 
            .CD(n28996), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1P3IX tx_data_i6 (.D(uart_send_data[6]), .SP(sys_clk_c_enable_273), 
            .CD(n28996), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1P3IX tx_data_i7 (.D(uart_send_data[7]), .SP(sys_clk_c_enable_273), 
            .CD(n28996), .CK(sys_clk_c), .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i7.GSR = "ENABLED";
    CCU2D clk_cnt_2983_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31721), .S0(n69[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_2983_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_2983_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_2983_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31720), .COUT(n31721), .S0(n69[13]), .S1(n69[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_2983_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_2983_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31719), .COUT(n31720), .S0(n69[11]), .S1(n69[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_2983_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_2983_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31718), .COUT(n31719), .S0(n69[9]), .S1(n69[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_2983_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n32262), .B(clk_cnt[4]), .C(n37396), .D(n4), .Z(n20579)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam i1_4_lut.init = 16'hfaea;
    CCU2D clk_cnt_2983_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31717), .COUT(n31718), .S0(n69[7]), .S1(n69[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_2983_add_4_9.INJECT1_1 = "NO";
    LUT4 i9_4_lut (.A(n35100), .B(clk_cnt[13]), .C(n16), .D(clk_cnt[8]), 
         .Z(n32262)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam i9_4_lut.init = 16'hfffe;
    CCU2D clk_cnt_2983_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31716), .COUT(n31717), .S0(n69[5]), .S1(n69[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_2983_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_2983_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31715), .COUT(n31716), .S0(n69[3]), .S1(n69[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_2983_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_2983_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31714), .COUT(n31715), .S0(n69[1]), .S1(n69[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_2983_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_2983_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_2983_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31714), .S1(n69[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_2983_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_2983_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_2983_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(uart_en_d0), .B(n32165), .C(uart_en_d1), .Z(n28996)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    defparam i1_3_lut.init = 16'hc4c4;
    LUT4 i20888_4_lut (.A(n11230), .B(n2106[0]), .C(uart_txd_c), .D(n32071), 
         .Z(uart_txd_N_746)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i20888_4_lut.init = 16'h3022;
    LUT4 i20979_2_lut (.A(n5347[0]), .B(uart_tx_busy_N_743), .Z(n11230)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i20979_2_lut.init = 16'heeee;
    LUT4 i5_3_lut (.A(n2106[15]), .B(n10), .C(n2106[13]), .Z(n32071)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut (.A(n2106[14]), .B(n2106[12]), .C(n2106[11]), .D(n2106[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i29538_2_lut (.A(n2106[7]), .B(n2106[6]), .Z(n35208)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i29538_2_lut.init = 16'h1111;
    LUT4 i12368_3_lut (.A(tx_data[5]), .B(tx_data[6]), .C(n2106[7]), .Z(n17831)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i12368_3_lut.init = 16'hcaca;
    FD1P3IX tx_data_i0 (.D(uart_send_data[0]), .SP(sys_clk_c_enable_273), 
            .CD(n28996), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=347, LSE_RLINE=356 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam tx_data_i0.GSR = "ENABLED";
    LUT4 i12369_3_lut (.A(n17831), .B(tx_data[7]), .C(n2106[8]), .Z(n17832)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam i12369_3_lut.init = 16'hcaca;
    LUT4 mux_1804_i1_3_lut (.A(tx_data[0]), .B(tx_data[1]), .C(n2106[2]), 
         .Z(n5318[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(102[9] 114[16])
    defparam mux_1804_i1_3_lut.init = 16'hcaca;
    FD1S3IX clk_cnt_2983__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n20579), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(75[24:38])
    defparam clk_cnt_2983__i0.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_587 (.A(clk_cnt[0]), .B(clk_cnt[1]), .C(clk_cnt[2]), 
         .Z(n37352)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    defparam i2_3_lut_rep_587.init = 16'h8080;
    LUT4 i1_2_lut_4_lut (.A(clk_cnt[0]), .B(clk_cnt[1]), .C(clk_cnt[2]), 
         .D(clk_cnt[3]), .Z(n4)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(19[12:19])
    defparam i1_2_lut_4_lut.init = 16'hff80;
    LUT4 i15039_1_lut_rep_589 (.A(uart_tx_busy), .Z(n37354)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam i15039_1_lut_rep_589.init = 16'h5555;
    LUT4 i6_4_lut_4_lut (.A(uart_tx_busy), .B(clk_cnt[11]), .C(clk_cnt[12]), 
         .D(clk_cnt[15]), .Z(n16)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/uart.v(54[10] 66[12])
    defparam i6_4_lut_4_lut.init = 16'hfffd;
    PFUMX i11552 (.BLUT(n11238), .ALUT(n17203), .C0(n35211), .Z(n5347[0]));
    
endmodule
//
// Verilog Description of module KEY
//

module KEY (sys_clk_c, key_sec_pre, key_sec, key3_c, n37401, key_sec_adj_8, 
            key_sec_pre_adj_9, n34623, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key3_c;
    output n37401;
    input key_sec_adj_8;
    input key_sec_pre_adj_9;
    output n34623;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire key_rst_pre, key_rst;
    wire [17:0]cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire sys_clk_c_enable_235, n31713, n31712, n31711, n31710, n31709, 
        n31708, n31707, n21, n34, n30, n22, n31, n28, n31706, 
        n31705;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key3_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1S3IX cnt_2980__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i0.GSR = "ENABLED";
    FD1S3IX cnt_2980__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i17.GSR = "ENABLED";
    FD1S3IX cnt_2980__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i16.GSR = "ENABLED";
    FD1S3IX cnt_2980__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i15.GSR = "ENABLED";
    FD1S3IX cnt_2980__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i14.GSR = "ENABLED";
    FD1S3IX cnt_2980__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i13.GSR = "ENABLED";
    FD1S3IX cnt_2980__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i12.GSR = "ENABLED";
    FD1S3IX cnt_2980__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i11.GSR = "ENABLED";
    FD1S3IX cnt_2980__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i10.GSR = "ENABLED";
    FD1S3IX cnt_2980__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i9.GSR = "ENABLED";
    FD1S3IX cnt_2980__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i8.GSR = "ENABLED";
    FD1S3IX cnt_2980__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i7.GSR = "ENABLED";
    FD1S3IX cnt_2980__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i6.GSR = "ENABLED";
    FD1S3IX cnt_2980__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i5.GSR = "ENABLED";
    FD1S3IX cnt_2980__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i4.GSR = "ENABLED";
    FD1S3IX cnt_2980__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i3.GSR = "ENABLED";
    FD1S3IX cnt_2980__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i2.GSR = "ENABLED";
    FD1S3IX cnt_2980__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980__i1.GSR = "ENABLED";
    LUT4 key_sec_pre_I_0_2_lut_rep_636 (.A(key_sec_pre), .B(key_sec), .Z(n37401)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_636.init = 16'h2222;
    LUT4 i1_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(key_sec_adj_8), 
         .D(key_sec_pre_adj_9), .Z(n34623)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(78[22:46])
    defparam i1_3_lut_4_lut.init = 16'h2022;
    FD1P3AY key_sec_29 (.D(key3_c), .SP(sys_clk_c_enable_235), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    CCU2D cnt_2980_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31713), .S0(n77[17]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2980_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2980_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2980_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2980_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31712), .COUT(n31713), .S0(n77[15]), .S1(n77[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2980_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2980_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2980_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2980_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31711), .COUT(n31712), .S0(n77[13]), .S1(n77[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2980_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2980_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2980_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_2980_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31710), .COUT(n31711), .S0(n77[11]), .S1(n77[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2980_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2980_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2980_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_2980_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31709), .COUT(n31710), .S0(n77[9]), .S1(n77[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2980_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2980_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2980_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2980_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31708), 
          .COUT(n31709), .S0(n77[7]), .S1(n77[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2980_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2980_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2980_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2980_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31707), 
          .COUT(n31708), .S0(n77[5]), .S1(n77[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2980_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2980_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2980_add_4_7.INJECT1_1 = "NO";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_235)) /* synthesis lut_function=(A (B (C (D)))) */ ;
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
    CCU2D cnt_2980_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31706), 
          .COUT(n31707), .S0(n77[3]), .S1(n77[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2980_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2980_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2980_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_2980_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31705), 
          .COUT(n31706), .S0(n77[1]), .S1(n77[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2980_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2980_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2980_add_4_3.INJECT1_1 = "NO";
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    CCU2D cnt_2980_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31705), .S1(n77[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/key.v(46[12:23])
    defparam cnt_2980_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2980_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2980_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2980_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module BCD_U5
//

module BCD_U5 (\hour_warning[4] , \hour_warning[3] , \hour_warning[7] , 
            n37130, \hundres_0__N_347[1] , \hour_warning[1] , \hour_warning_ones[1] , 
            n8144, \hundres_0__N_350[3] , n4, \hour_warning[2] , \hour_warning_tens[0] , 
            hundres_0__N_355, \hour_warning_ones[3] , \hour_warning_ones[2] , 
            \hour_warning[5] , \hour_warning[6] ) /* synthesis syn_module_defined=1 */ ;
    input \hour_warning[4] ;
    input \hour_warning[3] ;
    input \hour_warning[7] ;
    output n37130;
    output \hundres_0__N_347[1] ;
    input \hour_warning[1] ;
    output \hour_warning_ones[1] ;
    input n8144;
    output \hundres_0__N_350[3] ;
    output n4;
    input \hour_warning[2] ;
    output \hour_warning_tens[0] ;
    output hundres_0__N_355;
    output \hour_warning_ones[3] ;
    output \hour_warning_ones[2] ;
    input \hour_warning[5] ;
    input \hour_warning[6] ;
    
    
    wire n37233, n37195, n37186;
    wire [3:0]hundres_1__N_341;
    
    wire n37353, n37160;
    wire [3:0]hundres_1__N_340;
    
    wire n37141;
    wire [3:0]hundres_1__N_339;
    
    wire n37477, n37476, n37135;
    wire [3:0]hundres_0__N_350;
    
    wire n37176, n37256, n38992, n37208, n37125, n38994, n37290, 
        n38993;
    
    LUT4 i4394_2_lut_rep_430_3_lut (.A(\hour_warning[4] ), .B(n37233), .C(\hour_warning[3] ), 
         .Z(n37195)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4394_2_lut_rep_430_3_lut.init = 16'hf6f6;
    LUT4 i4389_3_lut_4_lut (.A(\hour_warning[4] ), .B(n37233), .C(\hour_warning[3] ), 
         .D(n37186), .Z(hundres_1__N_341[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4389_3_lut_4_lut.init = 16'h6966;
    LUT4 i4360_2_lut_rep_365_3_lut_3_lut_4_lut (.A(n37353), .B(\hour_warning[7] ), 
         .C(n37160), .D(hundres_1__N_340[3]), .Z(n37130)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i4360_2_lut_rep_365_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i4368_3_lut_4_lut_3_lut_4_lut (.A(n37353), .B(\hour_warning[7] ), 
         .C(n37160), .D(hundres_1__N_340[3]), .Z(\hundres_0__N_347[1] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4368_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i3536_2_lut_rep_376_3_lut_4_lut (.A(n37353), .B(\hour_warning[7] ), 
         .C(n37160), .D(hundres_1__N_340[3]), .Z(n37141)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3536_2_lut_rep_376_3_lut_4_lut.init = 16'h8880;
    LUT4 i4381_2_lut_rep_411_4_lut_4_lut_then_4_lut (.A(\hour_warning[3] ), 
         .B(\hour_warning[4] ), .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), 
         .Z(n37477)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4381_2_lut_rep_411_4_lut_4_lut_then_4_lut.init = 16'h2524;
    LUT4 i4381_2_lut_rep_411_4_lut_4_lut_else_4_lut (.A(\hour_warning[3] ), 
         .B(\hour_warning[4] ), .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), 
         .Z(n37476)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4381_2_lut_rep_411_4_lut_4_lut_else_4_lut.init = 16'h959a;
    LUT4 i4304_2_lut_4_lut_4_lut (.A(\hour_warning[1] ), .B(n37135), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\hour_warning_ones[1] )) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4304_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 i1_3_lut_4_lut (.A(n37160), .B(n37141), .C(n8144), .D(\hundres_0__N_350[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i4347_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n37176), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(hundres_0__N_350[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4347_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4332_2_lut_rep_370_4_lut_4_lut (.A(\hour_warning[2] ), .B(n37176), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(n37135)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4332_2_lut_rep_370_4_lut_4_lut.init = 16'h554a;
    LUT4 i4354_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n37176), 
         .C(hundres_1__N_341[1]), .D(hundres_1__N_341[2]), .Z(\hundres_0__N_350[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4354_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4340_3_lut_4_lut (.A(\hour_warning[2] ), .B(n37176), .C(hundres_1__N_341[1]), 
         .D(hundres_1__N_341[2]), .Z(hundres_0__N_350[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4340_3_lut_4_lut.init = 16'h998c;
    LUT4 i4326_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[1] ), .B(n37135), 
         .C(hundres_0__N_350[1]), .D(hundres_0__N_350[2]), .Z(\hour_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4326_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4373_2_lut_rep_383_4_lut_4_lut_else_4_lut (.A(\hour_warning[4] ), 
         .B(n37256), .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), 
         .Z(n38992)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4373_2_lut_rep_383_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i12182_2_lut_rep_443_3_lut_4_lut (.A(n37256), .B(\hour_warning[4] ), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(n37208)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i12182_2_lut_rep_443_3_lut_4_lut.init = 16'heee0;
    LUT4 i4431_3_lut_4_lut_3_lut_4_lut (.A(n37256), .B(\hour_warning[4] ), 
         .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4431_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3373_3_lut_rep_468 (.A(n37256), .B(\hour_warning[4] ), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(n37233)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3373_3_lut_rep_468.init = 16'hffe0;
    LUT4 i4417_3_lut_4_lut (.A(n37256), .B(\hour_warning[4] ), .C(hundres_1__N_339[1]), 
         .D(hundres_1__N_339[2]), .Z(hundres_1__N_340[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4417_3_lut_4_lut.init = 16'h998a;
    LUT4 i3465_4_lut (.A(n37125), .B(n38994), .C(\hundres_0__N_347[1] ), 
         .D(n37290), .Z(hundres_0__N_355)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3465_4_lut.init = 16'hb3a0;
    LUT4 i3904_2_lut_rep_360_3_lut_4_lut_4_lut (.A(hundres_1__N_340[3]), .B(n37160), 
         .C(\hundres_0__N_350[3] ), .D(n37290), .Z(n37125)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(21[6] 22[23])
    defparam i3904_2_lut_rep_360_3_lut_4_lut_4_lut.init = 16'hf2fc;
    LUT4 i4403_3_lut_rep_395_4_lut_3_lut_4_lut (.A(hundres_1__N_339[1]), .B(n37208), 
         .C(hundres_1__N_340[1]), .D(n37195), .Z(n37160)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4403_3_lut_rep_395_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4396_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_339[1]), .B(n37208), 
         .C(hundres_1__N_340[1]), .D(n37195), .Z(hundres_1__N_341[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i4396_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3376_3_lut_rep_421_4_lut (.A(hundres_1__N_339[1]), .B(n37208), 
         .C(hundres_1__N_340[1]), .D(n37195), .Z(n37186)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/bcd.v(23[6] 24[23])
    defparam i3376_3_lut_rep_421_4_lut.init = 16'hf666;
    LUT4 i4373_2_lut_rep_383_4_lut_4_lut_then_4_lut (.A(\hour_warning[4] ), 
         .B(n37256), .C(hundres_1__N_339[1]), .D(hundres_1__N_339[2]), 
         .Z(n38993)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i4373_2_lut_rep_383_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    LUT4 i4319_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[1] ), .B(n37135), 
         .C(hundres_0__N_350[1]), .D(hundres_0__N_350[2]), .Z(\hour_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4319_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4312_3_lut_4_lut (.A(\hour_warning[1] ), .B(n37135), .C(hundres_0__N_350[1]), 
         .D(hundres_0__N_350[2]), .Z(\hour_warning_ones[2] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4312_3_lut_4_lut.init = 16'h998c;
    PFUMX i31545 (.BLUT(n38992), .ALUT(n38993), .C0(n37195), .Z(n38994));
    LUT4 i3476_2_lut_rep_588 (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .Z(n37353)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3476_2_lut_rep_588.init = 16'heeee;
    LUT4 i3538_2_lut_rep_525_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n37290)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3538_2_lut_rep_525_3_lut.init = 16'he0e0;
    LUT4 i4291_3_lut_4_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_339[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4291_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i13961_2_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_339[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i13961_2_lut_3_lut.init = 16'h1010;
    LUT4 i4283_2_lut_rep_491_3_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n37256)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4283_2_lut_rep_491_3_lut_3_lut.init = 16'h4a4a;
    PFUMX i30774 (.BLUT(n37476), .ALUT(n37477), .C0(n37256), .Z(n37176));
    
endmodule
//
// Verilog Description of module OLED12832
//

module OLED12832 (sys_clk_c, sw1_c, n8442, n37134, oled_cs_c, oled_dc_c, 
            n11, \cnt_scan[3] , n4, \hundres_0__N_347[1] , oled_mosi_c, 
            n37317, n4024, n4402, n2894, n3646, n3268, warning_TEM, 
            n3267, n3645, n2889, key_mode, n37372, n4_adj_1, n37318, 
            n2724, n2722, n2721, n2720, \cnt_main[0] , n4028, n4406, 
            n3650, n3272, n2895, \cnt[0] , \cnt[1] , \cnt[2] , \cnt[4] , 
            oled_sck_c, n37314, \cnt[3] , oled_res_c, n4029, n4407, 
            n3273, n3651, n4025, n4403, n3269, n3647, n3271, n3649, 
            n4023, n4401, n4027, n4405, n2893, n37418, \min_tens[0] , 
            \min_warning_tens[0] , \Tem_high[2] , n3270, n4026, \min[0] , 
            \min_warning[0] , n3648, n4404, n2892, \hour[0] , \hour_warning[0] , 
            n8157, n14554, n8144, n11620, n7455, n19396, n19393, 
            \ds18b20_data[5] , n37157, \hundres_0__N_350[1] , n37146, 
            n37184, n10614, n2890, n35982, n15, n36704, n37263, 
            GND_net, n7445, n18926, \ds18b20_data[4] , n34483, n36947, 
            n35269, n35291, n7448, \hour_ones[2] , \hour_warning_ones[2] , 
            \hour_ones[3] , \hour_warning_ones[3] , n36155, \min_ones[2] , 
            \min_warning_ones[2] , \min_ones[3] , \min_warning_ones[3] , 
            hundres_0__N_355, hundres_0__N_355_adj_2, hundres_0__N_355_adj_3, 
            hundres_0__N_355_adj_4, \hour_ones[1] , \hour_warning_ones[1] , 
            \min_ones[1] , \min_warning_ones[1] , \Tem_high[0] , n2891, 
            \hundres_0__N_347[0] , \hundres_0__N_350[1]_adj_5 , \hundres_0__N_350[2] , 
            n37129, \sec[0] , n7472, n36096, n4_adj_6, n37130, \hundres_0__N_350[3] , 
            \hundres_0__N_347[1]_adj_7 , n8460, \sec[1] , n37124, n37140, 
            time_set, n7474, n11094, n35154, sys_rst_n_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sw1_c;
    input n8442;
    input n37134;
    output oled_cs_c;
    output oled_dc_c;
    output n11;
    output \cnt_scan[3] ;
    input n4;
    input \hundres_0__N_347[1] ;
    output oled_mosi_c;
    output n37317;
    input n4024;
    input n4402;
    input n2894;
    input n3646;
    input n3268;
    input warning_TEM;
    input n3267;
    input n3645;
    input n2889;
    input [2:0]key_mode;
    output n37372;
    output n4_adj_1;
    output n37318;
    output n2724;
    output n2722;
    output n2721;
    output n2720;
    output \cnt_main[0] ;
    input n4028;
    input n4406;
    input n3650;
    input n3272;
    input n2895;
    output \cnt[0] ;
    output \cnt[1] ;
    output \cnt[2] ;
    output \cnt[4] ;
    output oled_sck_c;
    output n37314;
    output \cnt[3] ;
    output oled_res_c;
    input n4029;
    input n4407;
    input n3273;
    input n3651;
    input n4025;
    input n4403;
    input n3269;
    input n3647;
    input n3271;
    input n3649;
    input n4023;
    input n4401;
    input n4027;
    input n4405;
    input n2893;
    input n37418;
    input \min_tens[0] ;
    input \min_warning_tens[0] ;
    input \Tem_high[2] ;
    input n3270;
    input n4026;
    input \min[0] ;
    input \min_warning[0] ;
    input n3648;
    input n4404;
    input n2892;
    input \hour[0] ;
    input \hour_warning[0] ;
    output n8157;
    input n14554;
    output n8144;
    input n11620;
    input n7455;
    input n19396;
    input n19393;
    input \ds18b20_data[5] ;
    input n37157;
    input \hundres_0__N_350[1] ;
    input n37146;
    input n37184;
    input n10614;
    input n2890;
    input n35982;
    input n15;
    input n36704;
    output n37263;
    input GND_net;
    input n7445;
    output n18926;
    input \ds18b20_data[4] ;
    input n34483;
    input n36947;
    input n35269;
    input n35291;
    input n7448;
    input \hour_ones[2] ;
    input \hour_warning_ones[2] ;
    input \hour_ones[3] ;
    input \hour_warning_ones[3] ;
    input n36155;
    input \min_ones[2] ;
    input \min_warning_ones[2] ;
    input \min_ones[3] ;
    input \min_warning_ones[3] ;
    input hundres_0__N_355;
    input hundres_0__N_355_adj_2;
    input hundres_0__N_355_adj_3;
    input hundres_0__N_355_adj_4;
    input \hour_ones[1] ;
    input \hour_warning_ones[1] ;
    input \min_ones[1] ;
    input \min_warning_ones[1] ;
    input \Tem_high[0] ;
    input n2891;
    input \hundres_0__N_347[0] ;
    input \hundres_0__N_350[1]_adj_5 ;
    input \hundres_0__N_350[2] ;
    input n37129;
    input \sec[0] ;
    output n7472;
    input n36096;
    input n4_adj_6;
    input n37130;
    input \hundres_0__N_350[3] ;
    input \hundres_0__N_347[1]_adj_7 ;
    output n8460;
    input \sec[1] ;
    input n37124;
    input n37140;
    input time_set;
    output n7474;
    input n11094;
    input n35154;
    input sys_rst_n_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(53[9:19])
    wire [5:0]state;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    wire [15:0]num_delay;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(47[13:22])
    
    wire n16, n19;
    wire [15:0]num_delay_15__N_979;
    wire [4:0]cnt_init;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[22:30])
    
    wire n37224, n37278;
    wire [15:0]num_delay_15__N_1290;
    
    wire n15_c, n30;
    wire [4:0]cnt_main;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[12:20])
    wire [167:0]n1939;
    
    wire n16_adj_1719, n38998, n38999, oled_dcn_N_1398, n39000;
    wire [5:0]state_back;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[20:30])
    
    wire n37326, n24, n37330, n35;
    wire [7:0]num;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(45[12:15])
    
    wire sys_clk_c_enable_377, n20657;
    wire [7:0]n37;
    wire [4:0]n7464;
    wire [15:0]cnt_delay;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(47[24:33])
    
    wire sys_clk_c_enable_326, n20553;
    wire [15:0]n4484;
    wire [5:0]state_back_5__N_1033;
    
    wire n4458, n18;
    wire [7:0]char_reg;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(45[17:25])
    wire [7:0]char_reg_7__N_951;
    
    wire sys_clk_c_enable_183, n34587, n15_adj_1720, n30_adj_1721;
    wire [4:0]cnt_scan;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    
    wire n36877, n64, sys_clk_c_enable_19, n34236, sys_clk_c_enable_20, 
        n34038, n37331, n37282, sys_clk_c_enable_219, n15_adj_1722, 
        n30_adj_1723, n15_adj_1724, n30_adj_1725, n36021, n36016, 
        n36022, sys_clk_c_enable_143;
    wire [7:0]n1;
    
    wire n15_adj_1726, n30_adj_1727, flash_bit, rst_n_in_N_1516, flash_bit_N_1423, 
        sys_clk_c_enable_328, n42;
    wire [15:0]cnt;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(47[35:38])
    
    wire n19_adj_1728;
    wire [167:0]char;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(44[19:23])
    
    wire sys_clk_c_enable_375, n39006, n18_adj_1729, n20, n15_adj_1730, 
        n30_adj_1731, n15_adj_1732, n30_adj_1733, n3767, n37280, n31, 
        n24_adj_1734, n8, sys_clk_c_enable_77;
    wire [0:0]n6823;
    
    wire n20706, n37097, n37431, n37432, n35241, n35242, n35243, 
        n35271, n35272, n35273, n36527, n35224, n53;
    wire [7:0]y_p;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(43[12:15])
    wire [7:0]x_ph;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(43[17:21])
    
    wire n37110, n37411, n36101, n21, n37102, n36103, n37505, 
        n36105, n37410, n4_adj_1735, n35030, n5, n32039, n39003, 
        n36075, n36076, n36873;
    wire [4:0]cnt_write;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[42:51])
    
    wire n35275, n37274, n37560, n37087, n35274, n36876, n37456, 
        n37455, n30_adj_1736, n35251, n8_adj_1738, n10, n35250, 
        n36774, n36773, n20159, n37310, n36889, n15_adj_1739, n37111, 
        n15_adj_1740, n37112, n36978, n37633, n37635, n15_adj_1741, 
        n37113, n36526, n15_adj_1742, n37114, n37288, n15_adj_1743, 
        n37495;
    wire [7:0]x_pl;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(43[23:27])
    
    wire n37494;
    wire [4:0]cnt_main_4__N_1046;
    
    wire n37498, n37563, n37088, n37497, n4482, n37227, n37504, 
        sys_clk_c_enable_336, n20640, n37096, n20637;
    wire [4:0]n22;
    
    wire n37503, n37379, n36070, n37575, n37089, n24_adj_1744, n27, 
        n37524, n37080, n9098, n37578, n37090, n37261, n37516, 
        n37519, n24_adj_1745, n37522, n37525, n37428, n37429, n36097, 
        n37528, n37531, n37534, n34675, n45, sys_clk_c_enable_123, 
        n34070, n37537, n38984, n4793, n37566, n37091, n41_adj_1746, 
        n18949, n34, n35222, n35220, n37540, n37543, n37546, n14, 
        n37549, n33552, n37553, n37552, n37555, n37558, n37561, 
        oled_csn_N_1382, n36977, n36976, n37564, n36985, n37567, 
        n37570, n37276, n35098, n37573, n37574, n37576, n37361, 
        n6, n34828, n37277, n32856, n37316, n9, n35236, n37583, 
        n37582, n35235, n37322, sys_clk_c_enable_157;
    wire [0:0]n6727;
    
    wire n37536, n37092, n35312, n35311, n37551, n37093, n20629;
    wire [4:0]n2321;
    
    wire n35303, n35234, n35302, n35233, n37602, n36106, n37095, 
        n35297, n35232, n35318, n35317, n35231, n37601, n37603, 
        n37604, n37605, n37390, n32178, n37296, n37606, n37312, 
        n7, n37392, n8_adj_1748, n2, n34695, n126, n35230, n35319, 
        n1507, n35237, n35238, n36125, n35229, n37394, n26081, 
        n37334, n7977, n6_adj_1749, n6_adj_1750, n27_adj_1751, n37409, 
        n34781, n34615, n35276, n35277, n35279, n19_adj_1752, n16_adj_1753, 
        n6_adj_1754, n37356, n7_adj_1755, n35239, n35240, n37320, 
        n35838, n1934, n35252, n37399;
    wire [7:0]char_reg_7__N_1274;
    
    wire n6_adj_1756, n9_adj_1757, n34917, n37368, n3, n3_adj_1758;
    wire [15:0]n2357;
    wire [15:0]n2383;
    
    wire n3_adj_1759, n3_adj_1760, n6_adj_1761, n3_adj_1762, n3_adj_1763, 
        n3_adj_1764, n15_adj_1765, n6_adj_1766, n36, n25056, n6_adj_1767, 
        n6_adj_1768, n37400, n14_adj_1769, n36558, n35294, n38954, 
        n38955;
    wire [4:0]n7470;
    
    wire n12, n38953;
    wire [3:0]n7459;
    
    wire n36156, n38952, n38956, n34967, n38957, n35293, n35290;
    wire [3:0]n7449;
    
    wire n35288, n37297, n35287, n24_adj_1770, n35268, n24_adj_1771, 
        n24_adj_1772, n11_adj_1773, n35265, n35266, n35267, n35260, 
        n21_adj_1774, n24_adj_1775, n37405, n20618;
    wire [4:0]cnt_scan_4__N_1056;
    
    wire n35278, oled_dat_N_1420, n9_adj_1776, n8_adj_1777, n35983, 
        n30_adj_1778, n35262, n35263, n35264;
    wire [4:0]n2531;
    
    wire n30_adj_1779, n9170, n35253, n35254, n35255, n30_adj_1780, 
        n26731, n16_adj_1781, n16_adj_1782, n16_adj_1783, n37406, 
        n34643, n35984, n24_adj_1784, n34632;
    wire [7:0]n1672;
    
    wire n36157, n35152, n37407, n16_adj_1786, n36098, n37086, n36874, 
        n36875, n31945;
    wire [7:0]n1912;
    
    wire sys_clk_c_enable_295, n20710;
    wire [7:0]n1903;
    
    wire n16_adj_1787, n37328, n23, n36069, n37408, n37332, n16_adj_1788, 
        n11_adj_1789, n16_adj_1790, n37269, n30_adj_1791, n15_adj_1792, 
        n34815, n19_adj_1793, n6_adj_1794, n34857, n19_adj_1795, n6_adj_1796, 
        n16_adj_1797, n34821, n19_adj_1798, n6_adj_1799, n16_adj_1800, 
        n3_adj_1801, n31666, n15_adj_1802, n16_adj_1803, n31665, n36283, 
        n36284, n31664, n31663, n31662, n36102, n31661, n31660, 
        n31659, n31658, n15_adj_1804, n31657, n31656, n35258, n15_adj_1805, 
        n31655, n16_adj_1806, n16_adj_1807, n31654, n31653, n31652;
    wire [7:0]n1921;
    
    wire n16_adj_1808, n9_adj_1809, n16_adj_1810, n16_adj_1811, sys_clk_c_enable_298, 
        n24_adj_1812, n34580, n24_adj_1813, n15_adj_1814, n24_adj_1815, 
        n16_adj_1816, n34601, n34687, n6_adj_1817, n5_adj_1818, n6_adj_1819, 
        n4_adj_1820, n31651, n26, n6802, n34603, n37273, n7883, 
        n4_adj_1821, n37238, n4_adj_1822, n31957, n26706, n37369, 
        n35259, n38_adj_1823, n20492, n35014, n34613, n6_adj_1824, 
        n27004, n34552, n15_adj_1825, n2522, n9_adj_1826, n10_adj_1827, 
        n31212, n28, sys_clk_c_enable_313, n20572, n2_adj_1828, n37527, 
        n37499, n36285, n30_adj_1829, n37496;
    wire [5:0]state_5__N_1344;
    
    wire n57, n37412, n64_adj_1830, n34739, n34644, n10683, n37158, 
        n16_adj_1831, n35256, n35257, n15_adj_1832, n33144, n35261, 
        n35270, n37336;
    wire [4:0]n4460;
    
    wire n6_adj_1833, n44, n47, n53_adj_1834, n34973, n37229, n35289, 
        n35292, n23_adj_1835, n34562, n37333, n11_adj_1836, n12_adj_1837, 
        n37457, n35295, n37436, n6_adj_1839, n38958, n37518, n37081, 
        n37545, n37533, n37230, n30_adj_1840, n6_adj_1841, n7_adj_1842, 
        n16_adj_1843;
    wire [5:0]state_back_5__N_1368;
    
    wire n32002, n19071, n12_adj_1847, n28_adj_1848, n6_adj_1849, 
        n12_adj_1850, n8_adj_1851, n9_adj_1852, n12_adj_1853, n12_adj_1854, 
        n12_adj_1855, n12_adj_1856, n12_adj_1857, n37083, n37548, 
        n37082, n50, n35441, n20704, n37329, n12_adj_1858, n37279, 
        n37252, n37228, n34640, n24_adj_1859, n20700, n33064, n33062, 
        n17, n11_adj_1860, n36017, n64_adj_1861, n64_adj_1862, n5_adj_1863, 
        n12_adj_1864, n64_adj_1865, n34639, n34638, n24_adj_1866, 
        n36023, n24_adj_1867, n34641, n24_adj_1868, n37530, n37098, 
        n37607, n10684, n37521, n37099, n57_adj_1869, n61, n34696, 
        n37584, n17892, n37435, n37434, n4_adj_1871, n36888, n10_adj_1872, 
        n31787, n31786, n37569, n37100, n37554, n31785, n10_adj_1875, 
        n31784, n37572, n31783, n31782, n31781, n31780, n31779, 
        n37084, n37557, n36890, n36074, n37542, n37539, n37101, 
        n31778, n31777, n31776, n37085, n19099;
    
    LUT4 i1_4_lut (.A(state[0]), .B(num_delay[13]), .C(n16), .D(n19), 
         .Z(num_delay_15__N_979[13])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut.init = 16'hdc50;
    LUT4 i1_4_lut_adj_15 (.A(cnt_init[0]), .B(num_delay[15]), .C(n37224), 
         .D(n37278), .Z(num_delay_15__N_1290[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_15.init = 16'hcc40;
    PFUMX mux_37_Mux_10_i31 (.BLUT(n15_c), .ALUT(n30), .C0(cnt_main[4]), 
          .Z(n1939[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 i1_4_lut_adj_16 (.A(state[0]), .B(num_delay[15]), .C(n16_adj_1719), 
         .D(n19), .Z(num_delay_15__N_979[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_16.init = 16'hdc50;
    PFUMX i31549 (.BLUT(n38998), .ALUT(n38999), .C0(oled_dcn_N_1398), 
          .Z(n39000));
    LUT4 i1_4_lut_adj_17 (.A(state_back[1]), .B(n37326), .C(n24), .D(n37330), 
         .Z(n35)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_17.init = 16'haaa8;
    FD1P3IX num_2991__i4 (.D(n37[4]), .SP(sys_clk_c_enable_377), .CD(n20657), 
            .CK(sys_clk_c), .Q(num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991__i4.GSR = "ENABLED";
    LUT4 i20948_3_lut_3_lut (.A(sw1_c), .B(n8442), .C(n37134), .Z(n7464[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20948_3_lut_3_lut.init = 16'h1414;
    FD1P3IX cnt_delay_i0_i9 (.D(n4484[9]), .SP(sys_clk_c_enable_326), .CD(n20553), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1S3AX state_back_i5 (.D(state_back_5__N_1033[5]), .CK(sys_clk_c), 
            .Q(state_back[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i5.GSR = "ENABLED";
    FD1S3AX state_back_i4 (.D(state_back_5__N_1033[4]), .CK(sys_clk_c), 
            .Q(state_back[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i4.GSR = "ENABLED";
    FD1P3IX num_2991__i5 (.D(n37[5]), .SP(sys_clk_c_enable_377), .CD(n20657), 
            .CK(sys_clk_c), .Q(num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991__i5.GSR = "ENABLED";
    LUT4 i34_4_lut (.A(state_back[4]), .B(n4458), .C(state[4]), .D(state[5]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    defparam i34_4_lut.init = 16'h0a30;
    FD1S3AX state_back_i3 (.D(state_back_5__N_1033[3]), .CK(sys_clk_c), 
            .Q(state_back[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i3.GSR = "ENABLED";
    FD1S3AX state_back_i2 (.D(state_back_5__N_1033[2]), .CK(sys_clk_c), 
            .Q(state_back[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i2.GSR = "ENABLED";
    FD1S3AX state_back_i1 (.D(state_back_5__N_1033[1]), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i1.GSR = "ENABLED";
    FD1S3AX char_reg_i7 (.D(char_reg_7__N_951[7]), .CK(sys_clk_c), .Q(char_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i7.GSR = "ENABLED";
    FD1S3AX char_reg_i6 (.D(char_reg_7__N_951[6]), .CK(sys_clk_c), .Q(char_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i6.GSR = "ENABLED";
    FD1P3AX cnt_init_i0_i0 (.D(n34587), .SP(sys_clk_c_enable_183), .CK(sys_clk_c), 
            .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    FD1S3AX char_reg_i5 (.D(char_reg_7__N_951[5]), .CK(sys_clk_c), .Q(char_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i5.GSR = "ENABLED";
    FD1S3AX char_reg_i4 (.D(char_reg_7__N_951[4]), .CK(sys_clk_c), .Q(char_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i4.GSR = "ENABLED";
    FD1S3AX char_reg_i3 (.D(char_reg_7__N_951[3]), .CK(sys_clk_c), .Q(char_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i3.GSR = "ENABLED";
    PFUMX mux_37_Mux_14_i31 (.BLUT(n15_adj_1720), .ALUT(n30_adj_1721), .C0(cnt_main[4]), 
          .Z(n1939[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    FD1S3AX char_reg_i2 (.D(char_reg_7__N_951[2]), .CK(sys_clk_c), .Q(char_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i2.GSR = "ENABLED";
    FD1S3AX char_reg_i1 (.D(char_reg_7__N_951[1]), .CK(sys_clk_c), .Q(char_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(cnt_scan[4]), .B(n36877), .Z(n64)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    FD1S3AX char_reg_i0 (.D(char_reg_7__N_951[0]), .CK(sys_clk_c), .Q(char_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_reg_i0.GSR = "ENABLED";
    FD1S3AY state_back_i0 (.D(state_back_5__N_1033[0]), .CK(sys_clk_c), 
            .Q(state_back[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_back_i0.GSR = "ENABLED";
    FD1P3AY oled_csn_329 (.D(n34236), .SP(sys_clk_c_enable_19), .CK(sys_clk_c), 
            .Q(oled_cs_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam oled_csn_329.GSR = "ENABLED";
    FD1P3AX oled_dcn_331 (.D(n34038), .SP(sys_clk_c_enable_20), .CK(sys_clk_c), 
            .Q(oled_dc_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam oled_dcn_331.GSR = "ENABLED";
    FD1S3AY num_delay_i0 (.D(num_delay_15__N_979[0]), .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i0.GSR = "ENABLED";
    LUT4 state_0__bdd_4_lut (.A(state[0]), .B(n11), .C(n37331), .D(n37282), 
         .Z(sys_clk_c_enable_219)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B+!(C+(D))))) */ ;
    defparam state_0__bdd_4_lut.init = 16'h333a;
    PFUMX mux_37_Mux_16_i31 (.BLUT(n15_adj_1722), .ALUT(n30_adj_1723), .C0(cnt_main[4]), 
          .Z(n1939[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    PFUMX mux_37_Mux_18_i31 (.BLUT(n15_adj_1724), .ALUT(n30_adj_1725), .C0(cnt_main[4]), 
          .Z(n1939[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    PFUMX i30144 (.BLUT(n36021), .ALUT(n36016), .C0(\cnt_scan[3] ), .Z(n36022));
    FD1P3AX num_2991__i0 (.D(n1[0]), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .Q(num[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991__i0.GSR = "ENABLED";
    LUT4 i20946_4_lut_4_lut (.A(sw1_c), .B(n4), .C(n8442), .D(\hundres_0__N_347[1] ), 
         .Z(n7464[3])) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20946_4_lut_4_lut.init = 16'h1540;
    PFUMX mux_37_Mux_22_i31 (.BLUT(n15_adj_1726), .ALUT(n30_adj_1727), .C0(cnt_main[4]), 
          .Z(n1939[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    FD1P3IX num_2991__i6 (.D(n37[6]), .SP(sys_clk_c_enable_377), .CD(n20657), 
            .CK(sys_clk_c), .Q(num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991__i6.GSR = "ENABLED";
    FD1S3IX flash_bit_314 (.D(flash_bit_N_1423), .CK(clk_in_1Hz), .CD(rst_n_in_N_1516), 
            .Q(flash_bit)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(61[8] 66[5])
    defparam flash_bit_314.GSR = "DISABLED";
    FD1P3AY state_i0_i0 (.D(n42), .SP(sys_clk_c_enable_328), .CK(sys_clk_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(cnt[5]), .B(cnt[11]), .C(cnt[10]), .D(cnt[13]), 
         .Z(n19_adj_1728)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    FD1P3IX char_i0_i38 (.D(n1939[38]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i38.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(cnt[9]), .B(n18_adj_1729), .C(cnt[8]), .D(cnt[6]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    PFUMX mux_37_Mux_30_i31 (.BLUT(n15_adj_1730), .ALUT(n30_adj_1731), .C0(cnt_main[4]), 
          .Z(n1939[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    PFUMX mux_37_Mux_34_i31 (.BLUT(n15_adj_1732), .ALUT(n30_adj_1733), .C0(cnt_main[4]), 
          .Z(n1939[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 i50_4_lut (.A(state_back[1]), .B(n3767), .C(state[3]), .D(n37280), 
         .Z(n31)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;
    defparam i50_4_lut.init = 16'h0a8a;
    PFUMX i19620 (.BLUT(n24_adj_1734), .ALUT(n8), .C0(cnt_main[4]), .Z(n1939[38]));
    FD1P3AX oled_dat_333 (.D(n6823[0]), .SP(sys_clk_c_enable_77), .CK(sys_clk_c), 
            .Q(oled_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam oled_dat_333.GSR = "ENABLED";
    FD1P3IX char_i0_i37 (.D(n37097), .SP(sys_clk_c_enable_375), .CD(n20706), 
            .CK(sys_clk_c), .Q(char[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i37.GSR = "ENABLED";
    PFUMX i30744 (.BLUT(n37431), .ALUT(n37432), .C0(num[1]), .Z(n37317));
    L6MUX21 i29573 (.D0(n35241), .D1(n35242), .SD(num[3]), .Z(n35243));
    PFUMX i29603 (.BLUT(n35271), .ALUT(n35272), .C0(cnt_main[3]), .Z(n35273));
    LUT4 char_4__bdd_4_lut_30531 (.A(char[4]), .B(char[28]), .C(num[1]), 
         .D(num[0]), .Z(n36527)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;
    defparam char_4__bdd_4_lut_30531.init = 16'hc00a;
    LUT4 i29998_2_lut (.A(state[5]), .B(state[3]), .Z(n35224)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i29998_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_4_lut (.A(state[3]), .B(state[2]), .C(state[0]), .D(state[4]), 
         .Z(n53)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0116;
    LUT4 n15_bdd_4_lut_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(y_p[0]), 
         .D(x_ph[0]), .Z(n37110)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam n15_bdd_4_lut_4_lut_4_lut.init = 16'h5410;
    LUT4 i1_2_lut_then_4_lut (.A(cnt_scan[2]), .B(n4024), .C(n4402), .D(cnt_scan[0]), 
         .Z(n37411)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_2_lut_then_4_lut.init = 16'h5044;
    LUT4 n19_bdd_4_lut_30539_4_lut_4_lut (.A(cnt_scan[0]), .B(x_ph[1]), 
         .C(cnt_scan[2]), .D(n2894), .Z(n36101)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam n19_bdd_4_lut_30539_4_lut_4_lut.init = 16'ha404;
    LUT4 i1_2_lut_adj_18 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n21)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_18.init = 16'hdddd;
    LUT4 n15_bdd_4_lut_30725_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), 
         .C(y_p[4]), .D(x_ph[4]), .Z(n37102)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam n15_bdd_4_lut_30725_4_lut_4_lut.init = 16'h5410;
    LUT4 n36104_bdd_2_lut_4_lut (.A(n36103), .B(n37505), .C(\cnt_scan[3] ), 
         .D(cnt_scan[4]), .Z(n36105)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n36104_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 i1_2_lut_else_4_lut (.A(cnt_scan[2]), .B(n3646), .C(n3268), .D(cnt_scan[0]), 
         .Z(n37410)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i1_2_lut_else_4_lut.init = 16'h4450;
    LUT4 i29360_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(oled_dcn_N_1398), 
         .D(n4_adj_1735), .Z(n35030)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i29360_4_lut.init = 16'ha888;
    LUT4 i1_2_lut_adj_19 (.A(cnt_init[0]), .B(state[0]), .Z(n4_adj_1735)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i1_2_lut_adj_19.init = 16'h4444;
    LUT4 i1_4_lut_rep_647 (.A(n5), .B(n32039), .C(state[2]), .D(warning_TEM), 
         .Z(n39003)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B))) */ ;
    defparam i1_4_lut_rep_647.init = 16'h3b33;
    LUT4 n36075_bdd_2_lut (.A(n36075), .B(cnt_scan[4]), .Z(n36076)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n36075_bdd_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_rep_648 (.A(n5), .B(n32039), .C(state[2]), .D(warning_TEM), 
         .Z(sys_clk_c_enable_375)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B))) */ ;
    defparam i1_4_lut_rep_648.init = 16'h3b33;
    LUT4 n35297_bdd_3_lut_30699 (.A(n3267), .B(n3645), .C(cnt_scan[0]), 
         .Z(n36873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n35297_bdd_3_lut_30699.init = 16'hcaca;
    LUT4 i29605_3_lut (.A(char_reg[5]), .B(char_reg[4]), .C(cnt_write[1]), 
         .Z(n35275)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29605_3_lut.init = 16'hcaca;
    LUT4 char_117__bdd_4_lut_31514 (.A(char[117]), .B(n37274), .C(n37560), 
         .D(cnt_main[4]), .Z(n37087)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_117__bdd_4_lut_31514.init = 16'h88f0;
    LUT4 i29604_3_lut (.A(char_reg[7]), .B(char_reg[6]), .C(cnt_write[1]), 
         .Z(n35274)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29604_3_lut.init = 16'hcaca;
    LUT4 n35297_bdd_4_lut_30702 (.A(n2889), .B(cnt_scan[1]), .C(cnt_scan[2]), 
         .D(cnt_scan[0]), .Z(n36876)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n35297_bdd_4_lut_30702.init = 16'h8000;
    LUT4 mux_36_Mux_0_i31_4_lut_then_3_lut (.A(cnt_main[4]), .B(cnt_main[3]), 
         .C(cnt_main[2]), .Z(n37456)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_36_Mux_0_i31_4_lut_then_3_lut.init = 16'h5454;
    LUT4 mux_36_Mux_0_i31_4_lut_else_3_lut (.A(cnt_main[4]), .B(cnt_main[3]), 
         .C(cnt_main[2]), .D(cnt_main[1]), .Z(n37455)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_36_Mux_0_i31_4_lut_else_3_lut.init = 16'h4446;
    LUT4 i37_4_lut_3_lut (.A(state[3]), .B(state[0]), .C(state[1]), .Z(n30_adj_1736)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam i37_4_lut_3_lut.init = 16'he8e8;
    LUT4 i2_3_lut_rep_607 (.A(key_mode[2]), .B(sw1_c), .C(key_mode[0]), 
         .Z(n37372)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut_rep_607.init = 16'h1010;
    LUT4 i1_2_lut_4_lut (.A(key_mode[2]), .B(sw1_c), .C(key_mode[0]), 
         .D(key_mode[1]), .Z(n4_adj_1)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0010;
    LUT4 i29581_3_lut (.A(char[149]), .B(char[157]), .C(num[0]), .Z(n35251)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29581_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_20 (.A(n37318), .B(n2724), .Z(n8_adj_1738)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_20.init = 16'hbbbb;
    LUT4 i3_2_lut (.A(n2722), .B(n2721), .Z(n10)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i3_2_lut.init = 16'hbbbb;
    LUT4 i29580_3_lut (.A(char[133]), .B(char[141]), .C(num[0]), .Z(n35250)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29580_3_lut.init = 16'hcaca;
    LUT4 n36774_bdd_4_lut (.A(n36774), .B(n36773), .C(num[1]), .D(n20159), 
         .Z(n2720)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n36774_bdd_4_lut.init = 16'h00ca;
    LUT4 n18919_bdd_4_lut (.A(n37310), .B(\cnt_main[0] ), .C(state[1]), 
         .D(cnt_main[4]), .Z(n36889)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n18919_bdd_4_lut.init = 16'h0010;
    LUT4 n18707_bdd_4_lut_30727 (.A(n37274), .B(char[19]), .C(n15_adj_1739), 
         .D(cnt_main[4]), .Z(n37111)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18707_bdd_4_lut_30727.init = 16'h88f0;
    LUT4 n18707_bdd_4_lut_30728 (.A(n37274), .B(char[24]), .C(n15_adj_1740), 
         .D(cnt_main[4]), .Z(n37112)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18707_bdd_4_lut_30728.init = 16'h88f0;
    LUT4 n37634_bdd_2_lut_4_lut (.A(n36978), .B(n37633), .C(state[2]), 
         .D(state[3]), .Z(n37635)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n37634_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 n18707_bdd_4_lut_30729 (.A(n37274), .B(char[27]), .C(n15_adj_1741), 
         .D(cnt_main[4]), .Z(n37113)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18707_bdd_4_lut_30729.init = 16'h88f0;
    LUT4 n36527_bdd_4_lut (.A(n36527), .B(n36526), .C(num[2]), .D(n20159), 
         .Z(n2722)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n36527_bdd_4_lut.init = 16'h00ca;
    LUT4 n18707_bdd_4_lut (.A(n37274), .B(char[36]), .C(n15_adj_1742), 
         .D(cnt_main[4]), .Z(n37114)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18707_bdd_4_lut.init = 16'h88f0;
    LUT4 mux_37_Mux_5_i15_4_lut (.A(char[5]), .B(n37274), .C(cnt_main[4]), 
         .D(n37288), .Z(n15_adj_1743)) /* synthesis lut_function=(A (B+!(C))+!A !(C+!(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_5_i15_4_lut.init = 16'h8f8a;
    LUT4 x_pl_3__bdd_4_lut_4_lut_then_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(cnt_main[2]), .Z(n37495)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam x_pl_3__bdd_4_lut_4_lut_then_3_lut.init = 16'hcdcd;
    LUT4 x_pl_3__bdd_4_lut_4_lut_else_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(cnt_main[2]), .D(x_pl[3]), .Z(n37494)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam x_pl_3__bdd_4_lut_4_lut_else_3_lut.init = 16'h0100;
    LUT4 i20655_3_lut (.A(\cnt_main[0] ), .B(cnt_main[4]), .C(warning_TEM), 
         .Z(cnt_main_4__N_1046[0])) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[12:57])
    defparam i20655_3_lut.init = 16'hdede;
    LUT4 x_ph_0__bdd_4_lut_4_lut_then_3_lut (.A(cnt_main[2]), .B(cnt_main[1]), 
         .C(\cnt_main[0] ), .Z(n37498)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam x_ph_0__bdd_4_lut_4_lut_then_3_lut.init = 16'h1717;
    LUT4 char_125__bdd_4_lut_31488 (.A(char[125]), .B(n37274), .C(n37563), 
         .D(cnt_main[4]), .Z(n37088)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_125__bdd_4_lut_31488.init = 16'h88f0;
    LUT4 x_ph_0__bdd_4_lut_4_lut_else_3_lut (.A(cnt_main[2]), .B(cnt_main[1]), 
         .C(\cnt_main[0] ), .D(x_ph[0]), .Z(n37497)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam x_ph_0__bdd_4_lut_4_lut_else_3_lut.init = 16'h0100;
    LUT4 i15079_2_lut_3_lut (.A(n4482), .B(n37227), .C(sys_clk_c_enable_326), 
         .Z(n20553)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i15079_2_lut_3_lut.init = 16'he0e0;
    LUT4 n60_bdd_2_lut_30538_2_lut_then_4_lut (.A(cnt_scan[2]), .B(n4028), 
         .C(n4406), .D(cnt_scan[0]), .Z(n37504)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam n60_bdd_2_lut_30538_2_lut_then_4_lut.init = 16'h5044;
    FD1P3IX char_i0_i36 (.D(n37114), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i36.GSR = "ENABLED";
    FD1P3IX char_i0_i34 (.D(n1939[34]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i34.GSR = "ENABLED";
    FD1P3IX char_i0_i30 (.D(n1939[30]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i30.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i1 (.D(cnt_main_4__N_1046[1]), .SP(sys_clk_c_enable_336), 
            .CD(n20640), .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(cnt_main_4__N_1046[2]), .SP(sys_clk_c_enable_336), 
            .CD(n20640), .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX char_i0_i29 (.D(n37096), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i29.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n22[3]), .SP(sys_clk_c_enable_336), .CD(n20637), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    LUT4 n60_bdd_2_lut_30538_2_lut_else_4_lut (.A(cnt_scan[2]), .B(n3650), 
         .C(n3272), .D(cnt_scan[0]), .Z(n37503)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n60_bdd_2_lut_30538_2_lut_else_4_lut.init = 16'h4450;
    LUT4 i13901_2_lut_rep_614 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n37379)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i13901_2_lut_rep_614.init = 16'heeee;
    LUT4 n2895_bdd_3_lut_30555 (.A(n2895), .B(cnt_scan[0]), .C(cnt_scan[1]), 
         .Z(n36070)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2895_bdd_3_lut_30555.init = 16'h8080;
    LUT4 i1_2_lut_rep_523_3_lut (.A(cnt_main[1]), .B(cnt_main[2]), .C(\cnt_main[0] ), 
         .Z(n37288)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_rep_523_3_lut.init = 16'hfefe;
    FD1P3IX char_i0_i28 (.D(n1939[28]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i28.GSR = "ENABLED";
    FD1P3IX char_i0_i27 (.D(n37113), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i27.GSR = "ENABLED";
    LUT4 char_133__bdd_4_lut_31485 (.A(char[133]), .B(n37274), .C(n37575), 
         .D(cnt_main[4]), .Z(n37089)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_133__bdd_4_lut_31485.init = 16'h88f0;
    LUT4 i1_4_lut_adj_21 (.A(n24_adj_1744), .B(char_reg[7]), .C(n37280), 
         .D(n27), .Z(char_reg_7__N_951[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_21.init = 16'hce0a;
    LUT4 char_77__bdd_4_lut_31482 (.A(char[77]), .B(n37274), .C(n37524), 
         .D(cnt_main[4]), .Z(n37080)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_77__bdd_4_lut_31482.init = 16'h88f0;
    FD1P3IX cnt_main_i0_i4 (.D(n9098), .SP(sys_clk_c_enable_336), .CD(n20637), 
            .CK(sys_clk_c), .Q(cnt_main[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_main_i0_i4.GSR = "ENABLED";
    LUT4 char_141__bdd_4_lut_31481 (.A(char[141]), .B(n37274), .C(n37578), 
         .D(cnt_main[4]), .Z(n37090)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_141__bdd_4_lut_31481.init = 16'h88f0;
    LUT4 i15117_2_lut_4_lut_rep_650 (.A(n37261), .B(state[0]), .C(state[1]), 
         .D(n39003), .Z(n39006)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(90[5:9])
    defparam i15117_2_lut_4_lut_rep_650.init = 16'hef00;
    LUT4 i21041_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[85]), .Z(n37516)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21041_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i1_2_lut_rep_545_3_lut (.A(cnt_main[1]), .B(cnt_main[2]), .C(cnt_main[3]), 
         .Z(n37310)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_rep_545_3_lut.init = 16'hfefe;
    FD1P3IX char_i0_i26 (.D(n1939[26]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i26.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_509_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[2]), 
         .C(\cnt_main[0] ), .D(cnt_main[3]), .Z(n37274)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_rep_509_3_lut_4_lut.init = 16'hfffe;
    LUT4 i21067_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[53]), .Z(n37519)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21067_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i1_4_lut_adj_22 (.A(n24_adj_1745), .B(char_reg[6]), .C(n37280), 
         .D(n27), .Z(char_reg_7__N_951[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_22.init = 16'hce0a;
    LUT4 i21050_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[77]), .Z(n37522)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21050_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i21127_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[21]), .Z(n37525)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21127_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    PFUMX i30742 (.BLUT(n37428), .ALUT(n37429), .C0(num[1]), .Z(n37318));
    LUT4 cnt_0__bdd_4_lut_30483 (.A(\cnt[0] ), .B(\cnt[1] ), .C(\cnt[2] ), 
         .D(\cnt[4] ), .Z(n36097)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A !(B (C)+!B (D)))) */ ;
    defparam cnt_0__bdd_4_lut_30483.init = 16'h53e0;
    LUT4 i21071_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[45]), .Z(n37528)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21071_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i21087_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[37]), .Z(n37531)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21087_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    FD1P3IX char_i0_i24 (.D(n37112), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i24.GSR = "ENABLED";
    LUT4 i21016_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[157]), .Z(n37534)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21016_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i1_4_lut_adj_23 (.A(state[2]), .B(n34675), .C(state[0]), .D(n45), 
         .Z(sys_clk_c_enable_183)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B))) */ ;
    defparam i1_4_lut_adj_23.init = 16'h4c44;
    FD1P3AY oled_clk_332 (.D(n34070), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .Q(oled_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam oled_clk_332.GSR = "ENABLED";
    LUT4 i21053_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[69]), .Z(n37537)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21053_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i1_4_lut_adj_24 (.A(cnt_init[1]), .B(n39000), .C(n38984), .D(n4793), 
         .Z(n45)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_24.init = 16'hdccc;
    LUT4 char_149__bdd_4_lut_31464 (.A(char[149]), .B(n37274), .C(n37566), 
         .D(cnt_main[4]), .Z(n37091)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_149__bdd_4_lut_31464.init = 16'h88f0;
    LUT4 i20936_2_lut (.A(state[4]), .B(state_back[0]), .Z(n41_adj_1746)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i20936_2_lut.init = 16'h1111;
    LUT4 i1_4_lut_adj_25 (.A(state[4]), .B(state[0]), .C(n18949), .D(n4458), 
         .Z(n34)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_adj_25.init = 16'h0a22;
    LUT4 i30003_2_lut (.A(cnt_main[4]), .B(cnt_main[3]), .Z(n35222)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i30003_2_lut.init = 16'hbbbb;
    LUT4 i30008_2_lut (.A(cnt_main[4]), .B(cnt_main[3]), .Z(n35220)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i30008_2_lut.init = 16'heeee;
    LUT4 i21147_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[13]), .Z(n37540)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21147_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i21092_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[29]), .Z(n37543)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21092_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 n36978_bdd_3_lut_30871 (.A(n4793), .B(state[5]), .C(state[4]), 
         .Z(n37633)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n36978_bdd_3_lut_30871.init = 16'h0202;
    FD1S3AX num_delay_i15 (.D(num_delay_15__N_979[15]), .CK(sys_clk_c), 
            .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i15.GSR = "ENABLED";
    FD1S3AX num_delay_i14 (.D(num_delay_15__N_979[14]), .CK(sys_clk_c), 
            .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i14.GSR = "ENABLED";
    FD1S3AX num_delay_i13 (.D(num_delay_15__N_979[13]), .CK(sys_clk_c), 
            .Q(num_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i13.GSR = "ENABLED";
    FD1S3AX num_delay_i12 (.D(num_delay_15__N_979[12]), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i12.GSR = "ENABLED";
    FD1S3AX num_delay_i11 (.D(num_delay_15__N_979[11]), .CK(sys_clk_c), 
            .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i11.GSR = "ENABLED";
    FD1S3AX num_delay_i10 (.D(num_delay_15__N_979[10]), .CK(sys_clk_c), 
            .Q(num_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i10.GSR = "ENABLED";
    FD1S3AX num_delay_i9 (.D(num_delay_15__N_979[9]), .CK(sys_clk_c), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i9.GSR = "ENABLED";
    FD1S3AX num_delay_i8 (.D(num_delay_15__N_979[8]), .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i8.GSR = "ENABLED";
    FD1S3AX num_delay_i7 (.D(num_delay_15__N_979[7]), .CK(sys_clk_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i7.GSR = "ENABLED";
    FD1S3AX num_delay_i6 (.D(num_delay_15__N_979[6]), .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i6.GSR = "ENABLED";
    FD1S3AX num_delay_i5 (.D(num_delay_15__N_979[5]), .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i5.GSR = "ENABLED";
    FD1S3AX num_delay_i4 (.D(num_delay_15__N_979[4]), .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i4.GSR = "ENABLED";
    FD1S3AX num_delay_i3 (.D(num_delay_15__N_979[3]), .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i3.GSR = "ENABLED";
    FD1S3AY num_delay_i2 (.D(num_delay_15__N_979[2]), .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i2.GSR = "ENABLED";
    FD1S3AX num_delay_i1 (.D(num_delay_15__N_979[1]), .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam num_delay_i1.GSR = "ENABLED";
    LUT4 i21036_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[93]), .Z(n37546)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21036_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    FD1P3IX char_i0_i22 (.D(n1939[22]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i22.GSR = "ENABLED";
    LUT4 mux_37_Mux_5_i14_4_lut_4_lut_4_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(cnt_main[2]), .D(sw1_c), .Z(n14)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_5_i14_4_lut_4_lut_4_lut.init = 16'h6101;
    LUT4 i21015_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[165]), .Z(n37549)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21015_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    FD1P3AX num_2991__i7 (.D(n33552), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .Q(num[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991__i7.GSR = "ENABLED";
    FD1P3AX num_2991__i2 (.D(n1[2]), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .Q(num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_4_lut_then_3_lut (.A(cnt_main[3]), .B(cnt_main[1]), 
         .C(cnt_main[2]), .Z(n37553)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_4_lut_then_3_lut.init = 16'h0404;
    LUT4 i1_4_lut_4_lut_4_lut_else_3_lut (.A(cnt_main[3]), .B(cnt_main[1]), 
         .C(cnt_main[2]), .D(y_p[1]), .Z(n37552)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_4_lut_else_3_lut.init = 16'h1110;
    LUT4 i21022_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[109]), .Z(n37555)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21022_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i21021_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[117]), .Z(n37558)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21021_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i21020_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[125]), .Z(n37561)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21020_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i29601_4_lut_4_lut_4_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(x_ph[2]), .Z(n35271)) /* synthesis lut_function=(A (B (C))+!A !(B+(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i29601_4_lut_4_lut_4_lut.init = 16'h8180;
    LUT4 n18949_bdd_4_lut (.A(n18949), .B(cnt_write[0]), .C(state[4]), 
         .D(oled_csn_N_1382), .Z(n36977)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam n18949_bdd_4_lut.init = 16'h4000;
    LUT4 n18949_bdd_2_lut (.A(state[4]), .B(state_back[5]), .Z(n36976)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n18949_bdd_2_lut.init = 16'h4444;
    LUT4 i21017_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[149]), .Z(n37564)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21017_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 n2726_bdd_4_lut (.A(n37318), .B(n37317), .C(n2724), .D(n37314), 
         .Z(n36985)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((C+!(D))+!B))) */ ;
    defparam n2726_bdd_4_lut.init = 16'h2400;
    LUT4 i21056_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[61]), .Z(n37567)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21056_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i21027_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[101]), .Z(n37570)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21027_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i2_4_lut (.A(n37276), .B(cnt_init[0]), .C(n35098), .D(n38984), 
         .Z(n34587)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h0100;
    LUT4 i21019_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[133]), .Z(n37573)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21019_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i21018_4_lut_4_lut_4_lut_then_2_lut (.A(cnt_main[3]), .B(cnt_main[2]), 
         .Z(n37574)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21018_4_lut_4_lut_4_lut_then_2_lut.init = 16'h1111;
    LUT4 i21018_4_lut_4_lut_4_lut_else_2_lut (.A(cnt_main[3]), .B(\cnt_main[0] ), 
         .C(cnt_main[2]), .D(char[141]), .Z(n37576)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21018_4_lut_4_lut_4_lut_else_2_lut.init = 16'h1514;
    LUT4 i2_3_lut_4_lut (.A(state[5]), .B(n37361), .C(state[2]), .D(state[0]), 
         .Z(n6)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0110;
    LUT4 i29428_4_lut (.A(n34828), .B(n4793), .C(n37277), .D(cnt_init[1]), 
         .Z(n35098)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;
    defparam i29428_4_lut.init = 16'h0a22;
    FD1P3AX state_i0_i1 (.D(n32856), .SP(sys_clk_c_enable_328), .CK(sys_clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 i29171_4_lut (.A(n37316), .B(n9), .C(cnt_init[1]), .D(cnt_init[0]), 
         .Z(n34828)) /* synthesis lut_function=(A (B)+!A !((C (D)+!C !(D))+!B)) */ ;
    defparam i29171_4_lut.init = 16'h8cc8;
    LUT4 i29566_3_lut (.A(char[117]), .B(char[125]), .C(num[0]), .Z(n35236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29566_3_lut.init = 16'hcaca;
    LUT4 n36114_bdd_4_lut_then_4_lut (.A(\cnt[0] ), .B(\cnt[3] ), .C(\cnt[2] ), 
         .D(\cnt[4] ), .Z(n37583)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam n36114_bdd_4_lut_then_4_lut.init = 16'h0114;
    LUT4 n36114_bdd_4_lut_else_4_lut (.A(\cnt[0] ), .B(\cnt[3] ), .C(\cnt[2] ), 
         .D(\cnt[4] ), .Z(n37582)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n36114_bdd_4_lut_else_4_lut.init = 16'h1645;
    LUT4 i29565_3_lut (.A(char[101]), .B(char[109]), .C(num[0]), .Z(n35235)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29565_3_lut.init = 16'hcaca;
    LUT4 char_4__bdd_3_lut_30530 (.A(char[36]), .B(num[1]), .C(num[0]), 
         .Z(n36526)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam char_4__bdd_3_lut_30530.init = 16'h0202;
    LUT4 i3_4_lut (.A(cnt_init[0]), .B(cnt_init[2]), .C(cnt_init[1]), 
         .D(n37322), .Z(n9)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i3_4_lut.init = 16'hfffb;
    LUT4 flash_bit_I_0_1_lut (.A(flash_bit), .Z(flash_bit_N_1423)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(65[17:28])
    defparam flash_bit_I_0_1_lut.init = 16'h5555;
    FD1P3AY oled_rst_330 (.D(n6727[0]), .SP(sys_clk_c_enable_157), .CK(sys_clk_c), 
            .Q(oled_res_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam oled_rst_330.GSR = "ENABLED";
    LUT4 char_157__bdd_4_lut_31449 (.A(char[157]), .B(n37274), .C(n37536), 
         .D(cnt_main[4]), .Z(n37092)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_157__bdd_4_lut_31449.init = 16'h88f0;
    LUT4 i29642_3_lut (.A(n4029), .B(n4407), .C(cnt_scan[0]), .Z(n35312)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29642_3_lut.init = 16'hcaca;
    LUT4 i29641_3_lut (.A(n3273), .B(n3651), .C(cnt_scan[0]), .Z(n35311)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29641_3_lut.init = 16'hcaca;
    LUT4 char_165__bdd_4_lut_31448 (.A(char[165]), .B(n37274), .C(n37551), 
         .D(cnt_main[4]), .Z(n37093)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_165__bdd_4_lut_31448.init = 16'h88f0;
    FD1P3IX cnt_init_i0_i1 (.D(n2321[1]), .SP(sys_clk_c_enable_183), .CD(n20629), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i2 (.D(n2321[2]), .SP(sys_clk_c_enable_183), .CD(n20629), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    LUT4 i29633_3_lut (.A(n4025), .B(n4403), .C(cnt_scan[0]), .Z(n35303)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29633_3_lut.init = 16'hcaca;
    LUT4 i29564_3_lut (.A(char[85]), .B(char[93]), .C(num[0]), .Z(n35234)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29564_3_lut.init = 16'hcaca;
    LUT4 i29632_3_lut (.A(n3269), .B(n3647), .C(cnt_scan[0]), .Z(n35302)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29632_3_lut.init = 16'hcaca;
    LUT4 i29563_3_lut (.A(char[69]), .B(char[77]), .C(num[0]), .Z(n35233)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29563_3_lut.init = 16'hcaca;
    LUT4 n3271_bdd_3_lut_30919 (.A(n3271), .B(n3649), .C(cnt_scan[0]), 
         .Z(n37602)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3271_bdd_3_lut_30919.init = 16'hcaca;
    LUT4 n18949_bdd_4_lut_30190 (.A(n18949), .B(cnt_write[0]), .C(state[4]), 
         .D(oled_csn_N_1382), .Z(n36106)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam n18949_bdd_4_lut_30190.init = 16'h10e0;
    FD1P3IX char_i0_i21 (.D(n37095), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i21.GSR = "ENABLED";
    LUT4 i29627_3_lut (.A(n4023), .B(n4401), .C(cnt_scan[0]), .Z(n35297)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29627_3_lut.init = 16'hcaca;
    LUT4 i29562_3_lut (.A(char[53]), .B(char[61]), .C(num[0]), .Z(n35232)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29562_3_lut.init = 16'hcaca;
    LUT4 i29648_3_lut (.A(char[18]), .B(char[26]), .C(num[0]), .Z(n35318)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29648_3_lut.init = 16'hcaca;
    LUT4 i29647_3_lut (.A(char[2]), .B(char[10]), .C(num[0]), .Z(n35317)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29647_3_lut.init = 16'hcaca;
    LUT4 i29561_3_lut (.A(char[37]), .B(char[45]), .C(num[0]), .Z(n35231)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29561_3_lut.init = 16'hcaca;
    LUT4 n3271_bdd_3_lut_30853 (.A(n4027), .B(n4405), .C(cnt_scan[0]), 
         .Z(n37601)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3271_bdd_3_lut_30853.init = 16'hcaca;
    LUT4 n37603_bdd_2_lut_31362 (.A(n37603), .B(cnt_scan[2]), .Z(n37604)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n37603_bdd_2_lut_31362.init = 16'h2222;
    LUT4 n2893_bdd_4_lut_30923 (.A(n2893), .B(x_ph[2]), .C(cnt_scan[2]), 
         .D(cnt_scan[0]), .Z(n37605)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n2893_bdd_4_lut_30923.init = 16'ha00c;
    LUT4 i1_2_lut_rep_625 (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n37390)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(149[7] 165[14])
    defparam i1_2_lut_rep_625.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_26 (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(\cnt_scan[3] ), 
         .D(cnt_scan[2]), .Z(n32178)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(149[7] 165[14])
    defparam i2_3_lut_4_lut_adj_26.init = 16'he000;
    LUT4 i1_3_lut_rep_531_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(\cnt_scan[3] ), 
         .D(cnt_scan[2]), .Z(n37296)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(149[7] 165[14])
    defparam i1_3_lut_rep_531_4_lut.init = 16'hefff;
    LUT4 led_c_7_bdd_2_lut_30865 (.A(n37605), .B(cnt_scan[1]), .Z(n37606)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_7_bdd_2_lut_30865.init = 16'h8888;
    LUT4 i2_4_lut_4_lut (.A(state[0]), .B(state[4]), .C(n37312), .D(n36106), 
         .Z(n7)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h2620;
    LUT4 i3787_2_lut_rep_627 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n37392)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i3787_2_lut_rep_627.init = 16'h8888;
    LUT4 i3799_2_lut_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[3]), 
         .D(cnt_init[2]), .Z(n2321[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i3799_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_4_lut_adj_27 (.A(state[4]), .B(state[2]), .C(n8_adj_1748), 
         .D(n37277), .Z(n2)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    defparam i1_4_lut_adj_27.init = 16'hc8c0;
    LUT4 i20744_4_lut (.A(n36985), .B(n2721), .C(n34695), .D(n2722), 
         .Z(n126)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[51:79])
    defparam i20744_4_lut.init = 16'hc088;
    LUT4 i29560_3_lut (.A(char[21]), .B(char[29]), .C(num[0]), .Z(n35230)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29560_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_28 (.A(n20159), .B(n35319), .C(n1507), .D(num[2]), 
         .Z(n2724)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i1_4_lut_adj_28.init = 16'h5044;
    LUT4 i3792_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(n2321[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i3792_2_lut_3_lut.init = 16'h7878;
    L6MUX21 i29571 (.D0(n35237), .D1(n35238), .SD(num[2]), .Z(n35241));
    LUT4 n2725_bdd_4_lut (.A(n37314), .B(n2722), .C(n37317), .D(n2724), 
         .Z(n36125)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n2725_bdd_4_lut.init = 16'h0240;
    LUT4 i29559_3_lut (.A(char[5]), .B(char[13]), .C(num[0]), .Z(n35229)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29559_3_lut.init = 16'hcaca;
    LUT4 i24_2_lut_rep_629 (.A(state[0]), .B(state[1]), .Z(n37394)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut_rep_629.init = 16'h6666;
    LUT4 i2808_2_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n26081), 
         .D(n37334), .Z(n7977)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2808_2_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i1_4_lut_adj_29 (.A(state[2]), .B(state_back[3]), .C(n37278), 
         .D(n6_adj_1749), .Z(n6_adj_1750)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_29.init = 16'h8880;
    LUT4 i21469_4_lut (.A(state[2]), .B(cnt_scan[4]), .C(n32178), .D(n37296), 
         .Z(n27_adj_1751)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i21469_4_lut.init = 16'h0111;
    LUT4 i1_4_lut_adj_30 (.A(state[2]), .B(n37409), .C(n34781), .D(n35030), 
         .Z(n34615)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_4_lut_adj_30.init = 16'h0080;
    PFUMX i29609 (.BLUT(n35276), .ALUT(n35277), .C0(cnt_write[2]), .Z(n35279));
    LUT4 i1_4_lut_adj_31 (.A(state[2]), .B(n4793), .C(n19_adj_1752), .D(n16_adj_1753), 
         .Z(n6_adj_1754)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_31.init = 16'haaa8;
    LUT4 state_1__bdd_4_lut_30946 (.A(state[1]), .B(state[2]), .C(state[0]), 
         .D(n37282), .Z(sys_clk_c_enable_336)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam state_1__bdd_4_lut_30946.init = 16'h0012;
    FD1P3IX cnt_init_i0_i3 (.D(n2321[3]), .SP(sys_clk_c_enable_183), .CD(n20629), 
            .CK(sys_clk_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_init_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_32 (.A(cnt_main[3]), .B(cnt_main[2]), .C(n37356), 
         .D(n7_adj_1755), .Z(n24_adj_1734)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_32.init = 16'h5140;
    L6MUX21 i29572 (.D0(n35239), .D1(n35240), .SD(num[2]), .Z(n35242));
    LUT4 state_1__bdd_4_lut_30196 (.A(state[1]), .B(n37316), .C(n37320), 
         .D(oled_dcn_N_1398), .Z(n35838)) /* synthesis lut_function=(A ((C (D))+!B)) */ ;
    defparam state_1__bdd_4_lut_30196.init = 16'ha222;
    LUT4 shift_right_84_i2462_4_lut (.A(n35243), .B(num[3]), .C(num[4]), 
         .D(n1934), .Z(n2721)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam shift_right_84_i2462_4_lut.init = 16'h3a0a;
    LUT4 shift_right_84_i1934_4_lut (.A(n35252), .B(char[165]), .C(num[2]), 
         .D(n37399), .Z(n1934)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam shift_right_84_i1934_4_lut.init = 16'hca0a;
    LUT4 i14672_2_lut (.A(num[3]), .B(num[4]), .Z(n20159)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i14672_2_lut.init = 16'heeee;
    LUT4 i15117_2_lut_4_lut (.A(n37261), .B(state[0]), .C(state[1]), .D(n39003), 
         .Z(n20706)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(90[5:9])
    defparam i15117_2_lut_4_lut.init = 16'hef00;
    LUT4 i1_2_lut_adj_33 (.A(state[2]), .B(char_reg_7__N_1274[5]), .Z(n6_adj_1756)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_33.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_34 (.A(cnt_main[3]), .B(cnt_main[2]), .C(n37356), 
         .D(n9_adj_1757), .Z(n15_adj_1732)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_34.init = 16'h5140;
    LUT4 i29251_3_lut (.A(num[3]), .B(num[4]), .C(num[2]), .Z(n34917)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i29251_3_lut.init = 16'hfefe;
    LUT4 i21091_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n37368), 
         .D(n3), .Z(n15_adj_1730)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21091_4_lut_4_lut.init = 16'h5140;
    LUT4 i21121_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n37368), 
         .D(n3_adj_1758), .Z(n15_adj_1726)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21121_4_lut_4_lut.init = 16'h5140;
    FD1P3IX cnt_delay_i0_i10 (.D(n4484[10]), .SP(sys_clk_c_enable_326), 
            .CD(n20553), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    LUT4 n11_bdd_4_lut (.A(n37227), .B(n37331), .C(state[0]), .D(n37282), 
         .Z(sys_clk_c_enable_326)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+(C+(D))))) */ ;
    defparam n11_bdd_4_lut.init = 16'h5574;
    LUT4 i20719_2_lut (.A(n2357[2]), .B(oled_dcn_N_1398), .Z(n2383[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20719_2_lut.init = 16'h2222;
    LUT4 i21136_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n37368), 
         .D(n3_adj_1759), .Z(n15_adj_1724)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21136_4_lut_4_lut.init = 16'h5140;
    LUT4 i21140_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n37368), 
         .D(n3_adj_1760), .Z(n15_adj_1722)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21140_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_adj_35 (.A(state[2]), .B(char_reg_7__N_1274[3]), .Z(n6_adj_1761)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_35.init = 16'h8888;
    LUT4 i21146_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n37368), 
         .D(n3_adj_1762), .Z(n15_adj_1720)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21146_4_lut_4_lut.init = 16'h5140;
    LUT4 i21165_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n37368), 
         .D(n3_adj_1763), .Z(n15_c)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21165_4_lut_4_lut.init = 16'h5140;
    LUT4 i21166_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(n37368), 
         .D(n3_adj_1764), .Z(n15_adj_1765)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21166_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_4_lut_adj_36 (.A(state[2]), .B(n37418), .C(char_reg[4]), .D(n38984), 
         .Z(n6_adj_1766)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_36.init = 16'ha088;
    LUT4 i21089_4_lut_4_lut (.A(cnt_main[3]), .B(n36), .C(n25056), .D(char[36]), 
         .Z(n15_adj_1742)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21089_4_lut_4_lut.init = 16'h5450;
    LUT4 i21100_4_lut_4_lut (.A(cnt_main[3]), .B(n36), .C(n25056), .D(char[27]), 
         .Z(n15_adj_1741)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21100_4_lut_4_lut.init = 16'h5450;
    LUT4 i21112_4_lut_4_lut (.A(cnt_main[3]), .B(n36), .C(n25056), .D(char[24]), 
         .Z(n15_adj_1740)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21112_4_lut_4_lut.init = 16'h5450;
    LUT4 i21130_4_lut_4_lut (.A(cnt_main[3]), .B(n36), .C(n25056), .D(char[19]), 
         .Z(n15_adj_1739)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i21130_4_lut_4_lut.init = 16'h5450;
    LUT4 i20720_2_lut (.A(n2357[1]), .B(oled_dcn_N_1398), .Z(n2383[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20720_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_37 (.A(state[2]), .B(char_reg_7__N_1274[0]), .Z(n6_adj_1767)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_37.init = 16'h8888;
    LUT4 i29956_2_lut_rep_634 (.A(num[0]), .B(num[1]), .Z(n37399)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i29956_2_lut_rep_634.init = 16'h1111;
    LUT4 i1_2_lut_adj_38 (.A(state[2]), .B(char_reg_7__N_1274[7]), .Z(n6_adj_1768)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_38.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(num[0]), .B(num[1]), .C(char[34]), .Z(n1507)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i3_3_lut_rep_549_4_lut (.A(num[0]), .B(num[1]), .C(n34917), .D(char[1]), 
         .Z(n37314)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i3_3_lut_rep_549_4_lut.init = 16'h0100;
    LUT4 i21222_2_lut_rep_635 (.A(\cnt_main[0] ), .B(cnt_main[1]), .Z(n37400)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21222_2_lut_rep_635.init = 16'heeee;
    FD1P3IX cnt_init_i0_i4 (.D(n2321[4]), .SP(sys_clk_c_enable_183), .CD(n20629), 
            .CK(sys_clk_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_init_i0_i4.GSR = "ENABLED";
    LUT4 mux_34_Mux_1_i14_3_lut_4_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(cnt_main[2]), .Z(n14_adj_1769)) /* synthesis lut_function=(A ((C)+!B)+!A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_34_Mux_1_i14_3_lut_4_lut_3_lut.init = 16'he6e6;
    LUT4 i21129_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[18]), 
         .Z(n3_adj_1759)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21129_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i21111_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[8]), 
         .Z(n3_adj_1764)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21111_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i5294_2_lut_rep_645 (.A(oled_dcn_N_1398), .B(n9), .Z(n38984)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i5294_2_lut_rep_645.init = 16'heeee;
    LUT4 i1_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[34]), 
         .Z(n9_adj_1757)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i21135_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[22]), 
         .Z(n3_adj_1758)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21135_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 cnt_scan_2__bdd_4_lut (.A(cnt_scan[2]), .B(\cnt_scan[3] ), .C(cnt_scan[1]), 
         .D(cnt_scan[0]), .Z(n36558)) /* synthesis lut_function=(A (B)+!A !(B+!(C (D)))) */ ;
    defparam cnt_scan_2__bdd_4_lut.init = 16'h9888;
    LUT4 i21145_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[30]), 
         .Z(n3)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21145_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i21114_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[10]), 
         .Z(n3_adj_1763)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21114_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i21122_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[14]), 
         .Z(n3_adj_1762)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21122_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i21126_2_lut_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(char[16]), 
         .Z(n3_adj_1760)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21126_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_2_lut_3_lut_adj_39 (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(char[38]), .Z(n7_adj_1755)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_2_lut_3_lut_adj_39.init = 16'h1010;
    LUT4 i29854_3_lut (.A(\min_tens[0] ), .B(\min_warning_tens[0] ), .C(sw1_c), 
         .Z(n35294)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29854_3_lut.init = 16'hcaca;
    LUT4 n38954_bdd_2_lut (.A(n38954), .B(cnt_scan[2]), .Z(n38955)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n38954_bdd_2_lut.init = 16'h2222;
    LUT4 i29867_3_lut (.A(n7470[2]), .B(\Tem_high[2] ), .C(\cnt_main[0] ), 
         .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29867_3_lut.init = 16'hcaca;
    LUT4 n3270_bdd_3_lut (.A(n3270), .B(n4026), .C(cnt_scan[1]), .Z(n38953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3270_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_2384_i1_3_lut (.A(\min[0] ), .B(\min_warning[0] ), .C(sw1_c), 
         .Z(n7459[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(114[120:150])
    defparam mux_2384_i1_3_lut.init = 16'hcaca;
    LUT4 n11051_bdd_4_lut_30237 (.A(\cnt[0] ), .B(\cnt[1] ), .C(\cnt[3] ), 
         .D(\cnt[2] ), .Z(n36156)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A ((D)+!B)) */ ;
    defparam n11051_bdd_4_lut_30237.init = 16'hdfb1;
    LUT4 n3270_bdd_3_lut_31520 (.A(n3648), .B(n4404), .C(cnt_scan[1]), 
         .Z(n38952)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3270_bdd_3_lut_31520.init = 16'hcaca;
    LUT4 n2892_bdd_4_lut (.A(n2892), .B(x_pl[3]), .C(cnt_scan[2]), .D(cnt_scan[1]), 
         .Z(n38956)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n2892_bdd_4_lut.init = 16'ha00c;
    LUT4 i29300_3_lut_4_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n34967)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i29300_3_lut_4_lut.init = 16'hfffe;
    LUT4 led_c_7_bdd_2_lut_31540 (.A(n38956), .B(cnt_scan[0]), .Z(n38957)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_7_bdd_2_lut_31540.init = 16'h8888;
    LUT4 i29623_3_lut (.A(\hour[0] ), .B(\hour_warning[0] ), .C(sw1_c), 
         .Z(n35293)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29623_3_lut.init = 16'hcaca;
    LUT4 i29959_2_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n36)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i29959_2_lut_3_lut.init = 16'h0101;
    LUT4 i29620_3_lut (.A(n7459[1]), .B(n7464[1]), .C(\cnt_main[0] ), 
         .Z(n35290)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29620_3_lut.init = 16'hcaca;
    LUT4 i29618_4_lut (.A(n7449[1]), .B(n8157), .C(\cnt_main[0] ), .D(n14554), 
         .Z(n35288)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i29618_4_lut.init = 16'h3aca;
    LUT4 i29617_4_lut (.A(n37297), .B(n8144), .C(\cnt_main[0] ), .D(n11620), 
         .Z(n35287)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i29617_4_lut.init = 16'h3aca;
    LUT4 i1_4_lut_adj_40 (.A(n24_adj_1770), .B(char_reg[5]), .C(n37280), 
         .D(n27), .Z(char_reg_7__N_951[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_40.init = 16'hce0a;
    LUT4 i29598_3_lut (.A(n7459[3]), .B(n7464[3]), .C(\cnt_main[0] ), 
         .Z(n35268)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29598_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_41 (.A(n24_adj_1771), .B(char_reg[4]), .C(n37280), 
         .D(n27), .Z(char_reg_7__N_951[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_41.init = 16'hce0a;
    LUT4 i1_4_lut_adj_42 (.A(n24_adj_1772), .B(char_reg[3]), .C(n37280), 
         .D(n27), .Z(char_reg_7__N_951[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_42.init = 16'hce0a;
    LUT4 mux_37_Mux_2_i11_3_lut (.A(n7459[2]), .B(n7464[2]), .C(\cnt_main[0] ), 
         .Z(n11_adj_1773)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_2_i11_3_lut.init = 16'hcaca;
    LUT4 i29597_3_lut (.A(n35265), .B(n35266), .C(cnt_main[2]), .Z(n35267)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29597_3_lut.init = 16'hcaca;
    LUT4 i29590_3_lut (.A(n7449[3]), .B(n7455), .C(\cnt_main[0] ), .Z(n35260)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29590_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_4_lut (.A(state[3]), .B(state_back[1]), .C(state[0]), 
         .D(state[2]), .Z(n21_adj_1774)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_43 (.A(n24_adj_1775), .B(char_reg[2]), .C(n37280), 
         .D(n27), .Z(char_reg_7__N_951[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_43.init = 16'hce0a;
    LUT4 i3823_2_lut_rep_640 (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n37405)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam i3823_2_lut_rep_640.init = 16'h8888;
    FD1P3IX cnt_scan_i0_i0 (.D(cnt_scan_4__N_1056[0]), .SP(sys_clk_c_enable_219), 
            .CD(n20618), .CK(sys_clk_c), .Q(cnt_scan[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_scan_i0_i0.GSR = "ENABLED";
    L6MUX21 i29610 (.D0(n35278), .D1(n35279), .SD(cnt_write[3]), .Z(oled_dat_N_1420));
    LUT4 mux_37_Mux_2_i9_4_lut (.A(n7449[2]), .B(n8157), .C(\cnt_main[0] ), 
         .D(n19396), .Z(n9_adj_1776)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_2_i9_4_lut.init = 16'h3aca;
    LUT4 i21179_3_lut (.A(n8144), .B(\cnt_main[0] ), .C(n19393), .Z(n8_adj_1777)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21179_3_lut.init = 16'h4848;
    LUT4 n11051_bdd_4_lut_30206 (.A(\cnt[0] ), .B(\cnt[3] ), .C(\cnt[2] ), 
         .D(\cnt[1] ), .Z(n35983)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n11051_bdd_4_lut_30206.init = 16'h1c09;
    LUT4 i9603_4_lut (.A(\ds18b20_data[5] ), .B(char[1]), .C(n37274), 
         .D(n37157), .Z(n30_adj_1778)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i9603_4_lut.init = 16'hc5ca;
    LUT4 i29594_3_lut (.A(n35262), .B(n35263), .C(cnt_main[3]), .Z(n35264)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29594_3_lut.init = 16'hcaca;
    FD1P3IX char_i0_i19 (.D(n37111), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i19.GSR = "ENABLED";
    LUT4 i3828_2_lut_3_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .Z(n2531[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam i3828_2_lut_3_lut.init = 16'h7878;
    LUT4 i9579_4_lut (.A(\hundres_0__N_350[1] ), .B(char[3]), .C(n37274), 
         .D(n37146), .Z(n30_adj_1779)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i9579_4_lut.init = 16'hc5ca;
    LUT4 i3835_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(\cnt_scan[3] ), 
         .D(cnt_scan[2]), .Z(n2531[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam i3835_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3837_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(\cnt_scan[3] ), 
         .D(cnt_scan[2]), .Z(n9170)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam i3837_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i29585_3_lut (.A(n35253), .B(n35254), .C(cnt_main[3]), .Z(n35255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29585_3_lut.init = 16'hcaca;
    LUT4 i9593_4_lut (.A(n37184), .B(char[2]), .C(n37274), .D(n10614), 
         .Z(n30_adj_1780)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i9593_4_lut.init = 16'hc5ca;
    LUT4 i33_4_lut (.A(num_delay[13]), .B(num_delay_15__N_1290[13]), .C(state[2]), 
         .D(n26731), .Z(n16)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut.init = 16'h0aca;
    LUT4 i33_4_lut_adj_44 (.A(num_delay[15]), .B(num_delay_15__N_1290[15]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1719)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_44.init = 16'h0aca;
    LUT4 i1_4_lut_adj_45 (.A(n4793), .B(num_delay[13]), .C(n16_adj_1781), 
         .D(n37278), .Z(num_delay_15__N_1290[13])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_45.init = 16'hfefa;
    LUT4 i1_3_lut (.A(cnt_init[0]), .B(num_delay[13]), .C(n37224), .Z(n16_adj_1781)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_adj_46 (.A(state[0]), .B(num_delay[12]), .C(n16_adj_1782), 
         .D(n19), .Z(num_delay_15__N_979[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_46.init = 16'hdc50;
    LUT4 i33_4_lut_adj_47 (.A(num_delay[12]), .B(num_delay_15__N_1290[12]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1782)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_47.init = 16'h0aca;
    LUT4 i1_4_lut_adj_48 (.A(cnt_init[0]), .B(num_delay[12]), .C(n37224), 
         .D(n37278), .Z(num_delay_15__N_1290[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_48.init = 16'hcc40;
    LUT4 i1_4_lut_adj_49 (.A(state[0]), .B(num_delay[11]), .C(n16_adj_1783), 
         .D(n19), .Z(num_delay_15__N_979[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_49.init = 16'hdc50;
    LUT4 i33_4_lut_adj_50 (.A(num_delay[11]), .B(num_delay_15__N_1290[11]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1783)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_50.init = 16'h0aca;
    LUT4 i1_2_lut_rep_641 (.A(cnt_scan[0]), .B(cnt_scan[2]), .Z(n37406)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_rep_641.init = 16'h8888;
    LUT4 i1_4_lut_adj_51 (.A(cnt_init[0]), .B(num_delay[11]), .C(n37224), 
         .D(n37278), .Z(num_delay_15__N_1290[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_51.init = 16'hcc40;
    LUT4 i1_2_lut_3_lut_adj_52 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(n2890), 
         .Z(n34643)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_3_lut_adj_52.init = 16'h8080;
    FD1P3IX char_i0_i18 (.D(n1939[18]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i18.GSR = "ENABLED";
    FD1P3IX char_i0_i16 (.D(n1939[16]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i16.GSR = "ENABLED";
    PFUMX i30125 (.BLUT(n35983), .ALUT(n35982), .C0(\cnt[4] ), .Z(n35984));
    LUT4 i1_4_lut_adj_53 (.A(n24_adj_1784), .B(char_reg[1]), .C(n37280), 
         .D(n27), .Z(char_reg_7__N_951[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_53.init = 16'hce0a;
    LUT4 i1_2_lut_3_lut_adj_54 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[7]), 
         .Z(n34632)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_54.init = 16'h1010;
    LUT4 mux_282_Mux_5_i31_3_lut_4_lut (.A(oled_dcn_N_1398), .B(n9), .C(char_reg[5]), 
         .D(n15), .Z(n1672[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam mux_282_Mux_5_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n36157_bdd_3_lut_4_lut (.A(oled_dcn_N_1398), .B(n9), .C(char_reg[7]), 
         .D(n36157), .Z(char_reg_7__N_1274[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam n36157_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i29482_3_lut_4_lut (.A(oled_dcn_N_1398), .B(n9), .C(\cnt[3] ), 
         .D(\cnt[4] ), .Z(n35152)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i29482_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_642 (.A(state[3]), .B(state[1]), .Z(n37407)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_642.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[3]), .B(state[1]), .C(state[4]), 
         .D(state[5]), .Z(n26731)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_55 (.A(state[0]), .B(num_delay[10]), .C(n16_adj_1786), 
         .D(n19), .Z(num_delay_15__N_979[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_55.init = 16'hdc50;
    LUT4 mux_282_Mux_6_i31_3_lut_4_lut (.A(oled_dcn_N_1398), .B(n9), .C(char_reg[6]), 
         .D(n36704), .Z(n1672[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam mux_282_Mux_6_i31_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX char_i0_i14 (.D(n1939[14]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i14.GSR = "ENABLED";
    LUT4 n35984_bdd_3_lut_4_lut (.A(oled_dcn_N_1398), .B(n9), .C(char_reg[3]), 
         .D(n35984), .Z(char_reg_7__N_1274[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam n35984_bdd_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX cnt_scan_i0_i1 (.D(cnt_scan_4__N_1056[1]), .SP(sys_clk_c_enable_219), 
            .CD(n20618), .CK(sys_clk_c), .Q(cnt_scan[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_scan_i0_i1.GSR = "ENABLED";
    LUT4 i33_4_lut_adj_56 (.A(num_delay[10]), .B(num_delay_15__N_1290[10]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1786)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_56.init = 16'h0aca;
    LUT4 n35304_bdd_2_lut_30562_4_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), 
         .C(n35303), .D(n35302), .Z(n36016)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam n35304_bdd_2_lut_30562_4_lut_4_lut.init = 16'h5140;
    LUT4 n36098_bdd_3_lut_4_lut (.A(oled_dcn_N_1398), .B(n9), .C(char_reg[0]), 
         .D(n36098), .Z(char_reg_7__N_1274[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam n36098_bdd_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX cnt_scan_i0_i2 (.D(cnt_scan_4__N_1056[2]), .SP(sys_clk_c_enable_219), 
            .CD(n20618), .CK(sys_clk_c), .Q(cnt_scan[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_scan_i0_i2.GSR = "ENABLED";
    FD1P3IX char_i0_i13 (.D(n37086), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i13.GSR = "ENABLED";
    LUT4 led_c_7_bdd_2_lut_30600_2_lut (.A(cnt_scan[2]), .B(n36874), .Z(n36875)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam led_c_7_bdd_2_lut_30600_2_lut.init = 16'h4444;
    FD1P3IX cnt_delay_i0_i11 (.D(n4484[11]), .SP(sys_clk_c_enable_326), 
            .CD(n20553), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3IX cnt_scan_i0_i3 (.D(cnt_scan_4__N_1056[3]), .SP(sys_clk_c_enable_219), 
            .CD(n20618), .CK(sys_clk_c), .Q(\cnt_scan[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_scan_i0_i3.GSR = "ENABLED";
    FD1P3IX char_i0_i11 (.D(n1939[11]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_scan_i0_i4 (.D(n31945), .SP(sys_clk_c_enable_219), .CK(sys_clk_c), 
            .Q(cnt_scan[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_scan_i0_i4.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_57 (.A(cnt_init[0]), .B(num_delay[10]), .C(n37224), 
         .D(n37278), .Z(num_delay_15__N_1290[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_57.init = 16'hcc40;
    FD1P3IX char_i0_i0 (.D(n1939[0]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i0.GSR = "ENABLED";
    FD1P3IX x_ph_i0_i0 (.D(n1912[0]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(x_ph[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam x_ph_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_i0_i0 (.D(n2383[0]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(\cnt[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    FD1P3IX char_i0_i10 (.D(n1939[10]), .SP(sys_clk_c_enable_375), .CD(n20706), 
            .CK(sys_clk_c), .Q(char[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i10.GSR = "ENABLED";
    FD1P3IX y_p_i0_i0 (.D(n1903[0]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(y_p[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam y_p_i0_i0.GSR = "ENABLED";
    FD1P3IX char_i0_i8 (.D(n1939[8]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i8.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_58 (.A(state[0]), .B(num_delay[9]), .C(n16_adj_1787), 
         .D(n19), .Z(num_delay_15__N_979[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_58.init = 16'hdc50;
    LUT4 i33_4_lut_adj_59 (.A(num_delay[9]), .B(num_delay_15__N_1290[9]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1787)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_59.init = 16'h0aca;
    LUT4 i29820_3_lut_4_lut (.A(n37263), .B(n37328), .C(state[5]), .D(n21_adj_1774), 
         .Z(n23)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i29820_3_lut_4_lut.init = 16'hf101;
    LUT4 i1_4_lut_adj_60 (.A(cnt_init[0]), .B(num_delay[9]), .C(n37224), 
         .D(n37278), .Z(num_delay_15__N_1290[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_60.init = 16'hcc40;
    LUT4 n35313_bdd_2_lut_30554_4_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), 
         .C(n35312), .D(n35311), .Z(n36069)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam n35313_bdd_2_lut_30554_4_lut_4_lut.init = 16'h5140;
    LUT4 i29607_3_lut (.A(char_reg[1]), .B(char_reg[0]), .C(cnt_write[1]), 
         .Z(n35277)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29607_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_643 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n37408)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i1_2_lut_rep_643.init = 16'h2222;
    LUT4 i2_3_lut_rep_462_4_lut (.A(state[3]), .B(n37332), .C(state[5]), 
         .D(state[4]), .Z(n37227)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam i2_3_lut_rep_462_4_lut.init = 16'hffef;
    FD1P3IX char_i0_i5 (.D(n1939[5]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_61 (.A(state[0]), .B(num_delay[8]), .C(n16_adj_1788), 
         .D(n19), .Z(num_delay_15__N_979[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_61.init = 16'hdc50;
    LUT4 i2_3_lut_4_lut_adj_62 (.A(state[3]), .B(n37332), .C(state[5]), 
         .D(state[4]), .Z(n11_adj_1789)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam i2_3_lut_4_lut_adj_62.init = 16'hfeff;
    LUT4 i33_4_lut_adj_63 (.A(num_delay[8]), .B(num_delay_15__N_1290[8]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1788)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_63.init = 16'h0aca;
    LUT4 i1_4_lut_adj_64 (.A(n4793), .B(num_delay[8]), .C(n16_adj_1790), 
         .D(n37278), .Z(num_delay_15__N_1290[8])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_64.init = 16'hfefa;
    FD1P3IX char_i0_i4 (.D(n1939[4]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i4.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_65 (.A(cnt_init[0]), .B(num_delay[8]), .C(n37224), 
         .Z(n16_adj_1790)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_65.init = 16'h4040;
    LUT4 i29606_3_lut (.A(char_reg[3]), .B(char_reg[2]), .C(cnt_write[1]), 
         .Z(n35276)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29606_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_504_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(cnt_init[0]), .D(n37409), .Z(n37269)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i1_2_lut_rep_504_3_lut_4_lut.init = 16'h0200;
    LUT4 i29756_3_lut_4_lut_4_lut (.A(n37288), .B(n30_adj_1791), .C(cnt_main[4]), 
         .D(n37297), .Z(n15_adj_1792)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i29756_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i29899_2_lut_rep_644 (.A(cnt_init[4]), .B(cnt_init[3]), .Z(n37409)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i29899_2_lut_rep_644.init = 16'h1111;
    FD1P3IX char_i0_i3 (.D(n1939[3]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i3.GSR = "ENABLED";
    FD1P3IX char_i0_i2 (.D(n1939[2]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_555_3_lut_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), 
         .C(cnt_init[1]), .D(cnt_init[2]), .Z(n37320)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_555_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_4_lut_adj_66 (.A(cnt_init[0]), .B(n34815), .C(n19_adj_1793), 
         .D(state[2]), .Z(n6_adj_1794)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i1_4_lut_4_lut_adj_66.init = 16'hf400;
    FD1P3IX cnt_delay_i0_i0 (.D(n4484[0]), .SP(sys_clk_c_enable_326), .CD(n20553), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n4484[12]), .SP(sys_clk_c_enable_326), 
            .CD(n20553), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_4_lut (.A(cnt_init[0]), .B(n37320), .C(n21), .D(oled_dcn_N_1398), 
         .Z(n6_adj_1749)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_67 (.A(cnt_init[0]), .B(n34857), .C(n19_adj_1795), 
         .D(state[2]), .Z(n6_adj_1796)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i1_4_lut_4_lut_adj_67.init = 16'hf400;
    FD1P3IX cnt_delay_i0_i13 (.D(n4484[13]), .SP(sys_clk_c_enable_326), 
            .CD(n20553), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_68 (.A(state[0]), .B(num_delay[7]), .C(n16_adj_1797), 
         .D(n19), .Z(num_delay_15__N_979[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_68.init = 16'hdc50;
    LUT4 i33_4_lut_adj_69 (.A(num_delay[7]), .B(num_delay_15__N_1290[7]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1797)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_69.init = 16'h0aca;
    LUT4 i1_4_lut_4_lut_adj_70 (.A(cnt_init[0]), .B(n34821), .C(n19_adj_1798), 
         .D(state[2]), .Z(n6_adj_1799)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i1_4_lut_4_lut_adj_70.init = 16'hf400;
    LUT4 i1_4_lut_adj_71 (.A(n4793), .B(num_delay[7]), .C(n16_adj_1800), 
         .D(n37278), .Z(num_delay_15__N_1290[7])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_71.init = 16'hfefa;
    LUT4 i1_3_lut_3_lut_3_lut (.A(cnt_scan[0]), .B(y_p[5]), .C(cnt_scan[2]), 
         .Z(n3_adj_1801)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i1_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_3_lut_adj_72 (.A(cnt_init[0]), .B(num_delay[7]), .C(n37224), 
         .Z(n16_adj_1800)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_72.init = 16'h4040;
    CCU2D add_124_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31666), .S0(n4484[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_17.INIT0 = 16'h5aaa;
    defparam add_124_17.INIT1 = 16'h0000;
    defparam add_124_17.INJECT1_0 = "NO";
    defparam add_124_17.INJECT1_1 = "NO";
    LUT4 i29871_3_lut_4_lut_4_lut (.A(n37288), .B(n35267), .C(cnt_main[3]), 
         .D(char[0]), .Z(n15_adj_1802)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i29871_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_4_lut_adj_73 (.A(state[0]), .B(num_delay[6]), .C(n16_adj_1803), 
         .D(n19), .Z(num_delay_15__N_979[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_73.init = 16'hdc50;
    LUT4 i33_4_lut_adj_74 (.A(num_delay[6]), .B(num_delay_15__N_1290[6]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1803)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_74.init = 16'h0aca;
    LUT4 i1_4_lut_adj_75 (.A(cnt_init[0]), .B(num_delay[6]), .C(n37224), 
         .D(n37278), .Z(num_delay_15__N_1290[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_75.init = 16'hcc40;
    CCU2D add_124_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31665), .COUT(n31666), .S0(n4484[13]), 
          .S1(n4484[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_15.INIT0 = 16'h5aaa;
    defparam add_124_15.INIT1 = 16'h5aaa;
    defparam add_124_15.INJECT1_0 = "NO";
    defparam add_124_15.INJECT1_1 = "NO";
    LUT4 cnt_main_0__bdd_3_lut_31180 (.A(cnt_main[3]), .B(cnt_main[1]), 
         .C(cnt_main[2]), .Z(n36283)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam cnt_main_0__bdd_3_lut_31180.init = 16'h8080;
    LUT4 i2_2_lut_rep_498_4_lut (.A(cnt_scan[2]), .B(n37390), .C(\cnt_scan[3] ), 
         .D(cnt_scan[4]), .Z(n37263)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(163[8:13])
    defparam i2_2_lut_rep_498_4_lut.init = 16'hffdf;
    LUT4 cnt_main_0__bdd_4_lut_31181 (.A(cnt_main[3]), .B(cnt_main[1]), 
         .C(cnt_main[2]), .D(y_p[0]), .Z(n36284)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam cnt_main_0__bdd_4_lut_31181.init = 16'h5554;
    CCU2D add_124_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31664), .COUT(n31665), .S0(n4484[11]), 
          .S1(n4484[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_13.INIT0 = 16'h5aaa;
    defparam add_124_13.INIT1 = 16'h5aaa;
    defparam add_124_13.INJECT1_0 = "NO";
    defparam add_124_13.INJECT1_1 = "NO";
    CCU2D add_124_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31663), .COUT(n31664), .S0(n4484[9]), .S1(n4484[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_11.INIT0 = 16'h5aaa;
    defparam add_124_11.INIT1 = 16'h5aaa;
    defparam add_124_11.INJECT1_0 = "NO";
    defparam add_124_11.INJECT1_1 = "NO";
    CCU2D add_124_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31662), .COUT(n31663), .S0(n4484[7]), .S1(n4484[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_9.INIT0 = 16'h5aaa;
    defparam add_124_9.INIT1 = 16'h5aaa;
    defparam add_124_9.INJECT1_0 = "NO";
    defparam add_124_9.INJECT1_1 = "NO";
    LUT4 n19_bdd_3_lut_30540_3_lut_3_lut (.A(cnt_scan[0]), .B(y_p[1]), .C(cnt_scan[2]), 
         .Z(n36102)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam n19_bdd_3_lut_30540_3_lut_3_lut.init = 16'h0404;
    CCU2D add_124_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31661), .COUT(n31662), .S0(n4484[5]), .S1(n4484[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_7.INIT0 = 16'h5aaa;
    defparam add_124_7.INIT1 = 16'h5aaa;
    defparam add_124_7.INJECT1_0 = "NO";
    defparam add_124_7.INJECT1_1 = "NO";
    CCU2D add_124_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31660), .COUT(n31661), .S0(n4484[3]), .S1(n4484[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_5.INIT0 = 16'h5aaa;
    defparam add_124_5.INIT1 = 16'h5aaa;
    defparam add_124_5.INJECT1_0 = "NO";
    defparam add_124_5.INJECT1_1 = "NO";
    CCU2D add_124_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31659), .COUT(n31660), .S0(n4484[1]), .S1(n4484[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_3.INIT0 = 16'h5aaa;
    defparam add_124_3.INIT1 = 16'h5aaa;
    defparam add_124_3.INJECT1_0 = "NO";
    defparam add_124_3.INJECT1_1 = "NO";
    CCU2D add_124_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31659), .S1(n4484[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(195[29:45])
    defparam add_124_1.INIT0 = 16'hF000;
    defparam add_124_1.INIT1 = 16'h5555;
    defparam add_124_1.INJECT1_0 = "NO";
    defparam add_124_1.INJECT1_1 = "NO";
    FD1P3IX char_i0_i1 (.D(n1939[1]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i1.GSR = "ENABLED";
    CCU2D add_50_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31658), 
          .S0(n2357[15]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_17.INIT0 = 16'h5aaa;
    defparam add_50_17.INIT1 = 16'h0000;
    defparam add_50_17.INJECT1_0 = "NO";
    defparam add_50_17.INJECT1_1 = "NO";
    LUT4 mux_34_Mux_1_i15_4_lut_4_lut_4_lut (.A(n37288), .B(x_ph[1]), .C(cnt_main[4]), 
         .D(n37274), .Z(n15_adj_1804)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B+!((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_34_Mux_1_i15_4_lut_4_lut_4_lut.init = 16'hc4f4;
    CCU2D add_50_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31657), 
          .COUT(n31658), .S0(n2357[13]), .S1(n2357[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_15.INIT0 = 16'h5aaa;
    defparam add_50_15.INIT1 = 16'h5aaa;
    defparam add_50_15.INJECT1_0 = "NO";
    defparam add_50_15.INJECT1_1 = "NO";
    CCU2D add_50_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31656), 
          .COUT(n31657), .S0(n2357[11]), .S1(n2357[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_13.INIT0 = 16'h5aaa;
    defparam add_50_13.INIT1 = 16'h5aaa;
    defparam add_50_13.INJECT1_0 = "NO";
    defparam add_50_13.INJECT1_1 = "NO";
    LUT4 mux_37_Mux_2_i15_4_lut_4_lut (.A(n37288), .B(cnt_main[3]), .C(n35258), 
         .D(char[2]), .Z(n15_adj_1805)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_2_i15_4_lut_4_lut.init = 16'hd1c0;
    CCU2D add_50_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31655), 
          .COUT(n31656), .S0(n2357[9]), .S1(n2357[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_11.INIT0 = 16'h5aaa;
    defparam add_50_11.INIT1 = 16'h5aaa;
    defparam add_50_11.INJECT1_0 = "NO";
    defparam add_50_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_76 (.A(state[0]), .B(num_delay[5]), .C(n16_adj_1806), 
         .D(n19), .Z(num_delay_15__N_979[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_76.init = 16'hdc50;
    LUT4 i33_4_lut_adj_77 (.A(num_delay[5]), .B(num_delay_15__N_1290[5]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1806)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_77.init = 16'h0aca;
    LUT4 i1_4_lut_adj_78 (.A(n4793), .B(num_delay[5]), .C(n16_adj_1807), 
         .D(n37278), .Z(num_delay_15__N_1290[5])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_78.init = 16'hfefa;
    CCU2D add_50_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31654), 
          .COUT(n31655), .S0(n2357[7]), .S1(n2357[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_9.INIT0 = 16'h5aaa;
    defparam add_50_9.INIT1 = 16'h5aaa;
    defparam add_50_9.INJECT1_0 = "NO";
    defparam add_50_9.INJECT1_1 = "NO";
    FD1P3IX x_ph_i0_i4 (.D(n1912[4]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(x_ph[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam x_ph_i0_i4.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_79 (.A(cnt_init[0]), .B(num_delay[5]), .C(n37224), 
         .Z(n16_adj_1807)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_79.init = 16'h4040;
    CCU2D add_50_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31653), 
          .COUT(n31654), .S0(n2357[5]), .S1(n2357[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_7.INIT0 = 16'h5aaa;
    defparam add_50_7.INIT1 = 16'h5aaa;
    defparam add_50_7.INJECT1_0 = "NO";
    defparam add_50_7.INJECT1_1 = "NO";
    CCU2D add_50_5 (.A0(\cnt[3] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[4] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31652), 
          .COUT(n31653), .S0(n2357[3]), .S1(n2357[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_5.INIT0 = 16'h5aaa;
    defparam add_50_5.INIT1 = 16'h5aaa;
    defparam add_50_5.INJECT1_0 = "NO";
    defparam add_50_5.INJECT1_1 = "NO";
    FD1P3IX x_pl_i0_i3 (.D(n1921[3]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(x_pl[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam x_pl_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n4484[14]), .SP(sys_clk_c_enable_326), 
            .CD(n20553), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_80 (.A(state[0]), .B(num_delay[4]), .C(n16_adj_1808), 
         .D(n19), .Z(num_delay_15__N_979[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_80.init = 16'hdc50;
    LUT4 i2_2_lut_4_lut_4_lut (.A(cnt_scan[0]), .B(n37399), .C(n34917), 
         .D(char[1]), .Z(n9_adj_1809)) /* synthesis lut_function=(!(A ((C+!(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[32:40])
    defparam i2_2_lut_4_lut_4_lut.init = 16'h5d55;
    LUT4 i33_4_lut_adj_81 (.A(num_delay[4]), .B(num_delay_15__N_1290[4]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1808)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_81.init = 16'h0aca;
    LUT4 i1_4_lut_adj_82 (.A(cnt_init[0]), .B(num_delay[4]), .C(n37224), 
         .D(n37278), .Z(num_delay_15__N_1290[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_82.init = 16'hcc40;
    LUT4 i1_4_lut_adj_83 (.A(state[0]), .B(num_delay[3]), .C(n16_adj_1810), 
         .D(n19), .Z(num_delay_15__N_979[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_83.init = 16'hdc50;
    LUT4 i33_4_lut_adj_84 (.A(num_delay[3]), .B(num_delay_15__N_1290[3]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1810)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_84.init = 16'h0aca;
    FD1P3IX x_ph_i0_i2 (.D(n1912[2]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(x_ph[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam x_ph_i0_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_85 (.A(n4793), .B(num_delay[3]), .C(n16_adj_1811), 
         .D(n37278), .Z(num_delay_15__N_1290[3])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_85.init = 16'hfefa;
    LUT4 i1_3_lut_adj_86 (.A(cnt_init[0]), .B(num_delay[3]), .C(n37224), 
         .Z(n16_adj_1811)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_86.init = 16'h4040;
    FD1P3IX x_ph_i0_i1 (.D(n1912[1]), .SP(sys_clk_c_enable_298), .CD(n39006), 
            .CK(sys_clk_c), .Q(x_ph[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam x_ph_i0_i1.GSR = "ENABLED";
    LUT4 i29935_4_lut (.A(state[0]), .B(num_delay[2]), .C(n24_adj_1812), 
         .D(n19), .Z(num_delay_15__N_979[2])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i29935_4_lut.init = 16'h8caf;
    LUT4 i41_4_lut (.A(num_delay[2]), .B(n26731), .C(state[2]), .D(n34580), 
         .Z(n24_adj_1812)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i41_4_lut.init = 16'h3505;
    LUT4 i1_4_lut_adj_87 (.A(n24_adj_1813), .B(char_reg[0]), .C(n37280), 
         .D(n27), .Z(char_reg_7__N_951[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_87.init = 16'hce0a;
    LUT4 i1_4_lut_adj_88 (.A(cnt_init[0]), .B(num_delay[2]), .C(n15_adj_1814), 
         .D(n37278), .Z(n34580)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_88.init = 16'h23af;
    LUT4 i1_4_lut_adj_89 (.A(num_delay[2]), .B(n21), .C(n37320), .D(oled_dcn_N_1398), 
         .Z(n15_adj_1814)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_89.init = 16'ha8f8;
    LUT4 i1_4_lut_adj_90 (.A(n24_adj_1815), .B(state_back[0]), .C(n37280), 
         .D(n27), .Z(state_back_5__N_1033[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_90.init = 16'hce0a;
    LUT4 i1_4_lut_adj_91 (.A(state[0]), .B(num_delay[1]), .C(n16_adj_1816), 
         .D(n19), .Z(num_delay_15__N_979[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_91.init = 16'hdc50;
    LUT4 i33_4_lut_adj_92 (.A(num_delay[1]), .B(num_delay_15__N_1290[1]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1816)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_92.init = 16'h0aca;
    LUT4 i1_4_lut_adj_93 (.A(n34601), .B(n34687), .C(state[0]), .D(n37312), 
         .Z(sys_clk_c_enable_19)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_93.init = 16'hc088;
    LUT4 i1_4_lut_adj_94 (.A(cnt_init[0]), .B(num_delay[1]), .C(n37224), 
         .D(n37278), .Z(num_delay_15__N_1290[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_94.init = 16'hcc40;
    LUT4 i1_4_lut_adj_95 (.A(state[4]), .B(cnt_write[3]), .C(n6_adj_1817), 
         .D(cnt_write[2]), .Z(n34601)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_95.init = 16'h0020;
    LUT4 i24_4_lut (.A(n5_adj_1818), .B(n37[7]), .C(state[3]), .D(n6_adj_1819), 
         .Z(n33552)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i24_4_lut.init = 16'hcac0;
    LUT4 num_2991_mux_6_i3_4_lut (.A(n5_adj_1818), .B(n37[2]), .C(state[3]), 
         .D(n4_adj_1820), .Z(n1[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991_mux_6_i3_4_lut.init = 16'hcac0;
    CCU2D add_50_3 (.A0(\cnt[1] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[2] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31651), 
          .COUT(n31652), .S0(n2357[1]), .S1(n2357[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_3.INIT0 = 16'h5aaa;
    defparam add_50_3.INIT1 = 16'h5aaa;
    defparam add_50_3.INJECT1_0 = "NO";
    defparam add_50_3.INJECT1_1 = "NO";
    FD1P3IX cnt_i0_i15 (.D(n2383[15]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i15.GSR = "ENABLED";
    FD1P3IX cnt_i0_i14 (.D(n2383[14]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i14.GSR = "ENABLED";
    FD1P3IX cnt_i0_i13 (.D(n2383[13]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i13.GSR = "ENABLED";
    FD1P3IX cnt_i0_i12 (.D(n2383[12]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i12.GSR = "ENABLED";
    FD1P3IX cnt_i0_i11 (.D(n2383[11]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i11.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i15 (.D(n4484[15]), .SP(sys_clk_c_enable_326), 
            .CD(n20553), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(oled_csn_N_1382), .B(cnt_write[1]), .C(cnt_write[0]), 
         .Z(n6_adj_1817)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;
    defparam i2_3_lut.init = 16'h2121;
    LUT4 i11_4_lut (.A(oled_csn_N_1382), .B(state[0]), .C(n37312), .D(state[4]), 
         .Z(n34236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(48[13:18])
    defparam i11_4_lut.init = 16'hcac0;
    CCU2D add_50_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n31651), 
          .S1(n2357[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam add_50_1.INIT0 = 16'hF000;
    defparam add_50_1.INIT1 = 16'h5555;
    defparam add_50_1.INJECT1_0 = "NO";
    defparam add_50_1.INJECT1_1 = "NO";
    FD1P3IX cnt_i0_i10 (.D(n2383[10]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i10.GSR = "ENABLED";
    FD1P3IX cnt_i0_i9 (.D(n2383[9]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i9.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_96 (.A(n26), .B(state[1]), .C(state[4]), .Z(n32856)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i2_3_lut_adj_96.init = 16'h0202;
    LUT4 i1_4_lut_adj_97 (.A(n6802), .B(n7977), .C(n34603), .D(n37273), 
         .Z(sys_clk_c_enable_157)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_97.init = 16'ha088;
    LUT4 i1_4_lut_adj_98 (.A(n7883), .B(cnt_init[1]), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n34603)) /* synthesis lut_function=(!((B (D)+!B (C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_98.init = 16'h008a;
    LUT4 mux_2185_i1_4_lut (.A(n7977), .B(n7883), .C(n37273), .D(n4_adj_1821), 
         .Z(n6727[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam mux_2185_i1_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_adj_99 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n4_adj_1821)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_99.init = 16'h4444;
    LUT4 i2_4_lut_adj_100 (.A(state[2]), .B(n37409), .C(cnt_init[2]), 
         .D(cnt_init[1]), .Z(n7883)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i2_4_lut_adj_100.init = 16'h0888;
    FD1P3IX cnt_i0_i8 (.D(n2383[8]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i8.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_473_4_lut (.A(state[2]), .B(n37282), .C(state[1]), 
         .D(state[0]), .Z(n37238)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(90[5:9])
    defparam i2_3_lut_rep_473_4_lut.init = 16'hffef;
    FD1P3IX cnt_i0_i7 (.D(n2383[7]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_101 (.A(state[0]), .B(n34675), .C(state[2]), .D(n4_adj_1822), 
         .Z(n20629)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)))) */ ;
    defparam i1_4_lut_adj_101.init = 16'h4c0c;
    LUT4 i3785_2_lut (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n2321[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i3785_2_lut.init = 16'h6666;
    FD1P3IX cnt_i0_i6 (.D(n2383[6]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i6.GSR = "ENABLED";
    LUT4 i20644_2_lut (.A(state[3]), .B(state[2]), .Z(n26081)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20644_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_102 (.A(n31957), .B(n53), .C(state[1]), .D(state[5]), 
         .Z(n6802)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_102.init = 16'haaae;
    LUT4 i2_4_lut_adj_103 (.A(state[1]), .B(n26706), .C(state[5]), .D(n26081), 
         .Z(n31957)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_103.init = 16'h0012;
    LUT4 i29589_3_lut_4_lut (.A(n37369), .B(sw1_c), .C(\cnt_main[0] ), 
         .D(n7445), .Z(n35259)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(108[31:43])
    defparam i29589_3_lut_4_lut.init = 16'hf202;
    LUT4 n35284_bdd_4_lut_rep_553_then_4_lut (.A(char[24]), .B(char[16]), 
         .C(n34917), .D(num[0]), .Z(n37429)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n35284_bdd_4_lut_rep_553_then_4_lut.init = 16'h0a0c;
    LUT4 i73_2_lut (.A(state[2]), .B(state[3]), .Z(n38_adj_1823)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i73_2_lut.init = 16'h6666;
    LUT4 i21266_2_lut (.A(state[0]), .B(state[4]), .Z(n26706)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21266_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_104 (.A(n6802), .B(n7977), .C(n20492), .D(n37273), 
         .Z(sys_clk_c_enable_20)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_104.init = 16'h0a88;
    LUT4 i24_4_lut_adj_105 (.A(cnt_scan[4]), .B(n38984), .C(state[2]), 
         .D(n36558), .Z(n20492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i24_4_lut_adj_105.init = 16'hcfca;
    LUT4 i3_4_lut_adj_106 (.A(n35014), .B(n37273), .C(cnt_scan[2]), .D(\cnt_scan[3] ), 
         .Z(n34038)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i3_4_lut_adj_106.init = 16'h0440;
    LUT4 i29345_2_lut (.A(cnt_scan[4]), .B(state[2]), .Z(n35014)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29345_2_lut.init = 16'heeee;
    LUT4 i29399_4_lut_4_lut_4_lut (.A(cnt_scan[4]), .B(n37296), .C(state[2]), 
         .D(n32178), .Z(n34613)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(163[8:13])
    defparam i29399_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i2_2_lut_3_lut (.A(cnt_scan[4]), .B(n37296), .C(n11), .Z(n6_adj_1824)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(163[8:13])
    defparam i2_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i29937_4_lut (.A(state[0]), .B(num_delay[0]), .C(n27004), .D(n19), 
         .Z(num_delay_15__N_979[0])) /* synthesis lut_function=(A (B+!(D))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i29937_4_lut.init = 16'hc8fa;
    LUT4 i41_4_lut_adj_107 (.A(num_delay[0]), .B(n26731), .C(state[2]), 
         .D(n34552), .Z(n27004)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i41_4_lut_adj_107.init = 16'hfaca;
    LUT4 i1_4_lut_adj_108 (.A(cnt_init[0]), .B(num_delay[0]), .C(n15_adj_1825), 
         .D(n37278), .Z(n34552)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_108.init = 16'hdc50;
    LUT4 i1_4_lut_adj_109 (.A(num_delay[0]), .B(n21), .C(n37320), .D(oled_dcn_N_1398), 
         .Z(n15_adj_1825)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_109.init = 16'ha8f8;
    LUT4 mux_82_i1_4_lut (.A(n2522), .B(cnt_scan[0]), .C(n9_adj_1826), 
         .D(n37263), .Z(cnt_scan_4__N_1056[0])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(147[16] 148[40])
    defparam mux_82_i1_4_lut.init = 16'h3a0a;
    LUT4 i5_3_lut (.A(num[1]), .B(n10_adj_1827), .C(num[7]), .Z(n2522)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(145[11:14])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut (.A(num[0]), .B(n34917), .C(num[6]), .D(num[5]), .Z(n10_adj_1827)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(145[11:14])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_110 (.A(\cnt_scan[3] ), .B(n18926), .Z(n9_adj_1826)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_110.init = 16'hdddd;
    LUT4 mux_82_i2_4_lut (.A(n2522), .B(n2531[1]), .C(n9_adj_1826), .D(n37263), 
         .Z(cnt_scan_4__N_1056[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(147[16] 148[40])
    defparam mux_82_i2_4_lut.init = 16'hca0a;
    LUT4 i3821_2_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n2531[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(148[24:39])
    defparam i3821_2_lut.init = 16'h6666;
    LUT4 mux_82_i3_4_lut (.A(n2522), .B(n2531[2]), .C(n9_adj_1826), .D(n37263), 
         .Z(cnt_scan_4__N_1056[2])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(147[16] 148[40])
    defparam mux_82_i3_4_lut.init = 16'hc505;
    LUT4 mux_82_i4_4_lut (.A(n2522), .B(n2531[3]), .C(n9_adj_1826), .D(n37263), 
         .Z(cnt_scan_4__N_1056[3])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(147[16] 148[40])
    defparam mux_82_i4_4_lut.init = 16'hc505;
    LUT4 i1_3_lut_4_lut (.A(cnt_init[0]), .B(n37320), .C(state[4]), .D(oled_dcn_N_1398), 
         .Z(n8_adj_1748)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h4044;
    LUT4 i1_3_lut_adj_111 (.A(char[11]), .B(n31212), .C(n28), .Z(n1939[11])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_111.init = 16'hecec;
    LUT4 i3_4_lut_adj_112 (.A(cnt_scan[4]), .B(n6_adj_1824), .C(n9_adj_1826), 
         .D(n9170), .Z(n31945)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))))) */ ;
    defparam i3_4_lut_adj_112.init = 16'h4080;
    FD1P3IX cnt_write_i0_i0 (.D(n2_adj_1828), .SP(sys_clk_c_enable_313), 
            .CD(n20572), .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 char_21__bdd_4_lut_31198 (.A(char[21]), .B(n37274), .C(n37527), 
         .D(cnt_main[4]), .Z(n37095)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_21__bdd_4_lut_31198.init = 16'h88f0;
    LUT4 mux_34_Mux_0_i31_4_lut (.A(n37499), .B(x_ph[0]), .C(cnt_main[4]), 
         .D(n37274), .Z(n1912[0])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_34_Mux_0_i31_4_lut.init = 16'hcafa;
    LUT4 i1_4_lut_adj_113 (.A(state[1]), .B(n32039), .C(n6), .D(n37269), 
         .Z(sys_clk_c_enable_295)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_113.init = 16'h7333;
    LUT4 i20662_2_lut (.A(n2357[0]), .B(oled_dcn_N_1398), .Z(n2383[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20662_2_lut.init = 16'h2222;
    FD1P3IX cnt_i0_i5 (.D(n2383[5]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i5.GSR = "ENABLED";
    LUT4 mux_33_Mux_0_i31_4_lut (.A(n36285), .B(y_p[0]), .C(cnt_main[4]), 
         .D(n37274), .Z(n1903[0])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_33_Mux_0_i31_4_lut.init = 16'hcafa;
    FD1P3IX cnt_i0_i4 (.D(n2383[4]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(\cnt[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i4.GSR = "ENABLED";
    LUT4 i9378_3_lut_4_lut (.A(\cnt_main[0] ), .B(n37310), .C(char[0]), 
         .D(\ds18b20_data[4] ), .Z(n30_adj_1829)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i9378_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_114 (.A(\cnt_main[0] ), .B(n37310), .C(x_ph[4]), 
         .D(cnt_main[4]), .Z(n1912[4])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_114.init = 16'hf1fe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_115 (.A(\cnt_main[0] ), .B(n37310), .C(y_p[7]), 
         .D(cnt_main[4]), .Z(n1903[7])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_115.init = 16'hf1fe;
    LUT4 mux_35_Mux_3_i31_4_lut (.A(n37496), .B(x_pl[3]), .C(cnt_main[4]), 
         .D(n37274), .Z(n1921[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_35_Mux_3_i31_4_lut.init = 16'hca0a;
    LUT4 mux_34_Mux_2_i31_4_lut (.A(n35273), .B(x_ph[2]), .C(cnt_main[4]), 
         .D(n37274), .Z(n1912[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_34_Mux_2_i31_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_116 (.A(\cnt_main[0] ), .B(n37310), .C(y_p[4]), 
         .D(cnt_main[4]), .Z(n1903[4])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_116.init = 16'hf1fe;
    LUT4 i20701_2_lut (.A(n2357[15]), .B(oled_dcn_N_1398), .Z(n2383[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20701_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_117 (.A(\cnt_main[0] ), .B(n37310), .C(y_p[5]), 
         .D(cnt_main[4]), .Z(n1903[5])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_117.init = 16'hf1fe;
    LUT4 i20702_2_lut (.A(n2357[14]), .B(oled_dcn_N_1398), .Z(n2383[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20702_2_lut.init = 16'h2222;
    LUT4 i20703_2_lut (.A(n2357[13]), .B(oled_dcn_N_1398), .Z(n2383[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20703_2_lut.init = 16'h2222;
    LUT4 i20704_2_lut (.A(n2357[12]), .B(oled_dcn_N_1398), .Z(n2383[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20704_2_lut.init = 16'h2222;
    LUT4 i20705_2_lut (.A(n2357[11]), .B(oled_dcn_N_1398), .Z(n2383[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20705_2_lut.init = 16'h2222;
    PFUMX i30254 (.BLUT(n36284), .ALUT(n36283), .C0(\cnt_main[0] ), .Z(n36285));
    LUT4 i20708_2_lut (.A(n2357[10]), .B(oled_dcn_N_1398), .Z(n2383[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20708_2_lut.init = 16'h2222;
    LUT4 i20709_2_lut (.A(n2357[9]), .B(oled_dcn_N_1398), .Z(n2383[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20709_2_lut.init = 16'h2222;
    LUT4 i20713_2_lut (.A(n2357[8]), .B(oled_dcn_N_1398), .Z(n2383[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20713_2_lut.init = 16'h2222;
    LUT4 i20714_2_lut (.A(n2357[7]), .B(oled_dcn_N_1398), .Z(n2383[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20714_2_lut.init = 16'h2222;
    LUT4 i20715_2_lut (.A(n2357[6]), .B(oled_dcn_N_1398), .Z(n2383[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20715_2_lut.init = 16'h2222;
    LUT4 i15232_2_lut_4_lut (.A(state[2]), .B(n37282), .C(n37326), .D(sys_clk_c_enable_295), 
         .Z(n20710)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(124[5:9])
    defparam i15232_2_lut_4_lut.init = 16'hfd00;
    PFUMX i30066 (.BLUT(n35838), .ALUT(n37320), .C0(cnt_init[0]), .Z(state_5__N_1344[1]));
    LUT4 i1_4_lut_adj_118 (.A(cnt_scan[4]), .B(n57), .C(n37412), .D(\cnt_scan[3] ), 
         .Z(n64_adj_1830)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_118.init = 16'h5044;
    LUT4 i15083_3_lut (.A(sys_clk_c_enable_313), .B(n4458), .C(n11_adj_1789), 
         .Z(n20572)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i15083_3_lut.init = 16'ha8a8;
    LUT4 i3855_1_lut (.A(cnt_write[0]), .Z(n2_adj_1828)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3855_1_lut.init = 16'h5555;
    LUT4 n11_bdd_4_lut_adj_119 (.A(n11_adj_1789), .B(n37331), .C(state[0]), 
         .D(n37282), .Z(sys_clk_c_enable_313)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+(C+(D))))) */ ;
    defparam n11_bdd_4_lut_adj_119.init = 16'h5574;
    LUT4 i3_4_lut_4_lut (.A(n37318), .B(n37406), .C(n2720), .D(n34739), 
         .Z(n34644)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[51:79])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    LUT4 i20716_2_lut (.A(n2357[5]), .B(oled_dcn_N_1398), .Z(n2383[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20716_2_lut.init = 16'h2222;
    LUT4 i21271_4_lut_4_lut (.A(n37317), .B(n10), .C(n8_adj_1738), .D(n9_adj_1809), 
         .Z(n10683)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[59:71])
    defparam i21271_4_lut_4_lut.init = 16'h0002;
    LUT4 i20717_2_lut (.A(n2357[4]), .B(oled_dcn_N_1398), .Z(n2383[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20717_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_120 (.A(n37158), .B(n37238), .C(n34483), .D(warning_TEM), 
         .Z(sys_clk_c_enable_328)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_120.init = 16'ha080;
    LUT4 i1_2_lut_4_lut_adj_121 (.A(cnt_init[2]), .B(n37322), .C(cnt_init[0]), 
         .D(state_back[2]), .Z(n19_adj_1752)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_121.init = 16'hec00;
    LUT4 i1_2_lut_4_lut_adj_122 (.A(cnt_init[2]), .B(n37322), .C(cnt_init[0]), 
         .D(state_back[0]), .Z(n19_adj_1793)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_122.init = 16'hec00;
    FD1P3IX cnt_i0_i3 (.D(n2383[3]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(\cnt[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_123 (.A(state[0]), .B(num_delay[14]), .C(n16_adj_1831), 
         .D(n19), .Z(num_delay_15__N_979[14])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_123.init = 16'hdc50;
    PFUMX mux_37_Mux_2_i31 (.BLUT(n15_adj_1805), .ALUT(n30_adj_1780), .C0(cnt_main[4]), 
          .Z(n1939[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    PFUMX mux_37_Mux_3_i31 (.BLUT(n35255), .ALUT(n30_adj_1779), .C0(cnt_main[4]), 
          .Z(n1939[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 i1_2_lut_4_lut_adj_124 (.A(cnt_init[2]), .B(n37322), .C(cnt_init[0]), 
         .D(state_back[4]), .Z(n19_adj_1798)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_124.init = 16'hec00;
    LUT4 i1_2_lut_4_lut_adj_125 (.A(cnt_init[2]), .B(n37322), .C(cnt_init[0]), 
         .D(state_back[5]), .Z(n19_adj_1795)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_125.init = 16'hec00;
    FD1P3IX cnt_i0_i2 (.D(n2383[2]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(\cnt[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    L6MUX21 i29588 (.D0(n35256), .D1(n35257), .SD(cnt_main[2]), .Z(n35258));
    PFUMX mux_37_Mux_1_i31 (.BLUT(n35264), .ALUT(n30_adj_1778), .C0(cnt_main[4]), 
          .Z(n1939[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    FD1P3IX cnt_i0_i1 (.D(n2383[1]), .SP(sys_clk_c_enable_295), .CD(n20710), 
            .CK(sys_clk_c), .Q(\cnt[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_126 (.A(n37334), .B(n18), .C(n15_adj_1832), 
         .D(n26081), .Z(n33144)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_126.init = 16'h50dc;
    L6MUX21 i29584 (.D0(n35261), .D1(n35270), .SD(cnt_main[2]), .Z(n35254));
    PFUMX i29586 (.BLUT(n8_adj_1777), .ALUT(n9_adj_1776), .C0(cnt_main[1]), 
          .Z(n35256));
    LUT4 i3878_3_lut_4_lut (.A(cnt_write[2]), .B(n37336), .C(cnt_write[3]), 
         .D(oled_csn_N_1382), .Z(n4460[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3878_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_4_lut_adj_127 (.A(n36947), .B(n1672[6]), .C(n35152), 
         .D(state[2]), .Z(n6_adj_1833)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_127.init = 16'hac00;
    PFUMX mux_37_Mux_0_i31 (.BLUT(n15_adj_1802), .ALUT(n30_adj_1829), .C0(cnt_main[4]), 
          .Z(n1939[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 i1_2_lut_4_lut_adj_128 (.A(n37330), .B(state[2]), .C(state[0]), 
         .D(n37407), .Z(n19)) /* synthesis lut_function=(A+(B (C+(D))+!B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_128.init = 16'hffea;
    LUT4 i1_4_lut_adj_129 (.A(n44), .B(n47), .C(n26081), .D(n37326), 
         .Z(n53_adj_1834)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_adj_129.init = 16'h0ace;
    PFUMX i29591 (.BLUT(n35259), .ALUT(n35260), .C0(cnt_main[1]), .Z(n35261));
    LUT4 i29306_2_lut_3_lut_4_lut (.A(n37334), .B(n37326), .C(n26081), 
         .D(n38_adj_1823), .Z(n34973)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i29306_2_lut_3_lut_4_lut.init = 16'hf1f0;
    FD1P3IX y_p_i0_i7 (.D(n1903[7]), .SP(sys_clk_c_enable_298), .CD(n39006), 
            .CK(sys_clk_c), .Q(y_p[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam y_p_i0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_130 (.A(n37334), .B(n37326), .C(n6802), 
         .D(n38_adj_1823), .Z(n34687)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_130.init = 16'he0f0;
    LUT4 i30043_3_lut_4_lut (.A(n2721), .B(n37229), .C(n2722), .D(n37317), 
         .Z(n34739)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i30043_3_lut_4_lut.init = 16'h0020;
    PFUMX i29587 (.BLUT(n11_adj_1773), .ALUT(n12), .C0(cnt_main[1]), .Z(n35257));
    L6MUX21 i29593 (.D0(n35289), .D1(n35292), .SD(cnt_main[2]), .Z(n35263));
    LUT4 i2_3_lut_4_lut_adj_131 (.A(state[0]), .B(n37331), .C(n37330), 
         .D(state[3]), .Z(n11)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam i2_3_lut_4_lut_adj_131.init = 16'hfeff;
    PFUMX i29600 (.BLUT(n35268), .ALUT(n35269), .C0(cnt_main[1]), .Z(n35270));
    LUT4 state_5__I_0_339_i11_3_lut_rep_511_4_lut (.A(state[3]), .B(n37330), 
         .C(n37326), .D(state[2]), .Z(n37276)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(124[5:9])
    defparam state_5__I_0_339_i11_3_lut_rep_511_4_lut.init = 16'hfeff;
    LUT4 i20718_2_lut (.A(n2357[3]), .B(oled_dcn_N_1398), .Z(n2383[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(135[19:29])
    defparam i20718_2_lut.init = 16'h2222;
    LUT4 i33_4_lut_adj_132 (.A(num_delay[14]), .B(num_delay_15__N_1290[14]), 
         .C(state[2]), .D(n26731), .Z(n16_adj_1831)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_132.init = 16'h0aca;
    LUT4 i2_3_lut_4_lut_adj_133 (.A(state[3]), .B(n37330), .C(state[0]), 
         .D(n37331), .Z(n32039)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(124[5:9])
    defparam i2_3_lut_4_lut_adj_133.init = 16'hffef;
    LUT4 i30062_4_lut (.A(state[2]), .B(n23_adj_1835), .C(n37334), .D(n30_adj_1736), 
         .Z(sys_clk_c_enable_143)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i30062_4_lut.init = 16'h0001;
    LUT4 i2_3_lut_4_lut_adj_134 (.A(state[3]), .B(n37330), .C(state[0]), 
         .D(n37331), .Z(n20618)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(124[5:9])
    defparam i2_3_lut_4_lut_adj_134.init = 16'h0010;
    LUT4 i2_4_lut_adj_135 (.A(state[1]), .B(state[3]), .C(n34562), .D(state[0]), 
         .Z(n23_adj_1835)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(D)))) */ ;
    defparam i2_4_lut_adj_135.init = 16'h0031;
    LUT4 i1_4_lut_adj_136 (.A(warning_TEM), .B(n34967), .C(n37274), .D(cnt_main[4]), 
         .Z(n34562)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;
    defparam i1_4_lut_adj_136.init = 16'hf577;
    LUT4 i20949_3_lut_4_lut (.A(cnt_main[1]), .B(n37333), .C(cnt_main[4]), 
         .D(cnt_main[2]), .Z(cnt_main_4__N_1046[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[41:56])
    defparam i20949_3_lut_4_lut.init = 16'hf7f8;
    L6MUX21 i29596 (.D0(n11_adj_1836), .D1(n12_adj_1837), .SD(cnt_main[1]), 
            .Z(n35266));
    LUT4 i3763_2_lut_3_lut_4_lut (.A(cnt_main[1]), .B(n37333), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[41:56])
    defparam i3763_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3765_2_lut_3_lut_4_lut (.A(cnt_main[1]), .B(n37333), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n9098)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[41:56])
    defparam i3765_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 num_2991_mux_6_i1_4_lut (.A(n37457), .B(n37[0]), .C(state[3]), 
         .D(n5_adj_1818), .Z(n1[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991_mux_6_i1_4_lut.init = 16'hcac0;
    LUT4 i72_4_lut (.A(state[0]), .B(n37274), .C(state[1]), .D(cnt_main[4]), 
         .Z(n44)) /* synthesis lut_function=(!(A (C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i72_4_lut.init = 16'h1a5a;
    PFUMX i29619 (.BLUT(n35287), .ALUT(n35288), .C0(cnt_main[1]), .Z(n35289));
    PFUMX i29622 (.BLUT(n35290), .ALUT(n35291), .C0(cnt_main[1]), .Z(n35292));
    LUT4 i1_2_lut_adj_137 (.A(warning_TEM), .B(state[0]), .Z(n5_adj_1818)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i1_2_lut_adj_137.init = 16'h2222;
    FD1P3IX y_p_i0_i5 (.D(n1903[5]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(y_p[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam y_p_i0_i5.GSR = "ENABLED";
    LUT4 i29595_4_lut (.A(n7448), .B(n35295), .C(cnt_main[1]), .D(\cnt_main[0] ), 
         .Z(n35265)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i29595_4_lut.init = 16'hcac0;
    LUT4 n35284_bdd_4_lut_rep_553_else_4_lut (.A(char[0]), .B(n34917), .C(char[8]), 
         .D(num[0]), .Z(n37428)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n35284_bdd_4_lut_rep_553_else_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_4_lut_adj_138 (.A(n37436), .B(char_reg[2]), .C(n38984), 
         .D(state[2]), .Z(n6_adj_1839)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_138.init = 16'hca00;
    LUT4 i3_4_lut_adj_139 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(cnt_scan[4]), 
         .D(cnt_scan[1]), .Z(n18926)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(163[8:13])
    defparam i3_4_lut_adj_139.init = 16'hfdff;
    PFUMX i29625 (.BLUT(n35293), .ALUT(n35294), .C0(\cnt_main[0] ), .Z(n35295));
    PFUMX i31523 (.BLUT(n38957), .ALUT(n38955), .C0(\cnt_scan[3] ), .Z(n38958));
    LUT4 n35247_bdd_4_lut_rep_552_then_4_lut (.A(char[27]), .B(char[19]), 
         .C(n34917), .D(num[0]), .Z(n37432)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n35247_bdd_4_lut_rep_552_then_4_lut.init = 16'h0a0c;
    PFUMX mux_37_Mux_0_i11 (.BLUT(n7459[0]), .ALUT(n7464[0]), .C0(\cnt_main[0] ), 
          .Z(n11_adj_1836)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 char_85__bdd_4_lut_31056 (.A(char[85]), .B(n37274), .C(n37518), 
         .D(cnt_main[4]), .Z(n37081)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_85__bdd_4_lut_31056.init = 16'h88f0;
    PFUMX i31521 (.BLUT(n38953), .ALUT(n38952), .C0(cnt_scan[0]), .Z(n38954));
    LUT4 i1_4_lut_adj_140 (.A(n5), .B(n32039), .C(state[2]), .D(warning_TEM), 
         .Z(sys_clk_c_enable_298)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B))) */ ;
    defparam i1_4_lut_adj_140.init = 16'h3b33;
    LUT4 char_29__bdd_4_lut_31055 (.A(char[29]), .B(n37274), .C(n37545), 
         .D(cnt_main[4]), .Z(n37096)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_29__bdd_4_lut_31055.init = 16'h88f0;
    LUT4 char_37__bdd_4_lut_31054 (.A(char[37]), .B(n37274), .C(n37533), 
         .D(cnt_main[4]), .Z(n37097)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_37__bdd_4_lut_31054.init = 16'h88f0;
    LUT4 i21125_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(n37379), .C(char[16]), 
         .D(\cnt_main[0] ), .Z(n30_adj_1723)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21125_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_141 (.A(cnt_main[3]), .B(n37379), .C(char[38]), 
         .D(\cnt_main[0] ), .Z(n8)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_141.init = 16'hf0e0;
    LUT4 i13948_2_lut_rep_465_3_lut_4_lut (.A(cnt_main[3]), .B(n37379), 
         .C(cnt_main[4]), .D(\cnt_main[0] ), .Z(n37230)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i13948_2_lut_rep_465_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i21110_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(n37379), .C(char[8]), 
         .D(\cnt_main[0] ), .Z(n30_adj_1840)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21110_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i21099_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(n37379), .C(char[4]), 
         .D(\cnt_main[0] ), .Z(n30_adj_1791)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21099_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i21113_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(n37379), .C(char[10]), 
         .D(\cnt_main[0] ), .Z(n30)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21113_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i21120_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(n37379), .C(char[14]), 
         .D(\cnt_main[0] ), .Z(n30_adj_1721)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21120_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i21128_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(n37379), .C(char[18]), 
         .D(\cnt_main[0] ), .Z(n30_adj_1725)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21128_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i21133_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(n37379), .C(char[22]), 
         .D(\cnt_main[0] ), .Z(n30_adj_1727)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21133_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_142 (.A(cnt_main[3]), .B(n37379), .C(char[34]), 
         .D(\cnt_main[0] ), .Z(n30_adj_1733)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i1_2_lut_3_lut_4_lut_adj_142.init = 16'hf0e0;
    LUT4 i21144_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(n37379), .C(char[30]), 
         .D(\cnt_main[0] ), .Z(n30_adj_1731)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i21144_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i3806_3_lut_4_lut (.A(cnt_init[2]), .B(n37392), .C(cnt_init[3]), 
         .D(cnt_init[4]), .Z(n2321[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[49:64])
    defparam i3806_3_lut_4_lut.init = 16'h7f80;
    LUT4 n35247_bdd_4_lut_rep_552_else_4_lut (.A(char[3]), .B(n34917), .C(char[11]), 
         .D(num[0]), .Z(n37431)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n35247_bdd_4_lut_rep_552_else_4_lut.init = 16'h3022;
    LUT4 i29592_4_lut_4_lut (.A(n37400), .B(cnt_main[2]), .C(n6_adj_1841), 
         .D(char[1]), .Z(n35262)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i29592_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i29583_4_lut_4_lut (.A(n37400), .B(cnt_main[2]), .C(n6_adj_1841), 
         .D(char[3]), .Z(n35253)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i29583_4_lut_4_lut.init = 16'hd1c0;
    LUT4 mux_37_Mux_4_i7_4_lut_4_lut (.A(n37400), .B(cnt_main[2]), .C(n6_adj_1841), 
         .D(char[4]), .Z(n7_adj_1842)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam mux_37_Mux_4_i7_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_rep_464_4_lut (.A(char[1]), .B(n34917), .C(n37399), 
         .D(n2724), .Z(n37229)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam i1_2_lut_rep_464_4_lut.init = 16'hff20;
    PFUMX mux_2382_i3 (.BLUT(\hour_ones[2] ), .ALUT(\hour_warning_ones[2] ), 
          .C0(sw1_c), .Z(n7449[2]));
    LUT4 i1_3_lut_adj_143 (.A(cnt_init[0]), .B(num_delay[14]), .C(n37224), 
         .Z(n16_adj_1843)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_143.init = 16'h4040;
    PFUMX mux_2382_i4 (.BLUT(\hour_ones[3] ), .ALUT(\hour_warning_ones[3] ), 
          .C0(sw1_c), .Z(n7449[3]));
    PFUMX i30207 (.BLUT(n36156), .ALUT(n36155), .C0(\cnt[4] ), .Z(n36157));
    LUT4 i1_4_lut_adj_144 (.A(cnt_init[0]), .B(state_back[1]), .C(n37224), 
         .D(n37278), .Z(state_back_5__N_1368[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_144.init = 16'hcc40;
    LUT4 i1_4_lut_4_lut_adj_145 (.A(cnt_scan[2]), .B(n37405), .C(\cnt_scan[3] ), 
         .D(cnt_scan[4]), .Z(n3767)) /* synthesis lut_function=(A (C+(D))+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_145.init = 16'hffa4;
    PFUMX mux_2384_i3 (.BLUT(\min_ones[2] ), .ALUT(\min_warning_ones[2] ), 
          .C0(sw1_c), .Z(n7459[2]));
    LUT4 i1_4_lut_adj_146 (.A(n32002), .B(n34687), .C(state[0]), .D(n37312), 
         .Z(sys_clk_c_enable_77)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_146.init = 16'hc088;
    LUT4 i2_3_lut_adj_147 (.A(oled_csn_N_1382), .B(state[4]), .C(cnt_write[0]), 
         .Z(n32002)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_adj_147.init = 16'h4040;
    LUT4 i21548_3_lut (.A(oled_dat_N_1420), .B(state[4]), .C(n37312), 
         .Z(n6823[0])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i21548_3_lut.init = 16'h0808;
    PFUMX mux_2384_i4 (.BLUT(\min_ones[3] ), .ALUT(\min_warning_ones[3] ), 
          .C0(sw1_c), .Z(n7459[3]));
    PFUMX mux_3289_i1 (.BLUT(hundres_0__N_355), .ALUT(hundres_0__N_355_adj_2), 
          .C0(sw1_c), .Z(n8144));
    LUT4 i1_4_lut_adj_148 (.A(cnt_init[0]), .B(n19071), .C(state_back[2]), 
         .D(n21), .Z(n16_adj_1753)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_148.init = 16'h5444;
    PFUMX mux_3288_i1 (.BLUT(hundres_0__N_355_adj_3), .ALUT(hundres_0__N_355_adj_4), 
          .C0(sw1_c), .Z(n8157));
    FD1P3IX cnt_write_i0_i1 (.D(n4460[1]), .SP(sys_clk_c_enable_313), .CD(n20572), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i2 (.D(n4460[2]), .SP(sys_clk_c_enable_313), .CD(n20572), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    PFUMX mux_2382_i2 (.BLUT(\hour_ones[1] ), .ALUT(\hour_warning_ones[1] ), 
          .C0(sw1_c), .Z(n7449[1]));
    PFUMX mux_2384_i2 (.BLUT(\min_ones[1] ), .ALUT(\min_warning_ones[1] ), 
          .C0(sw1_c), .Z(n7459[1]));
    LUT4 i1_3_lut_rep_459_4_lut (.A(n37409), .B(n37408), .C(n21), .D(oled_dcn_N_1398), 
         .Z(n37224)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i1_3_lut_rep_459_4_lut.init = 16'hf8f0;
    PFUMX mux_37_Mux_0_i12 (.BLUT(n7470[0]), .ALUT(\Tem_high[0] ), .C0(\cnt_main[0] ), 
          .Z(n12_adj_1837)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    PFUMX i47 (.BLUT(n6_adj_1768), .ALUT(n12_adj_1847), .C0(state[3]), 
          .Z(n24_adj_1744));
    LUT4 i1_3_lut_4_lut_adj_149 (.A(n37409), .B(n37408), .C(oled_dcn_N_1398), 
         .D(state_back[2]), .Z(n19071)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i1_3_lut_4_lut_adj_149.init = 16'h8808;
    LUT4 i45_4_lut_3_lut (.A(state[0]), .B(state_5__N_1344[1]), .C(state[2]), 
         .Z(n28_adj_1848)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i45_4_lut_3_lut.init = 16'h4a4a;
    PFUMX i47_adj_150 (.BLUT(n6_adj_1849), .ALUT(n12_adj_1850), .C0(state[3]), 
          .Z(n24_adj_1784));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(state[0]), .B(cnt_init[0]), .C(n37322), 
         .D(cnt_init[2]), .Z(n34781)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_adj_151 (.A(state[2]), .B(state[1]), .C(state_back[3]), 
         .Z(n8_adj_1851)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_151.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_152 (.A(state[2]), .B(state[1]), .C(state_back[2]), 
         .Z(n9_adj_1852)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_152.init = 16'h1010;
    PFUMX i47_adj_153 (.BLUT(n6_adj_1767), .ALUT(n12_adj_1853), .C0(state[3]), 
          .Z(n24_adj_1813));
    PFUMX i47_adj_154 (.BLUT(n6_adj_1766), .ALUT(n12_adj_1854), .C0(state[3]), 
          .Z(n24_adj_1771));
    PFUMX i47_adj_155 (.BLUT(n6_adj_1839), .ALUT(n12_adj_1855), .C0(state[3]), 
          .Z(n24_adj_1775));
    LUT4 cnt_init_4__I_0_359_i7_2_lut_rep_557 (.A(cnt_init[3]), .B(cnt_init[4]), 
         .Z(n37322)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam cnt_init_4__I_0_359_i7_2_lut_rep_557.init = 16'heeee;
    PFUMX i47_adj_156 (.BLUT(n6_adj_1761), .ALUT(n12_adj_1856), .C0(state[3]), 
          .Z(n24_adj_1772));
    LUT4 i2_3_lut_rep_513_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n37278)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i2_3_lut_rep_513_4_lut.init = 16'hfeee;
    LUT4 cnt_init_4__I_0_360_i8_2_lut_rep_551_3_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[2]), .Z(n37316)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam cnt_init_4__I_0_360_i8_2_lut_rep_551_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_157 (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(n37408), .D(cnt_init[0]), .Z(n4_adj_1822)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i1_2_lut_3_lut_4_lut_adj_157.init = 16'h1000;
    LUT4 i29953_2_lut_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n4793)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i29953_2_lut_3_lut_4_lut.init = 16'h0010;
    FD1P3IX y_p_i0_i4 (.D(n1903[4]), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(y_p[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam y_p_i0_i4.GSR = "ENABLED";
    LUT4 i29989_2_lut_rep_512_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[0]), .D(cnt_init[2]), .Z(n37277)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(126[8:12])
    defparam i29989_2_lut_rep_512_3_lut_4_lut.init = 16'h0001;
    PFUMX i47_adj_158 (.BLUT(n6_adj_1756), .ALUT(n12_adj_1857), .C0(state[3]), 
          .Z(n24_adj_1770));
    FD1P3IX y_p_i0_i1 (.D(n37083), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(y_p[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam y_p_i0_i1.GSR = "ENABLED";
    LUT4 char_93__bdd_4_lut_31031 (.A(char[93]), .B(n37274), .C(n37548), 
         .D(cnt_main[4]), .Z(n37082)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_93__bdd_4_lut_31031.init = 16'h88f0;
    LUT4 i20683_2_lut_rep_561 (.A(state[1]), .B(state[0]), .Z(n37326)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20683_2_lut_rep_561.init = 16'heeee;
    LUT4 i29960_3_lut_4_lut (.A(state[1]), .B(state[0]), .C(n26081), .D(n50), 
         .Z(n35441)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i29960_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_508_3_lut_4_lut (.A(state[1]), .B(state[0]), .C(n38_adj_1823), 
         .D(n37334), .Z(n37273)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_508_3_lut_4_lut.init = 16'h0010;
    LUT4 i15213_2_lut_3_lut (.A(state[1]), .B(state[0]), .C(sys_clk_c_enable_328), 
         .Z(n20704)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i15213_2_lut_3_lut.init = 16'he0e0;
    FD1P3IX cnt_write_i0_i3 (.D(n4460[3]), .SP(sys_clk_c_enable_313), .CD(n20572), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    FD1P3IX state_i0_i5 (.D(n37635), .SP(sys_clk_c_enable_328), .CD(n20704), 
            .CK(sys_clk_c), .Q(state[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i5.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i4 (.D(n4460[4]), .SP(sys_clk_c_enable_313), .CD(n20572), 
            .CK(sys_clk_c), .Q(oled_csn_N_1382)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    LUT4 i20724_2_lut_rep_563 (.A(state[2]), .B(state[0]), .Z(n37328)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20724_2_lut_rep_563.init = 16'heeee;
    LUT4 char_30__bdd_4_lut_31500 (.A(char[14]), .B(num[2]), .C(char[38]), 
         .D(num[0]), .Z(n36774)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (((D)+!C)+!B))) */ ;
    defparam char_30__bdd_4_lut_31500.init = 16'h22c0;
    LUT4 i29215_2_lut_rep_564 (.A(cnt_main[3]), .B(cnt_main[4]), .Z(n37329)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29215_2_lut_rep_564.init = 16'heeee;
    PFUMX i47_adj_159 (.BLUT(n6_adj_1833), .ALUT(n12_adj_1858), .C0(state[3]), 
          .Z(n24_adj_1745));
    FD1P3IX state_i0_i4 (.D(n33144), .SP(sys_clk_c_enable_328), .CD(n20704), 
            .CK(sys_clk_c), .Q(state[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i1 (.D(n4484[1]), .SP(sys_clk_c_enable_326), .CD(n20553), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_160 (.A(cnt_main[3]), .B(cnt_main[4]), 
         .C(n37368), .D(cnt_main[2]), .Z(n4_adj_1820)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_160.init = 16'h1000;
    LUT4 char_30__bdd_4_lut_30518 (.A(char[30]), .B(char[22]), .C(num[2]), 
         .D(num[0]), .Z(n36773)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam char_30__bdd_4_lut_30518.init = 16'h0a0c;
    FD1P3IX cnt_delay_i0_i2 (.D(n4484[2]), .SP(sys_clk_c_enable_326), .CD(n20553), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_161 (.A(cnt_main[3]), .B(cnt_main[4]), .C(cnt_main[2]), 
         .D(n37400), .Z(n6_adj_1819)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_161.init = 16'h0110;
    LUT4 state_5__I_0_340_i9_2_lut_rep_565 (.A(state[4]), .B(state[5]), 
         .Z(n37330)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(143[5:9])
    defparam state_5__I_0_340_i9_2_lut_rep_565.init = 16'heeee;
    FD1P3IX cnt_delay_i0_i3 (.D(n4484[3]), .SP(sys_clk_c_enable_326), .CD(n20553), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_514_4_lut (.A(state[4]), .B(state[5]), .C(state[0]), 
         .D(state[2]), .Z(n37279)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(143[5:9])
    defparam i1_3_lut_rep_514_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_rep_496_3_lut_4_lut (.A(state[4]), .B(state[5]), .C(state[2]), 
         .D(state[3]), .Z(n37261)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(143[5:9])
    defparam i1_2_lut_rep_496_3_lut_4_lut.init = 16'hfffe;
    LUT4 state_5__I_0_339_i10_2_lut_rep_517_3_lut (.A(state[4]), .B(state[5]), 
         .C(state[3]), .Z(n37282)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(143[5:9])
    defparam state_5__I_0_339_i10_2_lut_rep_517_3_lut.init = 16'hfefe;
    LUT4 state_5__I_0_i7_2_lut_rep_566 (.A(state[1]), .B(state[2]), .Z(n37331)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam state_5__I_0_i7_2_lut_rep_566.init = 16'heeee;
    LUT4 i1_2_lut_rep_487_3_lut_4_lut (.A(state[1]), .B(state[2]), .C(state[3]), 
         .D(state[0]), .Z(n37252)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam i1_2_lut_rep_487_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_162 (.A(state[1]), .B(state[2]), 
         .C(n37282), .D(state[0]), .Z(n34675)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_162.init = 16'h0504;
    LUT4 i1_2_lut_rep_463_3_lut_4_lut_4_lut (.A(state[1]), .B(state[2]), 
         .C(n37282), .D(state[0]), .Z(n37228)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam i1_2_lut_rep_463_3_lut_4_lut_4_lut.init = 16'h0302;
    PFUMX i47_adj_163 (.BLUT(n6_adj_1754), .ALUT(n34640), .C0(state[3]), 
          .Z(n24_adj_1859));
    FD1P3IX cnt_delay_i0_i4 (.D(n4484[4]), .SP(sys_clk_c_enable_326), .CD(n20553), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n4484[5]), .SP(sys_clk_c_enable_326), .CD(n20553), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n4484[6]), .SP(sys_clk_c_enable_326), .CD(n20553), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i7 (.D(n4484[7]), .SP(sys_clk_c_enable_326), .CD(n20553), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i8 (.D(n4484[8]), .SP(sys_clk_c_enable_326), .CD(n20553), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3IX state_i0_i3 (.D(n33064), .SP(sys_clk_c_enable_328), .CD(n20700), 
            .CK(sys_clk_c), .Q(state[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i3.GSR = "ENABLED";
    FD1P3IX state_i0_i2 (.D(n33062), .SP(sys_clk_c_enable_328), .CD(n20700), 
            .CK(sys_clk_c), .Q(state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam state_i0_i2.GSR = "ENABLED";
    LUT4 i3857_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n4460[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3857_2_lut.init = 16'h6666;
    PFUMX i44 (.BLUT(n28_adj_1848), .ALUT(n23), .C0(n35224), .Z(n26));
    LUT4 equal_2346_i8_2_lut_rep_567 (.A(state[1]), .B(state[2]), .C(state[0]), 
         .Z(n37332)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam equal_2346_i8_2_lut_rep_567.init = 16'hfefe;
    LUT4 i3_4_lut_adj_164 (.A(state[2]), .B(n37334), .C(n17), .D(n11_adj_1860), 
         .Z(sys_clk_c_enable_377)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_adj_164.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_165 (.A(state[1]), .B(state[2]), 
         .C(state[0]), .D(n37282), .Z(n20640)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_165.init = 16'h0010;
    LUT4 i3743_2_lut_rep_568 (.A(\cnt_main[0] ), .B(warning_TEM), .Z(n37333)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[41:56])
    defparam i3743_2_lut_rep_568.init = 16'h8888;
    LUT4 i20950_3_lut_4_lut (.A(\cnt_main[0] ), .B(warning_TEM), .C(cnt_main[4]), 
         .D(cnt_main[1]), .Z(cnt_main_4__N_1046[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(92[41:56])
    defparam i20950_3_lut_4_lut.init = 16'hf7f8;
    LUT4 i20635_2_lut_rep_569 (.A(state[5]), .B(state[4]), .Z(n37334)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20635_2_lut_rep_569.init = 16'heeee;
    LUT4 i21284_2_lut_rep_515_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[0]), 
         .D(state[1]), .Z(n37280)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21284_2_lut_rep_515_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_547_4_lut (.A(state[5]), .B(state[4]), .C(n26081), 
         .D(n37394), .Z(n37312)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_rep_547_4_lut.init = 16'h0100;
    LUT4 i2_4_lut_adj_166 (.A(state[0]), .B(state[3]), .C(n37230), .D(warning_TEM), 
         .Z(n11_adj_1860)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_166.init = 16'hfeee;
    LUT4 i29962_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(n53_adj_1834), 
         .D(n35441), .Z(n42)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i29962_3_lut_4_lut.init = 16'hef00;
    LUT4 n2891_bdd_3_lut_30563 (.A(n2891), .B(cnt_scan[0]), .C(cnt_scan[1]), 
         .Z(n36017)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2891_bdd_3_lut_30563.init = 16'h8080;
    LUT4 i1_4_lut_4_lut_adj_167 (.A(state[2]), .B(n3767), .C(n64_adj_1861), 
         .D(char_reg[3]), .Z(n12_adj_1856)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_167.init = 16'h5450;
    PFUMX i29567 (.BLUT(n35229), .ALUT(n35230), .C0(num[1]), .Z(n35237));
    LUT4 i1_4_lut_4_lut_adj_168 (.A(state[2]), .B(n3767), .C(n64_adj_1862), 
         .D(char_reg[7]), .Z(n12_adj_1847)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_168.init = 16'h5450;
    LUT4 i1_3_lut_4_lut_4_lut_adj_169 (.A(state[2]), .B(state[1]), .C(cnt_main[4]), 
         .D(n37274), .Z(n5_adj_1863)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_3_lut_4_lut_4_lut_adj_169.init = 16'h0440;
    LUT4 i1_4_lut_4_lut_adj_170 (.A(state[2]), .B(n3767), .C(n64), .D(char_reg[6]), 
         .Z(n12_adj_1858)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_170.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_171 (.A(state[2]), .B(n3767), .C(n36105), 
         .D(char_reg[1]), .Z(n12_adj_1850)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_171.init = 16'h5450;
    LUT4 i1_3_lut_3_lut (.A(state[2]), .B(n3767), .C(state_back[3]), .Z(n12_adj_1864)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_3_lut_3_lut.init = 16'h5151;
    LUT4 i1_4_lut_4_lut_adj_172 (.A(state[2]), .B(n3767), .C(n64_adj_1830), 
         .D(char_reg[5]), .Z(n12_adj_1857)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_172.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_173 (.A(state[2]), .B(n3767), .C(n64_adj_1865), 
         .D(char_reg[2]), .Z(n12_adj_1855)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_173.init = 16'h5450;
    PFUMX i73 (.BLUT(n34615), .ALUT(n27_adj_1751), .C0(state[3]), .Z(n47));
    LUT4 i1_4_lut_4_lut_adj_174 (.A(state[2]), .B(n3767), .C(n36076), 
         .D(char_reg[0]), .Z(n12_adj_1853)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_174.init = 16'h5450;
    PFUMX i47_adj_175 (.BLUT(n6_adj_1794), .ALUT(n34639), .C0(state[3]), 
          .Z(n24_adj_1815));
    LUT4 i1_2_lut_3_lut_3_lut (.A(state[2]), .B(state_back[0]), .C(n3767), 
         .Z(n34639)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_3_lut_adj_176 (.A(state[2]), .B(state_back[4]), 
         .C(n3767), .Z(n34638)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_3_lut_3_lut_adj_176.init = 16'h4040;
    PFUMX i47_adj_177 (.BLUT(n6_adj_1750), .ALUT(n12_adj_1864), .C0(state[3]), 
          .Z(n24_adj_1866));
    LUT4 i1_4_lut_4_lut_adj_178 (.A(state[2]), .B(n3767), .C(n36023), 
         .D(char_reg[4]), .Z(n12_adj_1854)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_4_lut_adj_178.init = 16'h5450;
    LUT4 i1_4_lut_adj_179 (.A(n4793), .B(num_delay[14]), .C(n16_adj_1843), 
         .D(n37278), .Z(num_delay_15__N_1290[14])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_179.init = 16'hfefa;
    PFUMX i47_adj_180 (.BLUT(n6_adj_1799), .ALUT(n34638), .C0(state[3]), 
          .Z(n24_adj_1867));
    LUT4 i1_2_lut_3_lut_3_lut_adj_181 (.A(state[2]), .B(state_back[5]), 
         .C(n3767), .Z(n34641)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_3_lut_3_lut_adj_181.init = 16'h4040;
    PFUMX i47_adj_182 (.BLUT(n6_adj_1796), .ALUT(n34641), .C0(state[3]), 
          .Z(n24_adj_1868));
    LUT4 i1_2_lut_3_lut_3_lut_adj_183 (.A(state[2]), .B(state_back[2]), 
         .C(n3767), .Z(n34640)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_3_lut_3_lut_adj_183.init = 16'h4040;
    LUT4 char_45__bdd_4_lut_31008 (.A(char[45]), .B(n37274), .C(n37530), 
         .D(cnt_main[4]), .Z(n37098)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_45__bdd_4_lut_31008.init = 16'h88f0;
    PFUMX i30856 (.BLUT(n37606), .ALUT(n37604), .C0(\cnt_scan[3] ), .Z(n37607));
    LUT4 i30_4_lut_3_lut (.A(state[3]), .B(state[0]), .C(state[1]), .Z(n17)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i30_4_lut_3_lut.init = 16'h1616;
    LUT4 i3859_2_lut_rep_571 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n37336)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3859_2_lut_rep_571.init = 16'h8888;
    LUT4 i3864_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n4460[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3864_2_lut_3_lut.init = 16'h7878;
    LUT4 i3871_2_lut_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n4460[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(169[25:41])
    defparam i3871_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i5325 (.BLUT(n10683), .ALUT(n126), .C0(n2720), .Z(n10684));
    PFUMX i33 (.BLUT(n2), .ALUT(n34613), .C0(state[3]), .Z(n15_adj_1832));
    LUT4 i15168_2_lut (.A(sys_clk_c_enable_377), .B(state[3]), .Z(n20657)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam i15168_2_lut.init = 16'h2222;
    LUT4 char_53__bdd_4_lut_31007 (.A(char[53]), .B(n37274), .C(n37521), 
         .D(cnt_main[4]), .Z(n37099)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_53__bdd_4_lut_31007.init = 16'h88f0;
    LUT4 i2_3_lut_4_lut_4_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(n37329), 
         .D(cnt_main[2]), .Z(n31212)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 i29602_4_lut_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n35272)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !((C)+!B))) */ ;
    defparam i29602_4_lut_3_lut.init = 16'h7979;
    PFUMX i92 (.BLUT(n34632), .ALUT(n34644), .C0(cnt_scan[1]), .Z(n57_adj_1869));
    LUT4 i1_4_lut_adj_184 (.A(cnt_scan[4]), .B(n57_adj_1869), .C(n61), 
         .D(\cnt_scan[3] ), .Z(n64_adj_1862)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_184.init = 16'h5044;
    LUT4 i1_4_lut_adj_185 (.A(cnt_scan[2]), .B(n10684), .C(n34696), .D(cnt_scan[1]), 
         .Z(n61)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_185.init = 16'h5044;
    LUT4 i1_2_lut_4_lut_adj_186 (.A(n37584), .B(char_reg[1]), .C(n38984), 
         .D(state[2]), .Z(n6_adj_1849)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_186.init = 16'hca00;
    LUT4 i2_3_lut_adj_187 (.A(n37318), .B(n17892), .C(n2720), .Z(n34696)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_187.init = 16'h8080;
    LUT4 n36007_bdd_3_lut_then_4_lut (.A(\cnt[4] ), .B(\cnt[0] ), .C(\cnt[2] ), 
         .D(\cnt[3] ), .Z(n37435)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+!(C+(D))))) */ ;
    defparam n36007_bdd_3_lut_then_4_lut.init = 16'h11b0;
    LUT4 i12429_4_lut (.A(n36125), .B(n34739), .C(cnt_scan[0]), .D(n2721), 
         .Z(n17892)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i12429_4_lut.init = 16'hcac0;
    PFUMX i29568 (.BLUT(n35231), .ALUT(n35232), .C0(num[1]), .Z(n35238));
    LUT4 i20947_4_lut_4_lut (.A(sw1_c), .B(n37134), .C(n8442), .D(\hundres_0__N_347[0] ), 
         .Z(n7464[2])) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20947_4_lut_4_lut.init = 16'h4510;
    LUT4 n36007_bdd_3_lut_else_4_lut (.A(\cnt[4] ), .B(\cnt[0] ), .C(\cnt[2] ), 
         .D(\cnt[3] ), .Z(n37434)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B+(C)))) */ ;
    defparam n36007_bdd_3_lut_else_4_lut.init = 16'h0309;
    LUT4 i20658_4_lut_4_lut_4_lut (.A(sw1_c), .B(\hundres_0__N_350[1]_adj_5 ), 
         .C(\hundres_0__N_350[2] ), .D(n37129), .Z(n7464[0])) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20658_4_lut_4_lut_4_lut.init = 16'h1450;
    PFUMX i29649 (.BLUT(n35317), .ALUT(n35318), .C0(num[1]), .Z(n35319));
    PFUMX i30730 (.BLUT(n37410), .ALUT(n37411), .C0(cnt_scan[1]), .Z(n37412));
    LUT4 i29162_2_lut_4_lut (.A(oled_dcn_N_1398), .B(n21), .C(n37320), 
         .D(state_back[0]), .Z(n34815)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i29162_2_lut_4_lut.init = 16'hec00;
    LUT4 i20659_2_lut_2_lut (.A(sw1_c), .B(\sec[0] ), .Z(n7470[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20659_2_lut_2_lut.init = 16'h4444;
    LUT4 i29165_2_lut_4_lut (.A(oled_dcn_N_1398), .B(n21), .C(n37320), 
         .D(state_back[4]), .Z(n34821)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i29165_2_lut_4_lut.init = 16'hec00;
    LUT4 i30842_else_4_lut (.A(n37322), .B(cnt_init[1]), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n38998)) /* synthesis lut_function=(!(A+(B (C)+!B !(C (D)+!C !(D))))) */ ;
    defparam i30842_else_4_lut.init = 16'h1405;
    LUT4 i1_4_lut_adj_188 (.A(n37228), .B(cnt_main[4]), .C(state[1]), 
         .D(state[0]), .Z(n20637)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_4_lut_adj_188.init = 16'h0a8a;
    LUT4 i1_2_lut_adj_189 (.A(state[3]), .B(state[2]), .Z(n24)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_189.init = 16'h8888;
    LUT4 i1_3_lut_adj_190 (.A(char[28]), .B(n31212), .C(n28), .Z(n1939[28])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_190.init = 16'hecec;
    LUT4 i34_4_lut_adj_191 (.A(n37400), .B(n37274), .C(cnt_main[4]), .D(n4_adj_1871), 
         .Z(n28)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[12:20])
    defparam i34_4_lut_adj_191.init = 16'hc0c5;
    PFUMX i29569 (.BLUT(n35233), .ALUT(n35234), .C0(num[1]), .Z(n35239));
    LUT4 i1_2_lut_adj_192 (.A(cnt_main[3]), .B(cnt_main[2]), .Z(n4_adj_1871)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_192.init = 16'heeee;
    LUT4 i1_3_lut_adj_193 (.A(char[26]), .B(n31212), .C(n28), .Z(n1939[26])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_193.init = 16'hecec;
    PFUMX i30188 (.BLUT(n36102), .ALUT(n36101), .C0(cnt_scan[1]), .Z(n36103));
    LUT4 i29195_2_lut_4_lut (.A(oled_dcn_N_1398), .B(n21), .C(n37320), 
         .D(state_back[5]), .Z(n34857)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i29195_2_lut_4_lut.init = 16'hec00;
    LUT4 i4_4_lut_adj_194 (.A(n7), .B(state[1]), .C(n34973), .D(state[5]), 
         .Z(sys_clk_c_enable_123)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut_adj_194.init = 16'h0002;
    LUT4 n18919_bdd_2_lut_4_lut (.A(n37269), .B(n37277), .C(oled_dcn_N_1398), 
         .D(state[1]), .Z(n36888)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam n18919_bdd_2_lut_4_lut.init = 16'h00ec;
    LUT4 i1_2_lut_rep_591 (.A(\cnt_main[0] ), .B(cnt_main[1]), .Z(n37356)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_rep_591.init = 16'h2222;
    LUT4 i22_3_lut (.A(n10_adj_1872), .B(state[0]), .C(n37312), .Z(n34070)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i22_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_195 (.A(n18949), .B(cnt_write[0]), .C(oled_csn_N_1382), 
         .D(state[4]), .Z(n10_adj_1872)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i2_4_lut_adj_195.init = 16'h1200;
    LUT4 i2_3_lut_adj_196 (.A(cnt_write[3]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n18949)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_196.init = 16'hfefe;
    LUT4 i88_3_lut (.A(cnt_write[0]), .B(oled_csn_N_1382), .C(n18949), 
         .Z(n4458)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(46[42:51])
    defparam i88_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut_3_lut_adj_197 (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n25056)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i1_2_lut_3_lut_adj_197.init = 16'h2020;
    CCU2D sub_2359_add_2_17 (.A0(cnt_delay[15]), .B0(num_delay[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31787), .S1(n4482));
    defparam sub_2359_add_2_17.INIT0 = 16'h5999;
    defparam sub_2359_add_2_17.INIT1 = 16'h0000;
    defparam sub_2359_add_2_17.INJECT1_0 = "NO";
    defparam sub_2359_add_2_17.INJECT1_1 = "NO";
    PFUMX i29570 (.BLUT(n35235), .ALUT(n35236), .C0(num[1]), .Z(n35240));
    CCU2D sub_2359_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31786), .COUT(n31787));
    defparam sub_2359_add_2_15.INIT0 = 16'h5999;
    defparam sub_2359_add_2_15.INIT1 = 16'h5999;
    defparam sub_2359_add_2_15.INJECT1_0 = "NO";
    defparam sub_2359_add_2_15.INJECT1_1 = "NO";
    PFUMX i30854 (.BLUT(n37602), .ALUT(n37601), .C0(cnt_scan[1]), .Z(n37603));
    LUT4 i5705_2_lut_rep_393_4_lut (.A(n37252), .B(state[4]), .C(state[5]), 
         .D(n4482), .Z(n37158)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(192[5:10])
    defparam i5705_2_lut_rep_393_4_lut.init = 16'hffef;
    FD1P3IX cnt_main_i0_i0 (.D(cnt_main_4__N_1046[0]), .SP(sys_clk_c_enable_336), 
            .CD(n20640), .CK(sys_clk_c), .Q(\cnt_main[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    PFUMX i12 (.BLUT(n3_adj_1801), .ALUT(n34643), .C0(cnt_scan[1]), .Z(n57));
    LUT4 i1_4_lut_adj_198 (.A(n24_adj_1868), .B(state_back[5]), .C(n37280), 
         .D(n27), .Z(state_back_5__N_1033[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_198.init = 16'hce0a;
    LUT4 char_61__bdd_4_lut_30966 (.A(char[61]), .B(n37274), .C(n37569), 
         .D(cnt_main[4]), .Z(n37100)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_61__bdd_4_lut_30966.init = 16'h88f0;
    LUT4 n36020_bdd_3_lut (.A(n37102), .B(n36017), .C(cnt_scan[2]), .Z(n36021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36020_bdd_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_199 (.A(n37279), .B(n37328), .C(state[1]), .D(state[3]), 
         .Z(n27)) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;
    defparam i2_4_lut_adj_199.init = 16'hfefb;
    LUT4 i20943_3_lut_4_lut_4_lut_4_lut (.A(sw1_c), .B(\hundres_0__N_350[1]_adj_5 ), 
         .C(\hundres_0__N_350[2] ), .D(n37129), .Z(n7472)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20943_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    PFUMX i30186 (.BLUT(n36097), .ALUT(n36096), .C0(\cnt[3] ), .Z(n36098));
    PFUMX i30844 (.BLUT(n37582), .ALUT(n37583), .C0(\cnt[1] ), .Z(n37584));
    LUT4 i1_4_lut_adj_200 (.A(n19_adj_1728), .B(\cnt[4] ), .C(n20), .D(n4_adj_6), 
         .Z(oled_dcn_N_1398)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_200.init = 16'hfefa;
    LUT4 n18707_bdd_4_lut_30726 (.A(n37274), .B(y_p[1]), .C(n37554), .D(cnt_main[4]), 
         .Z(n37083)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18707_bdd_4_lut_30726.init = 16'h88f0;
    LUT4 i3906_3_lut_4_lut (.A(n37130), .B(\hundres_0__N_350[3] ), .C(n8144), 
         .D(\hundres_0__N_347[1]_adj_7 ), .Z(n8460)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(111[119:149])
    defparam i3906_3_lut_4_lut.init = 16'h1fe0;
    PFUMX i30840 (.BLUT(n37576), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37578));
    CCU2D sub_2359_add_2_13 (.A0(cnt_delay[11]), .B0(num_delay[11]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31785), .COUT(n31786));
    defparam sub_2359_add_2_13.INIT0 = 16'h5999;
    defparam sub_2359_add_2_13.INIT1 = 16'h5999;
    defparam sub_2359_add_2_13.INJECT1_0 = "NO";
    defparam sub_2359_add_2_13.INJECT1_1 = "NO";
    PFUMX i21 (.BLUT(n5_adj_1863), .ALUT(n8_adj_1851), .C0(state[5]), 
          .Z(n10_adj_1875));
    PFUMX i30838 (.BLUT(n37573), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37575));
    CCU2D sub_2359_add_2_11 (.A0(cnt_delay[9]), .B0(num_delay[9]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(num_delay[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31784), .COUT(n31785));
    defparam sub_2359_add_2_11.INIT0 = 16'h5999;
    defparam sub_2359_add_2_11.INIT1 = 16'h5999;
    defparam sub_2359_add_2_11.INJECT1_0 = "NO";
    defparam sub_2359_add_2_11.INJECT1_1 = "NO";
    PFUMX i30836 (.BLUT(n37570), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37572));
    LUT4 i20944_4_lut_4_lut (.A(sw1_c), .B(\sec[1] ), .C(n37124), .D(n37140), 
         .Z(n7470[2])) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20944_4_lut_4_lut.init = 16'h4510;
    CCU2D sub_2359_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31783), .COUT(n31784));
    defparam sub_2359_add_2_9.INIT0 = 16'h5999;
    defparam sub_2359_add_2_9.INIT1 = 16'h5999;
    defparam sub_2359_add_2_9.INJECT1_0 = "NO";
    defparam sub_2359_add_2_9.INJECT1_1 = "NO";
    LUT4 i5166_2_lut_rep_603 (.A(\cnt_main[0] ), .B(cnt_main[1]), .Z(n37368)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(94[7] 122[14])
    defparam i5166_2_lut_rep_603.init = 16'h6666;
    PFUMX i30834 (.BLUT(n37567), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37569));
    LUT4 i1_2_lut_rep_604 (.A(flash_bit), .B(time_set), .Z(n37369)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_604.init = 16'hbbbb;
    PFUMX i30832 (.BLUT(n37564), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37566));
    CCU2D sub_2359_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31782), .COUT(n31783));
    defparam sub_2359_add_2_7.INIT0 = 16'h5999;
    defparam sub_2359_add_2_7.INIT1 = 16'h5999;
    defparam sub_2359_add_2_7.INJECT1_0 = "NO";
    defparam sub_2359_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_2359_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31781), .COUT(n31782));
    defparam sub_2359_add_2_5.INIT0 = 16'h5999;
    defparam sub_2359_add_2_5.INIT1 = 16'h5999;
    defparam sub_2359_add_2_5.INJECT1_0 = "NO";
    defparam sub_2359_add_2_5.INJECT1_1 = "NO";
    LUT4 i20657_2_lut_rep_532_3_lut (.A(flash_bit), .B(time_set), .C(sw1_c), 
         .Z(n37297)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;
    defparam i20657_2_lut_rep_532_3_lut.init = 16'h0b0b;
    PFUMX i30830 (.BLUT(n37561), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37563));
    CCU2D sub_2359_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31780), .COUT(n31781));
    defparam sub_2359_add_2_3.INIT0 = 16'h5999;
    defparam sub_2359_add_2_3.INIT1 = 16'h5999;
    defparam sub_2359_add_2_3.INJECT1_0 = "NO";
    defparam sub_2359_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_2359_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n31780));
    defparam sub_2359_add_2_1.INIT0 = 16'h0000;
    defparam sub_2359_add_2_1.INIT1 = 16'h5999;
    defparam sub_2359_add_2_1.INJECT1_0 = "NO";
    defparam sub_2359_add_2_1.INJECT1_1 = "NO";
    CCU2D num_2991_add_4_9 (.A0(\cnt_scan[3] ), .B0(n18926), .C0(num[7]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31779), .S0(n37[7]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991_add_4_9.INIT0 = 16'he1e1;
    defparam num_2991_add_4_9.INIT1 = 16'h0000;
    defparam num_2991_add_4_9.INJECT1_0 = "NO";
    defparam num_2991_add_4_9.INJECT1_1 = "NO";
    LUT4 mux_37_Mux_3_i6_4_lut_3_lut_4_lut (.A(flash_bit), .B(time_set), 
         .C(cnt_main[1]), .D(\cnt_main[0] ), .Z(n6_adj_1841)) /* synthesis lut_function=(A (C+(D))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam mux_37_Mux_3_i6_4_lut_3_lut_4_lut.init = 16'hbff0;
    PFUMX i30828 (.BLUT(n37558), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37560));
    LUT4 char_101__bdd_4_lut_30938 (.A(char[101]), .B(n37274), .C(n37572), 
         .D(cnt_main[4]), .Z(n37084)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_101__bdd_4_lut_30938.init = 16'h88f0;
    LUT4 i15209_2_lut (.A(sys_clk_c_enable_328), .B(state[0]), .Z(n20700)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam i15209_2_lut.init = 16'h8888;
    PFUMX i30826 (.BLUT(n37555), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37557));
    LUT4 i1_4_lut_adj_201 (.A(n37361), .B(n36890), .C(n9_adj_1852), .D(state[5]), 
         .Z(n33062)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(80[4] 199[11])
    defparam i1_4_lut_adj_201.init = 16'h5044;
    PFUMX i30824 (.BLUT(n37552), .ALUT(n37553), .C0(\cnt_main[0] ), .Z(n37554));
    PFUMX i30822 (.BLUT(n37549), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37551));
    LUT4 i1_4_lut_adj_202 (.A(n24_adj_1867), .B(state_back[4]), .C(n37280), 
         .D(n27), .Z(state_back_5__N_1033[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_202.init = 16'hce0a;
    PFUMX i30665 (.BLUT(n36977), .ALUT(n36976), .C0(state[5]), .Z(n36978));
    PFUMX i30820 (.BLUT(n37546), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37548));
    LUT4 n36073_bdd_3_lut (.A(n37110), .B(n36070), .C(cnt_scan[2]), .Z(n36074)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36073_bdd_3_lut.init = 16'hcaca;
    PFUMX i30818 (.BLUT(n37543), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37545));
    PFUMX i30816 (.BLUT(n37540), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37542));
    PFUMX i74 (.BLUT(n34), .ALUT(n41_adj_1746), .C0(state[5]), .Z(n50));
    LUT4 i7_4_lut (.A(cnt[7]), .B(cnt[14]), .C(cnt[12]), .D(cnt[15]), 
         .Z(n18_adj_1729)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_203 (.A(n37314), .B(n2724), .C(n37318), 
         .D(n37317), .Z(n34695)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(158[51:79])
    defparam i1_2_lut_3_lut_4_lut_adj_203.init = 16'h1000;
    PFUMX i30814 (.BLUT(n37537), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37539));
    LUT4 char_69__bdd_4_lut_30930 (.A(char[69]), .B(n37274), .C(n37539), 
         .D(cnt_main[4]), .Z(n37101)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_69__bdd_4_lut_30930.init = 16'h88f0;
    PFUMX i30812 (.BLUT(n37534), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37536));
    LUT4 i20945_3_lut_3_lut (.A(sw1_c), .B(n37124), .C(\sec[1] ), .Z(n7474)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(10[8:11])
    defparam i20945_3_lut_3_lut.init = 16'h1414;
    PFUMX i30810 (.BLUT(n37531), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37533));
    PFUMX i30808 (.BLUT(n37528), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37530));
    PFUMX i30806 (.BLUT(n37525), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37527));
    PFUMX mux_34_Mux_1_i31 (.BLUT(n14_adj_1769), .ALUT(n15_adj_1804), .C0(n35222), 
          .Z(n1912[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 i1_4_lut_adj_204 (.A(n24_adj_1866), .B(state_back[3]), .C(n37280), 
         .D(n27), .Z(state_back_5__N_1033[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_204.init = 16'hce0a;
    PFUMX i30804 (.BLUT(n37522), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37524));
    CCU2D num_2991_add_4_7 (.A0(\cnt_scan[3] ), .B0(n18926), .C0(num[5]), 
          .D0(GND_net), .A1(\cnt_scan[3] ), .B1(n18926), .C1(num[6]), 
          .D1(GND_net), .CIN(n31778), .COUT(n31779), .S0(n37[5]), .S1(n37[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991_add_4_7.INIT0 = 16'he1e1;
    defparam num_2991_add_4_7.INIT1 = 16'he1e1;
    defparam num_2991_add_4_7.INJECT1_0 = "NO";
    defparam num_2991_add_4_7.INJECT1_1 = "NO";
    PFUMX i30802 (.BLUT(n37519), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37521));
    PFUMX i30800 (.BLUT(n37516), .ALUT(n37574), .C0(cnt_main[1]), .Z(n37518));
    PFUMX mux_37_Mux_4_i31 (.BLUT(n7_adj_1842), .ALUT(n15_adj_1792), .C0(n35220), 
          .Z(n1939[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 i1_2_lut_adj_205 (.A(cnt_scan[4]), .B(n37607), .Z(n64_adj_1865)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_205.init = 16'h4444;
    CCU2D num_2991_add_4_5 (.A0(\cnt_scan[3] ), .B0(n18926), .C0(num[3]), 
          .D0(GND_net), .A1(\cnt_scan[3] ), .B1(n18926), .C1(num[4]), 
          .D1(GND_net), .CIN(n31777), .COUT(n31778), .S0(n37[3]), .S1(n37[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991_add_4_5.INIT0 = 16'he1e1;
    defparam num_2991_add_4_5.INIT1 = 16'he1e1;
    defparam num_2991_add_4_5.INJECT1_0 = "NO";
    defparam num_2991_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_206 (.A(n24_adj_1859), .B(state_back[2]), .C(n37280), 
         .D(n27), .Z(state_back_5__N_1033[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_206.init = 16'hce0a;
    CCU2D num_2991_add_4_3 (.A0(\cnt_scan[3] ), .B0(n18926), .C0(num[1]), 
          .D0(GND_net), .A1(\cnt_scan[3] ), .B1(n18926), .C1(num[2]), 
          .D1(GND_net), .CIN(n31776), .COUT(n31777), .S0(n37[1]), .S1(n37[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991_add_4_3.INIT0 = 16'he1e1;
    defparam num_2991_add_4_3.INIT1 = 16'he1e1;
    defparam num_2991_add_4_3.INJECT1_0 = "NO";
    defparam num_2991_add_4_3.INJECT1_1 = "NO";
    PFUMX i30792 (.BLUT(n37503), .ALUT(n37504), .C0(cnt_scan[1]), .Z(n37505));
    PFUMX i30788 (.BLUT(n37497), .ALUT(n37498), .C0(cnt_main[3]), .Z(n37499));
    LUT4 n36022_bdd_2_lut (.A(n36022), .B(cnt_scan[4]), .Z(n36023)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n36022_bdd_2_lut.init = 16'h2222;
    CCU2D num_2991_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\cnt_scan[3] ), .B1(n18926), .C1(num[0]), 
          .D1(GND_net), .COUT(n31776), .S1(n37[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991_add_4_1.INIT0 = 16'hF000;
    defparam num_2991_add_4_1.INIT1 = 16'he1e1;
    defparam num_2991_add_4_1.INJECT1_0 = "NO";
    defparam num_2991_add_4_1.INJECT1_1 = "NO";
    PFUMX i30786 (.BLUT(n37494), .ALUT(n37495), .C0(cnt_main[3]), .Z(n37496));
    PFUMX mux_37_Mux_5_i31 (.BLUT(n14), .ALUT(n15_adj_1743), .C0(n35222), 
          .Z(n1939[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    LUT4 char_109__bdd_4_lut_30901 (.A(char[109]), .B(n37274), .C(n37557), 
         .D(cnt_main[4]), .Z(n37085)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_109__bdd_4_lut_30901.init = 16'h88f0;
    FD1P3IX char_i0_i165 (.D(n37093), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[165])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i165.GSR = "ENABLED";
    FD1P3IX char_i0_i157 (.D(n37092), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[157])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i157.GSR = "ENABLED";
    FD1P3IX char_i0_i149 (.D(n37091), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[149])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i149.GSR = "ENABLED";
    FD1P3IX char_i0_i141 (.D(n37090), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[141])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i141.GSR = "ENABLED";
    FD1P3IX char_i0_i133 (.D(n37089), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[133])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i133.GSR = "ENABLED";
    FD1P3IX char_i0_i125 (.D(n37088), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[125])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i125.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_207 (.A(cnt_scan[4]), .B(n38958), .Z(n64_adj_1861)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_207.init = 16'h4444;
    FD1P3IX char_i0_i117 (.D(n37087), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[117])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i117.GSR = "ENABLED";
    PFUMX i29582 (.BLUT(n35250), .ALUT(n35251), .C0(num[1]), .Z(n35252));
    FD1P3IX char_i0_i109 (.D(n37085), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[109])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i109.GSR = "ENABLED";
    FD1P3IX char_i0_i101 (.D(n37084), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[101])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i101.GSR = "ENABLED";
    FD1P3IX char_i0_i93 (.D(n37082), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[93])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i93.GSR = "ENABLED";
    FD1P3IX char_i0_i85 (.D(n37081), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[85])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i85.GSR = "ENABLED";
    FD1P3IX char_i0_i77 (.D(n37080), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[77])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i77.GSR = "ENABLED";
    FD1P3IX num_2991__i1 (.D(n37[1]), .SP(sys_clk_c_enable_377), .CD(n20657), 
            .CK(sys_clk_c), .Q(num[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991__i1.GSR = "ENABLED";
    LUT4 i20642_2_lut_rep_596 (.A(state[4]), .B(state[3]), .Z(n37361)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20642_2_lut_rep_596.init = 16'heeee;
    FD1P3IX char_i0_i69 (.D(n37101), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[69])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i69.GSR = "ENABLED";
    FD1P3IX char_i0_i61 (.D(n37100), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i61.GSR = "ENABLED";
    FD1P3IX char_i0_i53 (.D(n37099), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i53.GSR = "ENABLED";
    FD1P3IX char_i0_i45 (.D(n37098), .SP(sys_clk_c_enable_375), .CD(n39006), 
            .CK(sys_clk_c), .Q(char[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(79[12] 200[6])
    defparam char_i0_i45.GSR = "ENABLED";
    LUT4 char_13__bdd_4_lut_30894 (.A(char[13]), .B(n37274), .C(n37542), 
         .D(cnt_main[4]), .Z(n37086)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam char_13__bdd_4_lut_30894.init = 16'h88f0;
    LUT4 i2_2_lut_3_lut_adj_208 (.A(state[4]), .B(state[3]), .C(n10_adj_1875), 
         .Z(n33064)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut_adj_208.init = 16'h1010;
    PFUMX i30604 (.BLUT(n36889), .ALUT(n36888), .C0(state[2]), .Z(n36890));
    LUT4 i1_2_lut_3_lut_4_lut_adj_209 (.A(state[4]), .B(state[3]), .C(n37394), 
         .D(state[5]), .Z(n5)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_209.init = 16'h0010;
    PFUMX i30598 (.BLUT(n36876), .ALUT(n36875), .C0(\cnt_scan[3] ), .Z(n36877));
    LUT4 i2_4_lut_adj_210 (.A(n19099), .B(state[2]), .C(n35), .D(n31), 
         .Z(state_back_5__N_1033[1])) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i2_4_lut_adj_210.init = 16'hfbfa;
    PFUMX i30760 (.BLUT(n37455), .ALUT(n37456), .C0(\cnt_main[0] ), .Z(n37457));
    PFUMX i29608 (.BLUT(n35274), .ALUT(n35275), .C0(cnt_write[2]), .Z(n35278));
    PFUMX i30595 (.BLUT(n36873), .ALUT(n35297), .C0(cnt_scan[1]), .Z(n36874));
    LUT4 i29826_4_lut (.A(n11094), .B(n1672[5]), .C(n38984), .D(n35154), 
         .Z(char_reg_7__N_1274[5])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam i29826_4_lut.init = 16'hcacc;
    FD1P3IX num_2991__i3 (.D(n37[3]), .SP(sys_clk_c_enable_377), .CD(n20657), 
            .CK(sys_clk_c), .Q(num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(125[7] 141[14])
    defparam num_2991__i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_211 (.A(state[0]), .B(n26731), .C(state[2]), .D(state_back_5__N_1368[1]), 
         .Z(n19099)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_211.init = 16'h1202;
    PFUMX i30746 (.BLUT(n37434), .ALUT(n37435), .C0(\cnt[1] ), .Z(n37436));
    LUT4 i30842_then_4_lut (.A(n37322), .B(cnt_init[1]), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n38999)) /* synthesis lut_function=(!(A+(B (C)+!B !(C+!(D))))) */ ;
    defparam i30842_then_4_lut.init = 16'h1415;
    PFUMX mux_37_Mux_8_i31 (.BLUT(n15_adj_1765), .ALUT(n30_adj_1840), .C0(cnt_main[4]), 
          .Z(n1939[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=363, LSE_RLINE=394 */ ;
    PFUMX i30174 (.BLUT(n36074), .ALUT(n36069), .C0(\cnt_scan[3] ), .Z(n36075));
    \divide(WIDTH=32,N=12000000)  divide_1Hz (.GND_net(GND_net), .clk_in_1Hz(clk_in_1Hz), 
            .sys_clk_c(sys_clk_c), .sys_rst_n_c(sys_rst_n_c), .rst_n_in_N_1516(rst_n_in_N_1516)) /* synthesis syn_module_defined=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(55[36] 59[5])
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000) 
//

module \divide(WIDTH=32,N=12000000)  (GND_net, clk_in_1Hz, sys_clk_c, 
            sys_rst_n_c, rst_n_in_N_1516) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_in_1Hz;
    input sys_clk_c;
    input sys_rst_n_c;
    output rst_n_in_N_1516;
    
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/oled.v(53[9:19])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/top.v(3[8:15])
    
    wire n31768;
    wire [31:0]cnt_p;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(11[19:24])
    wire [31:0]n101;
    
    wire n31769, n31767, n31766, clkout_N_293, n31765, n31764, n31763, 
        n31762;
    wire [31:0]n200;
    
    wire n31761, n31760, n20584, n35064, n35403, n35062, n35052, 
        n28_adj_1716, n19, n27_adj_1717, n25, n26_adj_1718, n24, 
        n31839, n31838, n31837, n31836, n31835, n31834, n31833, 
        n31832, n31831, n31830, n31829, n31828, n31775, n31774, 
        n31773, n31772, n31771, n31770;
    
    CCU2D cnt_p_2990_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31768), .COUT(n31769), .S0(n101[17]), 
          .S1(n101[18]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31767), .COUT(n31768), .S0(n101[15]), 
          .S1(n101[16]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31766), .COUT(n31767), .S0(n101[13]), 
          .S1(n101[14]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_15.INJECT1_1 = "NO";
    FD1S3AX clk_p_29 (.D(clkout_N_293), .CK(sys_clk_c), .Q(clk_in_1Hz)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=36, LSE_RCOL=5, LSE_LLINE=55, LSE_RLINE=59 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D cnt_p_2990_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31765), .COUT(n31766), .S0(n101[11]), 
          .S1(n101[12]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31764), .COUT(n31765), .S0(n101[9]), .S1(n101[10]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31763), .COUT(n31764), .S0(n101[7]), .S1(n101[8]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31762), .COUT(n31763), .S0(n101[5]), .S1(n101[6]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31761), .COUT(n31762), .S0(n101[3]), .S1(n101[4]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_5.INJECT1_1 = "NO";
    LUT4 rst_n_in_I_0_1_lut (.A(sys_rst_n_c), .Z(rst_n_in_N_1516)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/beep.v(81[5:14])
    defparam rst_n_in_I_0_1_lut.init = 16'h5555;
    CCU2D cnt_p_2990_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31760), .COUT(n31761), .S0(n101[1]), .S1(n101[2]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31760), .S1(n101[0]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_2990_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_2990_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_p_2990__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n20584), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n20584), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n20584), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n20584), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n20584), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n20584), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_2990__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n20584), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i1.GSR = "ENABLED";
    LUT4 i29923_3_lut (.A(n35064), .B(n35403), .C(n35062), .Z(n20584)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i29923_3_lut.init = 16'h8080;
    LUT4 i29394_4_lut (.A(n200[1]), .B(cnt_p[11]), .C(n200[2]), .D(n200[3]), 
         .Z(n35064)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29394_4_lut.init = 16'h8000;
    LUT4 i29922_4_lut (.A(n35052), .B(n200[0]), .C(n28_adj_1716), .D(cnt_p[16]), 
         .Z(n35403)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i29922_4_lut.init = 16'h0800;
    LUT4 i29392_4_lut (.A(n200[5]), .B(cnt_p[17]), .C(cnt_p[12]), .D(cnt_p[20]), 
         .Z(n35062)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29392_4_lut.init = 16'h8000;
    LUT4 i29382_4_lut (.A(cnt_p[23]), .B(cnt_p[21]), .C(cnt_p[7]), .D(cnt_p[9]), 
         .Z(n35052)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29382_4_lut.init = 16'h8000;
    LUT4 i10_3_lut (.A(n19), .B(n200[6]), .C(cnt_p[18]), .Z(n28_adj_1716)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i10_3_lut.init = 16'hbfbf;
    LUT4 i1_4_lut (.A(n27_adj_1717), .B(n200[4]), .C(n25), .D(n26_adj_1718), 
         .Z(n19)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i12_4_lut (.A(cnt_p[19]), .B(n24), .C(cnt_p[8]), .D(cnt_p[14]), 
         .Z(n27_adj_1717)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_p[30]), .B(cnt_p[22]), .C(cnt_p[13]), .D(cnt_p[25]), 
         .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(cnt_p[28]), .B(cnt_p[15]), .C(cnt_p[31]), .D(cnt_p[29]), 
         .Z(n26_adj_1718)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt_p[26]), .B(cnt_p[24]), .C(cnt_p[10]), .D(cnt_p[27]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam i9_4_lut.init = 16'hfffe;
    CCU2D add_26100_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31839), 
          .S0(clkout_N_293));
    defparam add_26100_cout.INIT0 = 16'h0000;
    defparam add_26100_cout.INIT1 = 16'h0000;
    defparam add_26100_cout.INJECT1_0 = "NO";
    defparam add_26100_cout.INJECT1_1 = "NO";
    CCU2D add_26100_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31838), .COUT(n31839));
    defparam add_26100_24.INIT0 = 16'h5555;
    defparam add_26100_24.INIT1 = 16'h5555;
    defparam add_26100_24.INJECT1_0 = "NO";
    defparam add_26100_24.INJECT1_1 = "NO";
    CCU2D add_26100_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31837), .COUT(n31838));
    defparam add_26100_22.INIT0 = 16'h5555;
    defparam add_26100_22.INIT1 = 16'h5555;
    defparam add_26100_22.INJECT1_0 = "NO";
    defparam add_26100_22.INJECT1_1 = "NO";
    CCU2D add_26100_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31836), .COUT(n31837));
    defparam add_26100_20.INIT0 = 16'h5555;
    defparam add_26100_20.INIT1 = 16'h5555;
    defparam add_26100_20.INJECT1_0 = "NO";
    defparam add_26100_20.INJECT1_1 = "NO";
    CCU2D add_26100_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31835), .COUT(n31836));
    defparam add_26100_18.INIT0 = 16'h5555;
    defparam add_26100_18.INIT1 = 16'h5555;
    defparam add_26100_18.INJECT1_0 = "NO";
    defparam add_26100_18.INJECT1_1 = "NO";
    CCU2D add_26100_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31834), .COUT(n31835));
    defparam add_26100_16.INIT0 = 16'h5aaa;
    defparam add_26100_16.INIT1 = 16'h5555;
    defparam add_26100_16.INJECT1_0 = "NO";
    defparam add_26100_16.INJECT1_1 = "NO";
    CCU2D add_26100_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31833), .COUT(n31834));
    defparam add_26100_14.INIT0 = 16'h5aaa;
    defparam add_26100_14.INIT1 = 16'h5555;
    defparam add_26100_14.INJECT1_0 = "NO";
    defparam add_26100_14.INJECT1_1 = "NO";
    CCU2D add_26100_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31832), .COUT(n31833));
    defparam add_26100_12.INIT0 = 16'h5555;
    defparam add_26100_12.INIT1 = 16'h5aaa;
    defparam add_26100_12.INJECT1_0 = "NO";
    defparam add_26100_12.INJECT1_1 = "NO";
    CCU2D add_26100_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31831), .COUT(n31832));
    defparam add_26100_10.INIT0 = 16'h5aaa;
    defparam add_26100_10.INIT1 = 16'h5aaa;
    defparam add_26100_10.INJECT1_0 = "NO";
    defparam add_26100_10.INJECT1_1 = "NO";
    CCU2D add_26100_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31830), .COUT(n31831));
    defparam add_26100_8.INIT0 = 16'h5555;
    defparam add_26100_8.INIT1 = 16'h5aaa;
    defparam add_26100_8.INJECT1_0 = "NO";
    defparam add_26100_8.INJECT1_1 = "NO";
    CCU2D add_26100_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31829), .COUT(n31830));
    defparam add_26100_6.INIT0 = 16'h5555;
    defparam add_26100_6.INIT1 = 16'h5555;
    defparam add_26100_6.INJECT1_0 = "NO";
    defparam add_26100_6.INJECT1_1 = "NO";
    CCU2D add_26100_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31828), .COUT(n31829));
    defparam add_26100_4.INIT0 = 16'h5aaa;
    defparam add_26100_4.INIT1 = 16'h5aaa;
    defparam add_26100_4.INJECT1_0 = "NO";
    defparam add_26100_4.INJECT1_1 = "NO";
    CCU2D add_26100_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n31828));
    defparam add_26100_2.INIT0 = 16'h7000;
    defparam add_26100_2.INIT1 = 16'h5555;
    defparam add_26100_2.INJECT1_0 = "NO";
    defparam add_26100_2.INJECT1_1 = "NO";
    FD1S3IX cnt_p_2990__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n20584), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990__i0.GSR = "ENABLED";
    CCU2D cnt_p_2990_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31775), .S0(n101[31]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_2990_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31774), .COUT(n31775), .S0(n101[29]), 
          .S1(n101[30]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31773), .COUT(n31774), .S0(n101[27]), 
          .S1(n101[28]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31772), .COUT(n31773), .S0(n101[25]), 
          .S1(n101[26]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31771), .COUT(n31772), .S0(n101[23]), 
          .S1(n101[24]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31770), .COUT(n31771), .S0(n101[21]), 
          .S1(n101[22]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_2990_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31769), .COUT(n31770), .S0(n101[19]), 
          .S1(n101[20]));   // c:/users/admin/desktop/new/-fpga/top-xu-25/clock.v(22[16:23])
    defparam cnt_p_2990_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_2990_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_2990_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_2990_add_4_21.INJECT1_1 = "NO";
    
endmodule
