// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Sun Feb 21 21:09:51 2021
//
// Verilog Description of module top
//

module top (sys_clk, sys_rst_n, sw1, sw2, sw4, beep, uart_txd, 
            one_wire, uart_rxd, oled_res, key1, key2, key3, oled_cs, 
            oled_dc, oled_sck, oled_mosi, led) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(1[8:11])
    input sys_clk;   // d:/new porject/top-xu/top.v(3[8:15])
    input sys_rst_n;   // d:/new porject/top-xu/top.v(4[8:17])
    input sw1;   // d:/new porject/top-xu/top.v(10[8:11])
    input sw2;   // d:/new porject/top-xu/top.v(11[8:11])
    input sw4;   // d:/new porject/top-xu/top.v(12[8:11])
    output beep;   // d:/new porject/top-xu/top.v(20[18:22])
    output uart_txd;   // d:/new porject/top-xu/top.v(21[10:18])
    inout one_wire;   // d:/new porject/top-xu/top.v(23[8:16])
    input uart_rxd;   // d:/new porject/top-xu/top.v(13[18:26])
    output oled_res;   // d:/new porject/top-xu/top.v(15[9:17])
    input key1;   // d:/new porject/top-xu/top.v(5[8:12])
    input key2;   // d:/new porject/top-xu/top.v(6[8:12])
    input key3;   // d:/new porject/top-xu/top.v(7[8:12])
    output oled_cs;   // d:/new porject/top-xu/top.v(16[9:16])
    output oled_dc;   // d:/new porject/top-xu/top.v(17[9:16])
    output oled_sck;   // d:/new porject/top-xu/top.v(18[9:17])
    output oled_mosi;   // d:/new porject/top-xu/top.v(19[9:18])
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
    wire [7:0]min_warning;   // d:/new porject/top-xu/top.v(68[16:27])
    wire [7:0]hour_warning;   // d:/new porject/top-xu/top.v(69[16:28])
    
    wire warning, time_set;
    wire [7:0]warning_time;   // d:/new porject/top-xu/top.v(73[16:28])
    wire [3:0]sec_tens;   // d:/new porject/top-xu/top.v(247[15:23])
    wire [3:0]min_tens;   // d:/new porject/top-xu/top.v(252[15:23])
    wire [3:0]min_ones;   // d:/new porject/top-xu/top.v(253[15:23])
    
    wire n38452;
    wire [3:0]hour_ones;   // d:/new porject/top-xu/top.v(258[15:24])
    wire [3:0]min_warning_tens;   // d:/new porject/top-xu/top.v(265[15:31])
    wire [3:0]min_warning_ones;   // d:/new porject/top-xu/top.v(266[15:31])
    wire [3:0]hour_warning_tens;   // d:/new porject/top-xu/top.v(269[15:32])
    wire [3:0]hour_warning_ones;   // d:/new porject/top-xu/top.v(270[15:32])
    wire [15:0]ds18b20_data;   // d:/new porject/top-xu/top.v(319[14:26])
    wire [3:0]Tem_lower;   // d:/new porject/top-xu/top.v(322[12:21])
    wire [7:0]Temp_H;   // d:/new porject/top-xu/top.v(340[11:17])
    
    wire uart_en;
    wire [7:0]uart_send_data;   // d:/new porject/top-xu/top.v(370[12:26])
    
    wire warning_TEM, uart_recv_done;
    wire [7:0]uart_recv_data;   // d:/new porject/top-xu/top.v(452[13:27])
    wire [7:0]music_tone;   // d:/new porject/top-xu/top.v(453[13:23])
    
    wire n80, n5580, n5579, n5578, n5577, n5343, n5545, n5546, 
        n5547, n5548, n5549, n5313, n5561, n38515, n5562, n5576, 
        n5566, n5565, n5542, n5543, n5262, n5544, n5409, n5408, 
        n5407, n5406, n5405, n5564, n5617, n5616, n5615, n5614, 
        n5613, n5612, n5611, n5610, n5600, n5599, n5598, n5597, 
        n5596, n5595, n5594, n5593, n5583, n5582, n38429, warning_time_7__N_144, 
        led_N_184, n695, n696, n697, n698, n699, n700, n701, 
        n702, led_N_181, n4, n742, n743, n744, n745, n746, n747, 
        n748, n749, n752, n753, n754, n755, n756, n757, n758, 
        n759, n778, n797;
    wire [7:0]sec_7__N_1;
    wire [7:0]min_7__N_11;
    wire [7:0]hour_7__N_19;
    
    wire key_sec_pre, key_sec, key_sec_pre_adj_1839, key_sec_adj_1840, 
        n21041, n12208, key_sec_pre_adj_1841, key_sec_adj_1842;
    wire [3:0]hundres_0__N_313;
    wire [3:0]hundres_0__N_316;
    wire [3:0]hundres_1__N_306_adj_1890;
    wire [3:0]hundres_0__N_313_adj_1894;
    wire [3:0]hundres_0__N_316_adj_1896;
    wire [3:0]hundres_0__N_316_adj_1922;
    
    wire hundres_0__N_321;
    wire [3:0]hundres_0__N_316_adj_1948;
    
    wire hundres_0__N_321_adj_1845, n36121;
    wire [3:0]hundres_1__N_306_adj_1968;
    
    wire sys_clk_c_enable_72;
    wire [3:0]hundres_0__N_313_adj_1972;
    wire [3:0]hundres_0__N_316_adj_1974;
    
    wire n35976, n35980, n13024;
    wire [3:0]hundres_1__N_305_adj_1992;
    wire [3:0]hundres_0__N_313_adj_1998;
    wire [3:0]hundres_0__N_316_adj_2000;
    
    wire sys_clk_c_enable_139, n12, one_wire_N_631, n35982, n21, n1, 
        n71;
    wire [4:0]cnt_main_adj_2027;   // d:/new porject/top-xu/oled.v(45[12:20])
    wire [15:0]cnt_adj_2032;   // d:/new porject/top-xu/oled.v(46[35:38])
    
    wire n12129, n33386, n33621, n33385, n33384, n33383, clk_1s_enable_17, 
        n22156, n33207, n14, n33206, n36251, n9500, n33205, n33204, 
        n33378, n33377, sys_clk_c_enable_283, n4_adj_1851, n14_adj_1852, 
        n33200, n33376, n9517, n9515, n33199, n33198, n33197, 
        n4_adj_1853, n33375, n9522, n9529, n9528, n9527, n10, 
        n7, n33196, n36057, n2521, n2523, n2524, n2527, n2690, 
        n2691, n2692, n2693, n2694, n2695, n2696, n3068, n3069, 
        n3070, n3071, n3072, n3073, n3074, n3446, n3447, n3448, 
        n3449, n3450, n3451, n3452, n3824, n3825, n3826, n3827, 
        n3828, n3829, n3830, n4202, n4203, n4204, n4205, n4206, 
        n4207, n4208, n33195, n19, n18, n33194, n33193, n33192, 
        n9637, n33191, n33190, n33189, n33015, n6, n9645, n21043, 
        n9648, n5, n36602, rx_flag, n36600, n33187;
    wire [7:0]cnt_run;   // d:/new porject/top-xu/music_player.v(36[11:18])
    wire [4:0]state_adj_2053;   // d:/new porject/top-xu/music_player.v(41[11:16])
    wire [2:0]state_back_adj_2054;   // d:/new porject/top-xu/music_player.v(42[12:22])
    wire [8:0]music_cnt;   // d:/new porject/top-xu/music_player.v(47[11:20])
    wire [15:0]clk_cnt_adj_2056;   // d:/new porject/top-xu/music_player.v(49[13:20])
    
    wire recv_done_d0, recv_done_d1, uart_music_mode, n123, n124, 
        n125, n126, n137, n10398, n36574, n10382, n10381, n10380, 
        n33613, n10372, clk_1s_enable_9, sys_clk_c_enable_146, n381, 
        sys_clk_c_enable_323, n36570, sys_clk_c_enable_294, sys_clk_c_enable_166, 
        n33186, n5563, n5446, n5445, n5444, n5443, n5442, n5441, 
        n5440, n5460, n5461, n5462, n5463, n12201, n12199, n5465, 
        n5464, n5459, n5439, n5404, n5403, n5402, n5559, n5560, 
        n38361, n38360, n38359, n19937, n36089, n8, n12125, n12120, 
        n36077, n12116, n36514, n6_adj_1854, n36512, n36492, n37299, 
        n36198, n36108, n36482, n38430, n36212, n38276, n38275, 
        n38272, n38271, n38270, n4_adj_1855, n22032, n36087, n36420, 
        n36412, n36410, n37500, n33185, n36111, n31, n37499, n37497, 
        n38718, n38714, n36109, n37486, sys_clk_c_enable_324, n3500, 
        n5581, n5458, n35994, n38163, n38162, n22, n38439, n38704, 
        n37498, n39972, n12110, n38689, n20362, n47, n38670, n33184, 
        n20769, sys_clk_c_enable_77, sys_clk_c_enable_263, n38668, n38666, 
        n36720, n38660, n38658, n38657, n6_adj_1856, n5_adj_1857, 
        n38646, n4_adj_1858, n38639, n28217, n38637, n6_adj_1859, 
        n38634, n14003, n38616, n37423, n35918, n4_adj_1860, n38604, 
        n37417, n5_adj_1861, n38602, n36718, n38595, n35906, n4_adj_1862, 
        n38594, one_wire_out, n38583, n5_adj_1863, n36, n33018, 
        clk_1s_enable_10, n4_adj_1864, n38571, n15209, sys_clk_c_enable_23, 
        n8_adj_1865, n33533, n38566, n38565, sys_clk_c_enable_100, 
        n33168, n33017, n33169, n4_adj_1866, n37368, n38807, n38559, 
        n37365, n4_adj_1867, n38426, n38551, n37263, n37262, n37237, 
        n38459, n21033, n6_adj_1868, n38539, n40, n33016, n20808, 
        n33170, n33167, n33833, n36717, n38526, n38525, n38453, 
        n35840, n35852, n36504;
    
    VHI i29137 (.Z(VCC_net));
    CCU2D add_1739_5 (.A0(key_sec_pre_adj_1839), .B0(key_sec_adj_1840), 
          .C0(hour_warning[2]), .D0(GND_net), .A1(key_sec_pre_adj_1839), 
          .B1(key_sec_adj_1840), .C1(hour_warning[3]), .D1(GND_net), .CIN(n33185), 
          .COUT(n33186), .S0(n5581), .S1(n5580));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1739_5.INIT0 = 16'h2d2d;
    defparam add_1739_5.INIT1 = 16'h2d2d;
    defparam add_1739_5.INJECT1_0 = "NO";
    defparam add_1739_5.INJECT1_1 = "NO";
    CCU2D add_1739_3 (.A0(key_sec_pre_adj_1839), .B0(key_sec_adj_1840), 
          .C0(hour_warning[0]), .D0(GND_net), .A1(key_sec_pre_adj_1839), 
          .B1(key_sec_adj_1840), .C1(hour_warning[1]), .D1(GND_net), .CIN(n33184), 
          .COUT(n33185), .S0(n5583), .S1(n5582));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1739_3.INIT0 = 16'hd2d2;
    defparam add_1739_3.INIT1 = 16'h2d2d;
    defparam add_1739_3.INJECT1_0 = "NO";
    defparam add_1739_3.INJECT1_1 = "NO";
    FD1P3AX uart_send_data_i0_i0 (.D(Temp_H[0]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(uart_send_data[0]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam uart_send_data_i0_i0.GSR = "DISABLED";
    FD1S3AX sec_i0 (.D(sec_7__N_1[0]), .CK(clk_1s), .Q(sec[0]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam sec_i0.GSR = "ENABLED";
    FD1S3AX min_i0 (.D(min_7__N_11[0]), .CK(clk_1s), .Q(min[0]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam min_i0.GSR = "ENABLED";
    ROM128X1A mux_830_Mux_24 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3074)) /* synthesis initstate=0x001010012C1F82FDC3AD02CC0000FBAD */ ;
    defparam mux_830_Mux_24.initval = 128'h001010012C1F82FDC3AD02CC0000FBAD;
    FD1P3AX hour_i0 (.D(hour_7__N_19[0]), .SP(clk_1s_enable_17), .CK(clk_1s), 
            .Q(hour[0]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam hour_i0.GSR = "ENABLED";
    FD1P3AX Temp_H_i0 (.D(ds18b20_data[4]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[0]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam Temp_H_i0.GSR = "ENABLED";
    FD1S3AX uart_en_177 (.D(clk_1s), .CK(sys_clk_c), .Q(uart_en));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam uart_en_177.GSR = "ENABLED";
    LUT4 char_reg_0__bdd_4_lut_28876 (.A(cnt_adj_2032[1]), .B(cnt_adj_2032[0]), 
         .C(cnt_adj_2032[3]), .D(cnt_adj_2032[2]), .Z(n37423)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam char_reg_0__bdd_4_lut_28876.init = 16'h0315;
    FD1P3IX warning_time__i0 (.D(n702), .SP(clk_1s_enable_9), .CD(n12208), 
            .CK(clk_1s), .Q(warning_time[0]));   // d:/new porject/top-xu/top.v(186[13] 200[7])
    defparam warning_time__i0.GSR = "ENABLED";
    CCU2D add_1721_9 (.A0(key_sec_pre_adj_1839), .B0(key_sec_adj_1840), 
          .C0(min_warning[6]), .D0(GND_net), .A1(key_sec_pre_adj_1839), 
          .B1(key_sec_adj_1840), .C1(min_warning[7]), .D1(GND_net), .CIN(n33207), 
          .S0(n5543), .S1(n5542));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1721_9.INIT0 = 16'h2d2d;
    defparam add_1721_9.INIT1 = 16'h2d2d;
    defparam add_1721_9.INJECT1_0 = "NO";
    defparam add_1721_9.INJECT1_1 = "NO";
    CCU2D add_1721_7 (.A0(key_sec_pre_adj_1839), .B0(key_sec_adj_1840), 
          .C0(min_warning[4]), .D0(GND_net), .A1(key_sec_pre_adj_1839), 
          .B1(key_sec_adj_1840), .C1(min_warning[5]), .D1(GND_net), .CIN(n33206), 
          .COUT(n33207), .S0(n5545), .S1(n5544));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1721_7.INIT0 = 16'h2d2d;
    defparam add_1721_7.INIT1 = 16'h2d2d;
    defparam add_1721_7.INJECT1_0 = "NO";
    defparam add_1721_7.INJECT1_1 = "NO";
    ROM128X1A mux_830_Mux_39 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n2690)) /* synthesis initstate=0x050D6D04950D7976000400200000EC04 */ ;
    defparam mux_830_Mux_39.initval = 128'h050D6D04950D7976000400200000EC04;
    ROM128X1A mux_830_Mux_37 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n2691)) /* synthesis initstate=0x00A5E93E05A7FDFF016980700000FD69 */ ;
    defparam mux_830_Mux_37.initval = 128'h00A5E93E05A7FDFF016980700000FD69;
    ROM128X1A mux_830_Mux_30 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3068)) /* synthesis initstate=0x04A8927EACAA96BD4BEF426800007BEF */ ;
    defparam mux_830_Mux_30.initval = 128'h04A8927EACAA96BD4BEF426800007BEF;
    FD1P3IX hour_warning__i0 (.D(n5583), .SP(sys_clk_c_enable_166), .CD(n12199), 
            .CK(sys_clk_c), .Q(hour_warning[0]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_warning__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(n38551), 
         .D(n36057), .Z(n36087)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hd000;
    ROM128X1A mux_830_Mux_8 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3830)) /* synthesis initstate=0x000004402C1F86ED93FD012C0000DBFD */ ;
    defparam mux_830_Mux_8.initval = 128'h000004402C1F86ED93FD012C0000DBFD;
    ROM128X1A mux_830_Mux_9 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3829)) /* synthesis initstate=0x0000000070002C120018007C00002418 */ ;
    defparam mux_830_Mux_9.initval = 128'h0000000070002C120018007C00002418;
    ROM128X1A mux_830_Mux_10 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3828)) /* synthesis initstate=0x040DEDAF2500040060B1820C000000B1 */ ;
    defparam mux_830_Mux_10.initval = 128'h040DEDAF2500040060B1820C000000B1;
    ROM128X1A mux_830_Mux_11 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3827)) /* synthesis initstate=0x05020410320D05E4835C2E180000CB5C */ ;
    defparam mux_830_Mux_11.initval = 128'h05020410320D05E4835C2E180000CB5C;
    ROM128X1A mux_830_Mux_12 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3826)) /* synthesis initstate=0x000A0422210044036010022800000410 */ ;
    defparam mux_830_Mux_12.initval = 128'h000A0422210044036010022800000410;
    ROM128X1A mux_830_Mux_13 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3825)) /* synthesis initstate=0x0361048030460C100210105800002210 */ ;
    defparam mux_830_Mux_13.initval = 128'h0361048030460C100210105800002210;
    ROM128X1A mux_830_Mux_17 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3451)) /* synthesis initstate=0x00001001001002005C120F9200000012 */ ;
    defparam mux_830_Mux_17.initval = 128'h00001001001002005C120F9200000012;
    CCU2D add_1721_5 (.A0(key_sec_pre_adj_1839), .B0(key_sec_adj_1840), 
          .C0(min_warning[2]), .D0(GND_net), .A1(key_sec_pre_adj_1839), 
          .B1(key_sec_adj_1840), .C1(min_warning[3]), .D1(GND_net), .CIN(n33205), 
          .COUT(n33206), .S0(n5547), .S1(n5546));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1721_5.INIT0 = 16'h2d2d;
    defparam add_1721_5.INIT1 = 16'h2d2d;
    defparam add_1721_5.INJECT1_0 = "NO";
    defparam add_1721_5.INJECT1_1 = "NO";
    IB sw2_pad (.I(sw2), .O(sw2_c));   // d:/new porject/top-xu/top.v(11[8:11])
    FD1P3IX min_warning__i0 (.D(n5549), .SP(sys_clk_c_enable_146), .CD(n12201), 
            .CK(sys_clk_c), .Q(min_warning[0]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_warning__i0.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i0 (.D(n5600), .SP(sys_clk_c_enable_139), .CK(sys_clk_c), 
            .Q(hour_t[0]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_t_i0_i0.GSR = "DISABLED";
    FD1P3IX warning_time__i7 (.D(n695), .SP(clk_1s_enable_9), .CD(n12208), 
            .CK(clk_1s), .Q(warning_time[7]));   // d:/new porject/top-xu/top.v(186[13] 200[7])
    defparam warning_time__i7.GSR = "ENABLED";
    FD1P3IX warning_time__i6 (.D(n696), .SP(clk_1s_enable_9), .CD(n12208), 
            .CK(clk_1s), .Q(warning_time[6]));   // d:/new porject/top-xu/top.v(186[13] 200[7])
    defparam warning_time__i6.GSR = "ENABLED";
    FD1P3IX warning_time__i5 (.D(n697), .SP(clk_1s_enable_9), .CD(n12208), 
            .CK(clk_1s), .Q(warning_time[5]));   // d:/new porject/top-xu/top.v(186[13] 200[7])
    defparam warning_time__i5.GSR = "ENABLED";
    FD1P3IX warning_time__i4 (.D(n698), .SP(clk_1s_enable_9), .CD(n12208), 
            .CK(clk_1s), .Q(warning_time[4]));   // d:/new porject/top-xu/top.v(186[13] 200[7])
    defparam warning_time__i4.GSR = "ENABLED";
    FD1P3IX warning_time__i3 (.D(n699), .SP(clk_1s_enable_9), .CD(n12208), 
            .CK(clk_1s), .Q(warning_time[3]));   // d:/new porject/top-xu/top.v(186[13] 200[7])
    defparam warning_time__i3.GSR = "ENABLED";
    FD1P3IX warning_time__i2 (.D(n700), .SP(clk_1s_enable_9), .CD(n12208), 
            .CK(clk_1s), .Q(warning_time[2]));   // d:/new porject/top-xu/top.v(186[13] 200[7])
    defparam warning_time__i2.GSR = "ENABLED";
    FD1P3IX warning_time__i1 (.D(n701), .SP(clk_1s_enable_9), .CD(n12208), 
            .CK(clk_1s), .Q(warning_time[1]));   // d:/new porject/top-xu/top.v(186[13] 200[7])
    defparam warning_time__i1.GSR = "ENABLED";
    CCU2D add_1739_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre_adj_1839), .B1(key_sec_adj_1840), .C1(GND_net), 
          .D1(GND_net), .COUT(n33184));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1739_1.INIT0 = 16'hF000;
    defparam add_1739_1.INIT1 = 16'h2222;
    defparam add_1739_1.INJECT1_0 = "NO";
    defparam add_1739_1.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX mux_3259_i3 (.BLUT(n4_adj_1855), .ALUT(n4_adj_1866), .C0(cnt_main_adj_2027[2]), 
          .Z(n21041));
    ROM128X1A mux_830_Mux_16 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3452)) /* synthesis initstate=0x000012407C1F86FF83EF00D20000FFEF */ ;
    defparam mux_830_Mux_16.initval = 128'h000012407C1F86FF83EF00D20000FFEF;
    PFUMX mux_3259_i4 (.BLUT(n12116), .ALUT(n12120), .C0(cnt_main_adj_2027[2]), 
          .Z(n9645));
    ROM128X1A mux_830_Mux_18 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3450)) /* synthesis initstate=0x041FD7BE10102A002C2A0C5A0000002A */ ;
    defparam mux_830_Mux_18.initval = 128'h041FD7BE10102A002C2A0C5A0000002A;
    ROM128X1A mux_831_Mux_1 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n126)) /* synthesis initstate=0x00000000054D4A4A014A244A954A244A */ ;
    defparam mux_831_Mux_1.initval = 128'h00000000054D4A4A014A244A954A244A;
    ROM128X1A mux_830_Mux_19 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3449)) /* synthesis initstate=0x00003A40059D63E503C3AC320000CBC3 */ ;
    defparam mux_830_Mux_19.initval = 128'h00003A40059D63E503C3AC320000CBC3;
    ROM128X1A mux_831_Mux_2 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n125)) /* synthesis initstate=0x000000005994949451139113B7139113 */ ;
    defparam mux_831_Mux_2.initval = 128'h000000005994949451139113B7139113;
    ROM128X1A mux_830_Mux_20 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3448)) /* synthesis initstate=0x0588322212960A03AC160C5800000416 */ ;
    defparam mux_830_Mux_20.initval = 128'h0588322212960A03AC160C5800000416;
    ROM128X1A mux_831_Mux_3 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n124)) /* synthesis initstate=0x0000000091DC0303010384C3F70384C3 */ ;
    defparam mux_831_Mux_3.initval = 128'h0000000091DC0303010384C3F70384C3;
    ROM128X1A mux_830_Mux_21 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3447)) /* synthesis initstate=0x02831A80029002005C025F1200000002 */ ;
    defparam mux_830_Mux_21.initval = 128'h02831A80029002005C025F1200000002;
    ROM128X1A mux_830_Mux_25 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3073)) /* synthesis initstate=0x00100040580020020C42001C00000442 */ ;
    defparam mux_830_Mux_25.initval = 128'h00100040580020020C42001C00000442;
    ROM128X1A mux_830_Mux_26 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3072)) /* synthesis initstate=0x041BA2FA090040003C3001AC00000030 */ ;
    defparam mux_830_Mux_26.initval = 128'h041BA2FA090040003C3001AC00000030;
    ROM128X1A mux_830_Mux_27 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3071)) /* synthesis initstate=0x011441441A0D096503402D580000CB40 */ ;
    defparam mux_830_Mux_27.initval = 128'h011441441A0D096503402D580000CB40;
    ROM128X1A mux_830_Mux_28 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3070)) /* synthesis initstate=0x001808620D0000023C91810800000491 */ ;
    defparam mux_830_Mux_28.initval = 128'h001808620D0000023C91810800000491;
    ROM128X1A mux_830_Mux_29 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3069)) /* synthesis initstate=0x075300C0184000000484403800000084 */ ;
    defparam mux_830_Mux_29.initval = 128'h075300C0184000000484403800000084;
    PFUMX mux_3260_i3 (.BLUT(n4_adj_1862), .ALUT(n4_adj_1851), .C0(sw1_c), 
          .Z(n21043));
    PFUMX mux_3260_i4 (.BLUT(n12125), .ALUT(n12129), .C0(sw1_c), .Z(n9500));
    ROM128X1A mux_830_Mux_32 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n2696)) /* synthesis initstate=0x0000090417F5797400A800000000E8A8 */ ;
    defparam mux_830_Mux_32.initval = 128'h0000090417F5797400A800000000E8A8;
    ROM128X1A mux_830_Mux_33 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n2695)) /* synthesis initstate=0x0000090403EFF9FD832500600000FB25 */ ;
    defparam mux_830_Mux_33.initval = 128'h0000090403EFF9FD832500600000FB25;
    ROM128X1A mux_830_Mux_34 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n2694)) /* synthesis initstate=0x07F5690452EFF9FE236104580000FF61 */ ;
    defparam mux_830_Mux_34.initval = 128'h07F5690452EFF9FE236104580000FF61;
    ROM128X1A mux_830_Mux_35 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n2693)) /* synthesis initstate=0x02EFE9FC00E7F9FE105128000000FC51 */ ;
    defparam mux_830_Mux_35.initval = 128'h02EFE9FC00E7F9FE105128000000FC51;
    ROM128X1A mux_830_Mux_36 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n2692)) /* synthesis initstate=0x02E7E9BC10E7F9FF215104480000FD51 */ ;
    defparam mux_830_Mux_36.initval = 128'h02E7E9BC10E7F9FF215104480000FD51;
    IB sw1_pad (.I(sw1), .O(sw1_c));   // d:/new porject/top-xu/top.v(10[8:11])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/new porject/top-xu/top.v(4[8:17])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/new porject/top-xu/top.v(3[8:15])
    OB led_pad (.I(led_c), .O(led));   // d:/new porject/top-xu/top.v(9[13:16])
    OB oled_mosi_pad (.I(oled_mosi_c), .O(oled_mosi));   // d:/new porject/top-xu/top.v(19[9:18])
    OB oled_sck_pad (.I(oled_sck_c), .O(oled_sck));   // d:/new porject/top-xu/top.v(18[9:17])
    OB oled_dc_pad (.I(oled_dc_c), .O(oled_dc));   // d:/new porject/top-xu/top.v(17[9:16])
    OB oled_cs_pad (.I(oled_cs_c), .O(oled_cs));   // d:/new porject/top-xu/top.v(16[9:16])
    OB oled_res_pad (.I(oled_res_c), .O(oled_res));   // d:/new porject/top-xu/top.v(15[9:17])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // d:/new porject/top-xu/top.v(21[10:18])
    OB beep_pad (.I(beep_c), .O(beep));   // d:/new porject/top-xu/top.v(20[18:22])
    CCU2D add_1721_3 (.A0(key_sec_pre_adj_1839), .B0(key_sec_adj_1840), 
          .C0(min_warning[0]), .D0(GND_net), .A1(key_sec_pre_adj_1839), 
          .B1(key_sec_adj_1840), .C1(min_warning[1]), .D1(GND_net), .CIN(n33204), 
          .COUT(n33205), .S0(n5549), .S1(n5548));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1721_3.INIT0 = 16'hd2d2;
    defparam add_1721_3.INIT1 = 16'h2d2d;
    defparam add_1721_3.INJECT1_0 = "NO";
    defparam add_1721_3.INJECT1_1 = "NO";
    FD1P3AX sec_t_i0_i4 (.D(n5562), .SP(sys_clk_c_enable_324), .CK(sys_clk_c), 
            .Q(sec_t[4]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam sec_t_i0_i4.GSR = "DISABLED";
    ROM128X1A mux_830_Mux_14 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3824)) /* synthesis initstate=0x04989E3EACA892AD117F11080000597F */ ;
    defparam mux_830_Mux_14.initval = 128'h04989E3EACA892AD117F11080000597F;
    ROM128X1A mux_830_Mux_0 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n4208)) /* synthesis initstate=0x0000001017F86D6000A800200000C0A8 */ ;
    defparam mux_830_Mux_0.initval = 128'h0000001017F86D6000A800200000C0A8;
    FD1P3AX sec_t_i0_i5 (.D(n5561), .SP(sys_clk_c_enable_324), .CK(sys_clk_c), 
            .Q(sec_t[5]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam sec_t_i0_i5.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i6 (.D(n5560), .SP(sys_clk_c_enable_324), .CK(sys_clk_c), 
            .Q(sec_t[6]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam sec_t_i0_i6.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i7 (.D(n5559), .SP(sys_clk_c_enable_324), .CK(sys_clk_c), 
            .Q(sec_t[7]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam sec_t_i0_i7.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i4 (.D(Temp_H[4]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(uart_send_data[4]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam uart_send_data_i0_i4.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i1 (.D(Temp_H[1]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(uart_send_data[1]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam uart_send_data_i0_i1.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i2 (.D(Temp_H[2]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(uart_send_data[2]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam uart_send_data_i0_i2.GSR = "DISABLED";
    FD1P3IX key_mode_3008__i2 (.D(n18), .SP(sys_clk_c_enable_263), .CD(n22156), 
            .CK(sys_clk_c), .Q(key_mode[2]));   // d:/new porject/top-xu/top.v(94[22:37])
    defparam key_mode_3008__i2.GSR = "ENABLED";
    CCU2D add_1721_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre_adj_1839), .B1(key_sec_adj_1840), .C1(GND_net), 
          .D1(GND_net), .COUT(n33204));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1721_1.INIT0 = 16'hF000;
    defparam add_1721_1.INIT1 = 16'h2222;
    defparam add_1721_1.INJECT1_0 = "NO";
    defparam add_1721_1.INJECT1_1 = "NO";
    LUT4 i4_4_lut_4_lut (.A(key_mode[0]), .B(key_mode[1]), .C(n6_adj_1859), 
         .D(n14), .Z(n12199)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut_4_lut.init = 16'h2000;
    ROM128X1A mux_830_Mux_22 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n3446)) /* synthesis initstate=0x0478923EBE7A96BD836F405000007B6F */ ;
    defparam mux_830_Mux_22.initval = 128'h0478923EBE7A96BD836F405000007B6F;
    FD1P3AX uart_send_data_i0_i3 (.D(Temp_H[3]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(uart_send_data[3]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam uart_send_data_i0_i3.GSR = "DISABLED";
    ROM128X1A mux_830_Mux_6 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n4202)) /* synthesis initstate=0x07226192950679A20004004000004404 */ ;
    defparam mux_830_Mux_6.initval = 128'h07226192950679A20004004000004404;
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // d:/new porject/top-xu/top.v(13[18:26])
    ROM128X1A mux_830_Mux_5 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n4203)) /* synthesis initstate=0x02BAE19E01A8E18F0169002000001D69 */ ;
    defparam mux_830_Mux_5.initval = 128'h02BAE19E01A8E18F0169002000001D69;
    FD1P3AX uart_send_data_i0_i5 (.D(Temp_H[5]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(uart_send_data[5]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam uart_send_data_i0_i5.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i6 (.D(Temp_H[6]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(uart_send_data[6]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam uart_send_data_i0_i6.GSR = "DISABLED";
    FD1P3IX key_mode_3008__i1 (.D(n19), .SP(sys_clk_c_enable_263), .CD(n22156), 
            .CK(sys_clk_c), .Q(key_mode[1]));   // d:/new porject/top-xu/top.v(94[22:37])
    defparam key_mode_3008__i1.GSR = "ENABLED";
    FD1P3AX warning_173 (.D(led_N_184), .SP(clk_1s_enable_10), .CK(clk_1s), 
            .Q(warning));   // d:/new porject/top-xu/top.v(186[13] 200[7])
    defparam warning_173.GSR = "DISABLED";
    FD1P3AX min_t_i0_i0 (.D(n5617), .SP(sys_clk_c_enable_283), .CK(sys_clk_c), 
            .Q(min_t[0]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_t_i0_i0.GSR = "DISABLED";
    CCU2D add_133_9 (.A0(sec[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33200), 
          .S0(n752));   // d:/new porject/top-xu/top.v(230[16:26])
    defparam add_133_9.INIT0 = 16'h5aaa;
    defparam add_133_9.INIT1 = 16'h0000;
    defparam add_133_9.INJECT1_0 = "NO";
    defparam add_133_9.INJECT1_1 = "NO";
    CCU2D add_133_7 (.A0(sec[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33199), 
          .COUT(n33200), .S0(n754), .S1(n753));   // d:/new porject/top-xu/top.v(230[16:26])
    defparam add_133_7.INIT0 = 16'h5aaa;
    defparam add_133_7.INIT1 = 16'h5aaa;
    defparam add_133_7.INJECT1_0 = "NO";
    defparam add_133_7.INJECT1_1 = "NO";
    CCU2D add_133_5 (.A0(sec[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33198), 
          .COUT(n33199), .S0(n756), .S1(n755));   // d:/new porject/top-xu/top.v(230[16:26])
    defparam add_133_5.INIT0 = 16'h5aaa;
    defparam add_133_5.INIT1 = 16'h5aaa;
    defparam add_133_5.INJECT1_0 = "NO";
    defparam add_133_5.INJECT1_1 = "NO";
    BB one_wire_pad (.I(one_wire_N_631), .T(n14003), .B(one_wire), .O(one_wire_out));   // d:/new porject/top-xu/ds18b20.v(63[2] 264[5])
    ROM128X1A mux_831_Mux_5 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n123)) /* synthesis initstate=0x00000000CE03DFDF44DCF5DC48DCF5DC */ ;
    defparam mux_831_Mux_5.initval = 128'h00000000CE03DFDF44DCF5DC48DCF5DC;
    ROM128X1A mux_830_Mux_1 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n4207)) /* synthesis initstate=0x0000005007E7E18D8385803000001B85 */ ;
    defparam mux_830_Mux_1.initval = 128'h0000005007E7E18D8385803000001B85;
    ROM128X1A mux_830_Mux_2 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n4206)) /* synthesis initstate=0x07E2009052E7E117A305040800002F05 */ ;
    defparam mux_830_Mux_2.initval = 128'h07E2009052E7E117A305040800002F05;
    ROM128X1A mux_830_Mux_3 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n4205)) /* synthesis initstate=0x02E7E1B600E2E1934221280000002621 */ ;
    defparam mux_830_Mux_3.initval = 128'h02E7E1B600E2E1934221280000002621;
    ROM128X1A mux_830_Mux_4 (.AD0(n2527), .AD1(n38571), .AD2(n38539), 
            .AD3(n2524), .AD4(n2523), .AD5(n38583), .AD6(n2521), .DO0(n4204)) /* synthesis initstate=0x02E3E1B610EAE1972379045800002F79 */ ;
    defparam mux_830_Mux_4.initval = 128'h02E3E1B610EAE1972379045800002F79;
    CCU2D add_133_3 (.A0(sec[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33197), 
          .COUT(n33198), .S0(n758), .S1(n757));   // d:/new porject/top-xu/top.v(230[16:26])
    defparam add_133_3.INIT0 = 16'h5aaa;
    defparam add_133_3.INIT1 = 16'h5aaa;
    defparam add_133_3.INJECT1_0 = "NO";
    defparam add_133_3.INJECT1_1 = "NO";
    FD1P3AX Temp_H_i6 (.D(hundres_1__N_305_adj_1992[1]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[6]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam Temp_H_i6.GSR = "ENABLED";
    FD1P3AX Temp_H_i5 (.D(hundres_1__N_305_adj_1992[0]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[5]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam Temp_H_i5.GSR = "ENABLED";
    FD1P3AX Temp_H_i4 (.D(ds18b20_data[8]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[4]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam Temp_H_i4.GSR = "ENABLED";
    FD1P3AX Temp_H_i3 (.D(ds18b20_data[7]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[3]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam Temp_H_i3.GSR = "ENABLED";
    CCU2D add_1748_5 (.A0(n5313), .B0(n38668), .C0(n5463), .D0(hour_t[2]), 
          .A1(n5313), .B1(n38668), .C1(n5462), .D1(hour_t[3]), .CIN(n33168), 
          .COUT(n33169), .S0(n5598), .S1(n5597));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1748_5.INIT0 = 16'he4b1;
    defparam add_1748_5.INIT1 = 16'he4b1;
    defparam add_1748_5.INJECT1_0 = "NO";
    defparam add_1748_5.INJECT1_1 = "NO";
    FD1P3AX Temp_H_i2 (.D(ds18b20_data[6]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[2]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam Temp_H_i2.GSR = "ENABLED";
    FD1P3AX Temp_H_i1 (.D(ds18b20_data[5]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[1]));   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam Temp_H_i1.GSR = "ENABLED";
    FD1P3AX sec_t_i0_i3 (.D(n5563), .SP(sys_clk_c_enable_324), .CK(sys_clk_c), 
            .Q(sec_t[3]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam sec_t_i0_i3.GSR = "DISABLED";
    CCU2D add_133_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n33197), 
          .S1(n759));   // d:/new porject/top-xu/top.v(230[16:26])
    defparam add_133_1.INIT0 = 16'hF000;
    defparam add_133_1.INIT1 = 16'h5555;
    defparam add_133_1.INJECT1_0 = "NO";
    defparam add_133_1.INJECT1_1 = "NO";
    FD1P3AX time_set_164 (.D(n38718), .SP(sys_clk_c_enable_263), .CK(sys_clk_c), 
            .Q(time_set));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam time_set_164.GSR = "ENABLED";
    CCU2D add_132_9 (.A0(min[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33196), 
          .S0(n742));   // d:/new porject/top-xu/top.v(227[17:27])
    defparam add_132_9.INIT0 = 16'h5aaa;
    defparam add_132_9.INIT1 = 16'h0000;
    defparam add_132_9.INJECT1_0 = "NO";
    defparam add_132_9.INJECT1_1 = "NO";
    FD1P3AX sec_t_i0_i2 (.D(n5564), .SP(sys_clk_c_enable_324), .CK(sys_clk_c), 
            .Q(sec_t[2]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam sec_t_i0_i2.GSR = "DISABLED";
    IB key3_pad (.I(key3), .O(key3_c));   // d:/new porject/top-xu/top.v(7[8:12])
    IB key2_pad (.I(key2), .O(key2_c));   // d:/new porject/top-xu/top.v(6[8:12])
    IB key1_pad (.I(key1), .O(key1_c));   // d:/new porject/top-xu/top.v(5[8:12])
    FD1P3AX sec_t_i0_i1 (.D(n5565), .SP(sys_clk_c_enable_324), .CK(sys_clk_c), 
            .Q(sec_t[1]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam sec_t_i0_i1.GSR = "DISABLED";
    FD1S3AX min_i7 (.D(min_7__N_11[7]), .CK(clk_1s), .Q(min[7]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam min_i7.GSR = "ENABLED";
    FD1S3AX min_i6 (.D(min_7__N_11[6]), .CK(clk_1s), .Q(min[6]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam min_i6.GSR = "ENABLED";
    FD1S3AX min_i5 (.D(min_7__N_11[5]), .CK(clk_1s), .Q(min[5]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam min_i5.GSR = "ENABLED";
    FD1S3AX min_i4 (.D(min_7__N_11[4]), .CK(clk_1s), .Q(min[4]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam min_i4.GSR = "ENABLED";
    FD1S3AX min_i3 (.D(min_7__N_11[3]), .CK(clk_1s), .Q(min[3]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam min_i3.GSR = "ENABLED";
    FD1S3AX min_i2 (.D(min_7__N_11[2]), .CK(clk_1s), .Q(min[2]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam min_i2.GSR = "ENABLED";
    FD1S3AX min_i1 (.D(min_7__N_11[1]), .CK(clk_1s), .Q(min[1]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam min_i1.GSR = "ENABLED";
    FD1S3AX sec_i7 (.D(sec_7__N_1[7]), .CK(clk_1s), .Q(sec[7]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam sec_i7.GSR = "ENABLED";
    CCU2D add_1748_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5313), .B1(n38668), .C1(GND_net), .D1(GND_net), .COUT(n33167));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1748_1.INIT0 = 16'hF000;
    defparam add_1748_1.INIT1 = 16'heeee;
    defparam add_1748_1.INJECT1_0 = "NO";
    defparam add_1748_1.INJECT1_1 = "NO";
    CCU2D add_1748_9 (.A0(n5313), .B0(n38668), .C0(n5459), .D0(hour_t[6]), 
          .A1(n5313), .B1(n38668), .C1(n5458), .D1(hour_t[7]), .CIN(n33170), 
          .S0(n5594), .S1(n5593));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1748_9.INIT0 = 16'he4b1;
    defparam add_1748_9.INIT1 = 16'he4b1;
    defparam add_1748_9.INJECT1_0 = "NO";
    defparam add_1748_9.INJECT1_1 = "NO";
    FD1S3AX sec_i6 (.D(sec_7__N_1[6]), .CK(clk_1s), .Q(sec[6]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam sec_i6.GSR = "ENABLED";
    FD1S3AX sec_i5 (.D(sec_7__N_1[5]), .CK(clk_1s), .Q(sec[5]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam sec_i5.GSR = "ENABLED";
    FD1S3AX sec_i4 (.D(sec_7__N_1[4]), .CK(clk_1s), .Q(sec[4]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam sec_i4.GSR = "ENABLED";
    FD1S3AX sec_i3 (.D(sec_7__N_1[3]), .CK(clk_1s), .Q(sec[3]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam sec_i3.GSR = "ENABLED";
    FD1S3AX sec_i2 (.D(sec_7__N_1[2]), .CK(clk_1s), .Q(sec[2]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam sec_i2.GSR = "ENABLED";
    FD1S3AX sec_i1 (.D(sec_7__N_1[1]), .CK(clk_1s), .Q(sec[1]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam sec_i1.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i7 (.D(n5593), .SP(sys_clk_c_enable_139), .CK(sys_clk_c), 
            .Q(hour_t[7]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_t_i0_i7.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i6 (.D(n5594), .SP(sys_clk_c_enable_139), .CK(sys_clk_c), 
            .Q(hour_t[6]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_t_i0_i6.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i5 (.D(n5595), .SP(sys_clk_c_enable_139), .CK(sys_clk_c), 
            .Q(hour_t[5]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_t_i0_i5.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i4 (.D(n5596), .SP(sys_clk_c_enable_139), .CK(sys_clk_c), 
            .Q(hour_t[4]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_t_i0_i4.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i3 (.D(n5597), .SP(sys_clk_c_enable_139), .CK(sys_clk_c), 
            .Q(hour_t[3]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_t_i0_i3.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i2 (.D(n5598), .SP(sys_clk_c_enable_139), .CK(sys_clk_c), 
            .Q(hour_t[2]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_t_i0_i2.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i1 (.D(n5599), .SP(sys_clk_c_enable_139), .CK(sys_clk_c), 
            .Q(hour_t[1]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_t_i0_i1.GSR = "DISABLED";
    FD1P3IX min_warning__i7 (.D(n5542), .SP(sys_clk_c_enable_146), .CD(n12201), 
            .CK(sys_clk_c), .Q(min_warning[7]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_warning__i7.GSR = "DISABLED";
    FD1P3IX min_warning__i6 (.D(n5543), .SP(sys_clk_c_enable_146), .CD(n12201), 
            .CK(sys_clk_c), .Q(min_warning[6]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_warning__i6.GSR = "DISABLED";
    FD1P3IX min_warning__i5 (.D(n5544), .SP(sys_clk_c_enable_146), .CD(n12201), 
            .CK(sys_clk_c), .Q(min_warning[5]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_warning__i5.GSR = "DISABLED";
    FD1P3IX min_warning__i4 (.D(n5545), .SP(sys_clk_c_enable_146), .CD(n12201), 
            .CK(sys_clk_c), .Q(min_warning[4]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_warning__i4.GSR = "DISABLED";
    FD1P3IX min_warning__i3 (.D(n5546), .SP(sys_clk_c_enable_146), .CD(n12201), 
            .CK(sys_clk_c), .Q(min_warning[3]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_warning__i3.GSR = "DISABLED";
    FD1P3IX min_warning__i2 (.D(n5547), .SP(sys_clk_c_enable_146), .CD(n12201), 
            .CK(sys_clk_c), .Q(min_warning[2]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_warning__i2.GSR = "DISABLED";
    FD1P3IX min_warning__i1 (.D(n5548), .SP(sys_clk_c_enable_146), .CD(n12201), 
            .CK(sys_clk_c), .Q(min_warning[1]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_warning__i1.GSR = "DISABLED";
    FD1P3IX hour_warning__i7 (.D(n5576), .SP(sys_clk_c_enable_166), .CD(n12199), 
            .CK(sys_clk_c), .Q(hour_warning[7]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_warning__i7.GSR = "DISABLED";
    FD1P3IX hour_warning__i6 (.D(n5577), .SP(sys_clk_c_enable_166), .CD(n12199), 
            .CK(sys_clk_c), .Q(hour_warning[6]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_warning__i6.GSR = "DISABLED";
    FD1P3IX hour_warning__i5 (.D(n5578), .SP(sys_clk_c_enable_166), .CD(n12199), 
            .CK(sys_clk_c), .Q(hour_warning[5]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_warning__i5.GSR = "DISABLED";
    FD1P3IX hour_warning__i4 (.D(n5579), .SP(sys_clk_c_enable_166), .CD(n12199), 
            .CK(sys_clk_c), .Q(hour_warning[4]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_warning__i4.GSR = "DISABLED";
    FD1P3IX hour_warning__i3 (.D(n5580), .SP(sys_clk_c_enable_166), .CD(n12199), 
            .CK(sys_clk_c), .Q(hour_warning[3]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_warning__i3.GSR = "DISABLED";
    FD1P3IX hour_warning__i2 (.D(n5581), .SP(sys_clk_c_enable_166), .CD(n12199), 
            .CK(sys_clk_c), .Q(hour_warning[2]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_warning__i2.GSR = "DISABLED";
    FD1P3IX hour_warning__i1 (.D(n5582), .SP(sys_clk_c_enable_166), .CD(n12199), 
            .CK(sys_clk_c), .Q(hour_warning[1]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam hour_warning__i1.GSR = "DISABLED";
    LUT4 i27411_4_lut_4_lut (.A(sw1_c), .B(cnt_main_adj_2027[0]), .C(sec_tens[1]), 
         .D(n9517), .Z(n36720)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam i27411_4_lut_4_lut.init = 16'h7340;
    LUT4 cnt_1__bdd_3_lut_29068 (.A(cnt_adj_2032[1]), .B(cnt_adj_2032[2]), 
         .C(cnt_adj_2032[0]), .Z(n37486)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam cnt_1__bdd_3_lut_29068.init = 16'h2c2c;
    LUT4 i27408_4_lut_4_lut (.A(sw1_c), .B(cnt_main_adj_2027[0]), .C(sec_tens[3]), 
         .D(n9515), .Z(n36717)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam i27408_4_lut_4_lut.init = 16'h7340;
    LUT4 cnt_4__bdd_2_lut_27949 (.A(cnt_adj_2032[4]), .B(cnt_adj_2032[2]), 
         .Z(n37498)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam cnt_4__bdd_2_lut_27949.init = 16'h4444;
    LUT4 mux_2427_i1_4_lut_4_lut (.A(sw1_c), .B(cnt_main_adj_2027[1]), .C(sec[0]), 
         .D(ds18b20_data[4]), .Z(n9637)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam mux_2427_i1_4_lut_4_lut.init = 16'h7340;
    LUT4 i18304_4_lut_4_lut (.A(sw1_c), .B(sec[1]), .C(n38426), .D(n38439), 
         .Z(n9528)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;
    defparam i18304_4_lut_4_lut.init = 16'h4510;
    LUT4 i27670_4_lut_4_lut_4_lut (.A(sw1_c), .B(n36212), .C(n38602), 
         .D(n38604), .Z(sys_clk_c_enable_146)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i27670_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i18305_3_lut_3_lut (.A(sw1_c), .B(n38426), .C(sec[1]), .Z(n9529)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i18305_3_lut_3_lut.init = 16'h1414;
    LUT4 i27409_3_lut_4_lut_4_lut (.A(sw1_c), .B(n9500), .C(cnt_main_adj_2027[0]), 
         .D(n38658), .Z(n36718)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i27409_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i18303_3_lut_4_lut_4_lut_4_lut (.A(sw1_c), .B(hundres_0__N_316[1]), 
         .C(hundres_0__N_316[2]), .D(n38430), .Z(n9527)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;
    defparam i18303_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 hour_warning_tens_0__bdd_4_lut_28068_4_lut_4_lut (.A(sw1_c), .B(hundres_0__N_316[1]), 
         .C(hundres_0__N_316[2]), .D(n38430), .Z(n37368)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam hour_warning_tens_0__bdd_4_lut_28068_4_lut_4_lut.init = 16'h1450;
    LUT4 i18307_4_lut_4_lut (.A(sw1_c), .B(n38429), .C(n12110), .D(hundres_0__N_313[0]), 
         .Z(n9522)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;
    defparam i18307_4_lut_4_lut.init = 16'h4510;
    LUT4 cnt_4__bdd_3_lut_29057 (.A(cnt_adj_2032[2]), .B(cnt_adj_2032[0]), 
         .C(cnt_adj_2032[1]), .Z(n38271)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam cnt_4__bdd_3_lut_29057.init = 16'h3232;
    CCU2D add_132_7 (.A0(min[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33195), 
          .COUT(n33196), .S0(n744), .S1(n743));   // d:/new porject/top-xu/top.v(227[17:27])
    defparam add_132_7.INIT0 = 16'h5aaa;
    defparam add_132_7.INIT1 = 16'h5aaa;
    defparam add_132_7.INJECT1_0 = "NO";
    defparam add_132_7.INJECT1_1 = "NO";
    CCU2D add_132_5 (.A0(min[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33194), 
          .COUT(n33195), .S0(n746), .S1(n745));   // d:/new porject/top-xu/top.v(227[17:27])
    defparam add_132_5.INIT0 = 16'h5aaa;
    defparam add_132_5.INIT1 = 16'h5aaa;
    defparam add_132_5.INJECT1_0 = "NO";
    defparam add_132_5.INJECT1_1 = "NO";
    CCU2D add_132_3 (.A0(min[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33193), 
          .COUT(n33194), .S0(n748), .S1(n747));   // d:/new porject/top-xu/top.v(227[17:27])
    defparam add_132_3.INIT0 = 16'h5aaa;
    defparam add_132_3.INIT1 = 16'h5aaa;
    defparam add_132_3.INJECT1_0 = "NO";
    defparam add_132_3.INJECT1_1 = "NO";
    LUT4 cnt_4__bdd_4_lut_27950 (.A(cnt_adj_2032[4]), .B(cnt_adj_2032[2]), 
         .C(cnt_adj_2032[3]), .D(cnt_adj_2032[1]), .Z(n37499)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B+!(D)))) */ ;
    defparam cnt_4__bdd_4_lut_27950.init = 16'h4e7f;
    LUT4 cnt_4__bdd_4_lut_28936 (.A(cnt_adj_2032[3]), .B(cnt_adj_2032[2]), 
         .C(cnt_adj_2032[0]), .D(cnt_adj_2032[1]), .Z(n38270)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam cnt_4__bdd_4_lut_28936.init = 16'h4115;
    LUT4 n38275_bdd_2_lut (.A(n38275), .B(cnt_adj_2032[0]), .Z(n38276)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n38275_bdd_2_lut.init = 16'h2222;
    LUT4 cnt_2__bdd_4_lut (.A(cnt_adj_2032[2]), .B(cnt_adj_2032[4]), .C(cnt_adj_2032[1]), 
         .D(cnt_adj_2032[3]), .Z(n38275)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam cnt_2__bdd_4_lut.init = 16'h3525;
    CCU2D add_132_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[0]), .B1(sec[7]), .C1(n19937), .D1(sec[6]), .COUT(n33193), 
          .S1(n749));   // d:/new porject/top-xu/top.v(227[17:27])
    defparam add_132_1.INIT0 = 16'hF000;
    defparam add_132_1.INIT1 = 16'h5556;
    defparam add_132_1.INJECT1_0 = "NO";
    defparam add_132_1.INJECT1_1 = "NO";
    CCU2D add_118_9 (.A0(warning_time[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33192), .S0(n695));   // d:/new porject/top-xu/top.v(191[23:42])
    defparam add_118_9.INIT0 = 16'h5aaa;
    defparam add_118_9.INIT1 = 16'h0000;
    defparam add_118_9.INJECT1_0 = "NO";
    defparam add_118_9.INJECT1_1 = "NO";
    CCU2D add_118_7 (.A0(warning_time[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33191), .COUT(n33192), .S0(n697), .S1(n696));   // d:/new porject/top-xu/top.v(191[23:42])
    defparam add_118_7.INIT0 = 16'h5aaa;
    defparam add_118_7.INIT1 = 16'h5aaa;
    defparam add_118_7.INJECT1_0 = "NO";
    defparam add_118_7.INJECT1_1 = "NO";
    CCU2D add_118_5 (.A0(warning_time[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33190), .COUT(n33191), .S0(n699), .S1(n698));   // d:/new porject/top-xu/top.v(191[23:42])
    defparam add_118_5.INIT0 = 16'h5aaa;
    defparam add_118_5.INIT1 = 16'h5aaa;
    defparam add_118_5.INJECT1_0 = "NO";
    defparam add_118_5.INJECT1_1 = "NO";
    CCU2D add_118_3 (.A0(warning_time[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33189), .COUT(n33190), .S0(n701), .S1(n700));   // d:/new porject/top-xu/top.v(191[23:42])
    defparam add_118_3.INIT0 = 16'h5aaa;
    defparam add_118_3.INIT1 = 16'h5aaa;
    defparam add_118_3.INJECT1_0 = "NO";
    defparam add_118_3.INJECT1_1 = "NO";
    CCU2D add_118_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(warning_time[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33189), .S1(n702));   // d:/new porject/top-xu/top.v(191[23:42])
    defparam add_118_1.INIT0 = 16'hF000;
    defparam add_118_1.INIT1 = 16'h5555;
    defparam add_118_1.INJECT1_0 = "NO";
    defparam add_118_1.INJECT1_1 = "NO";
    CCU2D equal_3006_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[7]), .B1(min_warning[7]), .C1(min[6]), .D1(min_warning[6]), 
          .COUT(n33015));   // d:/new porject/top-xu/top.v(187[8:28])
    defparam equal_3006_0.INIT0 = 16'hF000;
    defparam equal_3006_0.INIT1 = 16'h9009;
    defparam equal_3006_0.INJECT1_0 = "NO";
    defparam equal_3006_0.INJECT1_1 = "YES";
    LUT4 i24110_3_lut (.A(key_mode[2]), .B(key_mode[1]), .C(key_mode[0]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/top.v(94[22:37])
    defparam i24110_3_lut.init = 16'h6a6a;
    LUT4 cnt_0__bdd_3_lut_28485 (.A(cnt_adj_2032[0]), .B(cnt_adj_2032[1]), 
         .C(cnt_adj_2032[2]), .Z(n38360)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam cnt_0__bdd_3_lut_28485.init = 16'h4040;
    LUT4 cnt_0__bdd_4_lut_28486 (.A(cnt_adj_2032[0]), .B(cnt_adj_2032[3]), 
         .C(cnt_adj_2032[1]), .D(cnt_adj_2032[2]), .Z(n38359)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_28486.init = 16'h0311;
    FD1P3AX min_t_i0_i1 (.D(n5616), .SP(sys_clk_c_enable_283), .CK(sys_clk_c), 
            .Q(min_t[1]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_t_i0_i1.GSR = "DISABLED";
    LUT4 i1034_2_lut (.A(clk_1s), .B(sys_rst_n_c), .Z(sys_clk_c_enable_77)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/top.v(347[8] 365[6])
    defparam i1034_2_lut.init = 16'h8888;
    CCU2D add_1739_9 (.A0(key_sec_pre_adj_1839), .B0(key_sec_adj_1840), 
          .C0(hour_warning[6]), .D0(GND_net), .A1(key_sec_pre_adj_1839), 
          .B1(key_sec_adj_1840), .C1(hour_warning[7]), .D1(GND_net), .CIN(n33187), 
          .S0(n5577), .S1(n5576));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1739_9.INIT0 = 16'h2d2d;
    defparam add_1739_9.INIT1 = 16'h2d2d;
    defparam add_1739_9.INJECT1_0 = "NO";
    defparam add_1739_9.INJECT1_1 = "NO";
    LUT4 sec_7__I_0_i1_4_lut (.A(n759), .B(sec_t[0]), .C(n38634), .D(n33613), 
         .Z(sec_7__N_1[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(223[7] 240[10])
    defparam sec_7__I_0_i1_4_lut.init = 16'hc0ca;
    LUT4 i2_3_lut (.A(sec[7]), .B(sec[6]), .C(n19937), .Z(n33613)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut (.A(n6_adj_1854), .B(sec[5]), .C(sec[4]), .D(sec[3]), 
         .Z(n19937)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i3598_3_lut (.A(sec[0]), .B(sec[2]), .C(sec[1]), .Z(n6_adj_1854)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i3598_3_lut.init = 16'hecec;
    CCU2D add_1739_7 (.A0(key_sec_pre_adj_1839), .B0(key_sec_adj_1840), 
          .C0(hour_warning[4]), .D0(GND_net), .A1(key_sec_pre_adj_1839), 
          .B1(key_sec_adj_1840), .C1(hour_warning[5]), .D1(GND_net), .CIN(n33186), 
          .COUT(n33187), .S0(n5579), .S1(n5578));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1739_7.INIT0 = 16'h2d2d;
    defparam add_1739_7.INIT1 = 16'h2d2d;
    defparam add_1739_7.INJECT1_0 = "NO";
    defparam add_1739_7.INJECT1_1 = "NO";
    LUT4 i27797_4_lut_4_lut (.A(n38566), .B(n36198), .C(n38657), .D(n38604), 
         .Z(sys_clk_c_enable_324)) /* synthesis lut_function=(!(A+(B (D)+!B (C (D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i27797_4_lut_4_lut.init = 16'h0155;
    LUT4 i24103_2_lut (.A(key_mode[1]), .B(key_mode[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/top.v(94[22:37])
    defparam i24103_2_lut.init = 16'h6666;
    LUT4 mux_266_Mux_3_i30_4_lut_3_lut_4_lut (.A(cnt_adj_2032[1]), .B(cnt_adj_2032[2]), 
         .C(cnt_adj_2032[3]), .D(cnt_adj_2032[0]), .Z(n28217)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(127[20] 130[14])
    defparam mux_266_Mux_3_i30_4_lut_3_lut_4_lut.init = 16'hfee0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_246 (.A(cnt_adj_2032[1]), .B(cnt_adj_2032[2]), 
         .C(cnt_adj_2032[3]), .D(cnt_adj_2032[0]), .Z(n4_adj_1867)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(127[20] 130[14])
    defparam i1_2_lut_3_lut_4_lut_adj_246.init = 16'hf0e0;
    LUT4 min_7__I_0_i1_4_lut (.A(n749), .B(min_t[0]), .C(n38634), .D(n778), 
         .Z(min_7__N_11[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(223[7] 240[10])
    defparam min_7__I_0_i1_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut (.A(sys_rst_n_c), .B(warning_time_7__N_144), .Z(clk_1s_enable_10)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i2_4_lut (.A(min[7]), .B(min[6]), .C(n5), .D(n6), .Z(n778)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hfeee;
    LUT4 i1_4_lut (.A(min[0]), .B(min[4]), .C(min[2]), .D(min[1]), .Z(n5)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut.init = 16'hc8c0;
    LUT4 cnt_0__bdd_4_lut_28332 (.A(cnt_adj_2032[4]), .B(cnt_adj_2032[3]), 
         .C(cnt_adj_2032[1]), .D(cnt_adj_2032[2]), .Z(n38162)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam cnt_0__bdd_4_lut_28332.init = 16'h144f;
    LUT4 i2_2_lut (.A(min[5]), .B(min[3]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 cnt_0__bdd_3_lut_27944 (.A(cnt_adj_2032[0]), .B(cnt_adj_2032[2]), 
         .C(cnt_adj_2032[1]), .Z(n37237)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam cnt_0__bdd_3_lut_27944.init = 16'h1616;
    FD1P3IX hour_i1 (.D(hour_t[1]), .SP(clk_1s_enable_17), .CD(n22032), 
            .CK(clk_1s), .Q(hour[1]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam hour_i1.GSR = "ENABLED";
    FD1P3IX hour_i2 (.D(hour_t[2]), .SP(clk_1s_enable_17), .CD(n22032), 
            .CK(clk_1s), .Q(hour[2]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam hour_i2.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_247 (.A(n36121), .B(state_adj_2053[1]), .C(state_adj_2053[0]), 
         .Z(sys_clk_c_enable_294)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i2_3_lut_adj_247.init = 16'h0808;
    FD1P3IX hour_i3 (.D(hour_t[3]), .SP(clk_1s_enable_17), .CD(n22032), 
            .CK(clk_1s), .Q(hour[3]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam hour_i3.GSR = "ENABLED";
    FD1P3IX hour_i4 (.D(hour_t[4]), .SP(clk_1s_enable_17), .CD(n22032), 
            .CK(clk_1s), .Q(hour[4]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam hour_i4.GSR = "ENABLED";
    LUT4 i27715_4_lut (.A(n38566), .B(n38604), .C(sw1_c), .D(n36212), 
         .Z(sys_clk_c_enable_283)) /* synthesis lut_function=(!(A+(B (C+(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i27715_4_lut.init = 16'h1115;
    FD1P3IX hour_i5 (.D(hour_t[5]), .SP(clk_1s_enable_17), .CD(n22032), 
            .CK(clk_1s), .Q(hour[5]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam hour_i5.GSR = "ENABLED";
    FD1P3IX hour_i6 (.D(hour_t[6]), .SP(clk_1s_enable_17), .CD(n22032), 
            .CK(clk_1s), .Q(hour[6]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam hour_i6.GSR = "ENABLED";
    FD1P3IX hour_i7 (.D(hour_t[7]), .SP(clk_1s_enable_17), .CD(n22032), 
            .CK(clk_1s), .Q(hour[7]));   // d:/new porject/top-xu/top.v(215[5] 241[8])
    defparam hour_i7.GSR = "ENABLED";
    FD1P3IX key_mode_3008__i0 (.D(n21), .SP(sys_clk_c_enable_263), .CD(n22156), 
            .CK(sys_clk_c), .Q(key_mode[0]));   // d:/new porject/top-xu/top.v(94[22:37])
    defparam key_mode_3008__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_406_4_lut (.A(sys_rst_n_c), .B(sw1_c), .C(n38565), 
         .D(n36057), .Z(n38526)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_406_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_4_lut (.A(sys_rst_n_c), .B(sw1_c), .C(n38565), .D(n36108), 
         .Z(n20808)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0200;
    LUT4 i2_4_lut_adj_248 (.A(hour[7]), .B(n8), .C(n38704), .D(hour[4]), 
         .Z(n797)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_248.init = 16'hfefa;
    LUT4 i3591_4_lut (.A(hour[2]), .B(hour[3]), .C(hour[1]), .D(hour[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i3591_4_lut.init = 16'heccc;
    LUT4 i2_4_lut_adj_249 (.A(warning), .B(sys_rst_n_c), .C(recv_done_d0), 
         .D(recv_done_d1), .Z(n36121)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i2_4_lut_adj_249.init = 16'h8808;
    FD1P3AY led_172 (.D(led_N_181), .SP(warning_time_7__N_144), .CK(clk_1s), 
            .Q(led_c));   // d:/new porject/top-xu/top.v(186[13] 200[7])
    defparam led_172.GSR = "ENABLED";
    FD1P3AX min_t_i0_i2 (.D(n5615), .SP(sys_clk_c_enable_283), .CK(sys_clk_c), 
            .Q(min_t[2]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_t_i0_i2.GSR = "DISABLED";
    FD1P3AX min_t_i0_i3 (.D(n5614), .SP(sys_clk_c_enable_283), .CK(sys_clk_c), 
            .Q(min_t[3]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_t_i0_i3.GSR = "DISABLED";
    FD1P3AX min_t_i0_i4 (.D(n5613), .SP(sys_clk_c_enable_283), .CK(sys_clk_c), 
            .Q(min_t[4]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_t_i0_i4.GSR = "DISABLED";
    FD1P3AX min_t_i0_i5 (.D(n5612), .SP(sys_clk_c_enable_283), .CK(sys_clk_c), 
            .Q(min_t[5]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_t_i0_i5.GSR = "DISABLED";
    FD1P3AX min_t_i0_i6 (.D(n5611), .SP(sys_clk_c_enable_283), .CK(sys_clk_c), 
            .Q(min_t[6]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_t_i0_i6.GSR = "DISABLED";
    FD1P3AX min_t_i0_i7 (.D(n5610), .SP(sys_clk_c_enable_283), .CK(sys_clk_c), 
            .Q(min_t[7]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam min_t_i0_i7.GSR = "DISABLED";
    LUT4 i2_1_lut (.A(key_mode[0]), .Z(n21)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam i2_1_lut.init = 16'h5555;
    LUT4 reduce_nor_78_i1_2_lut_rep_594 (.A(key_mode[1]), .B(key_mode[2]), 
         .Z(n38714)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/top.v(169[14:23])
    defparam reduce_nor_78_i1_2_lut_rep_594.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(key_mode[1]), .B(key_mode[2]), .C(n35918), 
         .Z(n6_adj_1859)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/top.v(169[14:23])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 key_mode_2__I_0_186_i2_2_lut_rep_514_3_lut (.A(key_mode[1]), .B(key_mode[2]), 
         .C(key_mode[0]), .Z(n38634)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/top.v(169[14:23])
    defparam key_mode_2__I_0_186_i2_2_lut_rep_514_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_2_lut_3_lut (.A(key_mode[1]), .B(key_mode[2]), .C(sw1_c), 
         .Z(n4_adj_1858)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/new porject/top-xu/top.v(169[14:23])
    defparam i1_2_lut_2_lut_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_550 (.A(key_sec_pre), .B(key_sec), .Z(n38670)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_550.init = 16'hdddd;
    LUT4 mux_266_Mux_2_i22_4_lut_3_lut (.A(cnt_adj_2032[1]), .B(cnt_adj_2032[2]), 
         .C(cnt_adj_2032[0]), .Z(n22)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // d:/new porject/top-xu/oled.v(127[20] 130[14])
    defparam mux_266_Mux_2_i22_4_lut_3_lut.init = 16'h9898;
    LUT4 i2_3_lut_rep_431_4_lut (.A(n38634), .B(n38604), .C(sw1_c), .D(sys_rst_n_c), 
         .Z(n38551)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i2_3_lut_rep_431_4_lut.init = 16'h0d00;
    LUT4 i2_4_lut_adj_250 (.A(n35994), .B(n38616), .C(state_adj_2053[1]), 
         .D(n36), .Z(sys_clk_c_enable_100)) /* synthesis lut_function=(!(A (B)+!A (B+(C+(D))))) */ ;   // d:/new porject/top-xu/music_player.v(36[11:18])
    defparam i2_4_lut_adj_250.init = 16'h2223;
    LUT4 i2_4_lut_adj_251 (.A(clk_cnt_adj_2056[6]), .B(n381), .C(n4_adj_1853), 
         .D(state_adj_2053[0]), .Z(n35994)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/new porject/top-xu/music_player.v(36[11:18])
    defparam i2_4_lut_adj_251.init = 16'h0080;
    LUT4 i18633_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(hour[1]), .Z(n5464)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18633_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18636_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(sec[5]), .Z(n5441)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18636_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18637_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(sec[4]), .Z(n5442)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18637_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18629_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(hour[5]), .Z(n5460)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18629_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_adj_252 (.A(n33833), .B(clk_cnt_adj_2056[9]), .Z(n4_adj_1853)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/music_player.v(36[11:18])
    defparam i1_2_lut_adj_252.init = 16'h4444;
    LUT4 i18408_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(hour[0]), .Z(n5465)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18408_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18630_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(hour[4]), .Z(n5461)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18630_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18635_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(sec[6]), .Z(n5440)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18635_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18634_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(sec[7]), .Z(n5439)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18634_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18627_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(hour[7]), .Z(n5458)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18627_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18628_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(hour[6]), .Z(n5459)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18628_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18631_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(hour[3]), .Z(n5462)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18631_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i27819_4_lut_rep_598 (.A(key_mode[2]), .B(sw1_c), .C(key_mode[1]), 
         .D(key_mode[0]), .Z(n38718)) /* synthesis lut_function=(!(A+(B (C)+!B (C (D))))) */ ;
    defparam i27819_4_lut_rep_598.init = 16'h0515;
    LUT4 i18632_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(hour[2]), .Z(n5463)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18632_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18639_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(sec[2]), .Z(n5444)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18639_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18638_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(sec[3]), .Z(n5443)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18638_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18403_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(sec[0]), .Z(n5446)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18403_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18640_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(sec[1]), .Z(n5445)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18640_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18809_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(min[6]), .Z(n5403)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18809_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18810_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(min[7]), .Z(n5402)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18810_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18807_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(min[4]), .Z(n5405)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18807_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18808_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(min[5]), .Z(n5404)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18808_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18805_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(min[2]), .Z(n5407)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18805_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18806_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(min[3]), .Z(n5406)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18806_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i18542_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(min[0]), .Z(n5409)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18542_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_253 (.A(n35982), .B(n38525), .C(n38666), .D(n20362), 
         .Z(n5313)) /* synthesis lut_function=(A ((C)+!B)+!A ((C (D))+!B)) */ ;
    defparam i1_4_lut_adj_253.init = 16'hf3b3;
    LUT4 i18804_2_lut_3_lut_4_lut_4_lut (.A(n38634), .B(n38604), .C(n38602), 
         .D(min[1]), .Z(n5408)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i18804_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_254 (.A(n20808), .B(n36410), .C(n36504), .D(n36251), 
         .Z(n35982)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_254.init = 16'h0002;
    LUT4 i2_4_lut_adj_255 (.A(n38526), .B(n38670), .C(n1), .D(n33621), 
         .Z(n20362)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_255.init = 16'h8880;
    LUT4 i27102_2_lut (.A(hour_t[4]), .B(hour_t[6]), .Z(n36410)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27102_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_446_4_lut (.A(sys_clk_c_enable_263), .B(sys_rst_n_c), 
         .C(n38604), .D(n38634), .Z(n38566)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i1_2_lut_rep_446_4_lut.init = 16'hbfbb;
    LUT4 i1_4_lut_adj_256 (.A(state_adj_2053[1]), .B(state_adj_2053[0]), 
         .C(n3500), .D(state_back_adj_2054[0]), .Z(n40)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B))) */ ;   // d:/new porject/top-xu/music_player.v(41[11:16])
    defparam i1_4_lut_adj_256.init = 16'h3313;
    LUT4 i27195_4_lut (.A(hour_t[1]), .B(hour_t[3]), .C(hour_t[7]), .D(hour_t[5]), 
         .Z(n36504)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27195_4_lut.init = 16'hfffe;
    LUT4 i26963_2_lut (.A(hour_t[2]), .B(hour_t[0]), .Z(n36251)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i26963_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_257 (.A(hour_t[3]), .B(hour_t[4]), .C(hour_t[2]), 
         .D(n4_adj_1860), .Z(n1)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_257.init = 16'hc888;
    LUT4 i2_3_lut_adj_258 (.A(hour_t[7]), .B(hour_t[6]), .C(hour_t[5]), 
         .Z(n33621)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_258.init = 16'hfefe;
    LUT4 i1_2_lut_adj_259 (.A(hour_t[1]), .B(hour_t[0]), .Z(n4_adj_1860)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_259.init = 16'h8888;
    LUT4 i3_4_lut_adj_260 (.A(n38515), .B(n38660), .C(n38689), .D(n36121), 
         .Z(sys_clk_c_enable_323)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i3_4_lut_adj_260.init = 16'h4000;
    LUT4 i27636_4_lut_4_lut (.A(n38604), .B(n38602), .C(n4_adj_1858), 
         .D(key_mode[0]), .Z(sys_clk_c_enable_166)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i27636_4_lut_4_lut.init = 16'h0200;
    LUT4 i1_4_lut_4_lut (.A(sys_rst_n_c), .B(sw1_c), .C(n38604), .D(sys_clk_c_enable_263), 
         .Z(n35918)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam i1_4_lut_4_lut.init = 16'h0080;
    music_play m_music_play (.\state[0] (state_adj_2053[0]), .sys_clk_c(sys_clk_c), 
            .sys_clk_c_enable_100(sys_clk_c_enable_100), .n40(n40), .sys_clk_c_enable_294(sys_clk_c_enable_294), 
            .recv_done_d1(recv_done_d1), .recv_done_d0(recv_done_d0), .cnt_run({Open_0, 
            Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, cnt_run[0]}), 
            .\music_tone[0] (music_tone[0]), .\state_back[0] (state_back_adj_2054[0]), 
            .sys_clk_c_enable_23(sys_clk_c_enable_23), .uart_recv_done(uart_recv_done), 
            .GND_net(GND_net), .\clk_cnt[9] (clk_cnt_adj_2056[9]), .\clk_cnt[6] (clk_cnt_adj_2056[6]), 
            .\state[1] (state_adj_2053[1]), .warning_TEM(warning_TEM), .uart_music_mode(uart_music_mode), 
            .\music_tone[4] (music_tone[4]), .\music_tone[3] (music_tone[3]), 
            .\music_tone[2] (music_tone[2]), .\music_tone[1] (music_tone[1]), 
            .n39972(n39972), .warning(warning), .n38616(n38616), .uart_recv_data({uart_recv_data}), 
            .n35840(n35840), .n12(n12), .sys_rst_n_c(sys_rst_n_c), .n35852(n35852), 
            .\music_cnt[5] (music_cnt[5]), .\music_cnt[6] (music_cnt[6]), 
            .\music_cnt[3] (music_cnt[3]), .\music_cnt[4] (music_cnt[4]), 
            .n381(n381), .\music_cnt[1] (music_cnt[1]), .\music_cnt[2] (music_cnt[2]), 
            .\music_cnt[0] (music_cnt[0]), .n38689(n38689), .n137(n137), 
            .n33833(n33833), .n3500(n3500), .sys_clk_c_enable_323(sys_clk_c_enable_323), 
            .n38515(n38515), .n123(n123), .n5(n5_adj_1863), .n47(n47), 
            .n126(n126), .n38660(n38660), .n71(n71)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(487[13] 500[6])
    LUT4 i17800_4_lut (.A(n778), .B(min_t[7]), .C(n38634), .D(n742), 
         .Z(min_7__N_11[7])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i17800_4_lut.init = 16'hc5c0;
    LUT4 i17803_4_lut (.A(n778), .B(min_t[6]), .C(n38634), .D(n743), 
         .Z(min_7__N_11[6])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i17803_4_lut.init = 16'hc5c0;
    LUT4 i17806_4_lut (.A(n778), .B(min_t[5]), .C(n38634), .D(n744), 
         .Z(min_7__N_11[5])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i17806_4_lut.init = 16'hc5c0;
    LUT4 i17797_4_lut (.A(n778), .B(min_t[4]), .C(n38634), .D(n745), 
         .Z(min_7__N_11[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i17797_4_lut.init = 16'hc5c0;
    LUT4 i17794_4_lut (.A(n778), .B(min_t[3]), .C(n38634), .D(n746), 
         .Z(min_7__N_11[3])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i17794_4_lut.init = 16'hc5c0;
    LUT4 min_7__I_0_i3_4_lut (.A(n747), .B(min_t[2]), .C(n38634), .D(n778), 
         .Z(min_7__N_11[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(223[7] 240[10])
    defparam min_7__I_0_i3_4_lut.init = 16'hc0ca;
    LUT4 min_7__I_0_i2_4_lut (.A(n748), .B(min_t[1]), .C(n38634), .D(n778), 
         .Z(min_7__N_11[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(223[7] 240[10])
    defparam min_7__I_0_i2_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i8_4_lut (.A(n752), .B(sec_t[7]), .C(n38634), .D(n33613), 
         .Z(sec_7__N_1[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(223[7] 240[10])
    defparam sec_7__I_0_i8_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i7_4_lut (.A(n753), .B(sec_t[6]), .C(n38634), .D(n33613), 
         .Z(sec_7__N_1[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(223[7] 240[10])
    defparam sec_7__I_0_i7_4_lut.init = 16'hc0ca;
    LUT4 i17990_4_lut (.A(n754), .B(sec_t[5]), .C(n38634), .D(n33613), 
         .Z(sec_7__N_1[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i17990_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_405_3_lut_3_lut_4_lut (.A(sys_clk_c_enable_263), .B(sys_rst_n_c), 
         .C(n38604), .D(n38634), .Z(n38525)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i1_2_lut_rep_405_3_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i17992_4_lut (.A(n755), .B(sec_t[4]), .C(n38634), .D(n33613), 
         .Z(sec_7__N_1[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i17992_4_lut.init = 16'hc0ca;
    LUT4 i17991_4_lut (.A(n756), .B(sec_t[3]), .C(n38634), .D(n33613), 
         .Z(sec_7__N_1[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i17991_4_lut.init = 16'hc0ca;
    LUT4 i17993_4_lut (.A(n757), .B(sec_t[2]), .C(n38634), .D(n33613), 
         .Z(sec_7__N_1[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i17993_4_lut.init = 16'hc0ca;
    LUT4 i17989_4_lut (.A(n758), .B(sec_t[1]), .C(n38634), .D(n33613), 
         .Z(sec_7__N_1[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/top.v(25[14:17])
    defparam i17989_4_lut.init = 16'hc0ca;
    LUT4 i13_4_lut (.A(uart_music_mode), .B(n124), .C(warning), .D(n35906), 
         .Z(n35840)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i13_4_lut.init = 16'hc505;
    LUT4 i3_4_lut_adj_261 (.A(n5_adj_1863), .B(cnt_run[0]), .C(state_adj_2053[0]), 
         .D(state_adj_2053[1]), .Z(n35906)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i3_4_lut_adj_261.init = 16'h0010;
    LUT4 i13_4_lut_adj_262 (.A(uart_music_mode), .B(n125), .C(warning), 
         .D(n35906), .Z(n35852)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i13_4_lut_adj_262.init = 16'hc505;
    LUT4 i1_2_lut_adj_263 (.A(n5_adj_1863), .B(n137), .Z(n47)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_263.init = 16'h4444;
    LUT4 i1_2_lut_adj_264 (.A(led_c), .B(led_N_184), .Z(led_N_181)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/new porject/top-xu/top.v(73[16:28])
    defparam i1_2_lut_adj_264.init = 16'h7777;
    CCU2D add_1748_7 (.A0(n5313), .B0(n38668), .C0(n5461), .D0(hour_t[4]), 
          .A1(n5313), .B1(n38668), .C1(n5460), .D1(hour_t[5]), .CIN(n33169), 
          .COUT(n33170), .S0(n5596), .S1(n5595));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1748_7.INIT0 = 16'he4b1;
    defparam add_1748_7.INIT1 = 16'he4b1;
    defparam add_1748_7.INJECT1_0 = "NO";
    defparam add_1748_7.INJECT1_1 = "NO";
    CCU2D add_1748_3 (.A0(n38668), .B0(n5313), .C0(n5465), .D0(hour_t[0]), 
          .A1(n5313), .B1(n38668), .C1(n5464), .D1(hour_t[1]), .CIN(n33167), 
          .COUT(n33168), .S0(n5600), .S1(n5599));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1748_3.INIT0 = 16'hd1e2;
    defparam add_1748_3.INIT1 = 16'he4b1;
    defparam add_1748_3.INJECT1_0 = "NO";
    defparam add_1748_3.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(n5_adj_1863), .B(state_adj_2053[0]), .C(cnt_run[0]), 
         .Z(n36)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // d:/new porject/top-xu/music_player.v(36[11:18])
    defparam i1_3_lut.init = 16'h8c8c;
    LUT4 i27780_2_lut_2_lut (.A(warning_time_7__N_144), .B(led_N_184), .Z(clk_1s_enable_9)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i27780_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_445_4_lut (.A(n38668), .B(key_sec_pre_adj_1841), .C(key_sec_adj_1842), 
         .D(n38634), .Z(n38565)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (D)))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i1_2_lut_rep_445_4_lut.init = 16'h5100;
    BCD bcd_sec (.\sec[5] (sec[5]), .\sec[6] (sec[6]), .\sec[7] (sec[7]), 
        .\sec[4] (sec[4]), .\sec[3] (sec[3]), .\sec[2] (sec[2]), .\hundres_0__N_316[2] (hundres_0__N_316[2]), 
        .n38429(n38429), .n38439(n38439), .\hundres_0__N_316[1] (hundres_0__N_316[1]), 
        .\hundres_0__N_313[0] (hundres_0__N_313[0]), .n12110(n12110), .\sec_tens[3] (sec_tens[3]), 
        .\sec[1] (sec[1]), .n38430(n38430), .n38426(n38426), .\sec_tens[1] (sec_tens[1])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(275[6] 282[3])
    LUT4 i1_4_lut_adj_265 (.A(n36111), .B(n38670), .C(n36057), .D(n7), 
         .Z(n14)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam i1_4_lut_adj_265.init = 16'heaaa;
    LUT4 i6_4_lut (.A(n36108), .B(n36602), .C(hour_warning[4]), .D(hour_warning[1]), 
         .Z(n36111)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam i6_4_lut.init = 16'h0002;
    VLO i1 (.Z(GND_net));
    LUT4 i3_4_lut_adj_266 (.A(hour_warning[5]), .B(hour_warning[7]), .C(hour_warning[6]), 
         .D(n10), .Z(n7)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_266.init = 16'hfffe;
    LUT4 i27293_4_lut (.A(hour_warning[5]), .B(hour_warning[3]), .C(hour_warning[2]), 
         .D(n36512), .Z(n36602)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27293_4_lut.init = 16'hfffe;
    LUT4 i27203_3_lut (.A(hour_warning[0]), .B(hour_warning[6]), .C(hour_warning[7]), 
         .Z(n36512)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i27203_3_lut.init = 16'hfefe;
    LUT4 cnt_3__bdd_4_lut_29060 (.A(cnt_adj_2032[3]), .B(cnt_adj_2032[2]), 
         .C(cnt_adj_2032[0]), .D(cnt_adj_2032[1]), .Z(n37417)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B (C+(D))))) */ ;
    defparam cnt_3__bdd_4_lut_29060.init = 16'h4e48;
    LUT4 i1_4_lut_adj_267 (.A(hour_warning[4]), .B(hour_warning[3]), .C(hour_warning[2]), 
         .D(n4), .Z(n10)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_267.init = 16'ha888;
    LUT4 i1_4_lut_adj_268 (.A(key_mode[1]), .B(n38525), .C(key_mode[0]), 
         .D(n21033), .Z(n5262)) /* synthesis lut_function=(A ((C (D))+!B)+!A !(B)) */ ;
    defparam i1_4_lut_adj_268.init = 16'hb333;
    LUT4 i1_4_lut_adj_269 (.A(n35976), .B(sec_t[6]), .C(n36087), .D(n4_adj_1864), 
         .Z(n21033)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_269.init = 16'hfaea;
    LUT4 i1_2_lut_adj_270 (.A(hour_warning[1]), .B(hour_warning[0]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_270.init = 16'h8888;
    LUT4 i1_3_lut_adj_271 (.A(n20769), .B(key_sec_adj_1842), .C(key_mode[2]), 
         .Z(n36108)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam i1_3_lut_adj_271.init = 16'h0202;
    LUT4 i2_4_lut_adj_272 (.A(key_sec_pre_adj_1839), .B(key_sec_pre_adj_1841), 
         .C(key_sec_adj_1840), .D(n38670), .Z(n20769)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D))) */ ;
    defparam i2_4_lut_adj_272.init = 16'hc400;
    LUT4 i1_4_lut_adj_273 (.A(n20808), .B(n36420), .C(n36570), .D(n36482), 
         .Z(n35976)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_273.init = 16'h0002;
    LUT4 i1_4_lut_adj_274 (.A(sec_t[7]), .B(n5_adj_1861), .C(sec_t[4]), 
         .D(sec_t[5]), .Z(n4_adj_1864)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // d:/new porject/top-xu/top.v(62[16:21])
    defparam i1_4_lut_adj_274.init = 16'heaaa;
    LUT4 i27112_2_lut (.A(sec_t[3]), .B(sec_t[6]), .Z(n36420)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27112_2_lut.init = 16'heeee;
    LUT4 i27261_4_lut (.A(sec_t[1]), .B(sec_t[0]), .C(sec_t[7]), .D(sec_t[5]), 
         .Z(n36570)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27261_4_lut.init = 16'hfffe;
    LUT4 i27173_2_lut (.A(sec_t[4]), .B(sec_t[2]), .Z(n36482)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27173_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_275 (.A(sec_t[3]), .B(sec_t[1]), .C(sec_t[2]), .D(sec_t[0]), 
         .Z(n5_adj_1861)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/top.v(62[16:21])
    defparam i1_4_lut_adj_275.init = 16'ha8a0;
    LUT4 i1_3_lut_adj_276 (.A(key_sec_pre_adj_1839), .B(key_sec_adj_1840), 
         .C(key_mode[2]), .Z(n36057)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut_adj_276.init = 16'h0202;
    LUT4 m1_lut (.Z(n39972)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i1_4_lut_adj_277 (.A(n35980), .B(n38525), .C(n36077), .D(n36089), 
         .Z(n5343)) /* synthesis lut_function=(A ((C)+!B)+!A ((C (D))+!B)) */ ;
    defparam i1_4_lut_adj_277.init = 16'hf3b3;
    LUT4 i1_4_lut_adj_278 (.A(n20808), .B(n36412), .C(n36574), .D(n36492), 
         .Z(n35980)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_278.init = 16'h0002;
    LUT4 i1_4_lut_adj_279 (.A(min_t[7]), .B(n36087), .C(n33533), .D(min_t[6]), 
         .Z(n36089)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_279.init = 16'hccc8;
    LUT4 i27104_2_lut (.A(min_t[4]), .B(min_t[6]), .Z(n36412)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27104_2_lut.init = 16'heeee;
    LUT4 i27265_4_lut (.A(min_t[5]), .B(min_t[1]), .C(min_t[3]), .D(min_t[7]), 
         .Z(n36574)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27265_4_lut.init = 16'hfffe;
    PFUMX i28461 (.BLUT(n38360), .ALUT(n38359), .C0(cnt_adj_2032[4]), 
          .Z(n38361));
    LUT4 i27183_2_lut (.A(min_t[2]), .B(min_t[0]), .Z(n36492)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27183_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_280 (.A(min_t[5]), .B(min_t[4]), .C(min_t[3]), .D(n80), 
         .Z(n33533)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/top.v(63[16:21])
    defparam i3_4_lut_adj_280.init = 16'h8000;
    LUT4 i1_3_lut_adj_281 (.A(min_t[2]), .B(min_t[1]), .C(min_t[0]), .Z(n80)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut_adj_281.init = 16'heaea;
    LUT4 i27673_4_lut_4_lut (.A(n38566), .B(n36198), .C(n38714), .D(n38604), 
         .Z(sys_clk_c_enable_139)) /* synthesis lut_function=(!(A+(B (D)+!B (C (D))))) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i27673_4_lut_4_lut.init = 16'h0155;
    LUT4 mux_3259_i1_4_lut (.A(hundres_0__N_316_adj_2000[2]), .B(n10382), 
         .C(cnt_main_adj_2027[2]), .D(n13024), .Z(n9648)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam mux_3259_i1_4_lut.init = 16'hc5ca;
    LUT4 hour_7__I_0_i1_3_lut_4_lut (.A(key_mode[0]), .B(n38714), .C(hour_t[0]), 
         .D(n797), .Z(hour_7__N_19[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // d:/new porject/top-xu/top.v(216[10:18])
    defparam hour_7__I_0_i1_3_lut_4_lut.init = 16'he0f1;
    LUT4 i2_2_lut_3_lut_4_lut (.A(key_mode[0]), .B(n38714), .C(n797), 
         .D(n778), .Z(clk_1s_enable_17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/top.v(216[10:18])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i12934_2_lut_3_lut_4_lut (.A(key_mode[0]), .B(n38714), .C(n797), 
         .D(n778), .Z(n22032)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/new porject/top-xu/top.v(216[10:18])
    defparam i12934_2_lut_3_lut_4_lut.init = 16'h1110;
    CCU2D equal_3006_16 (.A0(hour[1]), .B0(hour_warning[1]), .C0(hour[0]), 
          .D0(hour_warning[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33018), .S1(warning_time_7__N_144));
    defparam equal_3006_16.INIT0 = 16'h9009;
    defparam equal_3006_16.INIT1 = 16'hFFFF;
    defparam equal_3006_16.INJECT1_0 = "YES";
    defparam equal_3006_16.INJECT1_1 = "NO";
    CCU2D add_1730_9 (.A0(n5262), .B0(n38668), .C0(n5440), .D0(sec_t[6]), 
          .A1(n5262), .B1(n38668), .C1(n5439), .D1(sec_t[7]), .CIN(n33386), 
          .S0(n5560), .S1(n5559));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1730_9.INIT0 = 16'he4b1;
    defparam add_1730_9.INIT1 = 16'he4b1;
    defparam add_1730_9.INJECT1_0 = "NO";
    defparam add_1730_9.INJECT1_1 = "NO";
    CCU2D add_1730_7 (.A0(n5262), .B0(n38668), .C0(n5442), .D0(sec_t[4]), 
          .A1(n5262), .B1(n38668), .C1(n5441), .D1(sec_t[5]), .CIN(n33385), 
          .COUT(n33386), .S0(n5562), .S1(n5561));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1730_7.INIT0 = 16'he4b1;
    defparam add_1730_7.INIT1 = 16'he4b1;
    defparam add_1730_7.INJECT1_0 = "NO";
    defparam add_1730_7.INJECT1_1 = "NO";
    CCU2D equal_3006_15 (.A0(hour[5]), .B0(hour_warning[5]), .C0(hour[4]), 
          .D0(hour_warning[4]), .A1(hour[3]), .B1(hour_warning[3]), .C1(hour[2]), 
          .D1(hour_warning[2]), .CIN(n33017), .COUT(n33018));
    defparam equal_3006_15.INIT0 = 16'h9009;
    defparam equal_3006_15.INIT1 = 16'h9009;
    defparam equal_3006_15.INJECT1_0 = "YES";
    defparam equal_3006_15.INJECT1_1 = "YES";
    CCU2D add_1730_5 (.A0(n5262), .B0(n38668), .C0(n5444), .D0(sec_t[2]), 
          .A1(n5262), .B1(n38668), .C1(n5443), .D1(sec_t[3]), .CIN(n33384), 
          .COUT(n33385), .S0(n5564), .S1(n5563));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1730_5.INIT0 = 16'he4b1;
    defparam add_1730_5.INIT1 = 16'he4b1;
    defparam add_1730_5.INJECT1_0 = "NO";
    defparam add_1730_5.INJECT1_1 = "NO";
    CCU2D add_1730_3 (.A0(n38668), .B0(n5262), .C0(n5446), .D0(sec_t[0]), 
          .A1(n5262), .B1(n38668), .C1(n5445), .D1(sec_t[1]), .CIN(n33383), 
          .COUT(n33384), .S0(n5566), .S1(n5565));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1730_3.INIT0 = 16'hd1e2;
    defparam add_1730_3.INIT1 = 16'he4b1;
    defparam add_1730_3.INJECT1_0 = "NO";
    defparam add_1730_3.INJECT1_1 = "NO";
    CCU2D add_1730_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5262), .B1(n38668), .C1(GND_net), .D1(GND_net), .COUT(n33383));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1730_1.INIT0 = 16'hF000;
    defparam add_1730_1.INIT1 = 16'heeee;
    defparam add_1730_1.INJECT1_0 = "NO";
    defparam add_1730_1.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i27947 (.BLUT(n37499), .ALUT(n37498), .C0(cnt_adj_2032[0]), 
          .Z(n37500));
    LUT4 i6179_4_lut (.A(n10398), .B(n38459), .C(n10381), .D(cnt_main_adj_2027[2]), 
         .Z(n15209)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;
    defparam i6179_4_lut.init = 16'h5a66;
    BCD_U5 bcd_hour_warning (.n10372(n10372), .\hundres_0__N_316[3] (hundres_0__N_316_adj_1948[3]), 
           .n4(n4_adj_1851), .\hour_warning[4] (hour_warning[4]), .\hour_warning[2] (hour_warning[2]), 
           .n12129(n12129), .\hour_warning[5] (hour_warning[5]), .\hour_warning[6] (hour_warning[6]), 
           .\hour_warning[7] (hour_warning[7]), .\hour_warning[1] (hour_warning[1]), 
           .\hour_warning_ones[1] (hour_warning_ones[1]), .\hour_warning_tens[0] (hour_warning_tens[0]), 
           .\hour_warning_ones[3] (hour_warning_ones[3]), .\hour_warning_ones[2] (hour_warning_ones[2]), 
           .\hour_warning[3] (hour_warning[3]), .hundres_0__N_321(hundres_0__N_321_adj_1845)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(302[7] 308[3])
    LUT4 i19_4_lut (.A(uart_music_mode), .B(cnt_run[0]), .C(warning), 
         .D(n71), .Z(n12)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i19_4_lut.init = 16'h3505;
    KEY_U0 key_2 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre_adj_1839), 
           .key_sec(key_sec_adj_1840), .key2_c(key2_c), .n38668(n38668), 
           .key_sec_adj_10(key_sec_adj_1842), .key_sec_pre_adj_11(key_sec_pre_adj_1841), 
           .n38604(n38604), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(47[6] 52[3])
    \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_recv (.sys_clk_c(sys_clk_c), 
            .sys_clk_c_enable_72(sys_clk_c_enable_72), .rx_flag(rx_flag), 
            .uart_recv_done(uart_recv_done), .uart_rxd_c(uart_rxd_c), .n31(n31), 
            .uart_recv_data({uart_recv_data}), .n38639(n38639), .GND_net(GND_net), 
            .n38559(n38559)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(461[1] 468[6])
    CCU2D add_1757_9 (.A0(n5343), .B0(n38668), .C0(n5403), .D0(min_t[6]), 
          .A1(n5343), .B1(n38668), .C1(n5402), .D1(min_t[7]), .CIN(n33378), 
          .S0(n5611), .S1(n5610));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1757_9.INIT0 = 16'he4b1;
    defparam add_1757_9.INIT1 = 16'he4b1;
    defparam add_1757_9.INJECT1_0 = "NO";
    defparam add_1757_9.INJECT1_1 = "NO";
    CCU2D add_1757_7 (.A0(n5343), .B0(n38668), .C0(n5405), .D0(min_t[4]), 
          .A1(n5343), .B1(n38668), .C1(n5404), .D1(min_t[5]), .CIN(n33377), 
          .COUT(n33378), .S0(n5613), .S1(n5612));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1757_7.INIT0 = 16'he4b1;
    defparam add_1757_7.INIT1 = 16'he4b1;
    defparam add_1757_7.INJECT1_0 = "NO";
    defparam add_1757_7.INJECT1_1 = "NO";
    PFUMX i28402 (.BLUT(n38271), .ALUT(n38270), .C0(cnt_adj_2032[4]), 
          .Z(n38272));
    LUT4 i2_4_lut_adj_282 (.A(n36077), .B(n35918), .C(n38657), .D(n14_adj_1852), 
         .Z(n12201)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam i2_4_lut_adj_282.init = 16'h0800;
    LUT4 i1_4_lut_adj_283 (.A(n36109), .B(n38670), .C(n36057), .D(n8_adj_1865), 
         .Z(n14_adj_1852)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam i1_4_lut_adj_283.init = 16'heaaa;
    CCU2D add_1757_5 (.A0(n5343), .B0(n38668), .C0(n5407), .D0(min_t[2]), 
          .A1(n5343), .B1(n38668), .C1(n5406), .D1(min_t[3]), .CIN(n33376), 
          .COUT(n33377), .S0(n5615), .S1(n5614));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1757_5.INIT0 = 16'he4b1;
    defparam add_1757_5.INIT1 = 16'he4b1;
    defparam add_1757_5.INJECT1_0 = "NO";
    defparam add_1757_5.INJECT1_1 = "NO";
    CCU2D add_1757_3 (.A0(n38668), .B0(n5343), .C0(n5409), .D0(min_t[0]), 
          .A1(n5343), .B1(n38668), .C1(n5408), .D1(min_t[1]), .CIN(n33375), 
          .COUT(n33376), .S0(n5617), .S1(n5616));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1757_3.INIT0 = 16'hd1e2;
    defparam add_1757_3.INIT1 = 16'he4b1;
    defparam add_1757_3.INJECT1_0 = "NO";
    defparam add_1757_3.INJECT1_1 = "NO";
    CCU2D add_1757_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5343), .B1(n38668), .C1(GND_net), .D1(GND_net), .COUT(n33375));   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam add_1757_1.INIT0 = 16'hF000;
    defparam add_1757_1.INIT1 = 16'heeee;
    defparam add_1757_1.INJECT1_0 = "NO";
    defparam add_1757_1.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_284 (.A(n36108), .B(n36600), .C(min_warning[4]), 
         .D(min_warning[5]), .Z(n36109)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam i6_4_lut_adj_284.init = 16'h0002;
    LUT4 i1_4_lut_adj_285 (.A(min_warning[7]), .B(n5_adj_1857), .C(min_warning[6]), 
         .D(n6_adj_1856), .Z(n8_adj_1865)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_285.init = 16'hfefa;
    LUT4 i27291_4_lut (.A(min_warning[3]), .B(min_warning[1]), .C(min_warning[2]), 
         .D(n36514), .Z(n36600)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27291_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_546 (.A(key_mode[0]), .B(key_mode[1]), .Z(n38666)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_546.init = 16'h2222;
    LUT4 i27205_3_lut (.A(min_warning[6]), .B(min_warning[7]), .C(min_warning[0]), 
         .Z(n36514)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i27205_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_286 (.A(min_warning[4]), .B(min_warning[5]), .Z(n5_adj_1857)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_286.init = 16'h8888;
    LUT4 i2_4_lut_adj_287 (.A(min_warning[3]), .B(min_warning[2]), .C(min_warning[1]), 
         .D(min_warning[0]), .Z(n6_adj_1856)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_287.init = 16'ha888;
    LUT4 i1_2_lut_adj_288 (.A(key_mode[0]), .B(key_mode[1]), .Z(n36077)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam i1_2_lut_adj_288.init = 16'h4444;
    LUT4 i2_4_lut_adj_289 (.A(n38616), .B(sys_rst_n_c), .C(n36), .D(state_adj_2053[1]), 
         .Z(sys_clk_c_enable_23)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut_adj_289.init = 16'h0004;
    LUT4 i1_2_lut_adj_290 (.A(sw1_c), .B(key_mode[0]), .Z(n36198)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/top.v(102[10] 175[9])
    defparam i1_2_lut_adj_290.init = 16'hbbbb;
    LUT4 cnt_0__bdd_3_lut_28331 (.A(cnt_adj_2032[0]), .B(cnt_adj_2032[1]), 
         .C(cnt_adj_2032[2]), .Z(n37497)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;
    defparam cnt_0__bdd_3_lut_28331.init = 16'hdbdb;
    CCU2D equal_3006_13 (.A0(min[1]), .B0(min_warning[1]), .C0(min[0]), 
          .D0(min_warning[0]), .A1(hour[7]), .B1(hour_warning[7]), .C1(hour[6]), 
          .D1(hour_warning[6]), .CIN(n33016), .COUT(n33017));
    defparam equal_3006_13.INIT0 = 16'h9009;
    defparam equal_3006_13.INIT1 = 16'h9009;
    defparam equal_3006_13.INJECT1_0 = "YES";
    defparam equal_3006_13.INJECT1_1 = "YES";
    LUT4 i3264_1_lut (.A(warning_time_7__N_144), .Z(n12208)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/top.v(187[8:28])
    defparam i3264_1_lut.init = 16'h5555;
    KEY_U1 key_1 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre), .key_sec(key_sec), 
           .key1_c(key1_c), .GND_net(GND_net), .sys_clk_c_enable_263(sys_clk_c_enable_263), 
           .sys_rst_n_c(sys_rst_n_c), .n38602(n38602), .n38718(n38718), 
           .n22156(n22156)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(39[6] 44[3])
    LUT4 i27785_4_lut (.A(warning_time[7]), .B(warning_time[4]), .C(warning_time[5]), 
         .D(n6_adj_1868), .Z(led_N_184)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i27785_4_lut.init = 16'h0001;
    FD1P3AX sec_t_i0_i0 (.D(n5566), .SP(sys_clk_c_enable_324), .CK(sys_clk_c), 
            .Q(sec_t[0]));   // d:/new porject/top-xu/top.v(81[13] 176[7])
    defparam sec_t_i0_i0.GSR = "DISABLED";
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i1_4_lut_adj_291 (.A(warning_time[6]), .B(warning_time[1]), .C(warning_time[3]), 
         .D(warning_time[2]), .Z(n6_adj_1868)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // d:/new porject/top-xu/top.v(73[16:28])
    defparam i1_4_lut_adj_291.init = 16'hfaea;
    LUT4 i27699_4_lut (.A(n38559), .B(rx_flag), .C(n31), .D(n38639), 
         .Z(sys_clk_c_enable_72)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam i27699_4_lut.init = 16'h3f3b;
    LUT4 equal_71_i4_2_lut_rep_537 (.A(key_mode[1]), .B(key_mode[2]), .Z(n38657)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/top.v(160[8:12])
    defparam equal_71_i4_2_lut_rep_537.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_adj_292 (.A(key_mode[1]), .B(key_mode[2]), .C(key_mode[0]), 
         .Z(n36212)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/new porject/top-xu/top.v(160[8:12])
    defparam i1_2_lut_3_lut_adj_292.init = 16'hfdfd;
    CCU2D equal_3006_11 (.A0(min[5]), .B0(min_warning[5]), .C0(min[4]), 
          .D0(min_warning[4]), .A1(min[3]), .B1(min_warning[3]), .C1(min[2]), 
          .D1(min_warning[2]), .CIN(n33015), .COUT(n33016));
    defparam equal_3006_11.INIT0 = 16'h9009;
    defparam equal_3006_11.INIT1 = 16'h9009;
    defparam equal_3006_11.INJECT1_0 = "YES";
    defparam equal_3006_11.INJECT1_1 = "YES";
    \divide(WIDTH=32,N=12000000)_U2  devide_1s (.clk_1s(clk_1s), .sys_clk_c(sys_clk_c), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(30[37] 36[3])
    uart_send u_uart_send (.sys_clk_c(sys_clk_c), .uart_en(uart_en), .\uart_send_data[3] (uart_send_data[3]), 
            .\uart_send_data[4] (uart_send_data[4]), .\uart_send_data[5] (uart_send_data[5]), 
            .\uart_send_data[6] (uart_send_data[6]), .uart_txd_c(uart_txd_c), 
            .\uart_send_data[0] (uart_send_data[0]), .GND_net(GND_net), 
            .\uart_send_data[1] (uart_send_data[1]), .\uart_send_data[2] (uart_send_data[2])) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(372[11] 381[2])
    BCD_U4 bcd_min (.n38646(n38646), .\min[7] (min[7]), .n38453(n38453), 
           .\hundres_1__N_306[3] (hundres_1__N_306_adj_1890[3]), .\hundres_0__N_313[1] (hundres_0__N_313_adj_1894[1]), 
           .\min[2] (min[2]), .\hundres_0__N_316[3] (hundres_0__N_316_adj_1896[3]), 
           .\min[4] (min[4]), .\min[6] (min[6]), .\min[5] (min[5]), .\min[3] (min[3]), 
           .\min[1] (min[1]), .\min_ones[3] (min_ones[3]), .\min_ones[1] (min_ones[1]), 
           .\min_tens[0] (min_tens[0]), .n37263(n37263), .n38594(n38594)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(284[6] 291[3])
    BCD_U3 bcd_min_warning (.\min_warning[7] (min_warning[7]), .n38452(n38452), 
           .\hundres_1__N_306[3] (hundres_1__N_306_adj_1968[3]), .\hundres_0__N_313[1] (hundres_0__N_313_adj_1972[1]), 
           .\min_warning[4] (min_warning[4]), .\hundres_1__N_306[3]_adj_9 (hundres_1__N_306_adj_1890[3]), 
           .n38453(n38453), .\min[7] (min[7]), .n38646(n38646), .\min_warning[2] (min_warning[2]), 
           .\hundres_0__N_316[3] (hundres_0__N_316_adj_1974[3]), .\min_warning[1] (min_warning[1]), 
           .\min_warning_ones[1] (min_warning_ones[1]), .\min_warning_tens[0] (min_warning_tens[0]), 
           .\min_warning_ones[3] (min_warning_ones[3]), .n37262(n37262), 
           .\min_warning[3] (min_warning[3]), .\min_warning[6] (min_warning[6]), 
           .\min_warning[5] (min_warning[5]), .n38595(n38595), .sw1_c(sw1_c), 
           .n10380(n10380)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(310[7] 316[3])
    DS18B20Z u_DS18B20Z (.sys_clk_c(sys_clk_c), .one_wire_N_631(one_wire_N_631), 
            .\hundres_1__N_305[1] (hundres_1__N_305_adj_1992[1]), .\hundres_1__N_305[0] (hundres_1__N_305_adj_1992[0]), 
            .\ds18b20_data[8] (ds18b20_data[8]), .\ds18b20_data[7] (ds18b20_data[7]), 
            .\ds18b20_data[6] (ds18b20_data[6]), .\ds18b20_data[5] (ds18b20_data[5]), 
            .\ds18b20_data[4] (ds18b20_data[4]), .GND_net(GND_net), .sys_rst_n_c(sys_rst_n_c), 
            .n14003(n14003), .one_wire_out(one_wire_out)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(333[11] 339[2])
    BCD_U7 bcd_T (.\ds18b20_data[6] (ds18b20_data[6]), .\ds18b20_data[5] (ds18b20_data[5]), 
           .\hundres_0__N_316[2] (hundres_0__N_316_adj_2000[2]), .\Tem_lower[3] (Tem_lower[3]), 
           .n13024(n13024), .\Tem_lower[2] (Tem_lower[2]), .\cnt_main[1] (cnt_main_adj_2027[1]), 
           .n9529(n9529), .n37299(n37299), .\ds18b20_data[7] (ds18b20_data[7]), 
           .\hundres_0__N_313[0] (hundres_0__N_313_adj_1998[0]), .\ds18b20_data[8] (ds18b20_data[8]), 
           .\hundres_1__N_305[0] (hundres_1__N_305_adj_1992[0]), .\hundres_1__N_305[1] (hundres_1__N_305_adj_1992[1]), 
           .n38637(n38637), .n38459(n38459), .n10398(n10398), .n12116(n12116), 
           .n38807(n38807)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(325[5] 331[3])
    Beeper m_beep (.\music_tone[4] (music_tone[4]), .beep_c(beep_c), .sys_clk_c(sys_clk_c), 
           .\music_tone[0] (music_tone[0]), .\music_tone[3] (music_tone[3]), 
           .GND_net(GND_net), .\music_tone[2] (music_tone[2]), .\music_tone[1] (music_tone[1]), 
           .sw2_c(sw2_c)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(470[9] 476[2])
    BCD_U6 bcd_hour (.\hundres_0__N_316[3] (hundres_0__N_316_adj_1922[3]), 
           .\hour[3] (hour[3]), .\hour[4] (hour[4]), .\hour[2] (hour[2]), 
           .n10372(n10372), .n12125(n12125), .n4(n4_adj_1862), .\hour[6] (hour[6]), 
           .\hour[5] (hour[5]), .n38704(n38704), .\hour[7] (hour[7]), 
           .\hour[1] (hour[1]), .\hour_ones[1] (hour_ones[1]), .n37365(n37365), 
           .\hour_ones[3] (hour_ones[3]), .\hour_ones[2] (hour_ones[2]), 
           .hundres_0__N_321(hundres_0__N_321)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(293[6] 300[3])
    OLED12832 oled1 (.sys_clk_c(sys_clk_c), .oled_cs_c(oled_cs_c), .n9522(n9522), 
            .cnt_main({Open_7, Open_8, cnt_main_adj_2027[2:0]}), .n10372(n10372), 
            .n21043(n21043), .n9637(n9637), .n9648(n9648), .\Tem_lower[3] (Tem_lower[3]), 
            .n9527(n9527), .\Tem_lower[2] (Tem_lower[2]), .n9528(n9528), 
            .\min_tens[0] (min_tens[0]), .\min_warning_tens[0] (min_warning_tens[0]), 
            .sw1_c(sw1_c), .n10382(n10382), .hundres_0__N_321(hundres_0__N_321), 
            .hundres_0__N_321_adj_1(hundres_0__N_321_adj_1845), .\hour_ones[2] (hour_ones[2]), 
            .\hour_warning_ones[2] (hour_warning_ones[2]), .\hour_ones[3] (hour_ones[3]), 
            .\hour_warning_ones[3] (hour_warning_ones[3]), .\min_ones[3] (min_ones[3]), 
            .\min_warning_ones[3] (min_warning_ones[3]), .n9515(n9515), 
            .\hour_ones[1] (hour_ones[1]), .\hour_warning_ones[1] (hour_warning_ones[1]), 
            .\min_ones[1] (min_ones[1]), .\min_warning_ones[1] (min_warning_ones[1]), 
            .n9517(n9517), .\cnt[4] (cnt_adj_2032[4]), .\cnt[3] (cnt_adj_2032[3]), 
            .\cnt[2] (cnt_adj_2032[2]), .\cnt[1] (cnt_adj_2032[1]), .n2521(n2521), 
            .n37368(n37368), .\cnt[0] (cnt_adj_2032[0]), .n10398(n10398), 
            .n10380(n10380), .n10381(n10381), .n2692(n2692), .n37365(n37365), 
            .\hour_warning_tens[0] (hour_warning_tens[0]), .n38807(n38807), 
            .n38637(n38637), .n2693(n2693), .n3074(n3074), .n3452(n3452), 
            .n3071(n3071), .n3827(n3827), .n3449(n3449), .n4205(n4205), 
            .n2696(n2696), .n3829(n3829), .n4207(n4207), .n3073(n3073), 
            .n3451(n3451), .n2695(n2695), .n3828(n3828), .n4206(n4206), 
            .n3072(n3072), .n3450(n3450), .n2694(n2694), .n38658(n38658), 
            .\hundres_0__N_316[3] (hundres_0__N_316_adj_1948[3]), .\hundres_0__N_316[3]_adj_2 (hundres_0__N_316_adj_1922[3]), 
            .time_set(time_set), .n38276(n38276), .n37500(n37500), .n28217(n28217), 
            .n38163(n38163), .n38361(n38361), .n37423(n37423), .n38539(n38539), 
            .n2527(n2527), .n38571(n38571), .n2524(n2524), .warning_TEM(warning_TEM), 
            .oled_mosi_c(oled_mosi_c), .n2523(n2523), .n38583(n38583), 
            .oled_sck_c(oled_sck_c), .oled_dc_c(oled_dc_c), .oled_res_c(oled_res_c), 
            .n37263(n37263), .n37262(n37262), .GND_net(GND_net), .n36720(n36720), 
            .n21041(n21041), .n4(n4_adj_1867), .n37299(n37299), .n15209(n15209), 
            .n37486(n37486), .n22(n22), .n37237(n37237), .n37417(n37417), 
            .n37497(n37497), .n3824(n3824), .n4202(n4202), .n3068(n3068), 
            .n3446(n3446), .n2690(n2690), .n2691(n2691), .\hundres_0__N_316[3]_adj_3 (hundres_0__N_316_adj_1974[3]), 
            .n38452(n38452), .n38595(n38595), .\hundres_1__N_306[3] (hundres_1__N_306_adj_1968[3]), 
            .\hundres_0__N_316[3]_adj_4 (hundres_0__N_316_adj_1896[3]), .n38594(n38594), 
            .\hundres_1__N_306[3]_adj_5 (hundres_1__N_306_adj_1890[3]), .n38453(n38453), 
            .n38272(n38272), .n3830(n3830), .n4208(n4208), .n3826(n3826), 
            .n4204(n4204), .n3070(n3070), .n3448(n3448), .n3825(n3825), 
            .n4203(n4203), .\hundres_0__N_313[1] (hundres_0__N_313_adj_1894[1]), 
            .\hundres_0__N_313[1]_adj_6 (hundres_0__N_313_adj_1972[1]), .n12120(n12120), 
            .n3069(n3069), .n3447(n3447), .n4_adj_7(n4_adj_1866), .\hundres_0__N_313[0] (hundres_0__N_313_adj_1998[0]), 
            .n38459(n38459), .n4_adj_8(n4_adj_1855), .\hour[0] (hour[0]), 
            .\hour_warning[0] (hour_warning[0]), .\min[0] (min[0]), .\min_warning[0] (min_warning[0]), 
            .n36717(n36717), .n36718(n36718), .n9645(n9645), .sys_rst_n_c(sys_rst_n_c)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(413[12] 443[3])
    KEY key_3 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre_adj_1841), 
        .key_sec(key_sec_adj_1842), .key3_c(key3_c), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/top.v(55[6] 60[3])
    LUT4 n38162_bdd_2_lut (.A(n38162), .B(cnt_adj_2032[0]), .Z(n38163)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n38162_bdd_2_lut.init = 16'h2222;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module music_play
//

module music_play (\state[0] , sys_clk_c, sys_clk_c_enable_100, n40, 
            sys_clk_c_enable_294, recv_done_d1, recv_done_d0, cnt_run, 
            \music_tone[0] , \state_back[0] , sys_clk_c_enable_23, uart_recv_done, 
            GND_net, \clk_cnt[9] , \clk_cnt[6] , \state[1] , warning_TEM, 
            uart_music_mode, \music_tone[4] , \music_tone[3] , \music_tone[2] , 
            \music_tone[1] , n39972, warning, n38616, uart_recv_data, 
            n35840, n12, sys_rst_n_c, n35852, \music_cnt[5] , \music_cnt[6] , 
            \music_cnt[3] , \music_cnt[4] , n381, \music_cnt[1] , \music_cnt[2] , 
            \music_cnt[0] , n38689, n137, n33833, n3500, sys_clk_c_enable_323, 
            n38515, n123, n5, n47, n126, n38660, n71) /* synthesis syn_module_defined=1 */ ;
    output \state[0] ;
    input sys_clk_c;
    input sys_clk_c_enable_100;
    input n40;
    input sys_clk_c_enable_294;
    output recv_done_d1;
    output recv_done_d0;
    output [7:0]cnt_run;
    output \music_tone[0] ;
    output \state_back[0] ;
    input sys_clk_c_enable_23;
    input uart_recv_done;
    input GND_net;
    output \clk_cnt[9] ;
    output \clk_cnt[6] ;
    output \state[1] ;
    output warning_TEM;
    output uart_music_mode;
    output \music_tone[4] ;
    output \music_tone[3] ;
    output \music_tone[2] ;
    output \music_tone[1] ;
    input n39972;
    input warning;
    output n38616;
    input [7:0]uart_recv_data;
    input n35840;
    input n12;
    input sys_rst_n_c;
    input n35852;
    output \music_cnt[5] ;
    output \music_cnt[6] ;
    output \music_cnt[3] ;
    output \music_cnt[4] ;
    output n381;
    output \music_cnt[1] ;
    output \music_cnt[2] ;
    output \music_cnt[0] ;
    output n38689;
    output n137;
    output n33833;
    output n3500;
    input sys_clk_c_enable_323;
    output n38515;
    input n123;
    output n5;
    input n47;
    input n126;
    output n38660;
    output n71;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire [15:0]clk_cnt;   // d:/new porject/top-xu/music_player.v(49[13:20])
    
    wire sys_clk_c_enable_295;
    wire [15:0]n69;
    
    wire sys_clk_c_enable_157, n35254, sys_clk_c_enable_150;
    wire [7:0]music_tone_7__N_1601;
    wire [15:0]cnt_delay;   // d:/new porject/top-xu/music_player.v(44[12:21])
    
    wire n22100;
    wire [15:0]n69_adj_1838;
    
    wire n33351, n33350, n33349, n33348, n33347, n33346, n33345, 
        n33344, n33343, n33342, n33341, n33340, n33339, sys_clk_c_enable_125, 
        uart_data_busy_N_1670, n33338, n38618, n33337, n33336;
    wire [15:0]n121;
    wire [7:0]cnt_run_c;   // d:/new porject/top-xu/music_player.v(36[11:18])
    
    wire sys_clk_c_enable_151, sys_clk_c_enable_152, sys_clk_c_enable_153, 
        sys_clk_c_enable_154, sys_clk_c_enable_155, sys_clk_c_enable_156, 
        n27, n33334;
    wire [8:0]music_cnt;   // d:/new porject/top-xu/music_player.v(47[11:20])
    wire [8:0]n41;
    
    wire n33333, n38523, n36130, n33332, n33244, n33243, n33331, 
        n33242, n33241, n33240, n35950, n38548, n33239, n4, n33238;
    wire [7:0]n131;
    
    wire n33237, n38598, n36125, n38659, n38540, n38567, n36134, 
        n6, n33236, n33235, n38549, n22092, n4_adj_1830, n10, 
        n33661, n8, n4_adj_1831, n17, n16_adj_1832, n36564, n36442, 
        n36598, n36554, n33572, n8_adj_1833, n4_adj_1835, n33694, 
        n12_adj_1836, n7;
    
    FD1P3AX state__i0 (.D(n40), .SP(sys_clk_c_enable_100), .CK(sys_clk_c), 
            .Q(\state[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam state__i0.GSR = "ENABLED";
    FD1P3IX clk_cnt_3021__i4 (.D(n69[4]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i4.GSR = "DISABLED";
    FD1S3AX recv_done_d1_586 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam recv_done_d1_586.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i0 (.D(n35254), .SP(sys_clk_c_enable_157), .CK(sys_clk_c), 
            .Q(cnt_run[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    FD1P3IX clk_cnt_3021__i3 (.D(n69[3]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i3.GSR = "DISABLED";
    FD1P3IX clk_cnt_3021__i2 (.D(n69[2]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i2.GSR = "DISABLED";
    FD1P3AX music_tone__i1 (.D(music_tone_7__N_1601[0]), .SP(sys_clk_c_enable_150), 
            .CK(sys_clk_c), .Q(\music_tone[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone__i1.GSR = "DISABLED";
    FD1P3AX state_back_i0_i0 (.D(\state[0] ), .SP(sys_clk_c_enable_23), 
            .CK(sys_clk_c), .Q(\state_back[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    FD1S3AX recv_done_d0_585 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(66[10] 69[8])
    defparam recv_done_d0_585.GSR = "ENABLED";
    FD1P3IX clk_cnt_3021__i1 (.D(n69[1]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i1.GSR = "DISABLED";
    FD1P3IX cnt_delay_3020__i15 (.D(n69_adj_1838[15]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i15.GSR = "DISABLED";
    FD1P3IX cnt_delay_3020__i14 (.D(n69_adj_1838[14]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i14.GSR = "DISABLED";
    FD1P3IX cnt_delay_3020__i13 (.D(n69_adj_1838[13]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i13.GSR = "DISABLED";
    CCU2D clk_cnt_3021_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33351), .S0(n69[15]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_3021_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_3021_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_3021_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33350), .COUT(n33351), .S0(n69[13]), .S1(n69[14]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_3021_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_3021_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33349), .COUT(n33350), .S0(n69[11]), .S1(n69[12]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_3021_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_3021_add_4_11 (.A0(\clk_cnt[9] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33348), .COUT(n33349), .S0(n69[9]), .S1(n69[10]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_3021_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_3021_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33347), .COUT(n33348), .S0(n69[7]), .S1(n69[8]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_3021_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_3021_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\clk_cnt[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33346), .COUT(n33347), .S0(n69[5]), .S1(n69[6]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_3021_add_4_7.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_3020__i12 (.D(n69_adj_1838[12]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i12.GSR = "DISABLED";
    FD1P3IX cnt_delay_3020__i11 (.D(n69_adj_1838[11]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i11.GSR = "DISABLED";
    CCU2D clk_cnt_3021_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33345), .COUT(n33346), .S0(n69[3]), .S1(n69[4]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_3021_add_4_5.INJECT1_1 = "NO";
    FD1P3AX state__i1 (.D(\state[0] ), .SP(sys_clk_c_enable_100), .CK(sys_clk_c), 
            .Q(\state[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam state__i1.GSR = "ENABLED";
    CCU2D clk_cnt_3021_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33344), .COUT(n33345), .S0(n69[1]), .S1(n69[2]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_3021_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_3021_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_3021_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n33344), .S1(n69[0]));   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_3021_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_3021_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_3021_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_delay_3020_add_4_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33343), .S0(n69_adj_1838[15]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_17.INIT1 = 16'h0000;
    defparam cnt_delay_3020_add_4_17.INJECT1_0 = "NO";
    defparam cnt_delay_3020_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_delay_3020_add_4_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33342), .COUT(n33343), .S0(n69_adj_1838[13]), 
          .S1(n69_adj_1838[14]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_15.INJECT1_0 = "NO";
    defparam cnt_delay_3020_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_delay_3020_add_4_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33341), .COUT(n33342), .S0(n69_adj_1838[11]), 
          .S1(n69_adj_1838[12]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_13.INJECT1_0 = "NO";
    defparam cnt_delay_3020_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_delay_3020_add_4_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33340), .COUT(n33341), .S0(n69_adj_1838[9]), 
          .S1(n69_adj_1838[10]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_11.INJECT1_0 = "NO";
    defparam cnt_delay_3020_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_delay_3020_add_4_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33339), .COUT(n33340), .S0(n69_adj_1838[7]), 
          .S1(n69_adj_1838[8]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_9.INJECT1_0 = "NO";
    defparam cnt_delay_3020_add_4_9.INJECT1_1 = "NO";
    FD1P3AY uart_data_busy_591 (.D(uart_data_busy_N_1670), .SP(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(warning_TEM)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam uart_data_busy_591.GSR = "ENABLED";
    CCU2D cnt_delay_3020_add_4_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33338), .COUT(n33339), .S0(n69_adj_1838[5]), 
          .S1(n69_adj_1838[6]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_7.INJECT1_0 = "NO";
    defparam cnt_delay_3020_add_4_7.INJECT1_1 = "NO";
    FD1P3AX uart_music_mode_589 (.D(n38618), .SP(sys_clk_c_enable_125), 
            .CK(sys_clk_c), .Q(uart_music_mode)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam uart_music_mode_589.GSR = "ENABLED";
    CCU2D cnt_delay_3020_add_4_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33337), .COUT(n33338), .S0(n69_adj_1838[3]), 
          .S1(n69_adj_1838[4]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_5.INJECT1_0 = "NO";
    defparam cnt_delay_3020_add_4_5.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_3020__i10 (.D(n69_adj_1838[10]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i10.GSR = "DISABLED";
    CCU2D cnt_delay_3020_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33336), .COUT(n33337), .S0(n69_adj_1838[1]), .S1(n69_adj_1838[2]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_delay_3020_add_4_3.INJECT1_0 = "NO";
    defparam cnt_delay_3020_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_delay_3020_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33336), .S1(n69_adj_1838[0]));   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020_add_4_1.INIT0 = 16'hF000;
    defparam cnt_delay_3020_add_4_1.INIT1 = 16'h0555;
    defparam cnt_delay_3020_add_4_1.INJECT1_0 = "NO";
    defparam cnt_delay_3020_add_4_1.INJECT1_1 = "NO";
    FD1P3AX music_tone__i5 (.D(music_tone_7__N_1601[4]), .SP(sys_clk_c_enable_150), 
            .CK(sys_clk_c), .Q(\music_tone[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone__i5.GSR = "DISABLED";
    FD1P3AX music_tone__i4 (.D(music_tone_7__N_1601[3]), .SP(sys_clk_c_enable_150), 
            .CK(sys_clk_c), .Q(\music_tone[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone__i4.GSR = "DISABLED";
    FD1P3AX music_tone__i3 (.D(music_tone_7__N_1601[2]), .SP(sys_clk_c_enable_150), 
            .CK(sys_clk_c), .Q(\music_tone[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone__i3.GSR = "DISABLED";
    FD1P3AX music_tone__i2 (.D(music_tone_7__N_1601[1]), .SP(sys_clk_c_enable_150), 
            .CK(sys_clk_c), .Q(\music_tone[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam music_tone__i2.GSR = "DISABLED";
    FD1P3AX cnt_run_i0_i7 (.D(n39972), .SP(sys_clk_c_enable_151), .CK(sys_clk_c), 
            .Q(cnt_run_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i6 (.D(n39972), .SP(sys_clk_c_enable_152), .CK(sys_clk_c), 
            .Q(cnt_run_c[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n39972), .SP(sys_clk_c_enable_153), .CK(sys_clk_c), 
            .Q(cnt_run_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i4 (.D(n39972), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(cnt_run_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n39972), .SP(sys_clk_c_enable_155), .CK(sys_clk_c), 
            .Q(cnt_run_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i2 (.D(n39972), .SP(sys_clk_c_enable_156), .CK(sys_clk_c), 
            .Q(cnt_run_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i1 (.D(n27), .SP(sys_clk_c_enable_157), .CK(sys_clk_c), 
            .Q(cnt_run_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=487, LSE_RLINE=500 */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    CCU2D music_cnt_3019_add_4_9 (.A0(music_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33334), .S0(n41[7]), .S1(n41[8]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019_add_4_9.INIT0 = 16'hfaaa;
    defparam music_cnt_3019_add_4_9.INIT1 = 16'hfaaa;
    defparam music_cnt_3019_add_4_9.INJECT1_0 = "NO";
    defparam music_cnt_3019_add_4_9.INJECT1_1 = "NO";
    LUT4 recv_done_flag_I_0_2_lut_rep_557 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_125)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_557.init = 16'h4444;
    LUT4 i1124_2_lut_rep_496_3_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(warning), .Z(n38616)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam i1124_2_lut_rep_496_3_lut.init = 16'h4f4f;
    LUT4 mux_3350_i3_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[2]), 
         .D(n35840), .Z(music_tone_7__N_1601[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam mux_3350_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(n12), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_150)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam i1_3_lut_4_lut.init = 16'hf400;
    FD1P3IX clk_cnt_3021__i15 (.D(n69[15]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i15.GSR = "DISABLED";
    LUT4 mux_3350_i2_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[1]), 
         .D(n35852), .Z(music_tone_7__N_1601[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/music_player.v(58[25:55])
    defparam mux_3350_i2_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX clk_cnt_3021__i14 (.D(n69[14]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i14.GSR = "DISABLED";
    FD1P3IX clk_cnt_3021__i13 (.D(n69[13]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i13.GSR = "DISABLED";
    FD1P3IX clk_cnt_3021__i12 (.D(n69[12]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i12.GSR = "DISABLED";
    CCU2D music_cnt_3019_add_4_7 (.A0(\music_cnt[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\music_cnt[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33333), .COUT(n33334), .S0(n41[5]), .S1(n41[6]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019_add_4_7.INIT0 = 16'hfaaa;
    defparam music_cnt_3019_add_4_7.INIT1 = 16'hfaaa;
    defparam music_cnt_3019_add_4_7.INJECT1_0 = "NO";
    defparam music_cnt_3019_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n38523), .B(cnt_run_c[6]), .C(cnt_run_c[4]), 
         .D(cnt_run_c[5]), .Z(n36130)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/new porject/top-xu/music_player.v(280[12:30])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0002;
    CCU2D music_cnt_3019_add_4_5 (.A0(\music_cnt[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\music_cnt[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33332), .COUT(n33333), .S0(n41[3]), .S1(n41[4]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019_add_4_5.INIT0 = 16'hfaaa;
    defparam music_cnt_3019_add_4_5.INIT1 = 16'hfaaa;
    defparam music_cnt_3019_add_4_5.INJECT1_0 = "NO";
    defparam music_cnt_3019_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_2303_add_2_14 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33244), .S1(n381));
    defparam sub_2303_add_2_14.INIT0 = 16'h5555;
    defparam sub_2303_add_2_14.INIT1 = 16'h0000;
    defparam sub_2303_add_2_14.INJECT1_0 = "NO";
    defparam sub_2303_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_2303_add_2_12 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33243), .COUT(n33244));
    defparam sub_2303_add_2_12.INIT0 = 16'h5555;
    defparam sub_2303_add_2_12.INIT1 = 16'h5555;
    defparam sub_2303_add_2_12.INJECT1_0 = "NO";
    defparam sub_2303_add_2_12.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_3021__i11 (.D(n69[11]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i11.GSR = "DISABLED";
    FD1P3IX cnt_delay_3020__i9 (.D(n69_adj_1838[9]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i9.GSR = "DISABLED";
    FD1P3IX cnt_delay_3020__i8 (.D(n69_adj_1838[8]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i8.GSR = "DISABLED";
    FD1P3IX cnt_delay_3020__i7 (.D(n69_adj_1838[7]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i7.GSR = "DISABLED";
    CCU2D music_cnt_3019_add_4_3 (.A0(\music_cnt[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\music_cnt[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33331), .COUT(n33332), .S0(n41[1]), .S1(n41[2]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019_add_4_3.INIT0 = 16'hfaaa;
    defparam music_cnt_3019_add_4_3.INIT1 = 16'hfaaa;
    defparam music_cnt_3019_add_4_3.INJECT1_0 = "NO";
    defparam music_cnt_3019_add_4_3.INJECT1_1 = "NO";
    CCU2D music_cnt_3019_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\music_cnt[0] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n33331), .S1(n41[0]));   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019_add_4_1.INIT0 = 16'hF000;
    defparam music_cnt_3019_add_4_1.INIT1 = 16'h0555;
    defparam music_cnt_3019_add_4_1.INJECT1_0 = "NO";
    defparam music_cnt_3019_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_2303_add_2_10 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33242), .COUT(n33243));
    defparam sub_2303_add_2_10.INIT0 = 16'h5555;
    defparam sub_2303_add_2_10.INIT1 = 16'h5555;
    defparam sub_2303_add_2_10.INJECT1_0 = "NO";
    defparam sub_2303_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_2303_add_2_8 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33241), .COUT(n33242));
    defparam sub_2303_add_2_8.INIT0 = 16'h5555;
    defparam sub_2303_add_2_8.INIT1 = 16'h5555;
    defparam sub_2303_add_2_8.INJECT1_0 = "NO";
    defparam sub_2303_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_2303_add_2_6 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33240), .COUT(n33241));
    defparam sub_2303_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_2303_add_2_6.INIT1 = 16'h5555;
    defparam sub_2303_add_2_6.INJECT1_0 = "NO";
    defparam sub_2303_add_2_6.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_3021__i10 (.D(n69[10]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i10.GSR = "DISABLED";
    FD1P3IX clk_cnt_3021__i9 (.D(n69[9]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(\clk_cnt[9] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i9.GSR = "DISABLED";
    FD1P3IX clk_cnt_3021__i8 (.D(n69[8]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i8.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_569 (.A(cnt_run_c[1]), .B(cnt_run[0]), .Z(n38689)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/music_player.v(280[12:30])
    defparam i1_2_lut_rep_569.init = 16'h2222;
    LUT4 i1_2_lut_rep_428_3_lut (.A(cnt_run_c[1]), .B(cnt_run[0]), .C(n35950), 
         .Z(n38548)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/new porject/top-xu/music_player.v(280[12:30])
    defparam i1_2_lut_rep_428_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_403_3_lut_4_lut (.A(cnt_run_c[1]), .B(cnt_run[0]), 
         .C(cnt_run_c[3]), .D(n35950), .Z(n38523)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/new porject/top-xu/music_player.v(280[12:30])
    defparam i1_2_lut_rep_403_3_lut_4_lut.init = 16'h0002;
    FD1P3IX clk_cnt_3021__i7 (.D(n69[7]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i7.GSR = "DISABLED";
    FD1P3IX clk_cnt_3021__i6 (.D(n69[6]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(\clk_cnt[6] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i6.GSR = "DISABLED";
    FD1P3IX clk_cnt_3021__i5 (.D(n69[5]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i5.GSR = "DISABLED";
    CCU2D sub_2303_add_2_4 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33239), .COUT(n33240));
    defparam sub_2303_add_2_4.INIT0 = 16'h5555;
    defparam sub_2303_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_2303_add_2_4.INJECT1_0 = "NO";
    defparam sub_2303_add_2_4.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_233 (.A(n38523), .B(cnt_run_c[6]), .C(cnt_run_c[4]), 
         .D(cnt_run_c[5]), .Z(n4)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/new porject/top-xu/music_player.v(280[12:30])
    defparam i1_2_lut_3_lut_4_lut_adj_233.init = 16'h0020;
    CCU2D sub_2303_add_2_2 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n33239));
    defparam sub_2303_add_2_2.INIT0 = 16'h5000;
    defparam sub_2303_add_2_2.INIT1 = 16'h5555;
    defparam sub_2303_add_2_2.INJECT1_0 = "NO";
    defparam sub_2303_add_2_2.INJECT1_1 = "NO";
    CCU2D add_114_9 (.A0(cnt_run_c[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33238), 
          .S0(n131[7]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_9.INIT0 = 16'h5aaa;
    defparam add_114_9.INIT1 = 16'h0000;
    defparam add_114_9.INJECT1_0 = "NO";
    defparam add_114_9.INJECT1_1 = "NO";
    CCU2D add_114_7 (.A0(cnt_run_c[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run_c[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33237), .COUT(n33238), .S0(n131[5]), .S1(n131[6]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_7.INIT0 = 16'h5aaa;
    defparam add_114_7.INIT1 = 16'h5aaa;
    defparam add_114_7.INJECT1_0 = "NO";
    defparam add_114_7.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(n38523), .B(cnt_run_c[6]), .C(n38598), .D(cnt_run_c[5]), 
         .Z(n36125)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/new porject/top-xu/music_player.v(280[12:30])
    defparam i2_3_lut_4_lut.init = 16'h0200;
    FD1P3IX cnt_delay_3020__i6 (.D(n69_adj_1838[6]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i6.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_420_3_lut_4_lut (.A(cnt_run_c[4]), .B(n38659), .C(cnt_run_c[6]), 
         .D(cnt_run_c[5]), .Z(n38540)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_420_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_234 (.A(cnt_run_c[6]), .B(n38567), .C(cnt_run_c[3]), 
         .D(n38548), .Z(n36134)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_234.init = 16'h1000;
    FD1P3IX cnt_delay_3020__i5 (.D(n69_adj_1838[5]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i5.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_235 (.A(cnt_run_c[6]), .B(n38567), .C(cnt_run_c[1]), 
         .D(cnt_run_c[3]), .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_235.init = 16'hfffe;
    CCU2D add_114_5 (.A0(cnt_run_c[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run_c[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33236), .COUT(n33237), .S0(n131[3]), .S1(n131[4]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_5.INIT0 = 16'h5aaa;
    defparam add_114_5.INIT1 = 16'h5aaa;
    defparam add_114_5.INJECT1_0 = "NO";
    defparam add_114_5.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_3020__i4 (.D(n69_adj_1838[4]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i4.GSR = "DISABLED";
    CCU2D add_114_3 (.A0(cnt_run_c[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run_c[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33235), .COUT(n33236), .S0(n131[1]), .S1(n137));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_3.INIT0 = 16'h5aaa;
    defparam add_114_3.INIT1 = 16'h5aaa;
    defparam add_114_3.INJECT1_0 = "NO";
    defparam add_114_3.INJECT1_1 = "NO";
    CCU2D add_114_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33235), .S1(n131[0]));   // d:/new porject/top-xu/music_player.v(263[17:29])
    defparam add_114_1.INIT0 = 16'hF000;
    defparam add_114_1.INIT1 = 16'h5555;
    defparam add_114_1.INJECT1_0 = "NO";
    defparam add_114_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_429 (.A(\clk_cnt[6] ), .B(n33833), .C(\clk_cnt[9] ), 
         .Z(n38549)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut_rep_429.init = 16'hdfdf;
    LUT4 i1_2_lut_rep_400_4_lut (.A(\clk_cnt[6] ), .B(n33833), .C(\clk_cnt[9] ), 
         .D(sys_clk_c_enable_294), .Z(sys_clk_c_enable_295)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_400_4_lut.init = 16'h2000;
    LUT4 i1120_2_lut_4_lut (.A(\clk_cnt[6] ), .B(n33833), .C(\clk_cnt[9] ), 
         .D(n381), .Z(n3500)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1120_2_lut_4_lut.init = 16'h2000;
    FD1P3IX cnt_delay_3020__i3 (.D(n69_adj_1838[3]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i3.GSR = "DISABLED";
    FD1P3IX cnt_delay_3020__i2 (.D(n69_adj_1838[2]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i2.GSR = "DISABLED";
    FD1P3IX cnt_delay_3020__i1 (.D(n69_adj_1838[1]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i1.GSR = "DISABLED";
    FD1P3IX music_cnt_3019__i8 (.D(n41[8]), .SP(sys_clk_c_enable_323), .CD(n22092), 
            .CK(sys_clk_c), .Q(music_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019__i8.GSR = "DISABLED";
    FD1P3IX music_cnt_3019__i7 (.D(n41[7]), .SP(sys_clk_c_enable_323), .CD(n22092), 
            .CK(sys_clk_c), .Q(music_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019__i7.GSR = "DISABLED";
    FD1P3IX music_cnt_3019__i6 (.D(n41[6]), .SP(sys_clk_c_enable_323), .CD(n22092), 
            .CK(sys_clk_c), .Q(\music_cnt[6] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019__i6.GSR = "DISABLED";
    FD1P3IX music_cnt_3019__i5 (.D(n41[5]), .SP(sys_clk_c_enable_323), .CD(n22092), 
            .CK(sys_clk_c), .Q(\music_cnt[5] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019__i5.GSR = "DISABLED";
    FD1P3IX clk_cnt_3021__i0 (.D(n69[0]), .SP(sys_clk_c_enable_294), .CD(sys_clk_c_enable_295), 
            .CK(sys_clk_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(315[36:50])
    defparam clk_cnt_3021__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_395_3_lut_4_lut (.A(cnt_run_c[5]), .B(n38598), .C(cnt_run_c[3]), 
         .D(cnt_run_c[6]), .Z(n38515)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_395_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX cnt_delay_3020__i0 (.D(n69_adj_1838[0]), .SP(sys_clk_c_enable_295), 
            .CD(n22100), .CK(sys_clk_c), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(312[42:58])
    defparam cnt_delay_3020__i0.GSR = "DISABLED";
    FD1P3IX music_cnt_3019__i0 (.D(n41[0]), .SP(sys_clk_c_enable_323), .CD(n22092), 
            .CK(sys_clk_c), .Q(\music_cnt[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019__i0.GSR = "DISABLED";
    LUT4 i12986_2_lut (.A(sys_clk_c_enable_323), .B(n35950), .Z(n22092)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam i12986_2_lut.init = 16'h2222;
    LUT4 i1_2_lut (.A(uart_recv_data[0]), .B(uart_recv_data[3]), .Z(n4_adj_1830)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4_4_lut (.A(uart_recv_data[6]), .B(uart_recv_data[4]), .C(uart_recv_data[2]), 
         .D(uart_recv_data[5]), .Z(n10)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i4_4_lut.init = 16'hffbf;
    LUT4 mux_3350_i5_4_lut (.A(warning), .B(uart_recv_data[4]), .C(sys_clk_c_enable_125), 
         .D(uart_music_mode), .Z(music_tone_7__N_1601[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(102[7] 324[5])
    defparam mux_3350_i5_4_lut.init = 16'hc0c5;
    LUT4 mux_3350_i4_4_lut (.A(n123), .B(uart_recv_data[3]), .C(sys_clk_c_enable_125), 
         .D(n33661), .Z(music_tone_7__N_1601[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/music_player.v(102[7] 324[5])
    defparam mux_3350_i4_4_lut.init = 16'hc0ca;
    LUT4 i1_4_lut (.A(sys_clk_c_enable_157), .B(n36130), .C(n8), .D(n4_adj_1831), 
         .Z(sys_clk_c_enable_151)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut.init = 16'ha8a0;
    LUT4 i1_2_lut_adj_236 (.A(n5), .B(n131[7]), .Z(n8)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i1_2_lut_adj_236.init = 16'h4444;
    LUT4 i1_2_lut_adj_237 (.A(cnt_run_c[2]), .B(cnt_run_c[7]), .Z(n4_adj_1831)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_237.init = 16'h4444;
    LUT4 i9_4_lut (.A(n17), .B(clk_cnt[1]), .C(n16_adj_1832), .D(n36564), 
         .Z(n33833)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i9_4_lut.init = 16'hfeff;
    LUT4 i7_4_lut (.A(clk_cnt[4]), .B(clk_cnt[0]), .C(clk_cnt[15]), .D(clk_cnt[12]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[3]), .B(clk_cnt[2]), .C(clk_cnt[8]), .D(clk_cnt[14]), 
         .Z(n16_adj_1832)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i27255_4_lut (.A(clk_cnt[11]), .B(clk_cnt[5]), .C(clk_cnt[7]), 
         .D(n36442), .Z(n36564)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27255_4_lut.init = 16'h8000;
    LUT4 i27134_2_lut (.A(clk_cnt[13]), .B(clk_cnt[10]), .Z(n36442)) /* synthesis lut_function=(A (B)) */ ;
    defparam i27134_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(music_cnt[8]), .B(\music_cnt[5] ), .C(music_cnt[7]), 
         .D(n36598), .Z(n35950)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i27289_3_lut (.A(\music_cnt[4] ), .B(n36554), .C(\music_cnt[1] ), 
         .Z(n36598)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i27289_3_lut.init = 16'h8080;
    LUT4 i27245_4_lut (.A(\music_cnt[2] ), .B(\music_cnt[6] ), .C(\music_cnt[3] ), 
         .D(\music_cnt[0] ), .Z(n36554)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27245_4_lut.init = 16'h8000;
    LUT4 i11962_4_lut (.A(sys_clk_c_enable_157), .B(n5), .C(n33572), .D(n131[6]), 
         .Z(sys_clk_c_enable_152)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i11962_4_lut.init = 16'ha2a0;
    LUT4 i11960_4_lut (.A(sys_clk_c_enable_157), .B(n5), .C(n36125), .D(n131[5]), 
         .Z(sys_clk_c_enable_153)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i11960_4_lut.init = 16'ha2a0;
    LUT4 i11958_4_lut (.A(sys_clk_c_enable_157), .B(n8_adj_1833), .C(n38659), 
         .D(n4), .Z(sys_clk_c_enable_154)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i11958_4_lut.init = 16'h8a88;
    LUT4 i1_2_lut_adj_238 (.A(n5), .B(n131[4]), .Z(n8_adj_1833)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i1_2_lut_adj_238.init = 16'h4444;
    LUT4 i11956_4_lut (.A(sys_clk_c_enable_157), .B(n5), .C(n36134), .D(n131[3]), 
         .Z(sys_clk_c_enable_155)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i11956_4_lut.init = 16'ha2a0;
    LUT4 i11954_4_lut (.A(sys_clk_c_enable_157), .B(n47), .C(n36130), 
         .D(n4_adj_1835), .Z(sys_clk_c_enable_156)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i11954_4_lut.init = 16'ha888;
    LUT4 i1_2_lut_adj_239 (.A(cnt_run_c[2]), .B(cnt_run_c[7]), .Z(n4_adj_1835)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_239.init = 16'h2222;
    LUT4 i27712_4_lut (.A(n5), .B(cnt_run_c[1]), .C(n131[1]), .D(n33694), 
         .Z(n27)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/music_player.v(260[6] 287[13])
    defparam i27712_4_lut.init = 16'hdc50;
    FD1P3IX music_cnt_3019__i4 (.D(n41[4]), .SP(sys_clk_c_enable_323), .CD(n22092), 
            .CK(sys_clk_c), .Q(\music_cnt[4] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019__i4.GSR = "DISABLED";
    LUT4 i6_4_lut_adj_240 (.A(cnt_run_c[2]), .B(n12_adj_1836), .C(cnt_run_c[3]), 
         .D(cnt_run_c[5]), .Z(n5)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i6_4_lut_adj_240.init = 16'hfffe;
    LUT4 i5_4_lut (.A(cnt_run_c[7]), .B(cnt_run_c[1]), .C(cnt_run_c[4]), 
         .D(cnt_run_c[6]), .Z(n12_adj_1836)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i5_4_lut.init = 16'hfffe;
    FD1P3IX music_cnt_3019__i3 (.D(n41[3]), .SP(sys_clk_c_enable_323), .CD(n22092), 
            .CK(sys_clk_c), .Q(\music_cnt[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019__i3.GSR = "DISABLED";
    LUT4 i2_4_lut_rep_498 (.A(uart_recv_data[7]), .B(n4_adj_1830), .C(n10), 
         .D(uart_recv_data[1]), .Z(n38618)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_4_lut_rep_498.init = 16'hfeff;
    LUT4 uart_recv_data_7__I_0_i16_1_lut_4_lut (.A(uart_recv_data[7]), .B(n4_adj_1830), 
         .C(n10), .D(uart_recv_data[1]), .Z(uart_data_busy_N_1670)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam uart_recv_data_7__I_0_i16_1_lut_4_lut.init = 16'h0100;
    LUT4 i2_3_lut_4_lut_adj_241 (.A(cnt_run_c[3]), .B(n38540), .C(n35950), 
         .D(cnt_run[0]), .Z(n33694)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i2_3_lut_4_lut_adj_241.init = 16'hffef;
    LUT4 i1_4_lut_adj_242 (.A(n5), .B(cnt_run[0]), .C(n131[0]), .D(n6), 
         .Z(n35254)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_242.init = 16'hdc50;
    LUT4 mux_3350_i1_4_lut (.A(n126), .B(uart_recv_data[0]), .C(sys_clk_c_enable_125), 
         .D(n33661), .Z(music_tone_7__N_1601[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/music_player.v(102[7] 324[5])
    defparam mux_3350_i1_4_lut.init = 16'hc0ca;
    LUT4 i4_4_lut_adj_243 (.A(n7), .B(\state[0] ), .C(cnt_run[0]), .D(warning), 
         .Z(n33661)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/new porject/top-xu/music_player.v(111[8] 323[6])
    defparam i4_4_lut_adj_243.init = 16'hfbff;
    LUT4 i2_2_lut (.A(\state[1] ), .B(n5), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/music_player.v(111[8] 323[6])
    defparam i2_2_lut.init = 16'heeee;
    FD1P3IX music_cnt_3019__i2 (.D(n41[2]), .SP(sys_clk_c_enable_323), .CD(n22092), 
            .CK(sys_clk_c), .Q(\music_cnt[2] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019__i2.GSR = "DISABLED";
    FD1P3IX music_cnt_3019__i1 (.D(n41[1]), .SP(sys_clk_c_enable_323), .CD(n22092), 
            .CK(sys_clk_c), .Q(\music_cnt[1] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/music_player.v(283[23:39])
    defparam music_cnt_3019__i1.GSR = "DISABLED";
    LUT4 i13001_2_lut_3_lut (.A(n38549), .B(sys_clk_c_enable_294), .C(n381), 
         .Z(n22100)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i13001_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_539 (.A(cnt_run_c[2]), .B(cnt_run_c[7]), .Z(n38659)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_539.init = 16'heeee;
    LUT4 i1_2_lut_rep_478_3_lut (.A(cnt_run_c[2]), .B(cnt_run_c[7]), .C(cnt_run_c[4]), 
         .Z(n38598)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_478_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_447_3_lut_4_lut (.A(cnt_run_c[2]), .B(cnt_run_c[7]), 
         .C(cnt_run_c[5]), .D(cnt_run_c[4]), .Z(n38567)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_447_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_540 (.A(\state[1] ), .B(\state[0] ), .Z(n38660)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i1_2_lut_rep_540.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_adj_244 (.A(\state[1] ), .B(\state[0] ), .C(sys_clk_c_enable_125), 
         .D(warning), .Z(sys_clk_c_enable_157)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i1_2_lut_3_lut_4_lut_adj_244.init = 16'h0400;
    LUT4 i1_2_lut_3_lut (.A(\state[1] ), .B(\state[0] ), .C(n5), .Z(n71)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/new porject/top-xu/music_player.v(85[10] 324[5])
    defparam i1_2_lut_3_lut.init = 16'h0404;
    LUT4 i2_3_lut_4_lut_adj_245 (.A(cnt_run_c[3]), .B(n38548), .C(cnt_run_c[6]), 
         .D(n38567), .Z(n33572)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/music_player.v(280[12:30])
    defparam i2_3_lut_4_lut_adj_245.init = 16'h0040;
    
endmodule
//
// Verilog Description of module BCD
//

module BCD (\sec[5] , \sec[6] , \sec[7] , \sec[4] , \sec[3] , \sec[2] , 
            \hundres_0__N_316[2] , n38429, n38439, \hundres_0__N_316[1] , 
            \hundres_0__N_313[0] , n12110, \sec_tens[3] , \sec[1] , 
            n38430, n38426, \sec_tens[1] ) /* synthesis syn_module_defined=1 */ ;
    input \sec[5] ;
    input \sec[6] ;
    input \sec[7] ;
    input \sec[4] ;
    input \sec[3] ;
    input \sec[2] ;
    output \hundres_0__N_316[2] ;
    output n38429;
    output n38439;
    output \hundres_0__N_316[1] ;
    output \hundres_0__N_313[0] ;
    output n12110;
    output \sec_tens[3] ;
    input \sec[1] ;
    output n38430;
    output n38426;
    output \sec_tens[1] ;
    
    wire [3:0]hundres_1__N_305;
    
    wire n38544, n38489, n38572, n38785, n38784, n38479;
    wire [3:0]hundres_1__N_307;
    
    wire n38470, n38458;
    wire [3:0]hundres_0__N_313;
    
    wire n38457, n38673;
    wire [3:0]hundres_1__N_306;
    
    wire n38501, n38421, n38607, n38456;
    
    LUT4 i4802_3_lut_4_lut_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(hundres_1__N_305[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4802_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i3580_2_lut_rep_369_3_lut (.A(\sec[4] ), .B(n38544), .C(\sec[3] ), 
         .Z(n38489)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3580_2_lut_rep_369_3_lut.init = 16'hf6f6;
    LUT4 i4794_2_lut_rep_452_3_lut_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(n38572)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4794_2_lut_rep_452_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4913_2_lut_rep_350_4_lut_4_lut_then_4_lut (.A(n38572), .B(\sec[4] ), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n38785)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4913_2_lut_rep_350_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i4913_2_lut_rep_350_4_lut_4_lut_else_4_lut (.A(n38572), .B(\sec[4] ), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n38784)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4913_2_lut_rep_350_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i4921_3_lut_4_lut (.A(\sec[4] ), .B(n38544), .C(\sec[3] ), .D(n38479), 
         .Z(hundres_1__N_307[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4921_3_lut_4_lut.init = 16'h6966;
    LUT4 i4879_2_lut_3_lut_3_lut_4_lut (.A(n38470), .B(\sec[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[2] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4879_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4886_3_lut_rep_309_4_lut_3_lut_4_lut (.A(n38470), .B(\sec[2] ), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38429)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4886_3_lut_rep_309_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4864_2_lut_rep_319_4_lut_4_lut (.A(n38470), .B(\sec[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(n38439)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4864_2_lut_rep_319_4_lut_4_lut.init = 16'h332c;
    LUT4 i3438_3_lut_rep_338 (.A(n38470), .B(\sec[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(n38458)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3438_3_lut_rep_338.init = 16'hffe0;
    LUT4 i4872_3_lut_4_lut (.A(n38470), .B(\sec[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[1] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4872_3_lut_4_lut.init = 16'h998a;
    LUT4 i4858_3_lut_4_lut (.A(n38429), .B(\hundres_0__N_313[0] ), .C(n12110), 
         .D(hundres_0__N_313[1]), .Z(\sec_tens[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4858_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4877_2_lut_rep_337_3_lut (.A(\sec[3] ), .B(n38479), .C(\sec[2] ), 
         .Z(n38457)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4877_2_lut_rep_337_3_lut.init = 16'hf6f6;
    LUT4 i3584_2_lut_rep_553 (.A(\sec[5] ), .B(\sec[6] ), .Z(n38673)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3584_2_lut_rep_553.init = 16'heeee;
    LUT4 i4963_3_lut_4_lut_3_lut_4_lut (.A(\sec[4] ), .B(n38572), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4963_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i10432_2_lut_rep_381_3_lut_4_lut (.A(\sec[4] ), .B(n38572), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(n38501)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10432_2_lut_rep_381_3_lut_4_lut.init = 16'heee0;
    LUT4 i3435_3_lut_rep_424 (.A(\sec[4] ), .B(n38572), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(n38544)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3435_3_lut_rep_424.init = 16'hffe0;
    LUT4 i4949_3_lut_4_lut (.A(\sec[4] ), .B(n38572), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4949_3_lut_4_lut.init = 16'h998c;
    LUT4 n4_bdd_4_lut (.A(n38421), .B(n38607), .C(n38456), .D(hundres_1__N_306[3]), 
         .Z(n12110)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A !((C+(D))+!B)) */ ;
    defparam n4_bdd_4_lut.init = 16'ha20c;
    LUT4 i3614_2_lut_rep_487_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(n38607)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3614_2_lut_rep_487_3_lut.init = 16'he0e0;
    LUT4 i11929_2_lut_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(hundres_1__N_305[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i11929_2_lut_3_lut.init = 16'h1010;
    LUT4 i4828_2_lut_rep_310_3_lut (.A(\sec[2] ), .B(n38458), .C(\sec[1] ), 
         .Z(n38430)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4828_2_lut_rep_310_3_lut.init = 16'hf6f6;
    LUT4 i4928_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_305[1]), .B(n38501), 
         .C(hundres_1__N_306[1]), .D(n38489), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4928_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3436_3_lut_rep_359_4_lut (.A(hundres_1__N_305[1]), .B(n38501), 
         .C(hundres_1__N_306[1]), .D(n38489), .Z(n38479)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3436_3_lut_rep_359_4_lut.init = 16'hf666;
    LUT4 i4935_3_lut_rep_336_4_lut_3_lut_4_lut (.A(hundres_1__N_305[1]), .B(n38501), 
         .C(hundres_1__N_306[1]), .D(n38489), .Z(n38456)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4935_3_lut_rep_336_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3442_3_lut_rep_306_4_lut (.A(n38439), .B(\sec[1] ), .C(\hundres_0__N_316[1] ), 
         .D(\hundres_0__N_316[2] ), .Z(n38426)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3442_3_lut_rep_306_4_lut.init = 16'hffe0;
    LUT4 i4900_3_lut_4_lut_3_lut_4_lut (.A(n38673), .B(\sec[7] ), .C(hundres_1__N_306[3]), 
         .D(n38456), .Z(hundres_0__N_313[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4900_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4892_2_lut_3_lut_3_lut_4_lut (.A(n38673), .B(\sec[7] ), .C(hundres_1__N_306[3]), 
         .D(n38456), .Z(\hundres_0__N_313[0] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4892_2_lut_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4843_2_lut_4_lut_4_lut (.A(n38457), .B(hundres_1__N_307[2]), .C(hundres_1__N_307[1]), 
         .D(n12110), .Z(\sec_tens[1] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i4843_2_lut_4_lut_4_lut.init = 16'h936c;
    LUT4 i3574_2_lut_rep_301_4_lut_4_lut (.A(n38457), .B(hundres_1__N_307[2]), 
         .C(hundres_1__N_307[1]), .D(\hundres_0__N_313[0] ), .Z(n38421)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i3574_2_lut_rep_301_4_lut_4_lut.init = 16'hff6c;
    PFUMX i28528 (.BLUT(n38784), .ALUT(n38785), .C0(\sec[3] ), .Z(n38470));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module BCD_U5
//

module BCD_U5 (n10372, \hundres_0__N_316[3] , n4, \hour_warning[4] , 
            \hour_warning[2] , n12129, \hour_warning[5] , \hour_warning[6] , 
            \hour_warning[7] , \hour_warning[1] , \hour_warning_ones[1] , 
            \hour_warning_tens[0] , \hour_warning_ones[3] , \hour_warning_ones[2] , 
            \hour_warning[3] , hundres_0__N_321) /* synthesis syn_module_defined=1 */ ;
    input n10372;
    output \hundres_0__N_316[3] ;
    output n4;
    input \hour_warning[4] ;
    input \hour_warning[2] ;
    output n12129;
    input \hour_warning[5] ;
    input \hour_warning[6] ;
    input \hour_warning[7] ;
    input \hour_warning[1] ;
    output \hour_warning_ones[1] ;
    output \hour_warning_tens[0] ;
    output \hour_warning_ones[3] ;
    output \hour_warning_ones[2] ;
    input \hour_warning[3] ;
    output hundres_0__N_321;
    
    
    wire n38461, n38440, n38592;
    wire [3:0]hundres_1__N_305;
    
    wire n38755, n38754, n38476;
    wire [3:0]hundres_1__N_307;
    
    wire n38437;
    wire [3:0]hundres_0__N_316;
    
    wire n38431;
    wire [3:0]hundres_0__N_313;
    
    wire n39960, n39959, n38495, n39961;
    wire [3:0]hundres_1__N_306;
    
    wire n38640, n38427, n38512, n38558, n38725, n38482;
    
    LUT4 i1_3_lut_4_lut (.A(n38461), .B(n38440), .C(n10372), .D(\hundres_0__N_316[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i4430_2_lut_rep_356_4_lut_4_lut_then_4_lut (.A(\hour_warning[4] ), 
         .B(n38592), .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), 
         .Z(n38755)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (C)+!B !(C+(D))))) */ ;
    defparam i4430_2_lut_rep_356_4_lut_4_lut_then_4_lut.init = 16'h6063;
    LUT4 i4430_2_lut_rep_356_4_lut_4_lut_else_4_lut (.A(\hour_warning[4] ), 
         .B(n38592), .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), 
         .Z(n38754)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4430_2_lut_rep_356_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i4403_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38476), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4403_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4381_2_lut_rep_317_4_lut_4_lut (.A(\hour_warning[2] ), .B(n38476), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38437)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4381_2_lut_rep_317_4_lut_4_lut.init = 16'h554a;
    LUT4 i4396_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38476), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4396_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4389_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38476), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4389_3_lut_4_lut.init = 16'h998c;
    LUT4 i3976_3_lut_4_lut (.A(\hundres_0__N_316[3] ), .B(n38431), .C(n10372), 
         .D(hundres_0__N_313[1]), .Z(n12129)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i3976_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3534_2_lut_rep_327_4_lut_4_lut_then_4_lut (.A(\hour_warning[4] ), 
         .B(n38592), .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), 
         .Z(n39960)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i3534_2_lut_rep_327_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    PFUMX i29129 (.BLUT(n39959), .ALUT(n39960), .C0(n38495), .Z(n39961));
    LUT4 i3530_2_lut_rep_307_3_lut_4_lut_4_lut (.A(n38461), .B(hundres_1__N_306[3]), 
         .C(\hundres_0__N_316[3] ), .D(n38640), .Z(n38427)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i3530_2_lut_rep_307_3_lut_4_lut_4_lut.init = 16'hf4fa;
    LUT4 i3534_2_lut_rep_327_4_lut_4_lut_else_4_lut (.A(\hour_warning[4] ), 
         .B(n38592), .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), 
         .Z(n39959)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i3534_2_lut_rep_327_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i10392_2_lut_rep_392_3_lut_4_lut (.A(n38592), .B(\hour_warning[4] ), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n38512)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i10392_2_lut_rep_392_3_lut_4_lut.init = 16'heee0;
    LUT4 i4480_3_lut_4_lut_3_lut_4_lut (.A(n38592), .B(\hour_warning[4] ), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4480_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3434_3_lut_rep_438 (.A(n38592), .B(\hour_warning[4] ), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(n38558)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3434_3_lut_rep_438.init = 16'hffe0;
    LUT4 i4466_3_lut_4_lut (.A(n38592), .B(\hour_warning[4] ), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4466_3_lut_4_lut.init = 16'h998a;
    LUT4 i3540_2_lut_rep_605 (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .Z(n38725)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3540_2_lut_rep_605.init = 16'heeee;
    LUT4 i4340_3_lut_4_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_305[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4340_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i3605_2_lut_rep_520_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n38640)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3605_2_lut_rep_520_3_lut.init = 16'he0e0;
    LUT4 i11985_2_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_305[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i11985_2_lut_3_lut.init = 16'h1010;
    LUT4 i4332_2_lut_rep_472_3_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n38592)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4332_2_lut_rep_472_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4353_2_lut_4_lut_4_lut (.A(\hour_warning[1] ), .B(n38437), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_warning_ones[1] )) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4353_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 i4375_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[1] ), .B(n38437), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(\hour_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4375_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4368_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[1] ), .B(n38437), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(\hour_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4368_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4361_3_lut_4_lut (.A(\hour_warning[1] ), .B(n38437), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_warning_ones[2] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4361_3_lut_4_lut.init = 16'h998c;
    LUT4 i3437_3_lut_rep_362_4_lut (.A(hundres_1__N_305[1]), .B(n38512), 
         .C(hundres_1__N_306[1]), .D(n38495), .Z(n38482)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3437_3_lut_rep_362_4_lut.init = 16'hf666;
    LUT4 i4445_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_305[1]), .B(n38512), 
         .C(hundres_1__N_306[1]), .D(n38495), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4445_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4452_3_lut_rep_341_4_lut_3_lut_4_lut (.A(hundres_1__N_305[1]), .B(n38512), 
         .C(hundres_1__N_306[1]), .D(n38495), .Z(n38461)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4452_3_lut_rep_341_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3536_2_lut_rep_375_3_lut (.A(\hour_warning[4] ), .B(n38558), .C(\hour_warning[3] ), 
         .Z(n38495)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3536_2_lut_rep_375_3_lut.init = 16'hf6f6;
    LUT4 i4438_3_lut_4_lut (.A(\hour_warning[4] ), .B(n38558), .C(\hour_warning[3] ), 
         .D(n38482), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4438_3_lut_4_lut.init = 16'h6966;
    LUT4 i3529_4_lut (.A(n38427), .B(n39961), .C(hundres_0__N_313[1]), 
         .D(n38640), .Z(hundres_0__N_321)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3529_4_lut.init = 16'hb3a0;
    LUT4 i3603_2_lut_rep_320_3_lut_4_lut (.A(n38725), .B(\hour_warning[7] ), 
         .C(hundres_1__N_306[3]), .D(n38461), .Z(n38440)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3603_2_lut_rep_320_3_lut_4_lut.init = 16'h8880;
    LUT4 i4417_3_lut_4_lut_3_lut_4_lut (.A(n38725), .B(\hour_warning[7] ), 
         .C(hundres_1__N_306[3]), .D(n38461), .Z(hundres_0__N_313[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4417_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4409_2_lut_rep_311_3_lut_3_lut_4_lut (.A(n38725), .B(\hour_warning[7] ), 
         .C(hundres_1__N_306[3]), .D(n38461), .Z(n38431)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4409_2_lut_rep_311_3_lut_3_lut_4_lut.init = 16'h7780;
    PFUMX i28508 (.BLUT(n38754), .ALUT(n38755), .C0(\hour_warning[3] ), 
          .Z(n38476));
    
endmodule
//
// Verilog Description of module KEY_U0
//

module KEY_U0 (sys_clk_c, key_sec_pre, key_sec, key2_c, n38668, key_sec_adj_10, 
            key_sec_pre_adj_11, n38604, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key2_c;
    output n38668;
    input key_sec_adj_10;
    input key_sec_pre_adj_11;
    output n38604;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire key_rst_pre, key_rst;
    wire [17:0]cnt;   // d:/new porject/top-xu/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire sys_clk_c_enable_262, n21, n34, n30, n22, n31, n28, n33278, 
        n33277, n33276, n33275, n33274, n33273, n33272, n33271, 
        n33270;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key2_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1S3IX cnt_3011__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i0.GSR = "ENABLED";
    FD1S3IX cnt_3011__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i17.GSR = "ENABLED";
    FD1S3IX cnt_3011__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i16.GSR = "ENABLED";
    FD1S3IX cnt_3011__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i15.GSR = "ENABLED";
    FD1S3IX cnt_3011__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i14.GSR = "ENABLED";
    FD1S3IX cnt_3011__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i13.GSR = "ENABLED";
    FD1S3IX cnt_3011__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i12.GSR = "ENABLED";
    FD1S3IX cnt_3011__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i11.GSR = "ENABLED";
    FD1S3IX cnt_3011__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i10.GSR = "ENABLED";
    FD1S3IX cnt_3011__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i9.GSR = "ENABLED";
    FD1S3IX cnt_3011__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i8.GSR = "ENABLED";
    FD1S3IX cnt_3011__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i7.GSR = "ENABLED";
    FD1S3IX cnt_3011__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i6.GSR = "ENABLED";
    FD1S3IX cnt_3011__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i5.GSR = "ENABLED";
    FD1S3IX cnt_3011__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i4.GSR = "ENABLED";
    FD1S3IX cnt_3011__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i3.GSR = "ENABLED";
    FD1S3IX cnt_3011__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i2.GSR = "ENABLED";
    FD1S3IX cnt_3011__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011__i1.GSR = "ENABLED";
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    LUT4 key_sec_pre_I_0_2_lut_rep_548 (.A(key_sec_pre), .B(key_sec), .Z(n38668)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_548.init = 16'h2222;
    LUT4 i1_3_lut_rep_484_4_lut (.A(key_sec_pre), .B(key_sec), .C(key_sec_adj_10), 
         .D(key_sec_pre_adj_11), .Z(n38604)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_3_lut_rep_484_4_lut.init = 16'h2f22;
    FD1P3AY key_sec_29 (.D(key2_c), .SP(sys_clk_c_enable_262), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=52 */ ;   // d:/new porject/top-xu/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_262)) /* synthesis lut_function=(A (B (C (D)))) */ ;
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
    CCU2D cnt_3011_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33278), .S0(n77[17]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_3011_add_4_19.INIT1 = 16'h0000;
    defparam cnt_3011_add_4_19.INJECT1_0 = "NO";
    defparam cnt_3011_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_3011_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33277), .COUT(n33278), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_3011_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_3011_add_4_17.INJECT1_0 = "NO";
    defparam cnt_3011_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_3011_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33276), .COUT(n33277), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_3011_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_3011_add_4_15.INJECT1_0 = "NO";
    defparam cnt_3011_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_3011_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33275), .COUT(n33276), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_3011_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_3011_add_4_13.INJECT1_0 = "NO";
    defparam cnt_3011_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_3011_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33274), .COUT(n33275), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_3011_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_3011_add_4_11.INJECT1_0 = "NO";
    defparam cnt_3011_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_3011_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33273), 
          .COUT(n33274), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_3011_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_3011_add_4_9.INJECT1_0 = "NO";
    defparam cnt_3011_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_3011_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33272), 
          .COUT(n33273), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_3011_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_3011_add_4_7.INJECT1_0 = "NO";
    defparam cnt_3011_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_3011_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33271), 
          .COUT(n33272), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_3011_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_3011_add_4_5.INJECT1_0 = "NO";
    defparam cnt_3011_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_3011_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33270), 
          .COUT(n33271), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_3011_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_3011_add_4_3.INJECT1_0 = "NO";
    defparam cnt_3011_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_3011_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33270), .S1(n77[0]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3011_add_4_1.INIT0 = 16'hF000;
    defparam cnt_3011_add_4_1.INIT1 = 16'h0555;
    defparam cnt_3011_add_4_1.INJECT1_0 = "NO";
    defparam cnt_3011_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  (sys_clk_c, sys_clk_c_enable_72, 
            rx_flag, uart_recv_done, uart_rxd_c, n31, uart_recv_data, 
            n38639, GND_net, n38559) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_clk_c_enable_72;
    output rx_flag;
    output uart_recv_done;
    input uart_rxd_c;
    output n31;
    output [7:0]uart_recv_data;
    output n38639;
    input GND_net;
    output n38559;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire [7:0]rxdata;   // d:/new porject/top-xu/uart_recv.v(43[12:18])
    
    wire n12211, n20961, uart_rxd_d1, uart_rxd_d0, n21938, uart_data_7__N_1456, 
        sys_clk_c_enable_208;
    wire [15:0]n1918;
    wire [15:0]clk_cnt;   // d:/new porject/top-xu/uart_recv.v(40[12:19])
    
    wire n20875, n36494, n22006, n33564, n20958, n20976, n20979, 
        n20985, n20988, n20968, n20982, n35903, n6, n22003, n15, 
        n14;
    wire [15:0]n69;
    
    wire n36180, n36179, n36161, n36158, n36176, n36177, n36167, 
        n36217, n38588, n38590, n38719, n38636, n38720, n33303, 
        n33302, n33301, n33300, n33299, n33298, n33297, n33296, 
        rx_flag_N_1457, n6_adj_1811;
    
    FD1P3IX rxdata__i0 (.D(n20961), .SP(sys_clk_c_enable_72), .CD(n12211), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n21938), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_1456), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n1918[8]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(uart_data_7__N_1456));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    LUT4 i27694_4_lut (.A(rx_flag), .B(clk_cnt[6]), .C(n20875), .D(n36494), 
         .Z(n22006)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/new porject/top-xu/uart_recv.v(92[9:26])
    defparam i27694_4_lut.init = 16'hfdf5;
    LUT4 i27185_4_lut (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n33564), .D(clk_cnt[3]), 
         .Z(n36494)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i27185_4_lut.init = 16'hccc8;
    FD1P3JX rx_cnt_FSM_i0 (.D(n1918[15]), .SP(sys_clk_c_enable_208), .PD(n12211), 
            .CK(sys_clk_c), .Q(n1918[0]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n20958), .SP(sys_clk_c_enable_72), .CD(n12211), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n20976), .SP(sys_clk_c_enable_72), .CD(n12211), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n20979), .SP(sys_clk_c_enable_72), .CD(n12211), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n20985), .SP(sys_clk_c_enable_72), .CD(n12211), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i6 (.D(n20988), .SP(sys_clk_c_enable_72), .CD(n12211), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i7 (.D(n20968), .SP(sys_clk_c_enable_72), .CD(n12211), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(clk_cnt[1]), .Z(n33564)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    FD1P3IX rxdata__i4 (.D(n20982), .SP(sys_clk_c_enable_72), .CD(n12211), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(clk_cnt[0]), .B(n35903), .C(clk_cnt[4]), .D(n6), 
         .Z(n31)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i4_4_lut.init = 16'hffef;
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(clk_cnt[2]), .B(n20875), .C(clk_cnt[5]), .D(clk_cnt[3]), 
         .Z(n35903)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    FD1P3IX rx_cnt_FSM_i8 (.D(n1918[7]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[8]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n1918[6]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[7]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n1918[5]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[6]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n1918[4]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[5]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n1918[3]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[4]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n1918[2]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[3]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n1918[1]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[2]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n1918[0]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[1]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n22003), 
            .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n22003), 
            .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n22003), 
            .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n22003), 
            .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n22003), 
            .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n22003), 
            .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n22003), 
            .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[13]), .C(n14), .D(clk_cnt[8]), 
         .Z(n20875)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(86[13:34])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[14]), .B(clk_cnt[15]), .C(clk_cnt[9]), .D(clk_cnt[7]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(86[13:34])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[12]), .B(clk_cnt[10]), .C(clk_cnt[11]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(86[13:34])
    defparam i5_3_lut.init = 16'hfefe;
    FD1P3IX rx_cnt_FSM_i15 (.D(n1918[14]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[15]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i14 (.D(n1918[13]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[14]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n1918[12]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[13]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n1918[11]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[12]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n1918[10]), .SP(sys_clk_c_enable_208), .CD(n12211), 
            .CK(sys_clk_c), .Q(n1918[11]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_1456), .SP(sys_clk_c_enable_208), 
            .CD(n12211), .CK(sys_clk_c), .Q(n1918[10]));   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_3017__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i15.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[0]), .C(n1918[1]), .D(n36180), 
         .Z(n20961)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_218 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n1918[2]), 
         .D(n36179), .Z(n20958)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_218.init = 16'heca0;
    LUT4 i1_4_lut_adj_219 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n1918[3]), 
         .D(n36161), .Z(n20976)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_219.init = 16'heca0;
    LUT4 i1_4_lut_adj_220 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n1918[4]), 
         .D(n36158), .Z(n20979)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_220.init = 16'heca0;
    LUT4 i1_4_lut_adj_221 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n1918[6]), 
         .D(n36176), .Z(n20985)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_221.init = 16'heca0;
    LUT4 i1_4_lut_adj_222 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n1918[7]), 
         .D(n36177), .Z(n20988)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_222.init = 16'heca0;
    LUT4 i1_4_lut_adj_223 (.A(uart_rxd_d1), .B(rxdata[7]), .C(n1918[8]), 
         .D(n36167), .Z(n20968)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_223.init = 16'heca0;
    LUT4 i1_4_lut_adj_224 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n1918[5]), 
         .D(n36217), .Z(n20982)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_224.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n1918[5]), .B(n38588), .C(n1918[2]), 
         .D(n1918[3]), .Z(n36180)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_225 (.A(n1918[5]), .B(n38588), .C(n1918[1]), 
         .D(n1918[3]), .Z(n36179)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_225.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_226 (.A(n1918[4]), .B(n38590), .C(n1918[6]), 
         .D(n1918[8]), .Z(n36177)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_226.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_227 (.A(n1918[4]), .B(n38590), .C(n1918[7]), 
         .D(n1918[8]), .Z(n36176)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_227.init = 16'hfffe;
    LUT4 i1_2_lut_rep_599 (.A(n1918[2]), .B(n1918[1]), .Z(n38719)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_599.init = 16'heeee;
    LUT4 i1_2_lut_rep_516_3_lut (.A(n1918[2]), .B(n1918[1]), .C(n1918[3]), 
         .Z(n38636)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_516_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_470_3_lut_4_lut (.A(n1918[2]), .B(n1918[1]), .C(n1918[5]), 
         .D(n1918[3]), .Z(n38590)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_470_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_600 (.A(n1918[6]), .B(n1918[7]), .Z(n38720)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_600.init = 16'heeee;
    LUT4 i1_2_lut_rep_519_3_lut (.A(n1918[6]), .B(n1918[7]), .C(n1918[8]), 
         .Z(n38639)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_519_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_468_3_lut_4_lut (.A(n1918[6]), .B(n1918[7]), .C(n1918[4]), 
         .D(n1918[8]), .Z(n38588)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_468_3_lut_4_lut.init = 16'hfffe;
    FD1S3IX clk_cnt_3017__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n22006), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017__i0.GSR = "ENABLED";
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n22003), 
            .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=461, LSE_RLINE=468 */ ;   // d:/new porject/top-xu/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    CCU2D clk_cnt_3017_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33303), .S0(n69[15]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_3017_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_3017_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_3017_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33302), .COUT(n33303), .S0(n69[13]), .S1(n69[14]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_3017_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_3017_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33301), .COUT(n33302), .S0(n69[11]), .S1(n69[12]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_3017_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_3017_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33300), .COUT(n33301), .S0(n69[9]), .S1(n69[10]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_3017_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_228 (.A(n1918[4]), .B(n38639), .C(n38719), 
         .D(n1918[5]), .Z(n36161)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_228.init = 16'hfffe;
    CCU2D clk_cnt_3017_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33299), .COUT(n33300), .S0(n69[7]), .S1(n69[8]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_3017_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_3017_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33298), .COUT(n33299), .S0(n69[5]), .S1(n69[6]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_3017_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_3017_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33297), .COUT(n33298), .S0(n69[3]), .S1(n69[4]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_3017_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_3017_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33296), .COUT(n33297), .S0(n69[1]), .S1(n69[2]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_3017_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_3017_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_229 (.A(n1918[5]), .B(n38636), .C(n38720), 
         .D(n1918[4]), .Z(n36167)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_229.init = 16'hfffe;
    CCU2D clk_cnt_3017_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n33296), .S1(n69[0]));   // d:/new porject/top-xu/uart_recv.v(87[24:38])
    defparam clk_cnt_3017_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_3017_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_3017_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_3017_add_4_1.INJECT1_1 = "NO";
    LUT4 i12891_1_lut (.A(uart_data_7__N_1456), .Z(n22003)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/uart_recv.v(101[23:36])
    defparam i12891_1_lut.init = 16'h5555;
    LUT4 i12827_4_lut (.A(uart_data_7__N_1456), .B(rx_flag_N_1457), .C(rx_flag), 
         .D(n31), .Z(n21938)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // d:/new porject/top-xu/uart_recv.v(70[10] 78[8])
    defparam i12827_4_lut.init = 16'hfcdc;
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_1457)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    LUT4 i27724_4_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .C(n35903), .D(n6_adj_1811), 
         .Z(sys_clk_c_enable_208)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/uart_recv.v(100[13:35])
    defparam i27724_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_230 (.A(n1918[3]), .B(n38719), .C(n38639), 
         .D(n1918[4]), .Z(n36217)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_230.init = 16'hfffe;
    LUT4 i1_2_lut_adj_231 (.A(clk_cnt[0]), .B(clk_cnt[4]), .Z(n6_adj_1811)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_231.init = 16'hdddd;
    LUT4 i1_2_lut_rep_439_3_lut_4_lut (.A(n1918[3]), .B(n38719), .C(n1918[4]), 
         .D(n1918[5]), .Z(n38559)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_439_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_232 (.A(n1918[3]), .B(n38719), .C(n38639), 
         .D(n1918[5]), .Z(n36158)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_232.init = 16'hfffe;
    LUT4 i3289_1_lut (.A(rx_flag), .Z(n12211)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/uart_recv.v(70[10] 78[8])
    defparam i3289_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module KEY_U1
//

module KEY_U1 (sys_clk_c, key_sec_pre, key_sec, key1_c, GND_net, sys_clk_c_enable_263, 
            sys_rst_n_c, n38602, n38718, n22156) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key1_c;
    input GND_net;
    output sys_clk_c_enable_263;
    input sys_rst_n_c;
    output n38602;
    input n38718;
    output n22156;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire key_rst_pre, key_rst, n33267;
    wire [17:0]cnt;   // d:/new porject/top-xu/key.v(37[16:19])
    wire [17:0]n77;
    
    wire n33268, n33266, n33265, n33264, n33263, n33262, n33261, 
        key_edge, sys_clk_c_enable_284, n21, n34, n30, n22, n31, 
        n28, n33269;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key1_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    CCU2D cnt_3010_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33267), .COUT(n33268), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_3010_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_3010_add_4_15.INJECT1_0 = "NO";
    defparam cnt_3010_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_3010_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33266), .COUT(n33267), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_3010_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_3010_add_4_13.INJECT1_0 = "NO";
    defparam cnt_3010_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_3010_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33265), .COUT(n33266), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_3010_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_3010_add_4_11.INJECT1_0 = "NO";
    defparam cnt_3010_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_3010_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33264), 
          .COUT(n33265), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_3010_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_3010_add_4_9.INJECT1_0 = "NO";
    defparam cnt_3010_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_3010_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33263), 
          .COUT(n33264), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_3010_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_3010_add_4_7.INJECT1_0 = "NO";
    defparam cnt_3010_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_3010_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33262), 
          .COUT(n33263), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_3010_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_3010_add_4_5.INJECT1_0 = "NO";
    defparam cnt_3010_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_3010_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33261), 
          .COUT(n33262), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_3010_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_3010_add_4_3.INJECT1_0 = "NO";
    defparam cnt_3010_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_3010_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33261), .S1(n77[0]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010_add_4_1.INIT0 = 16'hF000;
    defparam cnt_3010_add_4_1.INIT1 = 16'h0555;
    defparam cnt_3010_add_4_1.INJECT1_0 = "NO";
    defparam cnt_3010_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_3010__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i0.GSR = "ENABLED";
    FD1S3IX cnt_3010__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i17.GSR = "ENABLED";
    FD1S3IX cnt_3010__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i16.GSR = "ENABLED";
    FD1S3IX cnt_3010__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i15.GSR = "ENABLED";
    FD1S3IX cnt_3010__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i14.GSR = "ENABLED";
    FD1S3IX cnt_3010__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i13.GSR = "ENABLED";
    FD1S3IX cnt_3010__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i12.GSR = "ENABLED";
    FD1S3IX cnt_3010__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i11.GSR = "ENABLED";
    FD1S3IX cnt_3010__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i10.GSR = "ENABLED";
    FD1S3IX cnt_3010__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i9.GSR = "ENABLED";
    FD1S3IX cnt_3010__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i8.GSR = "ENABLED";
    FD1S3IX cnt_3010__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i7.GSR = "ENABLED";
    FD1S3IX cnt_3010__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i6.GSR = "ENABLED";
    FD1S3IX cnt_3010__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i5.GSR = "ENABLED";
    FD1S3IX cnt_3010__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i4.GSR = "ENABLED";
    FD1S3IX cnt_3010__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i3.GSR = "ENABLED";
    FD1S3IX cnt_3010__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i2.GSR = "ENABLED";
    FD1S3IX cnt_3010__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010__i1.GSR = "ENABLED";
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    LUT4 key_sec_pre_I_0_2_lut_rep_549 (.A(key_sec_pre), .B(key_sec), .Z(sys_clk_c_enable_263)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_549.init = 16'h2222;
    LUT4 i1_2_lut_rep_482_3_lut (.A(key_sec_pre), .B(key_sec), .C(sys_rst_n_c), 
         .Z(n38602)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i1_2_lut_rep_482_3_lut.init = 16'h2f2f;
    LUT4 i13044_2_lut_2_lut_3_lut (.A(key_sec_pre), .B(key_sec), .C(n38718), 
         .Z(n22156)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam i13044_2_lut_2_lut_3_lut.init = 16'h0202;
    FD1P3AY key_sec_29 (.D(key1_c), .SP(sys_clk_c_enable_284), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=44 */ ;   // d:/new porject/top-xu/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_284)) /* synthesis lut_function=(A (B (C (D)))) */ ;
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
    CCU2D cnt_3010_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33269), .S0(n77[17]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_3010_add_4_19.INIT1 = 16'h0000;
    defparam cnt_3010_add_4_19.INJECT1_0 = "NO";
    defparam cnt_3010_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_3010_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33268), .COUT(n33269), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3010_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_3010_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_3010_add_4_17.INJECT1_0 = "NO";
    defparam cnt_3010_add_4_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000)_U2 
//

module \divide(WIDTH=32,N=12000000)_U2  (clk_1s, sys_clk_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_1s;
    input sys_clk_c;
    input GND_net;
    
    wire clk_1s /* synthesis is_clock=1, SET_AS_NETWORK=clk_1s */ ;   // d:/new porject/top-xu/top.v(29[7:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire clkout_N_259;
    wire [31:0]cnt_p;   // d:/new porject/top-xu/clock.v(11[19:24])
    
    wire n26, n24, n33260;
    wire [31:0]n101;
    
    wire n33259, n33258, n33257, n33256, n33255, n33254, n33253, 
        n33252, n33251, n33250, n33249, n33248, n33247;
    wire [31:0]n200;
    
    wire n33246, n33245, n22004, n33411, n33410, n33409, n33408, 
        n36522, n36866, n36518, n36516, n28_adj_1809, n25, n27_adj_1810, 
        n33407, n33406, n33405, n19, n33404, n33403, n33402, n33401, 
        n33400;
    
    FD1S3AX clk_p_29 (.D(clkout_N_259), .CK(sys_clk_c), .Q(clk_1s)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=37, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=36 */ ;   // d:/new porject/top-xu/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    LUT4 i11_4_lut (.A(cnt_p[28]), .B(cnt_p[15]), .C(cnt_p[31]), .D(cnt_p[29]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt_p[26]), .B(cnt_p[24]), .C(cnt_p[10]), .D(cnt_p[27]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i9_4_lut.init = 16'hfffe;
    CCU2D cnt_p_3009_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33260), .S0(n101[31]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_3009_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33259), .COUT(n33260), .S0(n101[29]), 
          .S1(n101[30]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33258), .COUT(n33259), .S0(n101[27]), 
          .S1(n101[28]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33257), .COUT(n33258), .S0(n101[25]), 
          .S1(n101[26]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33256), .COUT(n33257), .S0(n101[23]), 
          .S1(n101[24]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33255), .COUT(n33256), .S0(n101[21]), 
          .S1(n101[22]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33254), .COUT(n33255), .S0(n101[19]), 
          .S1(n101[20]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33253), .COUT(n33254), .S0(n101[17]), 
          .S1(n101[18]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33252), .COUT(n33253), .S0(n101[15]), 
          .S1(n101[16]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33251), .COUT(n33252), .S0(n101[13]), 
          .S1(n101[14]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33250), .COUT(n33251), .S0(n101[11]), 
          .S1(n101[12]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33249), .COUT(n33250), .S0(n101[9]), .S1(n101[10]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33248), .COUT(n33249), .S0(n101[7]), .S1(n101[8]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33247), .COUT(n33248), .S0(n101[5]), .S1(n101[6]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33246), .COUT(n33247), .S0(n101[3]), .S1(n101[4]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33245), .COUT(n33246), .S0(n101[1]), .S1(n101[2]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_3009_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_3009_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_3009_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33245), .S1(n101[0]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_3009_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_3009_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_3009_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_p_3009__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n22004), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n22004), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n22004), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n22004), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n22004), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n22004), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n22004), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i1.GSR = "ENABLED";
    FD1S3IX cnt_p_3009__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n22004), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3009__i0.GSR = "ENABLED";
    CCU2D add_24018_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33411), 
          .S0(clkout_N_259));
    defparam add_24018_cout.INIT0 = 16'h0000;
    defparam add_24018_cout.INIT1 = 16'h0000;
    defparam add_24018_cout.INJECT1_0 = "NO";
    defparam add_24018_cout.INJECT1_1 = "NO";
    CCU2D add_24018_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33410), .COUT(n33411));
    defparam add_24018_24.INIT0 = 16'h5555;
    defparam add_24018_24.INIT1 = 16'h5555;
    defparam add_24018_24.INJECT1_0 = "NO";
    defparam add_24018_24.INJECT1_1 = "NO";
    CCU2D add_24018_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33409), .COUT(n33410));
    defparam add_24018_22.INIT0 = 16'h5555;
    defparam add_24018_22.INIT1 = 16'h5555;
    defparam add_24018_22.INJECT1_0 = "NO";
    defparam add_24018_22.INJECT1_1 = "NO";
    CCU2D add_24018_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33408), .COUT(n33409));
    defparam add_24018_20.INIT0 = 16'h5555;
    defparam add_24018_20.INIT1 = 16'h5555;
    defparam add_24018_20.INJECT1_0 = "NO";
    defparam add_24018_20.INJECT1_1 = "NO";
    LUT4 i27692_3_lut (.A(n36522), .B(n36866), .C(n36518), .Z(n22004)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i27692_3_lut.init = 16'h8080;
    LUT4 i27213_4_lut (.A(n200[1]), .B(cnt_p[11]), .C(n200[2]), .D(n200[3]), 
         .Z(n36522)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27213_4_lut.init = 16'h8000;
    LUT4 i27691_4_lut (.A(n36516), .B(n200[0]), .C(n28_adj_1809), .D(cnt_p[16]), 
         .Z(n36866)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i27691_4_lut.init = 16'h0800;
    LUT4 i27209_4_lut (.A(n200[5]), .B(cnt_p[17]), .C(cnt_p[12]), .D(cnt_p[20]), 
         .Z(n36518)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27209_4_lut.init = 16'h8000;
    LUT4 i27207_4_lut (.A(cnt_p[23]), .B(cnt_p[21]), .C(cnt_p[7]), .D(cnt_p[9]), 
         .Z(n36516)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27207_4_lut.init = 16'h8000;
    LUT4 i10_4_lut (.A(cnt_p[30]), .B(cnt_p[22]), .C(cnt_p[13]), .D(cnt_p[25]), 
         .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(cnt_p[19]), .B(n24), .C(cnt_p[8]), .D(cnt_p[14]), 
         .Z(n27_adj_1810)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i12_4_lut.init = 16'hfffe;
    CCU2D add_24018_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33407), .COUT(n33408));
    defparam add_24018_18.INIT0 = 16'h5555;
    defparam add_24018_18.INIT1 = 16'h5555;
    defparam add_24018_18.INJECT1_0 = "NO";
    defparam add_24018_18.INJECT1_1 = "NO";
    CCU2D add_24018_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33406), .COUT(n33407));
    defparam add_24018_16.INIT0 = 16'h5aaa;
    defparam add_24018_16.INIT1 = 16'h5555;
    defparam add_24018_16.INJECT1_0 = "NO";
    defparam add_24018_16.INJECT1_1 = "NO";
    CCU2D add_24018_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33405), .COUT(n33406));
    defparam add_24018_14.INIT0 = 16'h5aaa;
    defparam add_24018_14.INIT1 = 16'h5555;
    defparam add_24018_14.INJECT1_0 = "NO";
    defparam add_24018_14.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n27_adj_1810), .B(n200[4]), .C(n25), .D(n26), 
         .Z(n19)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i10_3_lut (.A(n19), .B(n200[6]), .C(cnt_p[18]), .Z(n28_adj_1809)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i10_3_lut.init = 16'hbfbf;
    CCU2D add_24018_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33404), .COUT(n33405));
    defparam add_24018_12.INIT0 = 16'h5555;
    defparam add_24018_12.INIT1 = 16'h5aaa;
    defparam add_24018_12.INJECT1_0 = "NO";
    defparam add_24018_12.INJECT1_1 = "NO";
    CCU2D add_24018_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33403), .COUT(n33404));
    defparam add_24018_10.INIT0 = 16'h5aaa;
    defparam add_24018_10.INIT1 = 16'h5aaa;
    defparam add_24018_10.INJECT1_0 = "NO";
    defparam add_24018_10.INJECT1_1 = "NO";
    CCU2D add_24018_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33402), .COUT(n33403));
    defparam add_24018_8.INIT0 = 16'h5555;
    defparam add_24018_8.INIT1 = 16'h5aaa;
    defparam add_24018_8.INJECT1_0 = "NO";
    defparam add_24018_8.INJECT1_1 = "NO";
    CCU2D add_24018_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33401), .COUT(n33402));
    defparam add_24018_6.INIT0 = 16'h5555;
    defparam add_24018_6.INIT1 = 16'h5555;
    defparam add_24018_6.INJECT1_0 = "NO";
    defparam add_24018_6.INJECT1_1 = "NO";
    CCU2D add_24018_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33400), .COUT(n33401));
    defparam add_24018_4.INIT0 = 16'h5aaa;
    defparam add_24018_4.INIT1 = 16'h5aaa;
    defparam add_24018_4.INJECT1_0 = "NO";
    defparam add_24018_4.INJECT1_1 = "NO";
    CCU2D add_24018_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n33400));
    defparam add_24018_2.INIT0 = 16'h7000;
    defparam add_24018_2.INIT1 = 16'h5555;
    defparam add_24018_2.INJECT1_0 = "NO";
    defparam add_24018_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module uart_send
//

module uart_send (sys_clk_c, uart_en, \uart_send_data[3] , \uart_send_data[4] , 
            \uart_send_data[5] , \uart_send_data[6] , uart_txd_c, \uart_send_data[0] , 
            GND_net, \uart_send_data[1] , \uart_send_data[2] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input uart_en;
    input \uart_send_data[3] ;
    input \uart_send_data[4] ;
    input \uart_send_data[5] ;
    input \uart_send_data[6] ;
    output uart_txd_c;
    input \uart_send_data[0] ;
    input GND_net;
    input \uart_send_data[1] ;
    input \uart_send_data[2] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire uart_en_d1, uart_en_d0, uart_tx_busy, n21951;
    wire [7:0]tx_data;   // d:/new porject/top-xu/uart.v(22[12:19])
    
    wire sys_clk_c_enable_321, n30755;
    wire [15:0]clk_cnt;   // d:/new porject/top-xu/uart.v(19[12:19])
    
    wire n38716, n36136, n4;
    wire [15:0]n2008;
    
    wire sys_clk_c_enable_191, n38723, uart_tx_busy_N_709, n14982, n19873, 
        n36666, n19501, n36532, n36083, n36592, n36534, n36657;
    wire [0:0]n5358;
    
    wire n19872, n22005;
    wire [15:0]n69;
    
    wire n36462, n36145, n16, n12, n35895, n38711, uart_txd_N_712, 
        n14981, n33295, n33294, n33293, n33292, n33291, n14977, 
        n33652, n10, n33290, n33289, n33288;
    
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n21951), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    FD1P3IX tx_data_i3 (.D(\uart_send_data[3] ), .SP(sys_clk_c_enable_321), 
            .CD(n30755), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1P3IX tx_data_i4 (.D(\uart_send_data[4] ), .SP(sys_clk_c_enable_321), 
            .CD(n30755), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1P3IX tx_data_i5 (.D(\uart_send_data[5] ), .SP(sys_clk_c_enable_321), 
            .CD(n30755), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1P3IX tx_data_i6 (.D(\uart_send_data[6] ), .SP(sys_clk_c_enable_321), 
            .CD(n30755), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i6.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(clk_cnt[1]), .B(clk_cnt[5]), .C(n38716), .D(n36136), 
         .Z(n4)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i1_4_lut.init = 16'hc8c0;
    FD1P3JX tx_cnt_FSM_i0 (.D(n2008[15]), .SP(sys_clk_c_enable_191), .PD(n38723), 
            .CK(sys_clk_c), .Q(n2008[0]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n2008[14]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[15]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n2008[13]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[14]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n2008[12]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[13]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n2008[11]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[12]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n2008[10]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[11]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_709), .SP(sys_clk_c_enable_191), 
            .CD(n38723), .CK(sys_clk_c), .Q(n2008[10]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n2008[8]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_709));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n2008[7]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[8]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n2008[6]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[7]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n2008[5]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[6]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n2008[4]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[5]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n2008[3]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[4]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n2008[2]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[3]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i2 (.D(n2008[1]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[2]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i1 (.D(n2008[0]), .SP(sys_clk_c_enable_191), .CD(n38723), 
            .CK(sys_clk_c), .Q(n2008[1]));   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    PFUMX i10427 (.BLUT(n14982), .ALUT(n19873), .C0(n36666), .Z(n19501));
    LUT4 i2_4_lut (.A(n36136), .B(n36532), .C(n36083), .D(n36592), .Z(sys_clk_c_enable_191)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_4_lut.init = 16'h0020;
    LUT4 i27283_4_lut (.A(clk_cnt[13]), .B(n36534), .C(clk_cnt[12]), .D(clk_cnt[15]), 
         .Z(n36592)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27283_4_lut.init = 16'hfffe;
    LUT4 i27225_4_lut (.A(clk_cnt[3]), .B(clk_cnt[4]), .C(clk_cnt[9]), 
         .D(clk_cnt[8]), .Z(n36534)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27225_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .Z(n36136)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i27772_4_lut_4_lut (.A(n2008[6]), .B(n36657), .C(n2008[5]), .D(n2008[7]), 
         .Z(n36666)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (D))) */ ;   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam i27772_4_lut_4_lut.init = 16'hffae;
    LUT4 i27484_4_lut_4_lut_4_lut (.A(n2008[7]), .B(n5358[0]), .C(n19872), 
         .D(n2008[6]), .Z(n19873)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/new porject/top-xu/uart.v(89[23:36])
    defparam i27484_4_lut_4_lut_4_lut.init = 16'hf0e4;
    LUT4 i10793_3_lut (.A(tx_data[5]), .B(tx_data[6]), .C(n2008[7]), .Z(n19872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i10793_3_lut.init = 16'hcaca;
    FD1S3IX clk_cnt_3015__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i1.GSR = "ENABLED";
    LUT4 mux_1656_i1_3_lut (.A(tx_data[0]), .B(tx_data[1]), .C(n2008[2]), 
         .Z(n5358[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam mux_1656_i1_3_lut.init = 16'hcaca;
    FD1S3IX clk_cnt_3015__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i15.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(n36462), .B(n36083), .C(uart_tx_busy_N_709), .D(clk_cnt[2]), 
         .Z(n36145)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i4_4_lut.init = 16'h0040;
    LUT4 i8_4_lut (.A(clk_cnt[13]), .B(n16), .C(n12), .D(clk_cnt[12]), 
         .Z(n35895)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(clk_cnt[10]), .B(clk_cnt[15]), .C(clk_cnt[9]), .D(n38711), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(clk_cnt[8]), .B(clk_cnt[7]), .Z(n12)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i1_3_lut (.A(clk_cnt[6]), .B(clk_cnt[5]), .C(clk_cnt[1]), .Z(n36083)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_adj_216 (.A(uart_en_d0), .B(n36145), .C(uart_en_d1), 
         .Z(n30755)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam i1_3_lut_adj_216.init = 16'hc4c4;
    LUT4 i27028_2_lut_rep_591 (.A(clk_cnt[11]), .B(clk_cnt[14]), .Z(n38711)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27028_2_lut_rep_591.init = 16'heeee;
    LUT4 i27223_3_lut_4_lut (.A(clk_cnt[11]), .B(clk_cnt[14]), .C(clk_cnt[7]), 
         .D(clk_cnt[10]), .Z(n36532)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27223_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_596 (.A(clk_cnt[4]), .B(clk_cnt[3]), .Z(n38716)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i1_2_lut_rep_596.init = 16'heeee;
    LUT4 i27153_3_lut_4_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(clk_cnt[0]), 
         .D(n35895), .Z(n36462)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(19[12:19])
    defparam i27153_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(uart_en_d0), .B(uart_en_d1), .C(uart_tx_busy), 
         .D(n36145), .Z(n21951)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam i1_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1_2_lut_3_lut (.A(uart_en_d0), .B(uart_en_d1), .C(n36145), .Z(sys_clk_c_enable_321)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/new porject/top-xu/uart.v(42[10] 45[8])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    FD1S3JX uart_txd_47 (.D(uart_txd_N_712), .CK(sys_clk_c), .PD(n38723), 
            .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(101[10] 116[26])
    defparam uart_txd_47.GSR = "ENABLED";
    FD1S3IX clk_cnt_3015__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n22005), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015__i0.GSR = "ENABLED";
    LUT4 i12854_1_lut_rep_603 (.A(uart_tx_busy), .Z(n38723)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam i12854_1_lut_rep_603.init = 16'h5555;
    LUT4 i1_4_lut_4_lut (.A(uart_tx_busy), .B(n4), .C(n35895), .D(clk_cnt[6]), 
         .Z(n22005)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam i1_4_lut_4_lut.init = 16'hfdf5;
    LUT4 i5973_3_lut (.A(n14981), .B(tx_data[4]), .C(n2008[5]), .Z(n14982)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i5973_3_lut.init = 16'hcaca;
    FD1P3IX tx_data_i0 (.D(\uart_send_data[0] ), .SP(sys_clk_c_enable_321), 
            .CD(n30755), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i0.GSR = "ENABLED";
    CCU2D clk_cnt_3015_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33295), .S0(n69[15]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_3015_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_3015_add_4_17.INJECT1_1 = "NO";
    LUT4 i5972_3_lut (.A(tx_data[2]), .B(tx_data[3]), .C(n2008[4]), .Z(n14981)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i5972_3_lut.init = 16'hcaca;
    LUT4 i27348_2_lut (.A(n2008[4]), .B(n2008[3]), .Z(n36657)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i27348_2_lut.init = 16'h1111;
    CCU2D clk_cnt_3015_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33294), .COUT(n33295), .S0(n69[13]), .S1(n69[14]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_3015_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_3015_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33293), .COUT(n33294), .S0(n69[11]), .S1(n69[12]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_3015_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_3015_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33292), .COUT(n33293), .S0(n69[9]), .S1(n69[10]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_3015_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_3015_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33291), .COUT(n33292), .S0(n69[7]), .S1(n69[8]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_3015_add_4_9.INJECT1_1 = "NO";
    LUT4 i18405_4_lut (.A(n14977), .B(n2008[0]), .C(uart_txd_c), .D(n33652), 
         .Z(uart_txd_N_712)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i18405_4_lut.init = 16'h3022;
    LUT4 i18887_3_lut (.A(n19501), .B(uart_tx_busy_N_709), .C(n2008[8]), 
         .Z(n14977)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i18887_3_lut.init = 16'hcece;
    LUT4 i5_3_lut (.A(n2008[15]), .B(n10), .C(n2008[13]), .Z(n33652)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_adj_217 (.A(n2008[14]), .B(n2008[12]), .C(n2008[11]), 
         .D(n2008[10]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/uart.v(102[9] 114[16])
    defparam i4_4_lut_adj_217.init = 16'hfffe;
    CCU2D clk_cnt_3015_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33290), .COUT(n33291), .S0(n69[5]), .S1(n69[6]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_3015_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_3015_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33289), .COUT(n33290), .S0(n69[3]), .S1(n69[4]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_3015_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_3015_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33288), .COUT(n33289), .S0(n69[1]), .S1(n69[2]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_3015_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_3015_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_3015_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n33288), .S1(n69[0]));   // d:/new porject/top-xu/uart.v(75[24:38])
    defparam clk_cnt_3015_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_3015_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_3015_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_3015_add_4_1.INJECT1_1 = "NO";
    FD1P3IX tx_data_i1 (.D(\uart_send_data[1] ), .SP(sys_clk_c_enable_321), 
            .CD(n30755), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i1.GSR = "ENABLED";
    FD1P3IX tx_data_i2 (.D(\uart_send_data[2] ), .SP(sys_clk_c_enable_321), 
            .CD(n30755), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=372, LSE_RLINE=381 */ ;   // d:/new porject/top-xu/uart.v(54[10] 66[12])
    defparam tx_data_i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module BCD_U4
//

module BCD_U4 (n38646, \min[7] , n38453, \hundres_1__N_306[3] , \hundres_0__N_313[1] , 
            \min[2] , \hundres_0__N_316[3] , \min[4] , \min[6] , \min[5] , 
            \min[3] , \min[1] , \min_ones[3] , \min_ones[1] , \min_tens[0] , 
            n37263, n38594) /* synthesis syn_module_defined=1 */ ;
    output n38646;
    input \min[7] ;
    output n38453;
    output \hundres_1__N_306[3] ;
    output \hundres_0__N_313[1] ;
    input \min[2] ;
    output \hundres_0__N_316[3] ;
    input \min[4] ;
    input \min[6] ;
    input \min[5] ;
    input \min[3] ;
    input \min[1] ;
    output \min_ones[3] ;
    output \min_ones[1] ;
    output \min_tens[0] ;
    output n37263;
    output n38594;
    
    
    wire n38465;
    wire [3:0]hundres_1__N_307;
    
    wire n38436;
    wire [3:0]hundres_0__N_316;
    wire [3:0]hundres_1__N_306;
    
    wire n38496;
    
    LUT4 i4725_3_lut_4_lut_3_lut_4_lut (.A(n38646), .B(\min[7] ), .C(n38453), 
         .D(\hundres_1__N_306[3] ), .Z(\hundres_0__N_313[1] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4725_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i4689_2_lut_rep_316_4_lut_4_lut (.A(\min[2] ), .B(n38465), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(n38436)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4689_2_lut_rep_316_4_lut_4_lut.init = 16'h554a;
    LUT4 i4704_2_lut_3_lut_3_lut_4_lut (.A(\min[2] ), .B(n38465), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4704_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4711_3_lut_4_lut_3_lut_4_lut (.A(\min[2] ), .B(n38465), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4711_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4697_3_lut_4_lut (.A(\min[2] ), .B(n38465), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4697_3_lut_4_lut.init = 16'h998c;
    LUT4 min_4__bdd_4_lut_29019 (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), 
         .D(\min[7] ), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam min_4__bdd_4_lut_29019.init = 16'h0db0;
    LUT4 min_4__bdd_4_lut_29020 (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), 
         .D(\min[7] ), .Z(hundres_1__N_306[2])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam min_4__bdd_4_lut_29020.init = 16'h4204;
    LUT4 min_4__bdd_4_lut_29021 (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), 
         .D(\min[7] ), .Z(\hundres_1__N_306[3] )) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam min_4__bdd_4_lut_29021.init = 16'h83c8;
    LUT4 min_4__bdd_4_lut (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), .D(\min[7] ), 
         .Z(n38496)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam min_4__bdd_4_lut.init = 16'h2962;
    LUT4 i4738_2_lut_rep_345_4_lut_4_lut (.A(n38496), .B(\min[3] ), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(n38465)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4738_2_lut_rep_345_4_lut_4_lut.init = 16'h332c;
    LUT4 i4753_2_lut_3_lut_3_lut_4_lut (.A(n38496), .B(\min[3] ), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4753_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4760_3_lut_rep_333_4_lut_3_lut_4_lut (.A(n38496), .B(\min[3] ), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(n38453)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4760_3_lut_rep_333_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4746_3_lut_4_lut (.A(n38496), .B(\min[3] ), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4746_3_lut_4_lut.init = 16'h998a;
    LUT4 i4676_2_lut_3_lut_3_lut_4_lut (.A(\min[1] ), .B(n38436), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\min_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4676_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4661_2_lut_4_lut_4_lut (.A(\min[1] ), .B(n38436), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\min_ones[1] )) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4661_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 i4683_3_lut_4_lut_3_lut_4_lut (.A(\min[1] ), .B(n38436), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\min_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4683_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 n12085_bdd_3_lut_4_lut (.A(\min[1] ), .B(n38436), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(n37263)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam n12085_bdd_3_lut_4_lut.init = 16'h998c;
    LUT4 i4653_2_lut_rep_526 (.A(\min[6] ), .B(\min[5] ), .Z(n38646)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4653_2_lut_rep_526.init = 16'heeee;
    LUT4 i3616_2_lut_rep_474_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(n38594)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3616_2_lut_rep_474_3_lut.init = 16'he0e0;
    
endmodule
//
// Verilog Description of module BCD_U3
//

module BCD_U3 (\min_warning[7] , n38452, \hundres_1__N_306[3] , \hundres_0__N_313[1] , 
            \min_warning[4] , \hundres_1__N_306[3]_adj_9 , n38453, \min[7] , 
            n38646, \min_warning[2] , \hundres_0__N_316[3] , \min_warning[1] , 
            \min_warning_ones[1] , \min_warning_tens[0] , \min_warning_ones[3] , 
            n37262, \min_warning[3] , \min_warning[6] , \min_warning[5] , 
            n38595, sw1_c, n10380) /* synthesis syn_module_defined=1 */ ;
    input \min_warning[7] ;
    output n38452;
    output \hundres_1__N_306[3] ;
    output \hundres_0__N_313[1] ;
    input \min_warning[4] ;
    input \hundres_1__N_306[3]_adj_9 ;
    input n38453;
    input \min[7] ;
    input n38646;
    input \min_warning[2] ;
    output \hundres_0__N_316[3] ;
    input \min_warning[1] ;
    output \min_warning_ones[1] ;
    output \min_warning_tens[0] ;
    output \min_warning_ones[3] ;
    output n37262;
    input \min_warning[3] ;
    input \min_warning[6] ;
    input \min_warning[5] ;
    output n38595;
    input sw1_c;
    output n10380;
    
    
    wire n38647, n38562;
    wire [3:0]hundres_1__N_305;
    
    wire n38794, n38793, n38809, n38808, n38468;
    wire [3:0]hundres_1__N_307;
    wire [3:0]hundres_0__N_316;
    
    wire n38435, n38497, n38535;
    wire [3:0]hundres_1__N_306;
    
    wire n38487, n38478;
    
    LUT4 i4263_3_lut_4_lut_3_lut_4_lut (.A(n38647), .B(\min_warning[7] ), 
         .C(n38452), .D(\hundres_1__N_306[3] ), .Z(\hundres_0__N_313[1] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4263_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i4276_2_lut_rep_348_4_lut_4_lut_then_4_lut (.A(n38562), .B(\min_warning[4] ), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n38794)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4276_2_lut_rep_348_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i4276_2_lut_rep_348_4_lut_4_lut_else_4_lut (.A(n38562), .B(\min_warning[4] ), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n38793)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4276_2_lut_rep_348_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 mux_2929_i3_3_lut_4_lut_then_4_lut (.A(n38452), .B(\min_warning[7] ), 
         .C(n38647), .D(\hundres_1__N_306[3] ), .Z(n38809)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C (D))))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam mux_2929_i3_3_lut_4_lut_then_4_lut.init = 16'h6a2a;
    LUT4 mux_2929_i3_3_lut_4_lut_else_4_lut (.A(\hundres_1__N_306[3]_adj_9 ), 
         .B(n38453), .C(\min[7] ), .D(n38646), .Z(n38808)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A ((C (D))+!B))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam mux_2929_i3_3_lut_4_lut_else_4_lut.init = 16'h2ccc;
    LUT4 i4242_2_lut_3_lut_3_lut_4_lut (.A(n38468), .B(\min_warning[2] ), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4242_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4227_2_lut_rep_315_4_lut_4_lut (.A(n38468), .B(\min_warning[2] ), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38435)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4227_2_lut_rep_315_4_lut_4_lut.init = 16'h332c;
    LUT4 i4249_3_lut_4_lut_3_lut_4_lut (.A(n38468), .B(\min_warning[2] ), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4249_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4235_3_lut_4_lut (.A(n38468), .B(\min_warning[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4235_3_lut_4_lut.init = 16'h998a;
    LUT4 i9901_2_lut_rep_377_3_lut_4_lut (.A(\min_warning[4] ), .B(n38562), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n38497)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i9901_2_lut_rep_377_3_lut_4_lut.init = 16'heee0;
    LUT4 i4326_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[4] ), .B(n38562), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(\hundres_1__N_306[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4326_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3443_3_lut_rep_415 (.A(\min_warning[4] ), .B(n38562), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(n38535)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3443_3_lut_rep_415.init = 16'hffe0;
    LUT4 i4312_3_lut_4_lut (.A(\min_warning[4] ), .B(n38562), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4312_3_lut_4_lut.init = 16'h998c;
    LUT4 i3457_3_lut_rep_358_4_lut (.A(hundres_1__N_305[1]), .B(n38497), 
         .C(hundres_1__N_306[1]), .D(n38487), .Z(n38478)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3457_3_lut_rep_358_4_lut.init = 16'hf666;
    LUT4 i4291_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_305[1]), .B(n38497), 
         .C(hundres_1__N_306[1]), .D(n38487), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4291_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4199_2_lut_4_lut_4_lut (.A(\min_warning[1] ), .B(n38435), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\min_warning_ones[1] )) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4199_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 i4221_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[1] ), .B(n38435), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(\min_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4221_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4298_3_lut_rep_332_4_lut_3_lut_4_lut (.A(hundres_1__N_305[1]), .B(n38497), 
         .C(hundres_1__N_306[1]), .D(n38487), .Z(n38452)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4298_3_lut_rep_332_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4214_2_lut_3_lut_3_lut_4_lut (.A(\min_warning[1] ), .B(n38435), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(\min_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4214_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 n12085_bdd_3_lut_27833_4_lut (.A(\min_warning[1] ), .B(n38435), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(n37262)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam n12085_bdd_3_lut_27833_4_lut.init = 16'h998c;
    LUT4 i4284_3_lut_4_lut (.A(\min_warning[4] ), .B(n38535), .C(\min_warning[3] ), 
         .D(n38478), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4284_3_lut_4_lut.init = 16'h6966;
    LUT4 i3521_2_lut_rep_367_3_lut (.A(\min_warning[4] ), .B(n38535), .C(\min_warning[3] ), 
         .Z(n38487)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3521_2_lut_rep_367_3_lut.init = 16'hf6f6;
    LUT4 i4135_2_lut_rep_527 (.A(\min_warning[6] ), .B(\min_warning[5] ), 
         .Z(n38647)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4135_2_lut_rep_527.init = 16'heeee;
    LUT4 i3613_2_lut_rep_475_3_lut (.A(\min_warning[6] ), .B(\min_warning[5] ), 
         .C(\min_warning[7] ), .Z(n38595)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3613_2_lut_rep_475_3_lut.init = 16'he0e0;
    LUT4 i11979_2_lut_3_lut (.A(\min_warning[6] ), .B(\min_warning[5] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_305[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i11979_2_lut_3_lut.init = 16'h1010;
    LUT4 i4130_3_lut_4_lut_3_lut (.A(\min_warning[6] ), .B(\min_warning[5] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_305[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4130_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i4122_2_lut_rep_442_3_lut_3_lut (.A(\min_warning[6] ), .B(\min_warning[5] ), 
         .C(\min_warning[7] ), .Z(n38562)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4122_2_lut_rep_442_3_lut_3_lut.init = 16'h2c2c;
    PFUMX i28544 (.BLUT(n38808), .ALUT(n38809), .C0(sw1_c), .Z(n10380));
    PFUMX i28534 (.BLUT(n38793), .ALUT(n38794), .C0(\min_warning[3] ), 
          .Z(n38468));
    
endmodule
//
// Verilog Description of module DS18B20Z
//

module DS18B20Z (sys_clk_c, one_wire_N_631, \hundres_1__N_305[1] , \hundres_1__N_305[0] , 
            \ds18b20_data[8] , \ds18b20_data[7] , \ds18b20_data[6] , \ds18b20_data[5] , 
            \ds18b20_data[4] , GND_net, sys_rst_n_c, n14003, one_wire_out) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output one_wire_N_631;
    output \hundres_1__N_305[1] ;
    output \hundres_1__N_305[0] ;
    output \ds18b20_data[8] ;
    output \ds18b20_data[7] ;
    output \ds18b20_data[6] ;
    output \ds18b20_data[5] ;
    output \ds18b20_data[4] ;
    input GND_net;
    input sys_rst_n_c;
    output n14003;
    input one_wire_out;
    
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=\u_DS18B20Z/clk_1mhz */ ;   // d:/new porject/top-xu/ds18b20.v(36[10:18])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire clk_1mhz_N_633;
    wire [2:0]state;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    
    wire sys_clk_c_enable_6;
    wire [2:0]state_2__N_479;
    
    wire one_wire_N_634;
    wire [2:0]state_back_2__N_482;
    
    wire sys_clk_c_enable_7, n9, n7, n12, n38705;
    wire [5:0]cnt_read;   // d:/new porject/top-xu/ds18b20.v(58[14:22])
    
    wire n38568;
    wire [2:0]state_back;   // d:/new porject/top-xu/ds18b20.v(62[15:25])
    
    wire sys_clk_c_enable_13;
    wire [19:0]cnt_delay;   // d:/new porject/top-xu/ds18b20.v(55[15:24])
    
    wire sys_clk_c_enable_247, n14412;
    wire [7:0]data_wr;   // d:/new porject/top-xu/ds18b20.v(52[14:21])
    
    wire sys_clk_c_enable_31, n7_adj_1786, n7_adj_1787, n38654, sys_clk_c_enable_40;
    wire [15:0]temperature;   // d:/new porject/top-xu/ds18b20.v(59[15:26])
    wire [7:0]data_wr_buffer;   // d:/new porject/top-xu/ds18b20.v(53[14:28])
    
    wire sys_clk_c_enable_43, n35836, n16140;
    wire [5:0]cnt_write;   // d:/new porject/top-xu/ds18b20.v(57[14:23])
    
    wire n36705;
    wire [2:0]cnt_1mhz;   // d:/new porject/top-xu/ds18b20.v(37[14:22])
    wire [2:0]n17;
    
    wire sys_clk_c_enable_44, n38674, n16, n36042, n34, n38742, 
        n38743, n38744, n35888, n16038, n36702, n27769, n35972, 
        n36;
    wire [19:0]num_delay;   // d:/new porject/top-xu/ds18b20.v(56[15:24])
    
    wire sys_clk_c_enable_79, n38643, sys_clk_c_enable_80;
    wire [19:0]num_delay_19__N_571;
    
    wire sys_clk_c_enable_84, n38518, n38702, sys_clk_c_enable_296, 
        n2, n3, n36623, one_wire_N_639, n2_adj_1788, n3_adj_1789, 
        one_wire_N_644;
    wire [3:0]cnt_main;   // d:/new porject/top-xu/ds18b20.v(51[14:22])
    
    wire sys_clk_c_enable_255, n25968, n18196, n36081, n7_adj_1790, 
        n15, n36233, sys_clk_c_enable_299;
    wire [3:0]n25;
    
    wire sys_clk_c_enable_232, n31163;
    wire [5:0]n208;
    
    wire n36155, n36194, n7_adj_1791, n22049;
    wire [19:0]n263;
    
    wire n31181, n4, one_wire_N_632, n22, n16_adj_1792, n38645, 
        n19_adj_1793, n19469, n38415, n36746, n36747, n39954, n38412;
    wire [19:0]n2845;
    
    wire n36045, sys_clk_c_enable_224, n38606, sys_clk_c_enable_158, 
        sys_clk_c_enable_159, n38635, n36706, n36707, n6, n38642, 
        n38788, n38787, n16152, n19876, n38678, n38609;
    wire [2:0]cnt_init;   // d:/new porject/top-xu/ds18b20.v(54[14:22])
    
    wire n38679, n33581, sys_clk_c_enable_227, n47, n19853, n16050, 
        n38717, n38347, n37572, n36260, n38690, n36348, n38644, 
        n21793, sys_clk_c_enable_316, n22024, n21509, n2_adj_1794;
    wire [7:0]temperature_buffer;   // d:/new porject/top-xu/ds18b20.v(60[14:32])
    
    wire n38706, n36144, n38693, n38621, n38627, n38740, n36460, 
        n33321, n261, n37608;
    wire [2:0]n2245;
    
    wire n38696, n33320, n38623, n33319, n33318, n38553, n33, 
        n27594, n37606, n36727, n38581, n37242, n37243, n29, n33317, 
        n33316, n16_adj_1795, n37604, n33315, n38697;
    wire [5:0]n153;
    
    wire n37777, n26025, n38608, n38698, n37605, n33314, n38626, 
        sys_clk_c_enable_309, n25977, n36221, n38564, n36881, n37631, 
        n37629, n37628, n37706, n2_adj_1796, n33313, n38582, n38504, 
        n19705, n38620, n38661, n38739, n21554, n33312, n38517, 
        sys_clk_c_enable_301, n4_adj_1797, n96, n5, n36115, n5_adj_1798, 
        n7_adj_1799, n36944, n38628, sys_clk_c_enable_286, n38529, 
        n36793, n38516, n42, n38505, n33905, n38541, n38710, n37704, 
        n12_adj_1800, n38741, n43, sys_clk_c_enable_292, n29_adj_1801, 
        n36_adj_1802, n15091, n38664, n5_adj_1803, n37633, n4_adj_1804;
    wire [2:0]n109;
    
    wire n37705, sys_clk_c_enable_289, sys_clk_c_enable_308, n33712, 
        sys_clk_c_enable_291, n19511, n37779, n38410, n38543, n38500, 
        sys_clk_c_enable_304, n36520, sys_clk_c_enable_300, n38530, 
        sys_clk_c_enable_302, sys_clk_c_enable_303, n39181, n37630, 
        n30, n15_adj_1805, n13, n36257, n65, n38537, n38651, n36147, 
        n38542, n38554, n33218, n36430, n33217, n33216, n33215, 
        n33214, n38789, n33213, n38653, n38655, n33212, n33211, 
        n36015, n33210, n33209, n18_adj_1806, n36508;
    
    FD1S3AX clk_1mhz_112 (.D(clk_1mhz_N_633), .CK(sys_clk_c), .Q(clk_1mhz)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(42[12] 47[6])
    defparam clk_1mhz_112.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(state_2__N_479[1]), .SP(sys_clk_c_enable_6), 
            .CK(sys_clk_c), .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1S3AX one_wire_buffer_121 (.D(one_wire_N_634), .CK(clk_1mhz), .Q(one_wire_N_631)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam one_wire_buffer_121.GSR = "ENABLED";
    FD1P3AX state_i0_i2 (.D(state_2__N_479[2]), .SP(sys_clk_c_enable_7), 
            .CK(sys_clk_c), .Q(state_back_2__N_482[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_i0_i2.GSR = "ENABLED";
    PFUMX i25 (.BLUT(n9), .ALUT(n7), .C0(state[1]), .Z(n12));
    LUT4 i1_2_lut_rep_448_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(n38705), 
         .D(cnt_read[0]), .Z(n38568)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_448_3_lut_4_lut.init = 16'h0100;
    FD1P3AX state_back_i0_i0 (.D(state_back_2__N_482[0]), .SP(sys_clk_c_enable_13), 
            .CK(sys_clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i0 (.D(n14412), .SP(sys_clk_c_enable_247), .CK(sys_clk_c), 
            .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    FD1P3AX data_wr_i0_i7 (.D(n7_adj_1786), .SP(sys_clk_c_enable_31), .CK(sys_clk_c), 
            .Q(data_wr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n7_adj_1787), .SP(sys_clk_c_enable_31), .CK(sys_clk_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i1 (.D(n38654), .SP(sys_clk_c_enable_31), .CK(sys_clk_c), 
            .Q(data_wr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i1.GSR = "DISABLED";
    FD1P3AX data_out_i0_i10 (.D(temperature[10]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(\hundres_1__N_305[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i10.GSR = "DISABLED";
    FD1P3AX data_out_i0_i9 (.D(temperature[9]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(\hundres_1__N_305[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i9.GSR = "DISABLED";
    FD1P3AX data_out_i0_i8 (.D(temperature[8]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(\ds18b20_data[8] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i8.GSR = "DISABLED";
    FD1P3AX data_out_i0_i7 (.D(temperature[7]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(\ds18b20_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i7.GSR = "DISABLED";
    FD1P3AX data_out_i0_i6 (.D(temperature[6]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(\ds18b20_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i5 (.D(temperature[5]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(\ds18b20_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i5.GSR = "DISABLED";
    FD1P3AX data_out_i0_i4 (.D(temperature[4]), .SP(sys_clk_c_enable_40), 
            .CK(sys_clk_c), .Q(\ds18b20_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i4.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i7 (.D(data_wr[7]), .SP(sys_clk_c_enable_43), 
            .CK(sys_clk_c), .Q(data_wr_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i6 (.D(data_wr[6]), .SP(sys_clk_c_enable_43), 
            .CK(sys_clk_c), .Q(data_wr_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i4 (.D(data_wr[1]), .SP(sys_clk_c_enable_43), 
            .CK(sys_clk_c), .Q(data_wr_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i4.GSR = "DISABLED";
    PFUMX i27396 (.BLUT(n35836), .ALUT(n16140), .C0(cnt_write[4]), .Z(n36705));
    LUT4 i24081_2_lut (.A(cnt_1mhz[1]), .B(cnt_1mhz[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam i24081_2_lut.init = 16'h6666;
    FD1P3AX state_i0_i0 (.D(state_2__N_479[0]), .SP(sys_clk_c_enable_44), 
            .CK(sys_clk_c), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i24088_3_lut (.A(cnt_1mhz[2]), .B(cnt_1mhz[1]), .C(cnt_1mhz[0]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam i24088_3_lut.init = 16'h6a6a;
    FD1S3IX cnt_1mhz_3013__i0 (.D(n17[0]), .CK(sys_clk_c), .CD(n38674), 
            .Q(cnt_1mhz[0]));   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam cnt_1mhz_3013__i0.GSR = "ENABLED";
    PFUMX i39 (.BLUT(n16), .ALUT(n36042), .C0(state[0]), .Z(n34));
    PFUMX i28500 (.BLUT(n38742), .ALUT(n38743), .C0(cnt_read[1]), .Z(n38744));
    PFUMX i27393 (.BLUT(n35888), .ALUT(n16038), .C0(cnt_write[4]), .Z(n36702));
    PFUMX i41 (.BLUT(n27769), .ALUT(n35972), .C0(state_back_2__N_482[2]), 
          .Z(n36));
    FD1P3AX num_delay_i0_i12 (.D(n38643), .SP(sys_clk_c_enable_79), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i12.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i8 (.D(num_delay_19__N_571[8]), .SP(sys_clk_c_enable_80), 
            .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i8.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i5 (.D(num_delay_19__N_571[5]), .SP(sys_clk_c_enable_84), 
            .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    LUT4 i27639_3_lut_4_lut (.A(cnt_read[5]), .B(n38518), .C(n38702), 
         .D(cnt_read[3]), .Z(sys_clk_c_enable_296)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i27639_3_lut_4_lut.init = 16'h0001;
    PFUMX state_2__I_0_144_i7 (.BLUT(n2), .ALUT(n3), .C0(n36623), .Z(one_wire_N_639)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;
    PFUMX state_2__I_0_i7 (.BLUT(n2_adj_1788), .ALUT(n3_adj_1789), .C0(n36623), 
          .Z(one_wire_N_644)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;
    FD1P3IX cnt_main_i0_i1 (.D(n18196), .SP(sys_clk_c_enable_255), .CD(n25968), 
            .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    PFUMX i32 (.BLUT(n36081), .ALUT(n7_adj_1790), .C0(state_back_2__N_482[2]), 
          .Z(n15));
    LUT4 i27657_3_lut_4_lut (.A(cnt_read[5]), .B(n38518), .C(cnt_read[3]), 
         .D(n36233), .Z(sys_clk_c_enable_299)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i27657_3_lut_4_lut.init = 16'h0010;
    FD1P3IX cnt_main_i0_i2 (.D(n25[2]), .SP(sys_clk_c_enable_255), .CD(n25968), 
            .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n25[3]), .SP(sys_clk_c_enable_255), .CD(n25968), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i1 (.D(n208[1]), .SP(sys_clk_c_enable_232), .CD(n31163), 
            .CK(sys_clk_c), .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i2 (.D(n208[2]), .SP(sys_clk_c_enable_232), .CD(n31163), 
            .CK(sys_clk_c), .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i3 (.D(n208[3]), .SP(sys_clk_c_enable_232), .CD(n31163), 
            .CK(sys_clk_c), .Q(cnt_read[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i4 (.D(n208[4]), .SP(sys_clk_c_enable_232), .CD(n31163), 
            .CK(sys_clk_c), .Q(cnt_read[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i5 (.D(n208[5]), .SP(sys_clk_c_enable_232), .CD(n31163), 
            .CK(sys_clk_c), .Q(cnt_read[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i5.GSR = "ENABLED";
    PFUMX i22165 (.BLUT(n36155), .ALUT(n36194), .C0(state[0]), .Z(n7_adj_1791));
    FD1P3IX cnt_delay_i0_i1 (.D(n263[1]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    PFUMX i22157 (.BLUT(n31181), .ALUT(n4), .C0(state[0]), .Z(state_2__N_479[0]));
    FD1P3AX i107_128 (.D(one_wire_N_644), .SP(one_wire_N_639), .CK(clk_1mhz), 
            .Q(one_wire_N_632)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i107_128.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i2 (.D(n263[2]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i3 (.D(n263[3]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    PFUMX i40 (.BLUT(n22), .ALUT(n16_adj_1792), .C0(n38645), .Z(n19_adj_1793));
    LUT4 i3630_3_lut_rep_554 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .Z(n38674)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i3630_3_lut_rep_554.init = 16'hc8c8;
    LUT4 i10400_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n19469)) /* synthesis lut_function=(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i10400_3_lut_4_lut.init = 16'hb6db;
    LUT4 state_2__I_0_144_i3_4_lut_4_lut_4_lut_4_lut (.A(state[0]), .B(state_back_2__N_482[2]), 
         .C(n38415), .D(state[1]), .Z(n3)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;
    defparam state_2__I_0_144_i3_4_lut_4_lut_4_lut_4_lut.init = 16'h1151;
    LUT4 n36746_bdd_4_lut (.A(n36746), .B(n36747), .C(cnt_read[5]), .D(cnt_read[0]), 
         .Z(n39954)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n36746_bdd_4_lut.init = 16'hffca;
    L6MUX21 i27395 (.D0(n36702), .D1(n38412), .SD(cnt_write[5]), .Z(n2845[6]));
    LUT4 i1_2_lut (.A(cnt_main[1]), .B(n36045), .Z(sys_clk_c_enable_224)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_2_lut_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(clk_1mhz_N_633)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1_3_lut_2_lut_4_lut.init = 16'h37c8;
    LUT4 i1_2_lut_rep_486_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n38606)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_486_4_lut.init = 16'h00c8;
    FD1P3AX state_back_i0_i2 (.D(state_back_2__N_482[2]), .SP(sys_clk_c_enable_158), 
            .CK(sys_clk_c), .Q(state_back[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i2.GSR = "ENABLED";
    FD1P3AX state_back_i0_i1 (.D(n38635), .SP(sys_clk_c_enable_159), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    L6MUX21 i27398 (.D0(n36705), .D1(n36706), .SD(cnt_write[5]), .Z(n36707));
    LUT4 i3_4_lut (.A(state[0]), .B(n6), .C(n38606), .D(n38642), .Z(n36045)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    LUT4 i27502_4_lut_then_4_lut (.A(cnt_write[5]), .B(cnt_write[4]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n38788)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;
    defparam i27502_4_lut_then_4_lut.init = 16'hdbed;
    LUT4 i27502_4_lut_else_4_lut (.A(cnt_write[5]), .B(cnt_write[4]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n38787)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;
    defparam i27502_4_lut_else_4_lut.init = 16'hbedb;
    LUT4 i18791_4_lut_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(cnt_write[2]), .D(cnt_write[3]), .Z(n16152)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i18791_4_lut_4_lut_4_lut_4_lut.init = 16'h1451;
    LUT4 cnt_read_1__bdd_4_lut (.A(cnt_read[1]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n19876)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;
    defparam cnt_read_1__bdd_4_lut.init = 16'h4924;
    FD1P3IX cnt_delay_i0_i4 (.D(n263[4]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_558 (.A(cnt_read[2]), .B(cnt_read[1]), .Z(n38678)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_558.init = 16'heeee;
    LUT4 i18799_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[2]), 
         .D(cnt_write[1]), .Z(n16038)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i18799_4_lut_4_lut_4_lut.init = 16'h1041;
    LUT4 i1_2_lut_rep_489_3_lut (.A(cnt_read[2]), .B(cnt_read[1]), .C(cnt_read[3]), 
         .Z(n38609)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_489_3_lut.init = 16'hfefe;
    LUT4 i3712_2_lut_rep_559 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n38679)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(111[24:39])
    defparam i3712_2_lut_rep_559.init = 16'h6666;
    LUT4 i2_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .D(state[1]), .Z(n33581)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+!(C (D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(111[24:39])
    defparam i2_3_lut_4_lut.init = 16'h6fff;
    LUT4 i1_2_lut_adj_182 (.A(cnt_main[1]), .B(n36045), .Z(sys_clk_c_enable_227)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_adj_182.init = 16'h8888;
    FD1S3IX cnt_1mhz_3013__i1 (.D(n17[1]), .CK(sys_clk_c), .CD(n38674), 
            .Q(cnt_1mhz[1]));   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam cnt_1mhz_3013__i1.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_3013__i2 (.D(n17[2]), .CK(sys_clk_c), .CD(n38674), 
            .Q(cnt_1mhz[2]));   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam cnt_1mhz_3013__i2.GSR = "ENABLED";
    LUT4 i5186_1_lut (.A(cnt_read[0]), .Z(n47)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i5186_1_lut.init = 16'h5555;
    FD1P3IX cnt_delay_i0_i5 (.D(n263[5]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n263[6]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    LUT4 n19469_bdd_4_lut (.A(n19469), .B(n19853), .C(cnt_read[5]), .D(cnt_read[0]), 
         .Z(n38415)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n19469_bdd_4_lut.init = 16'h00ca;
    FD1P3IX cnt_delay_i0_i7 (.D(n263[7]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    LUT4 i18792_2_lut_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), 
         .C(cnt_write[1]), .D(cnt_write[2]), .Z(n16140)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i18792_2_lut_4_lut_4_lut_4_lut.init = 16'h4154;
    LUT4 i18798_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n16050)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i18798_4_lut_4_lut_4_lut.init = 16'h4014;
    LUT4 cnt_write_1__bdd_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(n38717), 
         .D(cnt_write[2]), .Z(n38347)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam cnt_write_1__bdd_4_lut.init = 16'hcccd;
    LUT4 i26968_4_lut_4_lut (.A(cnt_write[4]), .B(cnt_write[5]), .C(cnt_write[0]), 
         .D(n37572), .Z(n36260)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i26968_4_lut_4_lut.init = 16'h5140;
    LUT4 i41_4_lut_4_lut_4_lut (.A(state[1]), .B(n38690), .C(n36348), 
         .D(n38644), .Z(n16_adj_1792)) /* synthesis lut_function=(!(A (D)+!A ((C)+!B))) */ ;
    defparam i41_4_lut_4_lut_4_lut.init = 16'h04ae;
    LUT4 i12915_3_lut_3_lut (.A(state[1]), .B(n21793), .C(sys_clk_c_enable_316), 
         .Z(n22024)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i12915_3_lut_3_lut.init = 16'hd0d0;
    LUT4 mux_54_Mux_4_i7_4_lut_4_lut (.A(state[1]), .B(state_back_2__N_482[2]), 
         .C(n21509), .D(n2_adj_1794), .Z(num_delay_19__N_571[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;
    defparam mux_54_Mux_4_i7_4_lut_4_lut.init = 16'hf3d1;
    FD1P3AX temperature_i0_i4 (.D(temperature_buffer[4]), .SP(sys_clk_c_enable_224), 
            .CK(sys_clk_c), .Q(temperature[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i4.GSR = "ENABLED";
    FD1P3AX temperature_i0_i5 (.D(temperature_buffer[5]), .SP(sys_clk_c_enable_224), 
            .CK(sys_clk_c), .Q(temperature[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i5.GSR = "ENABLED";
    FD1P3AX temperature_i0_i6 (.D(temperature_buffer[6]), .SP(sys_clk_c_enable_224), 
            .CK(sys_clk_c), .Q(temperature[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_i0_i7 (.D(temperature_buffer[7]), .SP(sys_clk_c_enable_224), 
            .CK(sys_clk_c), .Q(temperature[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i7.GSR = "ENABLED";
    FD1P3AX temperature_i0_i8 (.D(temperature_buffer[0]), .SP(sys_clk_c_enable_227), 
            .CK(sys_clk_c), .Q(temperature[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i8.GSR = "ENABLED";
    FD1P3AX temperature_i0_i9 (.D(temperature_buffer[1]), .SP(sys_clk_c_enable_227), 
            .CK(sys_clk_c), .Q(temperature[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i9.GSR = "ENABLED";
    FD1P3AX temperature_i0_i10 (.D(temperature_buffer[2]), .SP(sys_clk_c_enable_227), 
            .CK(sys_clk_c), .Q(temperature[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i10.GSR = "ENABLED";
    LUT4 i24079_1_lut (.A(cnt_1mhz[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(46[16:31])
    defparam i24079_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_570 (.A(state[0]), .B(cnt_main[2]), .Z(n38690)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_570.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[0]), .B(cnt_main[2]), .C(cnt_main[3]), 
         .D(n38706), .Z(n36144)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i3779_2_lut_rep_573 (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n38693)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3779_2_lut_rep_573.init = 16'h8888;
    LUT4 i3784_2_lut_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n208[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3784_2_lut_3_lut.init = 16'h7878;
    LUT4 i3786_2_lut_rep_501_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n38621)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3786_2_lut_rep_501_3_lut.init = 16'h8080;
    LUT4 i3791_2_lut_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n208[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3791_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 cnt_write_1__bdd_4_lut_27971 (.A(cnt_write[1]), .B(cnt_write[0]), 
         .C(cnt_write[3]), .D(cnt_write[2]), .Z(n37572)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam cnt_write_1__bdd_4_lut_27971.init = 16'hcccd;
    LUT4 i2_4_lut_then_3_lut (.A(state[1]), .B(n38627), .C(cnt_main[2]), 
         .Z(n38740)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i2_4_lut_then_3_lut.init = 16'h5151;
    FD1P3IX cnt_read_i0_i0 (.D(n47), .SP(sys_clk_c_enable_232), .CD(n31163), 
            .CK(sys_clk_c), .Q(cnt_read[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i8 (.D(n263[8]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n263[9]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n263[10]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i11 (.D(n263[11]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n263[12]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i13 (.D(n263[13]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    LUT4 i27151_2_lut (.A(state[0]), .B(cnt_read[0]), .Z(n36460)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27151_2_lut.init = 16'heeee;
    CCU2D sub_2301_add_2_21 (.A0(cnt_delay[19]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33321), .S1(n261));
    defparam sub_2301_add_2_21.INIT0 = 16'h5999;
    defparam sub_2301_add_2_21.INIT1 = 16'h0000;
    defparam sub_2301_add_2_21.INJECT1_0 = "NO";
    defparam sub_2301_add_2_21.INJECT1_1 = "NO";
    LUT4 n14708_bdd_3_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(n37608)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    defparam n14708_bdd_3_lut_3_lut.init = 16'h4c4c;
    LUT4 i1_2_lut_3_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(cnt_init[0]), 
         .Z(n2245[0])) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_rep_576 (.A(cnt_write[3]), .B(cnt_write[2]), .Z(n38696)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_576.init = 16'heeee;
    CCU2D sub_2301_add_2_19 (.A0(cnt_delay[17]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33320), .COUT(n33321));
    defparam sub_2301_add_2_19.INIT0 = 16'h5999;
    defparam sub_2301_add_2_19.INIT1 = 16'h5555;
    defparam sub_2301_add_2_19.INJECT1_0 = "NO";
    defparam sub_2301_add_2_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_503_3_lut (.A(cnt_write[3]), .B(cnt_write[2]), .C(cnt_write[1]), 
         .Z(n38623)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_503_3_lut.init = 16'hfefe;
    CCU2D sub_2301_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33319), .COUT(n33320));
    defparam sub_2301_add_2_17.INIT0 = 16'h5555;
    defparam sub_2301_add_2_17.INIT1 = 16'h5999;
    defparam sub_2301_add_2_17.INJECT1_0 = "NO";
    defparam sub_2301_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_2301_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33318), .COUT(n33319));
    defparam sub_2301_add_2_15.INIT0 = 16'h5999;
    defparam sub_2301_add_2_15.INIT1 = 16'h5999;
    defparam sub_2301_add_2_15.INJECT1_0 = "NO";
    defparam sub_2301_add_2_15.INJECT1_1 = "NO";
    LUT4 i18534_2_lut_4_lut (.A(n38553), .B(n33), .C(cnt_write[5]), .D(state[0]), 
         .Z(n27594)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i18534_2_lut_4_lut.init = 16'hca00;
    LUT4 n37606_bdd_3_lut (.A(n37606), .B(n36727), .C(state_back_2__N_482[2]), 
         .Z(state_2__N_479[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37606_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_461_3_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[4]), .D(cnt_write[1]), .Z(n38581)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_461_3_lut_4_lut.init = 16'hfffe;
    LUT4 n37242_bdd_2_lut (.A(n37242), .B(state_back_2__N_482[2]), .Z(n37243)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n37242_bdd_2_lut.init = 16'heeee;
    LUT4 i18880_2_lut_3_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(cnt_write[1]), .Z(n29)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i18880_2_lut_3_lut_4_lut.init = 16'h0001;
    CCU2D sub_2301_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33317), .COUT(n33318));
    defparam sub_2301_add_2_13.INIT0 = 16'h5555;
    defparam sub_2301_add_2_13.INIT1 = 16'h5999;
    defparam sub_2301_add_2_13.INJECT1_0 = "NO";
    defparam sub_2301_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_2301_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33316), .COUT(n33317));
    defparam sub_2301_add_2_11.INIT0 = 16'h5555;
    defparam sub_2301_add_2_11.INIT1 = 16'h5555;
    defparam sub_2301_add_2_11.INJECT1_0 = "NO";
    defparam sub_2301_add_2_11.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i14 (.D(n263[14]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    LUT4 n33_bdd_4_lut_28427 (.A(n33), .B(n16_adj_1795), .C(cnt_write[5]), 
         .D(state[1]), .Z(n37604)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A !(B+(D)))) */ ;
    defparam n33_bdd_4_lut_28427.init = 16'h5fcc;
    CCU2D sub_2301_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33315), .COUT(n33316));
    defparam sub_2301_add_2_9.INIT0 = 16'h5999;
    defparam sub_2301_add_2_9.INIT1 = 16'h5999;
    defparam sub_2301_add_2_9.INJECT1_0 = "NO";
    defparam sub_2301_add_2_9.INJECT1_1 = "NO";
    LUT4 i19029_2_lut_rep_577 (.A(cnt_write[0]), .B(cnt_write[1]), .Z(n38697)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19029_2_lut_rep_577.init = 16'h8888;
    FD1P3IX cnt_delay_i0_i15 (.D(n263[15]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    LUT4 i3748_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n153[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i3748_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 n12677_bdd_4_lut_28273_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(cnt_write[4]), .D(n38696), .Z(n37777)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (C (D)))) */ ;
    defparam n12677_bdd_4_lut_28273_4_lut.init = 16'h0575;
    LUT4 n87_bdd_4_lut (.A(n38644), .B(n26025), .C(state[0]), .D(state[1]), 
         .Z(n37242)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D)))) */ ;
    defparam n87_bdd_4_lut.init = 16'hfacf;
    FD1P3IX cnt_delay_i0_i16 (.D(n263[16]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i17 (.D(n263[17]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    LUT4 i3743_2_lut_rep_488_3_lut (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(cnt_write[2]), .Z(n38608)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3743_2_lut_rep_488_3_lut.init = 16'h8080;
    LUT4 i3741_2_lut_3_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n153[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i3741_2_lut_3_lut.init = 16'h7878;
    FD1P3IX cnt_delay_i0_i18 (.D(n263[18]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    LUT4 i27667_2_lut_rep_578 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n38698)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam i27667_2_lut_rep_578.init = 16'h7777;
    LUT4 n33_bdd_3_lut_28428_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(state[1]), 
         .D(cnt_init[0]), .Z(n37605)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam n33_bdd_3_lut_28428_4_lut.init = 16'h7000;
    CCU2D sub_2301_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33314), .COUT(n33315));
    defparam sub_2301_add_2_7.INIT0 = 16'h5999;
    defparam sub_2301_add_2_7.INIT1 = 16'h5999;
    defparam sub_2301_add_2_7.INJECT1_0 = "NO";
    defparam sub_2301_add_2_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_506_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n38626)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam i1_2_lut_rep_506_3_lut.init = 16'h7070;
    LUT4 i1_3_lut_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(sys_clk_c_enable_309), 
         .D(state[1]), .Z(n25977)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h80f0;
    FD1P3IX cnt_delay_i0_i19 (.D(n263[19]), .SP(sys_clk_c_enable_247), .CD(n22049), 
            .CK(sys_clk_c), .Q(cnt_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_183 (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(state[0]), .D(cnt_init[0]), .Z(n36221)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam i1_2_lut_3_lut_4_lut_adj_183.init = 16'hf7f0;
    LUT4 i27707_3_lut_4_lut (.A(state_back_2__N_482[2]), .B(n38564), .C(n38581), 
         .D(n36881), .Z(sys_clk_c_enable_43)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i27707_3_lut_4_lut.init = 16'h0400;
    LUT4 cnt_write_1__bdd_4_lut_28186 (.A(cnt_write[1]), .B(cnt_write[4]), 
         .C(cnt_write[5]), .D(cnt_write[3]), .Z(n37631)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C (D)+!C !(D))))) */ ;
    defparam cnt_write_1__bdd_4_lut_28186.init = 16'h0910;
    LUT4 data_wr_buffer_7__bdd_4_lut_28079 (.A(data_wr_buffer[7]), .B(cnt_write[4]), 
         .C(cnt_write[5]), .D(cnt_write[3]), .Z(n37629)) /* synthesis lut_function=(!((B (C+(D))+!B !(C (D)))+!A)) */ ;
    defparam data_wr_buffer_7__bdd_4_lut_28079.init = 16'h2008;
    LUT4 data_wr_buffer_7__bdd_4_lut_28003 (.A(cnt_write[4]), .B(data_wr_buffer[6]), 
         .C(cnt_write[5]), .D(cnt_write[3]), .Z(n37628)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B (C+!(D))))) */ ;
    defparam data_wr_buffer_7__bdd_4_lut_28003.init = 16'h0540;
    LUT4 i27803_4_lut (.A(n38606), .B(state[0]), .C(n36), .D(n37706), 
         .Z(sys_clk_c_enable_7)) /* synthesis lut_function=(!((B (C+(D))+!B (C))+!A)) */ ;
    defparam i27803_4_lut.init = 16'h020a;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n35888)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0140;
    FD1P3IX cnt_main_i0_i0 (.D(n2_adj_1796), .SP(sys_clk_c_enable_255), 
            .CD(n25968), .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    CCU2D sub_2301_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33313), .COUT(n33314));
    defparam sub_2301_add_2_5.INIT0 = 16'h5999;
    defparam sub_2301_add_2_5.INIT1 = 16'h5999;
    defparam sub_2301_add_2_5.INJECT1_0 = "NO";
    defparam sub_2301_add_2_5.INJECT1_1 = "NO";
    LUT4 i10626_3_lut_4_lut (.A(state[0]), .B(n38582), .C(state[1]), .D(n38504), 
         .Z(n19705)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;
    defparam i10626_3_lut_4_lut.init = 16'hfd0d;
    LUT4 i1_2_lut_rep_398_4_lut (.A(n38620), .B(n38564), .C(n38661), .D(cnt_read[4]), 
         .Z(n38518)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_398_4_lut.init = 16'hfffb;
    LUT4 i2_4_lut_else_3_lut (.A(cnt_init[1]), .B(state[1]), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n38739)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (D))) */ ;
    defparam i2_4_lut_else_3_lut.init = 16'hb3ff;
    LUT4 mux_54_Mux_5_i7_4_lut (.A(n21554), .B(n21509), .C(state_back_2__N_482[2]), 
         .D(state[1]), .Z(num_delay_19__N_571[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_5_i7_4_lut.init = 16'hc5cf;
    LUT4 i12444_2_lut (.A(cnt_init[2]), .B(state[0]), .Z(n21554)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i12444_2_lut.init = 16'heeee;
    CCU2D sub_2301_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33312), .COUT(n33313));
    defparam sub_2301_add_2_3.INIT0 = 16'h5999;
    defparam sub_2301_add_2_3.INIT1 = 16'h5999;
    defparam sub_2301_add_2_3.INJECT1_0 = "NO";
    defparam sub_2301_add_2_3.INJECT1_1 = "NO";
    LUT4 i5595_2_lut_rep_582 (.A(cnt_read[1]), .B(cnt_read[2]), .Z(n38702)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i5595_2_lut_rep_582.init = 16'hbbbb;
    LUT4 i27654_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(n38517), .Z(sys_clk_c_enable_301)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i27654_3_lut_4_lut.init = 16'h0040;
    LUT4 i105_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(state[1]), .C(n4_adj_1797), 
         .D(cnt_write[5]), .Z(n96)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i105_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_500_2_lut (.A(state_back_2__N_482[2]), .B(cnt_read[0]), 
         .Z(n38620)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_500_2_lut.init = 16'hdddd;
    LUT4 i27314_1_lut_2_lut_2_lut (.A(state_back_2__N_482[2]), .B(state[1]), 
         .Z(n36623)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i27314_1_lut_2_lut_2_lut.init = 16'hbbbb;
    LUT4 i18650_2_lut_3_lut_3_lut (.A(state_back_2__N_482[2]), .B(n263[0]), 
         .C(n261), .Z(n14412)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i18650_2_lut_3_lut_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(n38568), 
         .C(sys_rst_n_c), .D(n38606), .Z(n5)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hd000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_184 (.A(state_back_2__N_482[2]), .B(sys_rst_n_c), 
         .C(clk_1mhz), .D(n38674), .Z(n36115)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_184.init = 16'h0400;
    LUT4 i2_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(n5_adj_1798), .C(state[1]), 
         .D(n7_adj_1791), .Z(n7_adj_1799)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(D))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h5d00;
    LUT4 i12953_2_lut_3_lut_3_lut (.A(state_back_2__N_482[2]), .B(sys_clk_c_enable_247), 
         .C(n261), .Z(n22049)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i12953_2_lut_3_lut_3_lut.init = 16'hc4c4;
    LUT4 i27770_2_lut_3_lut_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(n36944), 
         .C(n38628), .D(n38661), .Z(sys_clk_c_enable_286)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B))) */ ;
    defparam i27770_2_lut_3_lut_4_lut_4_lut.init = 16'h44c4;
    LUT4 i1_2_lut_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(state[0]), 
         .C(n38529), .D(n38626), .Z(n7)) /* synthesis lut_function=(!(A+(B (C)+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h1504;
    LUT4 i2_4_lut_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(n38606), .C(n38705), 
         .D(n38661), .Z(n31163)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!B))) */ ;
    defparam i2_4_lut_4_lut_4_lut.init = 16'h00c4;
    LUT4 i3_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(clk_1mhz), .C(n38674), 
         .D(n36793), .Z(sys_clk_c_enable_316)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut_4_lut.init = 16'h0010;
    LUT4 i27313_2_lut_rep_515_2_lut (.A(state_back_2__N_482[2]), .B(state[1]), 
         .Z(n38635)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i27313_2_lut_rep_515_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_396_3_lut_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(n38606), 
         .C(n38628), .D(n38661), .Z(n38516)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B))) */ ;
    defparam i1_2_lut_rep_396_3_lut_4_lut_4_lut.init = 16'h44c4;
    LUT4 i2_4_lut_4_lut_adj_185 (.A(state_back_2__N_482[2]), .B(n42), .C(n38505), 
         .D(n33905), .Z(sys_clk_c_enable_84)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_4_lut_adj_185.init = 16'hf040;
    LUT4 i1_2_lut_rep_421_3_lut_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(n38661), 
         .C(n38705), .D(cnt_read[0]), .Z(n38541)) /* synthesis lut_function=(!(A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_421_3_lut_4_lut_4_lut.init = 16'h5755;
    CCU2D sub_2301_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n33312));
    defparam sub_2301_add_2_1.INIT0 = 16'h0000;
    defparam sub_2301_add_2_1.INIT1 = 16'h5999;
    defparam sub_2301_add_2_1.INJECT1_0 = "NO";
    defparam sub_2301_add_2_1.INJECT1_1 = "NO";
    LUT4 i18365_2_lut_3_lut_3_lut (.A(state_back_2__N_482[2]), .B(state[1]), 
         .C(state[0]), .Z(state_back_2__N_482[0])) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i18365_2_lut_3_lut_3_lut.init = 16'h5151;
    LUT4 i18766_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(state[0]), .C(state[1]), 
         .D(n38710), .Z(num_delay_19__N_571[8])) /* synthesis lut_function=(!(A+(B (C)+!B !((D)+!C)))) */ ;
    defparam i18766_4_lut_4_lut.init = 16'h1505;
    LUT4 cnt_write_4__bdd_3_lut_28070_4_lut_4_lut (.A(state_back_2__N_482[2]), 
         .B(cnt_write[4]), .C(cnt_write[0]), .D(state[1]), .Z(n37704)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam cnt_write_4__bdd_3_lut_28070_4_lut_4_lut.init = 16'h1000;
    LUT4 i27498_3_lut (.A(n33581), .B(n12_adj_1800), .C(state_back_2__N_482[2]), 
         .Z(n31181)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    defparam i27498_3_lut.init = 16'hcaca;
    LUT4 i27777_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(n38741), .C(n5), 
         .D(n43), .Z(sys_clk_c_enable_292)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i27777_4_lut_4_lut.init = 16'h00b0;
    LUT4 i1_4_lut_4_lut_4_lut_adj_186 (.A(state_back_2__N_482[2]), .B(n33905), 
         .C(n36221), .D(state[1]), .Z(n29_adj_1801)) /* synthesis lut_function=(A (B)+!A (B+(C+!(D)))) */ ;
    defparam i1_4_lut_4_lut_4_lut_adj_186.init = 16'hdcdd;
    LUT4 i1_3_lut_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(n21793), .C(n36_adj_1802), 
         .D(state[1]), .Z(n36042)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h5400;
    FD1P3IX cnt_write_i0_i1 (.D(n153[1]), .SP(sys_clk_c_enable_316), .CD(n22024), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_585 (.A(cnt_read[5]), .B(cnt_read[4]), .Z(n38705)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(58[14:22])
    defparam i1_2_lut_rep_585.init = 16'h8888;
    FD1P3IX cnt_write_i0_i2 (.D(n153[2]), .SP(sys_clk_c_enable_316), .CD(n22024), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i3 (.D(n153[3]), .SP(sys_clk_c_enable_316), .CD(n22024), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[0]), 
         .D(state_back_2__N_482[2]), .Z(n36155)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(58[14:22])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'hf8ff;
    LUT4 i27418_3_lut_3_lut_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(state_back[2]), 
         .D(state[0]), .Z(n36727)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(58[14:22])
    defparam i27418_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 i1_2_lut_rep_508_3_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[0]), 
         .Z(n38628)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(58[14:22])
    defparam i1_2_lut_rep_508_3_lut.init = 16'h7070;
    LUT4 i6075_2_lut (.A(cnt_write[4]), .B(cnt_write[5]), .Z(n15091)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i6075_2_lut.init = 16'h8888;
    FD1P3IX cnt_write_i0_i4 (.D(n153[4]), .SP(sys_clk_c_enable_316), .CD(n22024), 
            .CK(sys_clk_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_586 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n38706)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_586.init = 16'h8888;
    LUT4 i9961_3_lut_rep_409_4_lut (.A(n38581), .B(cnt_write[0]), .C(cnt_write[5]), 
         .D(n33), .Z(n38529)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i9961_3_lut_rep_409_4_lut.init = 16'hfd0d;
    LUT4 i2_3_lut_4_lut_adj_187 (.A(n38581), .B(cnt_write[0]), .C(cnt_write[5]), 
         .D(n38664), .Z(n36194)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i2_3_lut_4_lut_adj_187.init = 16'hfff2;
    LUT4 i1_2_lut_rep_462_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(cnt_main[2]), .D(cnt_main[3]), .Z(n38582)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_462_3_lut_4_lut.init = 16'h0008;
    LUT4 i3697_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i3697_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n5_adj_1803)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut.init = 16'hf800;
    LUT4 i27252_2_lut_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .D(state[1]), .Z(n36081)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i27252_2_lut_3_lut_4_lut.init = 16'h0007;
    LUT4 i5185_1_lut (.A(cnt_main[0]), .Z(n2_adj_1796)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(89[7] 107[14])
    defparam i5185_1_lut.init = 16'h5555;
    FD1P3IX cnt_write_i0_i5 (.D(n153[5]), .SP(sys_clk_c_enable_316), .CD(n22024), 
            .CK(sys_clk_c), .Q(cnt_write[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_507_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .Z(n38627)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_507_3_lut.init = 16'h0808;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(state[0]), .B(n38674), .C(clk_1mhz), 
         .D(state_back_2__N_482[2]), .Z(sys_clk_c_enable_309)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i2_4_lut_4_lut_adj_188 (.A(state[0]), .B(n38643), .C(n5_adj_1803), 
         .D(n38606), .Z(n25968)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D))) */ ;
    defparam i2_4_lut_4_lut_adj_188.init = 16'hc400;
    FD1P3IX cnt_init_i0_i1 (.D(n38679), .SP(sys_clk_c_enable_309), .CD(n25977), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(n37633), .B(cnt_write[0]), .C(state_back_2__N_482[2]), 
         .Z(n4_adj_1804)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0808;
    FD1P3IX cnt_init_i0_i2 (.D(n109[2]), .SP(sys_clk_c_enable_309), .CD(n25977), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i1 (.D(num_delay_19__N_571[1]), .SP(sys_clk_c_enable_286), 
            .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i1.GSR = "DISABLED";
    PFUMX i28049 (.BLUT(n37705), .ALUT(n37704), .C0(cnt_write[5]), .Z(n37706));
    FD1P3AX num_delay_i0_i2 (.D(num_delay_19__N_571[2]), .SP(sys_clk_c_enable_289), 
            .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i2.GSR = "DISABLED";
    FD1P3IX num_delay_i0_i3 (.D(n38744), .SP(sys_clk_c_enable_308), .CD(n33712), 
            .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i3.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i4 (.D(num_delay_19__N_571[4]), .SP(sys_clk_c_enable_291), 
            .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i4.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i6 (.D(num_delay_19__N_571[6]), .SP(sys_clk_c_enable_292), 
            .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i6.GSR = "DISABLED";
    LUT4 i27452_1_lut_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), 
         .C(cnt_read[3]), .D(cnt_read[4]), .Z(n36747)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i27452_1_lut_2_lut_4_lut_4_lut.init = 16'hffb6;
    LUT4 i10434_3_lut_4_lut_3_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .Z(n19511)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+!(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i10434_3_lut_4_lut_3_lut.init = 16'h9292;
    LUT4 i18820_2_lut_rep_590 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n38710)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam i18820_2_lut_rep_590.init = 16'hdddd;
    LUT4 mux_54_Mux_4_i2_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), 
         .C(state[0]), .D(n2845[6]), .Z(n2_adj_1794)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/new porject/top-xu/ds18b20.v(112[7] 121[14])
    defparam mux_54_Mux_4_i2_3_lut_4_lut.init = 16'hfd0d;
    LUT4 cnt_write_4__bdd_4_lut_28069 (.A(cnt_write[4]), .B(n38623), .C(state[1]), 
         .D(cnt_write[0]), .Z(n37705)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam cnt_write_4__bdd_4_lut_28069.init = 16'hf010;
    PFUMX i28498 (.BLUT(n38739), .ALUT(n38740), .C0(state[0]), .Z(n38741));
    LUT4 n37777_bdd_4_lut (.A(n37777), .B(cnt_write[5]), .C(n37779), .D(state[1]), 
         .Z(n38410)) /* synthesis lut_function=(A (C+(D))+!A !(B ((D)+!C)+!B !(C+(D)))) */ ;
    defparam n37777_bdd_4_lut.init = 16'hbbf0;
    LUT4 i5047_1_lut (.A(one_wire_N_632), .Z(n14003)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(63[2] 264[5])
    defparam i5047_1_lut.init = 16'h5555;
    LUT4 i16968_3_lut (.A(cnt_main[2]), .B(cnt_main[0]), .C(cnt_main[1]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(51[14:22])
    defparam i16968_3_lut.init = 16'h6a6a;
    LUT4 i2_3_lut_rep_423_4_lut (.A(n38606), .B(sys_rst_n_c), .C(n38661), 
         .D(n38620), .Z(n38543)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/new porject/top-xu/top.v(4[8:17])
    defparam i2_3_lut_rep_423_4_lut.init = 16'hfff7;
    LUT4 i3777_2_lut (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n208[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3777_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_adj_189 (.A(cnt_read[3]), .B(n38500), .C(cnt_read[1]), 
         .D(cnt_read[2]), .Z(sys_clk_c_enable_304)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_189.init = 16'h2000;
    LUT4 i1_2_lut_rep_597 (.A(cnt_write[3]), .B(cnt_write[4]), .Z(n38717)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_597.init = 16'heeee;
    LUT4 i27211_3_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[4]), .C(cnt_write[2]), 
         .D(cnt_write[1]), .Z(n36520)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27211_3_lut_4_lut.init = 16'hfffe;
    LUT4 i27618_2_lut (.A(state[1]), .B(state[0]), .Z(n36793)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i27618_2_lut.init = 16'h6666;
    LUT4 i3734_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n153[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/ds18b20.v(125[25:41])
    defparam i3734_2_lut.init = 16'h6666;
    FD1P3AX temperature_buffer_i0_i0 (.D(one_wire_out), .SP(sys_clk_c_enable_296), 
            .CK(sys_clk_c), .Q(temperature_buffer[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i0.GSR = "DISABLED";
    LUT4 cnt_write_0__bdd_4_lut_28635 (.A(cnt_write[0]), .B(n38623), .C(n16050), 
         .D(cnt_write[4]), .Z(n38412)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam cnt_write_0__bdd_4_lut_28635.init = 16'h22f0;
    FD1P3AX temperature_buffer_i0_i1 (.D(one_wire_out), .SP(sys_clk_c_enable_299), 
            .CK(sys_clk_c), .Q(temperature_buffer[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i1.GSR = "DISABLED";
    LUT4 i27451_1_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n36746)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;
    defparam i27451_1_lut_4_lut.init = 16'hdb6d;
    LUT4 i27660_2_lut_4_lut_4_lut (.A(n38609), .B(n38543), .C(cnt_read[5]), 
         .D(cnt_read[4]), .Z(sys_clk_c_enable_300)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i27660_2_lut_4_lut_4_lut.init = 16'h0100;
    FD1P3AX temperature_buffer_i0_i2 (.D(one_wire_out), .SP(sys_clk_c_enable_300), 
            .CK(sys_clk_c), .Q(temperature_buffer[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i2.GSR = "DISABLED";
    LUT4 i3762_3_lut_4_lut (.A(cnt_write[3]), .B(n38608), .C(cnt_write[4]), 
         .D(cnt_write[5]), .Z(n153[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(125[25:41])
    defparam i3762_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_3_lut_4_lut_adj_190 (.A(n38504), .B(n38664), .C(n38505), .D(n38541), 
         .Z(sys_clk_c_enable_79)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_190.init = 16'he000;
    LUT4 i3_3_lut_4_lut (.A(n38504), .B(n38664), .C(n38530), .D(n5), 
         .Z(sys_clk_c_enable_80)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'he000;
    FD1P3AX temperature_buffer_i0_i4 (.D(one_wire_out), .SP(sys_clk_c_enable_301), 
            .CK(sys_clk_c), .Q(temperature_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i4.GSR = "DISABLED";
    LUT4 i2_2_lut_rep_544 (.A(state[1]), .B(state_back_2__N_482[2]), .Z(n38664)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2_2_lut_rep_544.init = 16'hdddd;
    LUT4 i27031_2_lut_3_lut_4_lut (.A(state[1]), .B(state_back_2__N_482[2]), 
         .C(cnt_init[0]), .D(n38698), .Z(n16)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;
    defparam i27031_2_lut_3_lut_4_lut.init = 16'h0222;
    LUT4 cnt_main_3__bdd_4_lut_28578 (.A(cnt_main[3]), .B(cnt_main[1]), 
         .C(cnt_main[0]), .D(cnt_main[2]), .Z(n37779)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C)))) */ ;
    defparam cnt_main_3__bdd_4_lut_28578.init = 16'h1454;
    FD1P3AX temperature_buffer_i0_i5 (.D(one_wire_out), .SP(sys_clk_c_enable_302), 
            .CK(sys_clk_c), .Q(temperature_buffer[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i5.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i6 (.D(one_wire_out), .SP(sys_clk_c_enable_303), 
            .CK(sys_clk_c), .Q(temperature_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i6.GSR = "DISABLED";
    LUT4 i27041_2_lut (.A(cnt_main[3]), .B(cnt_main[0]), .Z(n36348)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i27041_2_lut.init = 16'hdddd;
    LUT4 i12401_3_lut_then_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n38743)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i12401_3_lut_then_4_lut.init = 16'h1a41;
    FD1P3AX temperature_buffer_i0_i7 (.D(one_wire_out), .SP(sys_clk_c_enable_304), 
            .CK(sys_clk_c), .Q(temperature_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i7.GSR = "DISABLED";
    LUT4 i8_3_lut (.A(n38410), .B(state_back[0]), .C(state_back_2__N_482[2]), 
         .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    defparam i8_3_lut.init = 16'hcaca;
    LUT4 i10774_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n19853)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (D)+!B (C+(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i10774_2_lut_4_lut_4_lut.init = 16'h006d;
    PFUMX i27397 (.BLUT(n16152), .ALUT(n29), .C0(cnt_write[4]), .Z(n36706));
    LUT4 i3719_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n109[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(111[24:39])
    defparam i3719_3_lut.init = 16'h6a6a;
    LUT4 i3805_3_lut_4_lut (.A(cnt_read[3]), .B(n38621), .C(cnt_read[4]), 
         .D(cnt_read[5]), .Z(n208[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3805_3_lut_4_lut.init = 16'h7f80;
    LUT4 i26_3_lut_4_lut_4_lut (.A(state[0]), .B(n38628), .C(state_back_2__N_482[2]), 
         .D(n38582), .Z(n9)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C)))) */ ;
    defparam i26_3_lut_4_lut_4_lut.init = 16'h4a40;
    PFUMX i28728 (.BLUT(n39181), .ALUT(n21509), .C0(state_back_2__N_482[2]), 
          .Z(num_delay_19__N_571[2]));
    PFUMX i27988 (.BLUT(n37605), .ALUT(n37604), .C0(state[0]), .Z(n37606));
    PFUMX i28004 (.BLUT(n37629), .ALUT(n37628), .C0(cnt_write[1]), .Z(n37630));
    FD1P3IX num_delay_i0_i0 (.D(n21509), .SP(sys_clk_c_enable_308), .CD(n33712), 
            .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i0.GSR = "DISABLED";
    FD1P3IX cnt_init_i0_i0 (.D(n30), .SP(sys_clk_c_enable_309), .CD(n25977), 
            .CK(sys_clk_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    LUT4 i12401_3_lut_else_4_lut (.A(cnt_read[5]), .B(cnt_read[4]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n38742)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B (C+!(D))+!B ((D)+!C))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam i12401_3_lut_else_4_lut.init = 16'ha41a;
    LUT4 i1_4_lut (.A(n38505), .B(n15_adj_1805), .C(n38568), .D(state_back_2__N_482[2]), 
         .Z(sys_clk_c_enable_289)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha088;
    LUT4 i27651_3_lut_4_lut (.A(n38518), .B(cnt_read[5]), .C(cnt_read[3]), 
         .D(n36233), .Z(sys_clk_c_enable_302)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i27651_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_4_lut (.A(n38626), .B(n38529), .C(state[0]), .D(state[1]), 
         .Z(n42)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (D)+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_4_lut.init = 16'h3aff;
    LUT4 i1_2_lut_adj_191 (.A(state_back[1]), .B(n261), .Z(n7_adj_1790)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    defparam i1_2_lut_adj_191.init = 16'h8888;
    LUT4 i27663_2_lut_3_lut_4_lut_4_lut (.A(n38678), .B(cnt_read[3]), .C(cnt_read[5]), 
         .D(n38518), .Z(sys_clk_c_enable_303)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i27663_2_lut_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_192 (.A(n36144), .B(n36115), .C(n38504), .D(state[1]), 
         .Z(n33712)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_192.init = 16'hc088;
    LUT4 i27704_4_lut (.A(n29_adj_1801), .B(state[0]), .C(n38505), .D(n13), 
         .Z(sys_clk_c_enable_291)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C))+!A)) */ ;
    defparam i27704_4_lut.init = 16'h20a0;
    LUT4 i1_4_lut_adj_193 (.A(cnt_write[4]), .B(n38635), .C(n36257), .D(n36260), 
         .Z(n13)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_193.init = 16'hcc80;
    LUT4 i2_4_lut (.A(n21793), .B(n38635), .C(n65), .D(state[0]), .Z(n43)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'hc800;
    LUT4 i1_2_lut_rep_444_3_lut (.A(n38674), .B(clk_1mhz), .C(sys_rst_n_c), 
         .Z(n38564)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_444_3_lut.init = 16'h2020;
    LUT4 i27787_3_lut_4_lut (.A(n38674), .B(clk_1mhz), .C(n19_adj_1793), 
         .D(state_back_2__N_482[2]), .Z(sys_clk_c_enable_6)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i27787_3_lut_4_lut.init = 16'h2202;
    LUT4 i1_2_lut_3_lut_4_lut_adj_194 (.A(n38674), .B(clk_1mhz), .C(n12), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_308)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_194.init = 16'h2000;
    LUT4 i1_4_lut_adj_195 (.A(n38635), .B(cnt_init[2]), .C(n2845[6]), 
         .D(state[0]), .Z(num_delay_19__N_571[6])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_195.init = 16'ha022;
    LUT4 i1_2_lut_rep_417_3_lut_4_lut (.A(n38674), .B(clk_1mhz), .C(state_back_2__N_482[2]), 
         .D(sys_rst_n_c), .Z(n38537)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_2_lut_rep_417_3_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_adj_196 (.A(cnt_read[2]), .B(cnt_read[1]), .Z(n36233)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_adj_196.init = 16'hbbbb;
    LUT4 i3755_2_lut_3_lut_4_lut (.A(cnt_write[2]), .B(n38697), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n153[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(125[25:41])
    defparam i3755_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i15_3_lut_4_lut (.A(cnt_read[3]), .B(n38678), .C(n38705), .D(cnt_read[0]), 
         .Z(n12_adj_1800)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(58[14:22])
    defparam i15_3_lut_4_lut.init = 16'h0f1f;
    LUT4 mux_952_Mux_0_i31_3_lut (.A(n19876), .B(n19511), .C(cnt_read[5]), 
         .Z(n21509)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(194[7] 254[14])
    defparam mux_952_Mux_0_i31_3_lut.init = 16'hcaca;
    LUT4 i30_1_lut (.A(cnt_init[0]), .Z(n30)) /* synthesis lut_function=(!(A)) */ ;
    defparam i30_1_lut.init = 16'h5555;
    FD1P3IX cnt_write_i0_i0 (.D(n38651), .SP(sys_clk_c_enable_316), .CD(n22024), 
            .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_197 (.A(state[1]), .B(n5_adj_1798), .C(n38705), 
         .D(n36460), .Z(n35972)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_197.init = 16'hbbbf;
    LUT4 i1_2_lut_3_lut_4_lut_adj_198 (.A(state[1]), .B(state_back_2__N_482[2]), 
         .C(n36147), .D(n38504), .Z(sys_clk_c_enable_159)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_198.init = 16'hf0d0;
    LUT4 i3798_2_lut_3_lut_4_lut (.A(cnt_read[2]), .B(n38693), .C(cnt_read[4]), 
         .D(cnt_read[3]), .Z(n208[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(193[24:39])
    defparam i3798_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_4_lut_adj_199 (.A(n38664), .B(n36147), .C(n36221), .D(n27594), 
         .Z(sys_clk_c_enable_13)) /* synthesis lut_function=(A (B)+!A !(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_199.init = 16'h88c8;
    LUT4 i35_3_lut_4_lut (.A(cnt_write[1]), .B(n38696), .C(cnt_write[4]), 
         .D(cnt_write[0]), .Z(n33)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i35_3_lut_4_lut.init = 16'hefe0;
    LUT4 i38_3_lut_4_lut (.A(cnt_write[1]), .B(n38696), .C(cnt_write[5]), 
         .D(cnt_write[0]), .Z(n36257)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i38_3_lut_4_lut.init = 16'hefe0;
    LUT4 i1_2_lut_adj_200 (.A(n261), .B(state[0]), .Z(n5_adj_1798)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_200.init = 16'hbbbb;
    LUT4 i2_3_lut_4_lut_adj_201 (.A(cnt_write[1]), .B(n38696), .C(cnt_write[5]), 
         .D(cnt_write[4]), .Z(n21793)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_201.init = 16'he000;
    LUT4 cnt_main_0__bdd_4_lut (.A(cnt_main[0]), .B(cnt_main[2]), .C(cnt_main[1]), 
         .D(cnt_main[3]), .Z(n16_adj_1795)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C (D)+!C !(D)))+!A)) */ ;
    defparam cnt_main_0__bdd_4_lut.init = 16'h02a0;
    LUT4 i10813_2_lut_rep_433_3_lut_4_lut (.A(cnt_write[1]), .B(n38696), 
         .C(cnt_write[0]), .D(cnt_write[4]), .Z(n38553)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i10813_2_lut_rep_433_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i1_4_lut_adj_202 (.A(state[1]), .B(n38516), .C(state_back_2__N_482[2]), 
         .D(n38542), .Z(n36147)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_202.init = 16'hccc8;
    LUT4 i10630_3_lut_rep_384_4_lut (.A(n38698), .B(cnt_init[0]), .C(state[0]), 
         .D(n38529), .Z(n38504)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // d:/new porject/top-xu/ds18b20.v(54[14:22])
    defparam i10630_3_lut_rep_384_4_lut.init = 16'h08f8;
    LUT4 i1_2_lut_rep_434_3_lut_4_lut (.A(n38706), .B(cnt_main[3]), .C(state[0]), 
         .D(cnt_main[2]), .Z(n38554)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_434_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_rep_422_3_lut_4_lut (.A(n38706), .B(cnt_main[3]), .C(state[0]), 
         .D(cnt_main[2]), .Z(n38542)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_422_3_lut_4_lut.init = 16'h0f2f;
    LUT4 state_2__I_0_144_i2_4_lut_4_lut (.A(n38644), .B(n15091), .C(state[0]), 
         .D(cnt_write[0]), .Z(n2)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam state_2__I_0_144_i2_4_lut_4_lut.init = 16'h3505;
    LUT4 i1_2_lut_3_lut_4_lut_adj_203 (.A(cnt_read[0]), .B(n38705), .C(state[1]), 
         .D(state[0]), .Z(n33905)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_203.init = 16'h0002;
    LUT4 n37632_bdd_3_lut_4_lut (.A(n37631), .B(data_wr_buffer[4]), .C(cnt_write[2]), 
         .D(n37630), .Z(n37633)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n37632_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_rep_385_3_lut_4_lut_4_lut (.A(n38643), .B(n38564), .C(n38582), 
         .D(state[0]), .Z(n38505)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;
    defparam i1_2_lut_rep_385_3_lut_4_lut_4_lut.init = 16'hc444;
    LUT4 i27769_2_lut_3_lut_4_lut_4_lut (.A(n38643), .B(n38564), .C(n34), 
         .D(n38554), .Z(n36944)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C)+!B))) */ ;
    defparam i27769_2_lut_3_lut_4_lut_4_lut.init = 16'h0c04;
    LUT4 i1_2_lut_rep_410_3_lut_4_lut_4_lut (.A(n38643), .B(state[0]), .C(n38627), 
         .D(cnt_main[2]), .Z(n38530)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_410_3_lut_4_lut_4_lut.init = 16'h55d5;
    LUT4 i1_3_lut_4_lut_adj_204 (.A(n38606), .B(n38541), .C(state_back_2__N_482[2]), 
         .D(n19705), .Z(sys_clk_c_enable_158)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_204.init = 16'h8880;
    LUT4 i2_3_lut_rep_397 (.A(cnt_read[4]), .B(cnt_read[5]), .C(n38543), 
         .Z(n38517)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2_3_lut_rep_397.init = 16'hfdfd;
    LUT4 i1_2_lut_rep_522 (.A(cnt_main[2]), .B(cnt_main[0]), .Z(n38642)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_522.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_205 (.A(cnt_main[2]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .Z(n26025)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_adj_205.init = 16'hefef;
    LUT4 i27680_2_lut_rep_523 (.A(state[1]), .B(state_back_2__N_482[2]), 
         .Z(n38643)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i27680_2_lut_rep_523.init = 16'h1111;
    LUT4 i27798_2_lut_3_lut_4_lut (.A(state[1]), .B(state_back_2__N_482[2]), 
         .C(clk_1mhz), .D(n38674), .Z(sys_clk_c_enable_255)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i27798_2_lut_3_lut_4_lut.init = 16'h0100;
    CCU2D add_48_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33218), 
          .S0(n263[19]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_21.INIT0 = 16'h5aaa;
    defparam add_48_21.INIT1 = 16'h0000;
    defparam add_48_21.INJECT1_0 = "NO";
    defparam add_48_21.INJECT1_1 = "NO";
    LUT4 i2_2_lut_3_lut (.A(state[1]), .B(state_back_2__N_482[2]), .C(cnt_main[3]), 
         .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_206 (.A(cnt_write[0]), .B(cnt_write[4]), .C(state[0]), 
         .Z(n4_adj_1797)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i1_2_lut_3_lut_adj_206.init = 16'h2020;
    LUT4 i42_3_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[4]), .C(cnt_write[5]), 
         .D(n38581), .Z(n22)) /* synthesis lut_function=(!(A (B (C))+!A (C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i42_3_lut_4_lut_4_lut.init = 16'h2a2f;
    LUT4 i68_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[4]), .C(cnt_write[5]), 
         .D(n36520), .Z(n65)) /* synthesis lut_function=(!(A (B (C))+!A (C+(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i68_4_lut_4_lut.init = 16'h2a2f;
    LUT4 i41_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[4]), .C(cnt_write[5]), 
         .D(n38347), .Z(n36_adj_1802)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i41_3_lut_4_lut.init = 16'h2f20;
    LUT4 i18934_2_lut_rep_524 (.A(cnt_init[0]), .B(cnt_init[2]), .Z(n38644)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18934_2_lut_rep_524.init = 16'heeee;
    LUT4 i27762_2_lut_3_lut (.A(cnt_init[0]), .B(cnt_init[2]), .C(state[0]), 
         .Z(n36430)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i27762_2_lut_3_lut.init = 16'h0101;
    LUT4 i27742_2_lut_rep_525 (.A(state[0]), .B(state[1]), .Z(n38645)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i27742_2_lut_rep_525.init = 16'h7777;
    LUT4 i18772_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state_back_2__N_482[2]), 
         .D(n36707), .Z(num_delay_19__N_571[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i18772_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_2_lut_rep_380_3_lut (.A(cnt_read[4]), .B(n38543), .C(cnt_read[5]), 
         .Z(n38500)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_380_3_lut.init = 16'hefef;
    CCU2D add_48_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33217), .COUT(n33218), .S0(n263[17]), .S1(n263[18]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_19.INIT0 = 16'h5aaa;
    defparam add_48_19.INIT1 = 16'h5aaa;
    defparam add_48_19.INJECT1_0 = "NO";
    defparam add_48_19.INJECT1_1 = "NO";
    CCU2D add_48_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33216), .COUT(n33217), .S0(n263[15]), .S1(n263[16]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_17.INIT0 = 16'h5aaa;
    defparam add_48_17.INIT1 = 16'h5aaa;
    defparam add_48_17.INJECT1_0 = "NO";
    defparam add_48_17.INJECT1_1 = "NO";
    CCU2D add_48_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33215), .COUT(n33216), .S0(n263[13]), .S1(n263[14]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_15.INIT0 = 16'h5aaa;
    defparam add_48_15.INIT1 = 16'h5aaa;
    defparam add_48_15.INJECT1_0 = "NO";
    defparam add_48_15.INJECT1_1 = "NO";
    CCU2D add_48_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33214), .COUT(n33215), .S0(n263[11]), .S1(n263[12]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_13.INIT0 = 16'h5aaa;
    defparam add_48_13.INIT1 = 16'h5aaa;
    defparam add_48_13.INJECT1_0 = "NO";
    defparam add_48_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n37608), .D(n27594), 
         .Z(n15_adj_1805)) /* synthesis lut_function=(!(A (B (D))+!A (B ((D)+!C)))) */ ;   // d:/new porject/top-xu/ds18b20.v(75[4] 262[11])
    defparam i1_4_lut_4_lut.init = 16'h33fb;
    LUT4 i2_4_lut_adj_207 (.A(state_back_2__N_482[2]), .B(state[1]), .C(state[0]), 
         .D(n38606), .Z(sys_clk_c_enable_247)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_207.init = 16'h2100;
    LUT4 i2_1_lut_rep_531 (.A(cnt_write[0]), .Z(n38651)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i2_1_lut_rep_531.init = 16'h5555;
    LUT4 i27507_3_lut_4_lut_4_lut (.A(cnt_write[0]), .B(n2245[0]), .C(state[0]), 
         .D(n38789), .Z(n2_adj_1788)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i27507_3_lut_4_lut_4_lut.init = 16'hfc5c;
    CCU2D add_48_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33213), .COUT(n33214), .S0(n263[9]), .S1(n263[10]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_11.INIT0 = 16'h5aaa;
    defparam add_48_11.INIT1 = 16'h5aaa;
    defparam add_48_11.INJECT1_0 = "NO";
    defparam add_48_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[3]), 
         .C(cnt_write[2]), .D(cnt_write[1]), .Z(n35836)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(126[7] 189[14])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h5144;
    LUT4 state_1__bdd_4_lut_28982 (.A(state[1]), .B(state[0]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n39181)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam state_1__bdd_4_lut_28982.init = 16'h0020;
    LUT4 i1_2_lut_rep_533 (.A(state[0]), .B(state[1]), .Z(n38653)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_533.init = 16'h2222;
    LUT4 i107_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n26025), .D(n36430), 
         .Z(n27769)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i107_4_lut_4_lut.init = 16'hce02;
    LUT4 i1_4_lut_adj_208 (.A(n38606), .B(n7_adj_1799), .C(n96), .D(n37243), 
         .Z(sys_clk_c_enable_44)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_208.init = 16'h0800;
    LUT4 i1_2_lut_rep_534 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n38654)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_534.init = 16'h8888;
    LUT4 i3_4_lut_adj_209 (.A(n38537), .B(n18196), .C(state[0]), .D(n38655), 
         .Z(sys_clk_c_enable_31)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut_adj_209.init = 16'h0040;
    LUT4 i30_1_lut_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7_adj_1787)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i30_1_lut_2_lut.init = 16'h7777;
    LUT4 i27138_2_lut_rep_535 (.A(state[1]), .B(cnt_main[3]), .Z(n38655)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27138_2_lut_rep_535.init = 16'heeee;
    CCU2D add_48_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33212), .COUT(n33213), .S0(n263[7]), .S1(n263[8]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_9.INIT0 = 16'h5aaa;
    defparam add_48_9.INIT1 = 16'h5aaa;
    defparam add_48_9.INJECT1_0 = "NO";
    defparam add_48_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_210 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7_adj_1786)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_adj_210.init = 16'hdddd;
    LUT4 i24_2_lut (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n18196)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut.init = 16'h6666;
    CCU2D add_48_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33211), .COUT(n33212), .S0(n263[5]), .S1(n263[6]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_7.INIT0 = 16'h5aaa;
    defparam add_48_7.INIT1 = 16'h5aaa;
    defparam add_48_7.INJECT1_0 = "NO";
    defparam add_48_7.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_211 (.A(n38706), .B(n38653), .C(n36015), .D(n36115), 
         .Z(sys_clk_c_enable_40)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i3_4_lut_adj_211.init = 16'h8000;
    LUT4 i1_2_lut_adj_212 (.A(cnt_main[3]), .B(cnt_main[2]), .Z(n36015)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    defparam i1_2_lut_adj_212.init = 16'h2222;
    CCU2D add_48_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33210), .COUT(n33211), .S0(n263[3]), .S1(n263[4]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_5.INIT0 = 16'h5aaa;
    defparam add_48_5.INIT1 = 16'h5aaa;
    defparam add_48_5.INJECT1_0 = "NO";
    defparam add_48_5.INJECT1_1 = "NO";
    CCU2D add_48_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33209), .COUT(n33210), .S0(n263[1]), .S1(n263[2]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_3.INIT0 = 16'h5aaa;
    defparam add_48_3.INIT1 = 16'h5aaa;
    defparam add_48_3.INJECT1_0 = "NO";
    defparam add_48_3.INJECT1_1 = "NO";
    CCU2D add_48_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33209), .S1(n263[0]));   // d:/new porject/top-xu/ds18b20.v(260[29:45])
    defparam add_48_1.INIT0 = 16'hF000;
    defparam add_48_1.INIT1 = 16'h5555;
    defparam add_48_1.INJECT1_0 = "NO";
    defparam add_48_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_213 (.A(state[0]), .B(state[1]), .C(n15), .D(n18_adj_1806), 
         .Z(state_2__N_479[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    defparam i1_4_lut_adj_213.init = 16'heca0;
    LUT4 i27706_4_lut (.A(state[1]), .B(state[0]), .C(cnt_write[0]), .D(cnt_write[5]), 
         .Z(n36881)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam i27706_4_lut.init = 16'h0008;
    PFUMX i28530 (.BLUT(n38787), .ALUT(n38788), .C0(cnt_write[1]), .Z(n38789));
    LUT4 i1_4_lut_adj_214 (.A(state_back_2__N_482[2]), .B(cnt_init[0]), 
         .C(n36508), .D(cnt_init[2]), .Z(n18_adj_1806)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // d:/new porject/top-xu/ds18b20.v(61[15:20])
    defparam i1_4_lut_adj_214.init = 16'habaa;
    LUT4 i27199_3_lut (.A(cnt_init[1]), .B(state[0]), .C(one_wire_out), 
         .Z(n36508)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i27199_3_lut.init = 16'hfefe;
    LUT4 i18728_2_lut_rep_541 (.A(state[0]), .B(state[1]), .Z(n38661)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18728_2_lut_rep_541.init = 16'heeee;
    LUT4 state_2__I_0_i3_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n39954), 
         .D(state_back_2__N_482[2]), .Z(n3_adj_1789)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;
    defparam state_2__I_0_i3_4_lut_4_lut.init = 16'hfeaa;
    LUT4 one_wire_I_0_4_lut (.A(one_wire_out), .B(n38645), .C(one_wire_N_639), 
         .D(n4_adj_1804), .Z(one_wire_N_634)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/ds18b20.v(74[12] 263[6])
    defparam one_wire_I_0_4_lut.init = 16'h3a0a;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_215 (.A(state[0]), .B(state[1]), 
         .C(n38674), .D(clk_1mhz), .Z(sys_clk_c_enable_232)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_215.init = 16'h0010;
    
endmodule
//
// Verilog Description of module BCD_U7
//

module BCD_U7 (\ds18b20_data[6] , \ds18b20_data[5] , \hundres_0__N_316[2] , 
            \Tem_lower[3] , n13024, \Tem_lower[2] , \cnt_main[1] , n9529, 
            n37299, \ds18b20_data[7] , \hundres_0__N_313[0] , \ds18b20_data[8] , 
            \hundres_1__N_305[0] , \hundres_1__N_305[1] , n38637, n38459, 
            n10398, n12116, n38807) /* synthesis syn_module_defined=1 */ ;
    input \ds18b20_data[6] ;
    input \ds18b20_data[5] ;
    output \hundres_0__N_316[2] ;
    output \Tem_lower[3] ;
    output n13024;
    output \Tem_lower[2] ;
    input \cnt_main[1] ;
    input n9529;
    output n37299;
    input \ds18b20_data[7] ;
    output \hundres_0__N_313[0] ;
    input \ds18b20_data[8] ;
    input \hundres_1__N_305[0] ;
    input \hundres_1__N_305[1] ;
    output n38637;
    output n38459;
    input n10398;
    output n12116;
    output n38807;
    
    wire [3:0]hundres_1__N_306;
    
    wire n38589, n38806, n38805, n38472;
    wire [3:0]hundres_0__N_316;
    
    wire n38460, n38507;
    wire [3:0]hundres_1__N_307;
    
    LUT4 i3500_2_lut_rep_326_4_lut_4_lut_then_4_lut (.A(hundres_1__N_306[2]), 
         .B(hundres_1__N_306[1]), .C(n38589), .D(\ds18b20_data[6] ), .Z(n38806)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C))) */ ;
    defparam i3500_2_lut_rep_326_4_lut_4_lut_then_4_lut.init = 16'hf676;
    LUT4 i3500_2_lut_rep_326_4_lut_4_lut_else_4_lut (.A(hundres_1__N_306[2]), 
         .B(hundres_1__N_306[1]), .C(n38589), .D(\ds18b20_data[6] ), .Z(n38805)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C (D))))) */ ;
    defparam i3500_2_lut_rep_326_4_lut_4_lut_else_4_lut.init = 16'h7e6e;
    LUT4 i4081_2_lut_3_lut_3_lut_4_lut (.A(n38472), .B(\ds18b20_data[5] ), 
         .C(hundres_0__N_316[1]), .D(\hundres_0__N_316[2] ), .Z(\Tem_lower[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4081_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4083_2_lut_3_lut_2_lut_3_lut (.A(n38472), .B(\ds18b20_data[5] ), 
         .C(hundres_0__N_316[1]), .Z(n13024)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4083_2_lut_3_lut_2_lut_3_lut.init = 16'he0e0;
    LUT4 i3463_3_lut_rep_340 (.A(n38472), .B(\ds18b20_data[5] ), .C(hundres_0__N_316[1]), 
         .D(\hundres_0__N_316[2] ), .Z(n38460)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3463_3_lut_rep_340.init = 16'hffe0;
    LUT4 i4074_3_lut_4_lut (.A(n38472), .B(\ds18b20_data[5] ), .C(hundres_0__N_316[1]), 
         .D(\hundres_0__N_316[2] ), .Z(\Tem_lower[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4074_3_lut_4_lut.init = 16'h998a;
    LUT4 n15209_bdd_3_lut_4_lut (.A(\ds18b20_data[5] ), .B(n38460), .C(\cnt_main[1] ), 
         .D(n9529), .Z(n37299)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam n15209_bdd_3_lut_4_lut.init = 16'hf606;
    LUT4 i4143_2_lut_rep_387_4_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38589), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(n38507)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4143_2_lut_rep_387_4_lut_4_lut.init = 16'h554a;
    LUT4 i4165_3_lut_4_lut_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38589), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(\hundres_0__N_313[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4165_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4158_2_lut_3_lut_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38589), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4158_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4151_3_lut_4_lut (.A(\ds18b20_data[7] ), .B(n38589), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4151_3_lut_4_lut.init = 16'h998c;
    LUT4 i3635_2_lut_rep_517_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_305[0] ), 
         .C(\hundres_1__N_305[1] ), .Z(n38637)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3635_2_lut_rep_517_3_lut.init = 16'he0e0;
    LUT4 i11983_2_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_305[0] ), 
         .C(\hundres_1__N_305[1] ), .Z(hundres_1__N_306[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i11983_2_lut_3_lut.init = 16'h1010;
    LUT4 i4171_2_lut_rep_469_3_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_305[0] ), 
         .C(\hundres_1__N_305[1] ), .Z(n38589)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4171_2_lut_rep_469_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4179_3_lut_4_lut_3_lut (.A(\ds18b20_data[8] ), .B(\hundres_1__N_305[0] ), 
         .C(\hundres_1__N_305[1] ), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4179_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4109_2_lut_3_lut_3_lut_4_lut (.A(n38507), .B(\ds18b20_data[6] ), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[2] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4109_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4116_3_lut_rep_339_4_lut_3_lut_4_lut (.A(n38507), .B(\ds18b20_data[6] ), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38459)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4116_3_lut_rep_339_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4094_2_lut_rep_352_4_lut_4_lut (.A(n38507), .B(\ds18b20_data[6] ), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38472)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4094_2_lut_rep_352_4_lut_4_lut.init = 16'h332c;
    LUT4 i4102_3_lut_4_lut (.A(n38507), .B(\ds18b20_data[6] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4102_3_lut_4_lut.init = 16'h998a;
    LUT4 i4060_3_lut_4_lut (.A(n38459), .B(\hundres_0__N_313[0] ), .C(n10398), 
         .D(n38637), .Z(n12116)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4060_3_lut_4_lut.init = 16'h1fe0;
    PFUMX i28542 (.BLUT(n38805), .ALUT(n38806), .C0(\ds18b20_data[7] ), 
          .Z(n38807));
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (\music_tone[4] , beep_c, sys_clk_c, \music_tone[0] , 
            \music_tone[3] , GND_net, \music_tone[2] , \music_tone[1] , 
            sw2_c) /* synthesis syn_module_defined=1 */ ;
    input \music_tone[4] ;
    output beep_c;
    input sys_clk_c;
    input \music_tone[0] ;
    input \music_tone[3] ;
    input GND_net;
    input \music_tone[2] ;
    input \music_tone[1] ;
    input sw2_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire n38151, n38150;
    wire [15:0]time_end;   // d:/new porject/top-xu/beep.v(31[12:20])
    
    wire piano_out_N_1503, n38748, n38749, n38127, n38126, n38733, 
        n38734, n33180;
    wire [17:0]time_cnt;   // d:/new porject/top-xu/beep.v(65[12:20])
    wire [17:0]n5637;
    
    wire n5656, n38087, n38086, n33179, n33178, n38067, n38066, 
        n33172, n3492;
    wire [17:0]n77;
    
    wire n33177, n33176, n33175, n38035, n38034, n33174, n33173, 
        n38758, n38757, n38761, n38760, n38800, n38799, n38812, 
        n38811, n38815, n38814, n38818, n38817, n38821, n38820, 
        n33330, n33329, n33328, n33327, n33326, n33325, n33324, 
        n33323, n33322, n38736, n38737, n39966, n29, n34, n30, 
        n31, n28, n39965;
    
    PFUMX i28314 (.BLUT(n38151), .ALUT(n38150), .C0(\music_tone[4] ), 
          .Z(time_end[3]));
    FD1S3AX piano_out_20 (.D(piano_out_N_1503), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=470, LSE_RLINE=476 */ ;   // d:/new porject/top-xu/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    PFUMX i28504 (.BLUT(n38748), .ALUT(n38749), .C0(\music_tone[0] ), 
          .Z(time_end[11]));
    PFUMX i28299 (.BLUT(n38127), .ALUT(n38126), .C0(\music_tone[3] ), 
          .Z(time_end[0]));
    PFUMX i28494 (.BLUT(n38733), .ALUT(n38734), .C0(\music_tone[0] ), 
          .Z(time_end[6]));
    CCU2D add_1759_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33180), .S0(n5637[17]), .S1(n5656));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1759_19.INIT0 = 16'h5555;
    defparam add_1759_19.INIT1 = 16'h0000;
    defparam add_1759_19.INJECT1_0 = "NO";
    defparam add_1759_19.INJECT1_1 = "NO";
    PFUMX i28283 (.BLUT(n38087), .ALUT(n38086), .C0(\music_tone[4] ), 
          .Z(time_end[8]));
    CCU2D add_1759_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33179), .COUT(n33180), .S0(n5637[15]), 
          .S1(n5637[16]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1759_17.INIT0 = 16'h5999;
    defparam add_1759_17.INIT1 = 16'h5555;
    defparam add_1759_17.INJECT1_0 = "NO";
    defparam add_1759_17.INJECT1_1 = "NO";
    CCU2D add_1759_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33178), .COUT(n33179), .S0(n5637[13]), 
          .S1(n5637[14]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1759_15.INIT0 = 16'h5999;
    defparam add_1759_15.INIT1 = 16'h5999;
    defparam add_1759_15.INJECT1_0 = "NO";
    defparam add_1759_15.INJECT1_1 = "NO";
    PFUMX i28269 (.BLUT(n38067), .ALUT(n38066), .C0(\music_tone[2] ), 
          .Z(time_end[1]));
    CCU2D add_1759_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n33172), .S1(n5637[0]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1759_1.INIT0 = 16'h0000;
    defparam add_1759_1.INIT1 = 16'h5999;
    defparam add_1759_1.INJECT1_0 = "NO";
    defparam add_1759_1.INJECT1_1 = "NO";
    FD1S3IX time_cnt_3018__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i0.GSR = "ENABLED";
    CCU2D add_1759_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33177), .COUT(n33178), .S0(n5637[11]), 
          .S1(n5637[12]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1759_13.INIT0 = 16'h5999;
    defparam add_1759_13.INIT1 = 16'h5999;
    defparam add_1759_13.INJECT1_0 = "NO";
    defparam add_1759_13.INJECT1_1 = "NO";
    CCU2D add_1759_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33176), .COUT(n33177), .S0(n5637[9]), 
          .S1(n5637[10]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1759_11.INIT0 = 16'h5999;
    defparam add_1759_11.INIT1 = 16'h5999;
    defparam add_1759_11.INJECT1_0 = "NO";
    defparam add_1759_11.INJECT1_1 = "NO";
    CCU2D add_1759_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33175), .COUT(n33176), .S0(n5637[7]), 
          .S1(n5637[8]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1759_9.INIT0 = 16'h5999;
    defparam add_1759_9.INIT1 = 16'h5999;
    defparam add_1759_9.INJECT1_0 = "NO";
    defparam add_1759_9.INJECT1_1 = "NO";
    PFUMX i28249 (.BLUT(n38035), .ALUT(n38034), .C0(\music_tone[4] ), 
          .Z(time_end[10]));
    CCU2D add_1759_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33174), .COUT(n33175), .S0(n5637[5]), 
          .S1(n5637[6]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1759_7.INIT0 = 16'h5999;
    defparam add_1759_7.INIT1 = 16'h5999;
    defparam add_1759_7.INJECT1_0 = "NO";
    defparam add_1759_7.INJECT1_1 = "NO";
    CCU2D add_1759_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33173), .COUT(n33174), .S0(n5637[3]), 
          .S1(n5637[4]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1759_5.INIT0 = 16'h5999;
    defparam add_1759_5.INIT1 = 16'h5999;
    defparam add_1759_5.INJECT1_0 = "NO";
    defparam add_1759_5.INJECT1_1 = "NO";
    CCU2D add_1759_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33172), .COUT(n33173), .S0(n5637[1]), 
          .S1(n5637[2]));   // d:/new porject/top-xu/beep.v(72[14:32])
    defparam add_1759_3.INIT0 = 16'h5999;
    defparam add_1759_3.INIT1 = 16'h5999;
    defparam add_1759_3.INJECT1_0 = "NO";
    defparam add_1759_3.INJECT1_1 = "NO";
    LUT4 n10_bdd_4_lut_28248_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38034)) /* synthesis lut_function=(A (B+(D))+!A (B (D)+!B (C+(D)))) */ ;
    defparam n10_bdd_4_lut_28248_4_lut.init = 16'hff98;
    LUT4 tone_4__I_0_Mux_12_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38758)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_then_4_lut.init = 16'hfa93;
    LUT4 tone_4__I_0_Mux_12_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38757)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_else_4_lut.init = 16'hfa4b;
    LUT4 tone_4__I_0_Mux_2_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38761)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_2_i31_then_4_lut.init = 16'hfb8b;
    LUT4 tone_4__I_0_Mux_2_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38760)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C)+!B (D))) */ ;
    defparam tone_4__I_0_Mux_2_i31_else_4_lut.init = 16'hae3d;
    LUT4 i27726_4_lut_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n38800)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i27726_4_lut_then_4_lut.init = 16'hfcaa;
    LUT4 i27726_4_lut_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n38799)) /* synthesis lut_function=(A (B+(C))+!A !(B+(D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i27726_4_lut_else_4_lut.init = 16'ha8b9;
    LUT4 i27732_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n38812)) /* synthesis lut_function=(A (B+(D))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i27732_4_lut_then_4_lut.init = 16'hafcc;
    LUT4 i27732_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n38811)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam i27732_4_lut_else_4_lut.init = 16'hefff;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38815)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_then_4_lut.init = 16'hffbc;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38814)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C)+!B !(C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_else_4_lut.init = 16'hc9db;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38818)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+(D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_then_4_lut.init = 16'ha899;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38817)) /* synthesis lut_function=(A (B)+!A !(B+(C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_else_4_lut.init = 16'h8999;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38821)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(C (D)+!C !(D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_then_4_lut.init = 16'hadf0;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38820)) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_else_4_lut.init = 16'ha4f1;
    FD1S3IX time_cnt_3018__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i1.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_3018__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018__i17.GSR = "ENABLED";
    CCU2D time_cnt_3018_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33330), .S0(n77[17]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_3018_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_3018_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_3018_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_3018_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33329), .COUT(n33330), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_3018_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_3018_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_3018_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_3018_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33328), .COUT(n33329), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_3018_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_3018_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_3018_add_4_15.INJECT1_1 = "NO";
    CCU2D time_cnt_3018_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33327), .COUT(n33328), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_3018_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_3018_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_3018_add_4_13.INJECT1_1 = "NO";
    LUT4 i1112_2_lut (.A(n5656), .B(sw2_c), .Z(n3492)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/beep.v(72[11] 76[5])
    defparam i1112_2_lut.init = 16'hbbbb;
    CCU2D time_cnt_3018_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33326), .COUT(n33327), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_3018_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_3018_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_3018_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_3018_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33325), .COUT(n33326), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_3018_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_3018_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_3018_add_4_9.INJECT1_1 = "NO";
    CCU2D time_cnt_3018_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33324), .COUT(n33325), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_3018_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_3018_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_3018_add_4_7.INJECT1_1 = "NO";
    CCU2D time_cnt_3018_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33323), .COUT(n33324), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_3018_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_3018_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_3018_add_4_5.INJECT1_1 = "NO";
    CCU2D time_cnt_3018_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33322), .COUT(n33323), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_3018_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_3018_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_3018_add_4_3.INJECT1_1 = "NO";
    CCU2D time_cnt_3018_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n33322), .S1(n77[0]));   // d:/new porject/top-xu/beep.v(75[15:30])
    defparam time_cnt_3018_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_3018_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_3018_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_3018_add_4_1.INJECT1_1 = "NO";
    LUT4 music_tone_0__bdd_4_lut_28268_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[4] ), .Z(n38066)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam music_tone_0__bdd_4_lut_28268_4_lut.init = 16'hf80c;
    LUT4 music_tone_2__bdd_4_lut_28298_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n38126)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam music_tone_2__bdd_4_lut_28298_4_lut.init = 16'hf6fa;
    LUT4 tone_4__I_0_Mux_6_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38734)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (C+(D))) */ ;
    defparam tone_4__I_0_Mux_6_i31_then_4_lut.init = 16'hffd2;
    LUT4 music_tone_1__bdd_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38087)) /* synthesis lut_function=(!(A (C (D))+!A !(B+(C+!(D))))) */ ;
    defparam music_tone_1__bdd_4_lut_4_lut.init = 16'h5eff;
    LUT4 tone_4__I_0_Mux_6_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38733)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C (D))+!B !((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_6_i31_else_4_lut.init = 16'hbf67;
    PFUMX i28496 (.BLUT(n38736), .ALUT(n38737), .C0(\music_tone[1] ), 
          .Z(time_end[4]));
    LUT4 n10_bdd_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), .C(\music_tone[0] ), 
         .D(\music_tone[3] ), .Z(n38035)) /* synthesis lut_function=(A (B+!(D))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;
    defparam n10_bdd_4_lut.init = 16'h9dab;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n39966)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_then_4_lut.init = 16'he0c0;
    LUT4 music_tone_0__bdd_4_lut_28405 (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n38067)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C)+!B (C+!(D)))) */ ;
    defparam music_tone_0__bdd_4_lut_28405.init = 16'hf25b;
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_1503)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n5637[1]), .B(n5637[6]), .C(n5637[16]), .D(n5637[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n5637[5]), .C(n28), .D(n5637[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n5637[10]), .B(n5637[4]), .C(n5637[8]), .D(n5637[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n5637[14]), .B(n5637[17]), .C(n5637[15]), .D(n5637[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n39965)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_else_4_lut.init = 16'hc0c1;
    LUT4 i10_4_lut (.A(n5637[12]), .B(n5637[7]), .C(n5637[0]), .D(n5637[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 music_tone_1__bdd_4_lut_28282 (.A(\music_tone[1] ), .B(\music_tone[0] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38086)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam music_tone_1__bdd_4_lut_28282.init = 16'hfdf5;
    PFUMX i29133 (.BLUT(n39965), .ALUT(n39966), .C0(\music_tone[1] ), 
          .Z(time_end[15]));
    LUT4 n38019_bdd_3_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38737)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C+(D)))) */ ;
    defparam n38019_bdd_3_lut_then_4_lut.init = 16'hee62;
    LUT4 music_tone_2__bdd_4_lut_28404 (.A(\music_tone[2] ), .B(\music_tone[0] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n38127)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B+!(D))) */ ;
    defparam music_tone_2__bdd_4_lut_28404.init = 16'hce5f;
    LUT4 tone_4__I_0_Mux_11_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38749)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_then_4_lut.init = 16'hfe71;
    LUT4 tone_4__I_0_Mux_11_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38748)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_else_4_lut.init = 16'hba27;
    PFUMX i28552 (.BLUT(n38820), .ALUT(n38821), .C0(\music_tone[0] ), 
          .Z(time_end[13]));
    PFUMX i28550 (.BLUT(n38817), .ALUT(n38818), .C0(\music_tone[0] ), 
          .Z(time_end[14]));
    PFUMX i28548 (.BLUT(n38814), .ALUT(n38815), .C0(\music_tone[0] ), 
          .Z(time_end[9]));
    PFUMX i28546 (.BLUT(n38811), .ALUT(n38812), .C0(\music_tone[2] ), 
          .Z(time_end[7]));
    PFUMX i28538 (.BLUT(n38799), .ALUT(n38800), .C0(\music_tone[0] ), 
          .Z(time_end[5]));
    LUT4 n38019_bdd_3_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38736)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A ((D)+!B)) */ ;
    defparam n38019_bdd_3_lut_else_4_lut.init = 16'hfd13;
    PFUMX i28512 (.BLUT(n38760), .ALUT(n38761), .C0(\music_tone[0] ), 
          .Z(time_end[2]));
    LUT4 music_tone_4__bdd_3_lut (.A(\music_tone[2] ), .B(\music_tone[3] ), 
         .C(\music_tone[0] ), .Z(n38150)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam music_tone_4__bdd_3_lut.init = 16'hecec;
    PFUMX i28510 (.BLUT(n38757), .ALUT(n38758), .C0(\music_tone[0] ), 
          .Z(time_end[12]));
    LUT4 music_tone_4__bdd_4_lut_28358 (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[3] ), .D(\music_tone[0] ), .Z(n38151)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C)+!B (D))) */ ;
    defparam music_tone_4__bdd_4_lut_28358.init = 16'ha6b7;
    
endmodule
//
// Verilog Description of module BCD_U6
//

module BCD_U6 (\hundres_0__N_316[3] , \hour[3] , \hour[4] , \hour[2] , 
            n10372, n12125, n4, \hour[6] , \hour[5] , n38704, \hour[7] , 
            \hour[1] , \hour_ones[1] , n37365, \hour_ones[3] , \hour_ones[2] , 
            hundres_0__N_321) /* synthesis syn_module_defined=1 */ ;
    output \hundres_0__N_316[3] ;
    input \hour[3] ;
    input \hour[4] ;
    input \hour[2] ;
    input n10372;
    output n12125;
    output n4;
    input \hour[6] ;
    input \hour[5] ;
    output n38704;
    input \hour[7] ;
    input \hour[1] ;
    output \hour_ones[1] ;
    output n37365;
    output \hour_ones[3] ;
    output \hour_ones[2] ;
    output hundres_0__N_321;
    
    wire [3:0]hundres_1__N_306;
    
    wire n38462, n38638, n38428;
    wire [3:0]hundres_1__N_305;
    
    wire n38764, n38763, n38474;
    wire [3:0]hundres_1__N_307;
    wire [3:0]hundres_0__N_316;
    
    wire n38438, n39962, n39963, n38493, n39964, n38432;
    wire [3:0]hundres_0__N_313;
    
    wire n38441, n38591, n38509, n38557, n38481;
    
    LUT4 i3545_2_lut_rep_308_3_lut_4_lut_4_lut (.A(hundres_1__N_306[3]), .B(n38462), 
         .C(\hundres_0__N_316[3] ), .D(n38638), .Z(n38428)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i3545_2_lut_rep_308_3_lut_4_lut_4_lut.init = 16'hf2fc;
    LUT4 i4584_2_lut_rep_354_4_lut_4_lut_then_4_lut (.A(\hour[3] ), .B(\hour[4] ), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n38764)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4584_2_lut_rep_354_4_lut_4_lut_then_4_lut.init = 16'h2524;
    LUT4 i4584_2_lut_rep_354_4_lut_4_lut_else_4_lut (.A(\hour[3] ), .B(\hour[4] ), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n38763)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4584_2_lut_rep_354_4_lut_4_lut_else_4_lut.init = 16'h959a;
    LUT4 i4550_2_lut_3_lut_3_lut_4_lut (.A(n38474), .B(\hour[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4550_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4535_2_lut_rep_318_4_lut_4_lut (.A(n38474), .B(\hour[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(n38438)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4535_2_lut_rep_318_4_lut_4_lut.init = 16'h332c;
    LUT4 i4557_3_lut_4_lut_3_lut_4_lut (.A(n38474), .B(\hour[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4557_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    PFUMX i29131 (.BLUT(n39962), .ALUT(n39963), .C0(n38493), .Z(n39964));
    LUT4 i4543_3_lut_4_lut (.A(n38474), .B(\hour[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4543_3_lut_4_lut.init = 16'h998a;
    LUT4 i4004_3_lut_4_lut (.A(\hundres_0__N_316[3] ), .B(n38432), .C(n10372), 
         .D(hundres_0__N_313[1]), .Z(n12125)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4004_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1_3_lut_4_lut (.A(n38462), .B(n38441), .C(n10372), .D(\hundres_0__N_316[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i4499_2_lut_rep_584 (.A(\hour[6] ), .B(\hour[5] ), .Z(n38704)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4499_2_lut_rep_584.init = 16'heeee;
    LUT4 i4494_3_lut_4_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(hundres_1__N_305[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4494_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i3602_2_lut_rep_518_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(n38638)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3602_2_lut_rep_518_3_lut.init = 16'he0e0;
    LUT4 i11920_2_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), .C(\hour[7] ), 
         .Z(hundres_1__N_305[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i11920_2_lut_3_lut.init = 16'h1010;
    LUT4 i4486_2_lut_rep_471_3_lut_3_lut (.A(\hour[6] ), .B(\hour[5] ), 
         .C(\hour[7] ), .Z(n38591)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4486_2_lut_rep_471_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i10363_2_lut_rep_389_3_lut_4_lut (.A(n38591), .B(\hour[4] ), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(n38509)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i10363_2_lut_rep_389_3_lut_4_lut.init = 16'heee0;
    LUT4 i4634_3_lut_4_lut_3_lut_4_lut (.A(n38591), .B(\hour[4] ), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4634_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3482_3_lut_rep_437 (.A(n38591), .B(\hour[4] ), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(n38557)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3482_3_lut_rep_437.init = 16'hffe0;
    LUT4 i4620_3_lut_4_lut (.A(n38591), .B(\hour[4] ), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4620_3_lut_4_lut.init = 16'h998a;
    LUT4 i4576_2_lut_rep_328_4_lut_4_lut_then_4_lut (.A(\hour[4] ), .B(n38591), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n39963)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i4576_2_lut_rep_328_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    LUT4 i4576_2_lut_rep_328_4_lut_4_lut_else_4_lut (.A(\hour[4] ), .B(n38591), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n39962)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4576_2_lut_rep_328_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i4507_2_lut_4_lut_4_lut (.A(n38438), .B(\hour[1] ), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4507_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 hour_warning_tens_0__bdd_3_lut_28065_4_lut_3_lut_4_lut (.A(n38438), 
         .B(\hour[1] ), .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), 
         .Z(n37365)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam hour_warning_tens_0__bdd_3_lut_28065_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4522_2_lut_3_lut_3_lut_4_lut (.A(n38438), .B(\hour[1] ), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4522_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4606_3_lut_rep_342_4_lut_3_lut_4_lut (.A(hundres_1__N_305[1]), .B(n38509), 
         .C(hundres_1__N_306[1]), .D(n38493), .Z(n38462)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4606_3_lut_rep_342_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3431_3_lut_rep_361_4_lut (.A(hundres_1__N_305[1]), .B(n38509), 
         .C(hundres_1__N_306[1]), .D(n38493), .Z(n38481)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i3431_3_lut_rep_361_4_lut.init = 16'hf666;
    LUT4 i4515_3_lut_4_lut (.A(n38438), .B(\hour[1] ), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4515_3_lut_4_lut.init = 16'h998a;
    LUT4 i4599_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_305[1]), .B(n38509), 
         .C(hundres_1__N_306[1]), .D(n38493), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4599_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4597_2_lut_rep_373_3_lut (.A(\hour[4] ), .B(n38557), .C(\hour[3] ), 
         .Z(n38493)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4597_2_lut_rep_373_3_lut.init = 16'hf6f6;
    LUT4 i4592_3_lut_4_lut (.A(\hour[4] ), .B(n38557), .C(\hour[3] ), 
         .D(n38481), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/bcd.v(23[6] 24[23])
    defparam i4592_3_lut_4_lut.init = 16'h6966;
    LUT4 i3544_4_lut (.A(n38428), .B(n39964), .C(hundres_0__N_313[1]), 
         .D(n38638), .Z(hundres_0__N_321)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3544_4_lut.init = 16'hb3a0;
    LUT4 i4563_2_lut_rep_312_3_lut_3_lut_4_lut (.A(n38704), .B(\hour[7] ), 
         .C(n38462), .D(hundres_1__N_306[3]), .Z(n38432)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i4563_2_lut_rep_312_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i4571_3_lut_4_lut_3_lut_4_lut (.A(n38704), .B(\hour[7] ), .C(n38462), 
         .D(hundres_1__N_306[3]), .Z(hundres_0__N_313[1])) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4571_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i3601_2_lut_rep_321_3_lut_4_lut (.A(n38704), .B(\hour[7] ), .C(n38462), 
         .D(hundres_1__N_306[3]), .Z(n38441)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3601_2_lut_rep_321_3_lut_4_lut.init = 16'h8880;
    PFUMX i28514 (.BLUT(n38763), .ALUT(n38764), .C0(n38591), .Z(n38474));
    
endmodule
//
// Verilog Description of module OLED12832
//

module OLED12832 (sys_clk_c, oled_cs_c, n9522, cnt_main, n10372, n21043, 
            n9637, n9648, \Tem_lower[3] , n9527, \Tem_lower[2] , n9528, 
            \min_tens[0] , \min_warning_tens[0] , sw1_c, n10382, hundres_0__N_321, 
            hundres_0__N_321_adj_1, \hour_ones[2] , \hour_warning_ones[2] , 
            \hour_ones[3] , \hour_warning_ones[3] , \min_ones[3] , \min_warning_ones[3] , 
            n9515, \hour_ones[1] , \hour_warning_ones[1] , \min_ones[1] , 
            \min_warning_ones[1] , n9517, \cnt[4] , \cnt[3] , \cnt[2] , 
            \cnt[1] , n2521, n37368, \cnt[0] , n10398, n10380, n10381, 
            n2692, n37365, \hour_warning_tens[0] , n38807, n38637, 
            n2693, n3074, n3452, n3071, n3827, n3449, n4205, n2696, 
            n3829, n4207, n3073, n3451, n2695, n3828, n4206, n3072, 
            n3450, n2694, n38658, \hundres_0__N_316[3] , \hundres_0__N_316[3]_adj_2 , 
            time_set, n38276, n37500, n28217, n38163, n38361, n37423, 
            n38539, n2527, n38571, n2524, warning_TEM, oled_mosi_c, 
            n2523, n38583, oled_sck_c, oled_dc_c, oled_res_c, n37263, 
            n37262, GND_net, n36720, n21041, n4, n37299, n15209, 
            n37486, n22, n37237, n37417, n37497, n3824, n4202, 
            n3068, n3446, n2690, n2691, \hundres_0__N_316[3]_adj_3 , 
            n38452, n38595, \hundres_1__N_306[3] , \hundres_0__N_316[3]_adj_4 , 
            n38594, \hundres_1__N_306[3]_adj_5 , n38453, n38272, n3830, 
            n4208, n3826, n4204, n3070, n3448, n3825, n4203, \hundres_0__N_313[1] , 
            \hundres_0__N_313[1]_adj_6 , n12120, n3069, n3447, n4_adj_7, 
            \hundres_0__N_313[0] , n38459, n4_adj_8, \hour[0] , \hour_warning[0] , 
            \min[0] , \min_warning[0] , n36717, n36718, n9645, sys_rst_n_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output oled_cs_c;
    input n9522;
    output [4:0]cnt_main;
    output n10372;
    input n21043;
    input n9637;
    input n9648;
    input \Tem_lower[3] ;
    input n9527;
    input \Tem_lower[2] ;
    input n9528;
    input \min_tens[0] ;
    input \min_warning_tens[0] ;
    input sw1_c;
    output n10382;
    input hundres_0__N_321;
    input hundres_0__N_321_adj_1;
    input \hour_ones[2] ;
    input \hour_warning_ones[2] ;
    input \hour_ones[3] ;
    input \hour_warning_ones[3] ;
    input \min_ones[3] ;
    input \min_warning_ones[3] ;
    output n9515;
    input \hour_ones[1] ;
    input \hour_warning_ones[1] ;
    input \min_ones[1] ;
    input \min_warning_ones[1] ;
    output n9517;
    output \cnt[4] ;
    output \cnt[3] ;
    output \cnt[2] ;
    output \cnt[1] ;
    output n2521;
    input n37368;
    output \cnt[0] ;
    output n10398;
    input n10380;
    output n10381;
    input n2692;
    input n37365;
    input \hour_warning_tens[0] ;
    input n38807;
    input n38637;
    input n2693;
    input n3074;
    input n3452;
    input n3071;
    input n3827;
    input n3449;
    input n4205;
    input n2696;
    input n3829;
    input n4207;
    input n3073;
    input n3451;
    input n2695;
    input n3828;
    input n4206;
    input n3072;
    input n3450;
    input n2694;
    output n38658;
    input \hundres_0__N_316[3] ;
    input \hundres_0__N_316[3]_adj_2 ;
    input time_set;
    input n38276;
    input n37500;
    input n28217;
    input n38163;
    input n38361;
    input n37423;
    output n38539;
    output n2527;
    output n38571;
    output n2524;
    input warning_TEM;
    output oled_mosi_c;
    output n2523;
    output n38583;
    output oled_sck_c;
    output oled_dc_c;
    output oled_res_c;
    input n37263;
    input n37262;
    input GND_net;
    input n36720;
    input n21041;
    input n4;
    input n37299;
    input n15209;
    input n37486;
    input n22;
    input n37237;
    input n37417;
    input n37497;
    input n3824;
    input n4202;
    input n3068;
    input n3446;
    input n2690;
    input n2691;
    input \hundres_0__N_316[3]_adj_3 ;
    input n38452;
    input n38595;
    input \hundres_1__N_306[3] ;
    input \hundres_0__N_316[3]_adj_4 ;
    input n38594;
    input \hundres_1__N_306[3]_adj_5 ;
    input n38453;
    input n38272;
    input n3830;
    input n4208;
    input n3826;
    input n4204;
    input n3070;
    input n3448;
    input n3825;
    input n4203;
    input \hundres_0__N_313[1] ;
    input \hundres_0__N_313[1]_adj_6 ;
    output n12120;
    input n3069;
    input n3447;
    output n4_adj_7;
    input \hundres_0__N_313[0] ;
    input n38459;
    output n4_adj_8;
    input \hour[0] ;
    input \hour_warning[0] ;
    input \min[0] ;
    input \min_warning[0] ;
    input n36717;
    input n36718;
    input n9645;
    input sys_rst_n_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // d:/new porject/top-xu/oled.v(51[9:19])
    
    wire n38153, n38611;
    wire [4:0]cnt_init;   // d:/new porject/top-xu/oled.v(45[22:30])
    wire [5:0]state_5__N_1310;
    
    wire sys_clk_c_enable_319, n36000;
    wire [21:0]n9837;
    wire [4:0]n9770;
    
    wire n8832;
    wire [167:0]char_167__N_1072;
    wire [167:0]char;   // d:/new porject/top-xu/oled.v(43[19:23])
    
    wire sys_clk_c_enable_298, n22086;
    wire [7:0]y_p;   // d:/new porject/top-xu/oled.v(42[12:15])
    
    wire sys_clk_c_enable_129, n28101;
    wire [7:0]x_ph;   // d:/new porject/top-xu/oled.v(42[17:21])
    wire [7:0]x_ph_7__N_725;
    wire [7:0]char_reg;   // d:/new porject/top-xu/oled.v(44[17:25])
    wire [7:0]char_reg_7__N_917;
    wire [5:0]state_back;   // d:/new porject/top-xu/oled.v(47[20:30])
    wire [5:0]state_back_5__N_999;
    
    wire sys_clk_c_enable_11;
    wire [0:0]n6331;
    wire [15:0]num_delay;   // d:/new porject/top-xu/oled.v(46[13:22])
    wire [15:0]num_delay_15__N_945;
    wire [5:0]n9650;
    wire [4:0]n9638;
    wire [3:0]n9514;
    wire [5:0]n9776;
    
    wire n36687, n38671;
    wire [15:0]cnt_delay;   // d:/new porject/top-xu/oled.v(46[24:33])
    
    wire sys_clk_c_enable_269, n22036;
    wire [15:0]n4285;
    
    wire flash_bit, rst_n_in_N_1482, flash_bit_N_1389, n38745, n38746;
    wire [5:0]state;   // d:/new porject/top-xu/oled.v(47[13:18])
    
    wire n38747;
    wire [4:0]cnt_scan;   // d:/new porject/top-xu/oled.v(45[32:40])
    
    wire sys_clk_c_enable_310, n25424;
    wire [4:0]cnt_scan_4__N_1022;
    
    wire n38662, n10, n38684, n38547, n36732, n36733, n36734, 
        n38130, n38129;
    wire [7:0]num;   // d:/new porject/top-xu/oled.v(44[12:15])
    
    wire n38131;
    wire [4:0]n9632;
    wire [3:0]n9504;
    wire [4:0]n2122;
    
    wire n38599, n6, n12, n24, sys_clk_c_enable_219;
    wire [7:0]n47;
    
    wire sys_clk_c_enable_314, n21962;
    wire [4:0]cnt_main_4__N_1012;
    
    wire sys_clk_c_enable_220, n42, n6_adj_1686, n12_adj_1687, n24_adj_1688, 
        n6_adj_1689, n12_adj_1690, n24_adj_1691, n6_adj_1692, n12_adj_1693, 
        n24_adj_1694, n25415, n39725, n32, n25407, n39, n6_adj_1695, 
        n12_adj_1696, n24_adj_1697, n38199;
    wire [15:0]cnt;   // d:/new porject/top-xu/oled.v(46[35:38])
    
    wire sys_clk_c_enable_293, n22136;
    wire [15:0]n2184;
    
    wire n6_adj_1698, n12_adj_1699, n24_adj_1700, n6_adj_1701, n12_adj_1702, 
        n24_adj_1703, n38663, n38569, n6_adj_1704, n12_adj_1705, n24_adj_1706, 
        n57, n61, n63, n38578, n6_adj_1707, n36055, n24_adj_1708, 
        n37379, n37378, n37380, n28, n23, n36689, n26, n6_adj_1709, 
        n12_adj_1710, n24_adj_1711, n6_adj_1712, n36056, n24_adj_1713, 
        n8, n20, n30, n34, n41, n50, n14292, n126, n14293, 
        n36002, n22129;
    wire [7:0]n37;
    
    wire n45, n57_adj_1715, n36618, n63_adj_1716, n6_adj_1717, n49, 
        n26_adj_1718, n28243, n37367, n37369, n38613, n38185, n38184, 
        n21026, n34326, n38413, n38686, n38752, n38751;
    wire [4:0]cnt_write;   // d:/new porject/top-xu/oled.v(45[42:51])
    
    wire n36711, n57_adj_1719, n61_adj_1720, n63_adj_1721, n38667, 
        n38767, n38766;
    wire [4:0]cnt_main_c;   // d:/new porject/top-xu/oled.v(45[12:20])
    
    wire n38770, n38769, n38773, n38772, n38776, n38724, n38775, 
        n16, n38587, n38197, n38652, n38782, n37366, n38781, n38791, 
        n38790, n38797, n38796, n37877, n37876, n37878, n38803, 
        n38802, n38603, oled_dcn_N_1364, n38675;
    wire [4:0]n4261;
    
    wire n36066, n37874, n37873, n37875, n36190, n36714, n36715, 
        n36716, n35892, n38417, n39279, n39280, n39421, n39422, 
        n38681, n38631, n14733;
    wire [7:0]x_pl;   // d:/new porject/top-xu/oled.v(42[23:27])
    
    wire n39498, n39969, n36062, n38682, n38622;
    wire [4:0]n2332;
    
    wire n38282, n38683, n39496, n39497, n39499, n39495, n39494, 
        n38285, n38573, n14, n39523, n38286, n39524, n38576, n39525, 
        n39526, n38287, n38288, n39527, n39528, n38289, n38290, 
        n38685, n39542, n39543, n38708, n38630, n21, n39540, n39541, 
        n39544, n39545, n38614, n36384, n38687, n38615, n38688, 
        n38348, n35913, n4_c, n38575, sys_clk_c_enable_241, n39968, 
        n38597, n38546, n39722, n38570, n39720, n39721, n39957, 
        n39956, n27615, n38617, n38619, n39760, n39761, n38550, 
        n39759, n38695, n38728;
    wire [21:0]n9784;
    
    wire n36719, n64, n9, n38593, n2323, n38633, n38552, n21994, 
        n8_adj_1725, n36169, n7, n28205, n38524, sys_clk_c_enable_252, 
        n39955, n38694, n38727, n38580, n9346, n38600, n9_adj_1726, 
        n38715, n16_adj_1727, n36304, n19, n38522, n16_adj_1728, 
        n38612;
    wire [15:0]num_delay_15__N_1256;
    
    wire n38624, n38186;
    wire [7:0]char_reg_7__N_1240;
    
    wire n34004, n17, n16_adj_1729, n36640, n3549;
    wire [7:0]num_7__N_1056;
    wire [7:0]n1575;
    
    wire n4_adj_1730, n36697, n16_adj_1731, n14151, n14_adj_1733, 
        n16_adj_1734, n36484, n36112, n16_adj_1735, n38506, n37424, 
        n39723, n38656, n39945, n38483, n38455, n38555, n6_adj_1736, 
        n36819, n44_adj_1737, n38294, n19_adj_1738, n16_adj_1739, 
        n16_adj_1740, n16_adj_1741, n38414, n8_adj_1742, n16_adj_1743, 
        n16_adj_1744, n16_adj_1745, n38672, n1, n33494, n16_adj_1746, 
        n16_adj_1747, n37729, n16_adj_1748, n16_adj_1749, n16_adj_1750, 
        n24_adj_1751, n16_adj_1752, n16_adj_1753, n16_adj_1754, n16_adj_1755, 
        n16_adj_1756, n38560;
    wire [4:0]n11;
    
    wire n27, n8_adj_1758, n37879, n64_adj_1759, sys_clk_c_enable_246, 
        n37727, n37241, n28213, n35969, n36542, n15;
    wire [5:0]n2234;
    
    wire n6_adj_1760, n38585, n38563, n4283, sys_clk_c_enable_276, 
        n25434, n38584, n13, n38699, n38700, n35930, n39529, n64_adj_1761, 
        n28211, n37745, n37744, n37746, sys_clk_c_enable_253, n35516, 
        sys_clk_c_enable_254;
    wire [0:0]n6367;
    
    wire n36114, n33426, n36730, n36729, n36071, n1477, n38629, 
        n38283, n38284, n29, n38701, n6_adj_1762, n37731, n3795, 
        n21_adj_1763, n37730, n37675, n38707, n20789, n39546, n64_adj_1764, 
        n33453, n37264, n5, n27797, n33311;
    wire [15:0]n2158;
    
    wire n38545, n36261, n38729, n37301, n37302, n37300, n33310, 
        n33309, n36100, n33234, n39500, n64_adj_1765, n64_adj_1766, 
        n2, n33308, n64_adj_1767, n33307, n38198, n20568, n36299, 
        n19899, n38164, n19_adj_1768, n20_adj_1769, n18, n38349, 
        n20675, n16_adj_1771, n20570, n38536, n37726, n33306, n36153, 
        n38605, n36001, n6_adj_1772, n33233, n39281, n33232, n36341, 
        n27610, n38726, n38632, n16_adj_1774, n59;
    wire [7:0]x_ph_7__N_1040;
    
    wire n38577, n33305, n33304, n33231, n36009, n15_adj_1775, n33230, 
        n33229, n35998, n36789, n33228, n33227, n36428, n33226, 
        n33225, n38641, n6_adj_1776, n33224, n36712, n38521, n19_adj_1777, 
        n69, n36103, n21989, n38528, n38774, n33223, n39958, n38804, 
        n33222, n33221, n36713, n36742, n38586, n38132, n33220, 
        n33219, n33371, n33370, n33369, n33368, n38196;
    wire [15:0]n9674;
    
    wire n13_adj_1785;
    
    PFUMX i28316 (.BLUT(n38153), .ALUT(n38611), .C0(cnt_init[0]), .Z(state_5__N_1310[1]));
    FD1P3AX cnt_init_i0_i0 (.D(n36000), .SP(sys_clk_c_enable_319), .CK(sys_clk_c), 
            .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    PFUMX mux_2500_i3 (.BLUT(n9837[2]), .ALUT(n9770[2]), .C0(n8832), .Z(char_167__N_1072[2]));
    FD1P3IX char_i0_i1 (.D(char_167__N_1072[1]), .SP(sys_clk_c_enable_298), 
            .CD(n22086), .CK(sys_clk_c), .Q(char[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_i0_i1.GSR = "ENABLED";
    PFUMX mux_2500_i4 (.BLUT(n9837[3]), .ALUT(n9770[3]), .C0(n8832), .Z(char_167__N_1072[3]));
    FD1P3AX y_p_i0_i0 (.D(n28101), .SP(sys_clk_c_enable_129), .CK(sys_clk_c), 
            .Q(y_p[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam y_p_i0_i0.GSR = "ENABLED";
    FD1S3AX x_ph_i0 (.D(x_ph_7__N_725[0]), .CK(sys_clk_c), .Q(x_ph[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam x_ph_i0.GSR = "ENABLED";
    FD1S3AX char_reg_i0 (.D(char_reg_7__N_917[0]), .CK(sys_clk_c), .Q(char_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_reg_i0.GSR = "ENABLED";
    FD1S3AY state_back_i0 (.D(state_back_5__N_999[0]), .CK(sys_clk_c), .Q(state_back[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_back_i0.GSR = "ENABLED";
    FD1P3AY oled_csn_334 (.D(n6331[0]), .SP(sys_clk_c_enable_11), .CK(sys_clk_c), 
            .Q(oled_cs_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam oled_csn_334.GSR = "ENABLED";
    FD1S3AY num_delay_i0 (.D(num_delay_15__N_945[0]), .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i0.GSR = "ENABLED";
    PFUMX mux_2428_i3 (.BLUT(n9522), .ALUT(n9650[2]), .C0(cnt_main[2]), 
          .Z(n9638[2]));
    FD1P3IX char_i0_i2 (.D(char_167__N_1072[2]), .SP(sys_clk_c_enable_298), 
            .CD(n22086), .CK(sys_clk_c), .Q(char[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_i0_i2.GSR = "ENABLED";
    FD1P3IX char_i0_i3 (.D(char_167__N_1072[3]), .SP(sys_clk_c_enable_298), 
            .CD(n22086), .CK(sys_clk_c), .Q(char[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_i0_i3.GSR = "ENABLED";
    FD1P3IX char_i0_i5 (.D(char_167__N_1072[5]), .SP(sys_clk_c_enable_298), 
            .CD(n22086), .CK(sys_clk_c), .Q(char[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_i0_i5.GSR = "ENABLED";
    L6MUX21 mux_2500_i1 (.D0(n9837[0]), .D1(n9770[0]), .SD(n8832), .Z(char_167__N_1072[0]));
    PFUMX mux_2497_i1 (.BLUT(n9514[0]), .ALUT(n9776[0]), .C0(n36687), 
          .Z(n9837[0]));
    LUT4 i2889_2_lut_rep_551 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n38671)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i2889_2_lut_rep_551.init = 16'h8888;
    FD1P3IX cnt_delay_i0_i5 (.D(n4285[5]), .SP(sys_clk_c_enable_269), .CD(n22036), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1S3IX flash_bit_319 (.D(flash_bit_N_1389), .CK(clk_in_1Hz), .CD(rst_n_in_N_1482), 
            .Q(flash_bit)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(59[8] 64[5])
    defparam flash_bit_319.GSR = "DISABLED";
    PFUMX i28502 (.BLUT(n38745), .ALUT(n38746), .C0(state[4]), .Z(n38747));
    FD1P3IX cnt_scan_i0_i1 (.D(cnt_scan_4__N_1022[1]), .SP(sys_clk_c_enable_310), 
            .CD(n25424), .CK(sys_clk_c), .Q(cnt_scan[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_scan_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n4285[6]), .SP(sys_clk_c_enable_269), .CD(n22036), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i7 (.D(n4285[7]), .SP(sys_clk_c_enable_269), .CD(n22036), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    LUT4 i18222_2_lut_rep_542 (.A(state[5]), .B(state[4]), .Z(n38662)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18222_2_lut_rep_542.init = 16'heeee;
    FD1P3IX cnt_delay_i0_i8 (.D(n4285[8]), .SP(sys_clk_c_enable_269), .CD(n22036), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n4285[9]), .SP(sys_clk_c_enable_269), .CD(n22036), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    LUT4 i18654_3_lut (.A(n10372), .B(cnt_main[0]), .C(n21043), .Z(n9650[2])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i18654_3_lut.init = 16'h4848;
    LUT4 i1_2_lut_rep_427_3_lut_3_lut_4_lut (.A(state[5]), .B(state[4]), 
         .C(n10), .D(n38684), .Z(n38547)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_427_3_lut_3_lut_4_lut.init = 16'h0010;
    PFUMX i27425 (.BLUT(n36732), .ALUT(n36733), .C0(cnt_scan[1]), .Z(n36734));
    PFUMX i28302 (.BLUT(n38130), .ALUT(n38129), .C0(num[1]), .Z(n38131));
    FD1P3IX cnt_delay_i0_i10 (.D(n4285[10]), .SP(sys_clk_c_enable_269), 
            .CD(n22036), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    PFUMX mux_2486_i1 (.BLUT(n9637), .ALUT(n9648), .C0(cnt_main[0]), .Z(n9770[0]));
    PFUMX mux_2427_i4 (.BLUT(\Tem_lower[3] ), .ALUT(n9527), .C0(cnt_main[1]), 
          .Z(n9632[3]));
    PFUMX mux_2427_i3 (.BLUT(\Tem_lower[2] ), .ALUT(n9528), .C0(cnt_main[1]), 
          .Z(n9632[2]));
    PFUMX mux_2929_i1 (.BLUT(\min_tens[0] ), .ALUT(\min_warning_tens[0] ), 
          .C0(sw1_c), .Z(n10382));
    FD1P3IX cnt_delay_i0_i11 (.D(n4285[11]), .SP(sys_clk_c_enable_269), 
            .CD(n22036), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    PFUMX mux_3352_i1 (.BLUT(hundres_0__N_321), .ALUT(hundres_0__N_321_adj_1), 
          .C0(sw1_c), .Z(n10372));
    PFUMX mux_2321_i3 (.BLUT(\hour_ones[2] ), .ALUT(\hour_warning_ones[2] ), 
          .C0(sw1_c), .Z(n9504[2]));
    PFUMX mux_2321_i4 (.BLUT(\hour_ones[3] ), .ALUT(\hour_warning_ones[3] ), 
          .C0(sw1_c), .Z(n9504[3]));
    PFUMX mux_2323_i4 (.BLUT(\min_ones[3] ), .ALUT(\min_warning_ones[3] ), 
          .C0(sw1_c), .Z(n9515));
    PFUMX mux_2321_i2 (.BLUT(\hour_ones[1] ), .ALUT(\hour_warning_ones[1] ), 
          .C0(sw1_c), .Z(n9504[1]));
    LUT4 i3862_2_lut_3_lut (.A(cnt_init[0]), .B(cnt_init[1]), .C(cnt_init[2]), 
         .Z(n2122[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i3862_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_479_3_lut (.A(state[5]), .B(state[4]), .C(state[3]), 
         .Z(n38599)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_479_3_lut.init = 16'hfefe;
    PFUMX mux_2323_i2 (.BLUT(\min_ones[1] ), .ALUT(\min_warning_ones[1] ), 
          .C0(sw1_c), .Z(n9517));
    PFUMX i47 (.BLUT(n6), .ALUT(n12), .C0(state[3]), .Z(n24));
    FD1P3AX num_3023__i0 (.D(n47[0]), .SP(sys_clk_c_enable_219), .CK(sys_clk_c), 
            .Q(num[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023__i0.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i0 (.D(cnt_main_4__N_1012[0]), .SP(sys_clk_c_enable_314), 
            .CD(n21962), .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    FD1P3AY state_i0_i0 (.D(n42), .SP(sys_clk_c_enable_220), .CK(sys_clk_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_i0_i0.GSR = "ENABLED";
    PFUMX i47_adj_15 (.BLUT(n6_adj_1686), .ALUT(n12_adj_1687), .C0(state[3]), 
          .Z(n24_adj_1688));
    PFUMX i47_adj_16 (.BLUT(n6_adj_1689), .ALUT(n12_adj_1690), .C0(state[3]), 
          .Z(n24_adj_1691));
    FD1P3IX cnt_delay_i0_i12 (.D(n4285[12]), .SP(sys_clk_c_enable_269), 
            .CD(n22036), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    PFUMX i47_adj_17 (.BLUT(n6_adj_1692), .ALUT(n12_adj_1693), .C0(state[3]), 
          .Z(n24_adj_1694));
    FD1P3IX state_i0_i5 (.D(n39725), .SP(sys_clk_c_enable_220), .CD(n25415), 
            .CK(sys_clk_c), .Q(state[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_i0_i5.GSR = "ENABLED";
    FD1P3IX state_i0_i4 (.D(n32), .SP(sys_clk_c_enable_220), .CD(n25415), 
            .CK(sys_clk_c), .Q(state[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i13 (.D(n4285[13]), .SP(sys_clk_c_enable_269), 
            .CD(n22036), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    FD1P3IX state_i0_i3 (.D(n39), .SP(sys_clk_c_enable_220), .CD(n25407), 
            .CK(sys_clk_c), .Q(state[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n4285[14]), .SP(sys_clk_c_enable_269), 
            .CD(n22036), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    PFUMX i47_adj_18 (.BLUT(n6_adj_1695), .ALUT(n12_adj_1696), .C0(state[3]), 
          .Z(n24_adj_1697));
    FD1P3IX state_i0_i2 (.D(n38199), .SP(sys_clk_c_enable_220), .CD(n25407), 
            .CK(sys_clk_c), .Q(state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_i0_i15 (.D(n2184[15]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i15.GSR = "ENABLED";
    FD1P3IX cnt_i0_i14 (.D(n2184[14]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i14.GSR = "ENABLED";
    FD1P3IX cnt_i0_i13 (.D(n2184[13]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i13.GSR = "ENABLED";
    FD1P3IX cnt_i0_i12 (.D(n2184[12]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i12.GSR = "ENABLED";
    PFUMX i47_adj_19 (.BLUT(n6_adj_1698), .ALUT(n12_adj_1699), .C0(state[3]), 
          .Z(n24_adj_1700));
    FD1P3IX cnt_delay_i0_i15 (.D(n4285[15]), .SP(sys_clk_c_enable_269), 
            .CD(n22036), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    PFUMX i47_adj_20 (.BLUT(n6_adj_1701), .ALUT(n12_adj_1702), .C0(state[3]), 
          .Z(n24_adj_1703));
    LUT4 state_5__I_0_343_i11_2_lut_rep_449_3_lut_4_lut (.A(state[5]), .B(state[4]), 
         .C(n38663), .D(state[3]), .Z(n38569)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam state_5__I_0_343_i11_2_lut_rep_449_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX cnt_i0_i11 (.D(n2184[11]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i11.GSR = "ENABLED";
    PFUMX i47_adj_21 (.BLUT(n6_adj_1704), .ALUT(n12_adj_1705), .C0(state[3]), 
          .Z(n24_adj_1706));
    FD1P3IX cnt_scan_i0_i2 (.D(cnt_scan_4__N_1022[2]), .SP(sys_clk_c_enable_310), 
            .CD(n25424), .CK(sys_clk_c), .Q(cnt_scan[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_scan_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_i0_i10 (.D(n2184[10]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i10.GSR = "ENABLED";
    FD1P3IX cnt_i0_i9 (.D(n2184[9]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i9.GSR = "ENABLED";
    LUT4 i24_2_lut (.A(state[2]), .B(state[3]), .Z(n10)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut.init = 16'h6666;
    PFUMX i91 (.BLUT(n57), .ALUT(n61), .C0(cnt_scan[3]), .Z(n63));
    LUT4 i1_2_lut_rep_458_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[2]), 
         .D(state[3]), .Z(n38578)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_458_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX cnt_i0_i8 (.D(n2184[8]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_i0_i7 (.D(n2184[7]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i7.GSR = "ENABLED";
    FD1P3IX cnt_i0_i6 (.D(n2184[6]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i6.GSR = "ENABLED";
    PFUMX i47_adj_22 (.BLUT(n6_adj_1707), .ALUT(n36055), .C0(state[3]), 
          .Z(n24_adj_1708));
    FD1P3IX cnt_i0_i5 (.D(n2184[5]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i5.GSR = "ENABLED";
    PFUMX i27902 (.BLUT(n37379), .ALUT(n37378), .C0(sw1_c), .Z(n37380));
    PFUMX i44 (.BLUT(n28), .ALUT(n23), .C0(n36689), .Z(n26));
    PFUMX i47_adj_23 (.BLUT(n6_adj_1709), .ALUT(n12_adj_1710), .C0(state[3]), 
          .Z(n24_adj_1711));
    FD1P3IX cnt_scan_i0_i3 (.D(cnt_scan_4__N_1022[3]), .SP(sys_clk_c_enable_310), 
            .CD(n25424), .CK(sys_clk_c), .Q(cnt_scan[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_scan_i0_i3.GSR = "ENABLED";
    PFUMX i47_adj_24 (.BLUT(n6_adj_1712), .ALUT(n36056), .C0(state[3]), 
          .Z(n24_adj_1713));
    FD1P3IX cnt_i0_i4 (.D(n2184[4]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(\cnt[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_i0_i3 (.D(n2184[3]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(\cnt[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i3.GSR = "ENABLED";
    PFUMX i35 (.BLUT(n8), .ALUT(n20), .C0(state[3]), .Z(n30));
    PFUMX i74 (.BLUT(n34), .ALUT(n41), .C0(state[5]), .Z(n50));
    FD1P3IX cnt_i0_i2 (.D(n2184[2]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(\cnt[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_i0_i1 (.D(n2184[1]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(\cnt[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    PFUMX i5314 (.BLUT(n14292), .ALUT(n126), .C0(n2521), .Z(n14293));
    FD1P3AX cnt_scan_i0_i4 (.D(n36002), .SP(sys_clk_c_enable_310), .CK(sys_clk_c), 
            .Q(cnt_scan[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_scan_i0_i4.GSR = "ENABLED";
    FD1P3IX num_3023__i7 (.D(n37[7]), .SP(sys_clk_c_enable_219), .CD(n22129), 
            .CK(sys_clk_c), .Q(num[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023__i7.GSR = "ENABLED";
    FD1P3IX num_3023__i6 (.D(n37[6]), .SP(sys_clk_c_enable_219), .CD(n22129), 
            .CK(sys_clk_c), .Q(num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023__i6.GSR = "ENABLED";
    PFUMX i91_adj_25 (.BLUT(n45), .ALUT(n57_adj_1715), .C0(n36618), .Z(n63_adj_1716));
    PFUMX i16365 (.BLUT(n6_adj_1717), .ALUT(n49), .C0(state[3]), .Z(n26_adj_1718));
    FD1P3AX y_p_i0_i4 (.D(n28243), .SP(sys_clk_c_enable_129), .CK(sys_clk_c), 
            .Q(y_p[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam y_p_i0_i4.GSR = "ENABLED";
    PFUMX i27898 (.BLUT(n37368), .ALUT(n37367), .C0(cnt_main[2]), .Z(n37369));
    LUT4 i1_2_lut_rep_493_3_lut (.A(state[5]), .B(state[4]), .C(state[1]), 
         .Z(n38613)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_493_3_lut.init = 16'hfefe;
    LUT4 cnt_0__bdd_4_lut_28459 (.A(\cnt[0] ), .B(\cnt[3] ), .C(\cnt[2] ), 
         .D(\cnt[4] ), .Z(n38185)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C)+!B (D)))) */ ;
    defparam cnt_0__bdd_4_lut_28459.init = 16'h041d;
    LUT4 cnt_0__bdd_3_lut_28460 (.A(\cnt[3] ), .B(\cnt[2] ), .C(\cnt[4] ), 
         .Z(n38184)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam cnt_0__bdd_3_lut_28460.init = 16'h0404;
    LUT4 i11925_3_lut (.A(n10398), .B(n10380), .C(n10381), .Z(n21026)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i11925_3_lut.init = 16'ha8a8;
    LUT4 i2_3_lut (.A(n26), .B(state[1]), .C(state[4]), .Z(n34326)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i2_3_lut.init = 16'h0202;
    LUT4 i97_4_lut_4_lut_4_lut (.A(cnt_scan[0]), .B(x_ph[4]), .C(cnt_scan[2]), 
         .D(n2692), .Z(n45)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;   // d:/new porject/top-xu/oled.v(141[24:39])
    defparam i97_4_lut_4_lut_4_lut.init = 16'ha404;
    LUT4 n15_bdd_4_lut_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(y_p[0]), 
         .D(x_ph[0]), .Z(n38413)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(141[24:39])
    defparam n15_bdd_4_lut_4_lut_4_lut.init = 16'h5410;
    LUT4 i4_4_lut_then_4_lut (.A(state[1]), .B(state[5]), .C(n38686), 
         .D(state[4]), .Z(n38752)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i4_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i4_4_lut_else_4_lut (.A(state[1]), .B(state[5]), .C(n38686), 
         .D(state[4]), .Z(n38751)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i4_4_lut_else_4_lut.init = 16'h0100;
    FD1S3AX num_delay_i15 (.D(num_delay_15__N_945[15]), .CK(sys_clk_c), 
            .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i15.GSR = "ENABLED";
    FD1S3AX num_delay_i14 (.D(num_delay_15__N_945[14]), .CK(sys_clk_c), 
            .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i14.GSR = "ENABLED";
    FD1S3AX num_delay_i13 (.D(num_delay_15__N_945[13]), .CK(sys_clk_c), 
            .Q(num_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i13.GSR = "ENABLED";
    FD1S3AX num_delay_i12 (.D(num_delay_15__N_945[12]), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i12.GSR = "ENABLED";
    FD1S3AX num_delay_i11 (.D(num_delay_15__N_945[11]), .CK(sys_clk_c), 
            .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i11.GSR = "ENABLED";
    FD1S3AX num_delay_i10 (.D(num_delay_15__N_945[10]), .CK(sys_clk_c), 
            .Q(num_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i10.GSR = "ENABLED";
    FD1S3AX num_delay_i9 (.D(num_delay_15__N_945[9]), .CK(sys_clk_c), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i9.GSR = "ENABLED";
    FD1S3AX num_delay_i8 (.D(num_delay_15__N_945[8]), .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i8.GSR = "ENABLED";
    LUT4 i27402_3_lut (.A(char_reg[7]), .B(char_reg[6]), .C(cnt_write[1]), 
         .Z(n36711)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27402_3_lut.init = 16'hcaca;
    FD1S3AX num_delay_i7 (.D(num_delay_15__N_945[7]), .CK(sys_clk_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i7.GSR = "ENABLED";
    FD1S3AX num_delay_i6 (.D(num_delay_15__N_945[6]), .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i6.GSR = "ENABLED";
    FD1S3AX num_delay_i5 (.D(num_delay_15__N_945[5]), .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i5.GSR = "ENABLED";
    FD1S3AX num_delay_i4 (.D(num_delay_15__N_945[4]), .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i4.GSR = "ENABLED";
    FD1S3AX num_delay_i3 (.D(num_delay_15__N_945[3]), .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i3.GSR = "ENABLED";
    FD1S3AY num_delay_i2 (.D(num_delay_15__N_945[2]), .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i2.GSR = "ENABLED";
    FD1S3AX num_delay_i1 (.D(num_delay_15__N_945[1]), .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam num_delay_i1.GSR = "ENABLED";
    FD1S3AX state_back_i5 (.D(state_back_5__N_999[5]), .CK(sys_clk_c), .Q(state_back[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_back_i5.GSR = "ENABLED";
    PFUMX i91_adj_26 (.BLUT(n57_adj_1719), .ALUT(n61_adj_1720), .C0(cnt_scan[3]), 
          .Z(n63_adj_1721));
    LUT4 n36319_bdd_4_lut_then_4_lut (.A(char[19]), .B(n38667), .C(char[8]), 
         .D(num[0]), .Z(n38767)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam n36319_bdd_4_lut_then_4_lut.init = 16'h2230;
    LUT4 n36319_bdd_4_lut_else_4_lut (.A(char[0]), .B(n38667), .C(char[8]), 
         .D(num[0]), .Z(n38766)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n36319_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i1_4_lut_then_4_lut (.A(cnt_main_c[4]), .B(cnt_main[0]), .C(cnt_main[1]), 
         .D(cnt_main_c[3]), .Z(n38770)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'hfeaa;
    LUT4 i1_4_lut_else_4_lut (.A(cnt_main_c[4]), .B(cnt_main[0]), .C(cnt_main[1]), 
         .D(cnt_main_c[3]), .Z(n38769)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'haaab;
    LUT4 i27237_2_lut_3_lut_4_lut_then_3_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[1]), .Z(n38773)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i27237_2_lut_3_lut_4_lut_then_3_lut.init = 16'hfefe;
    LUT4 i27237_2_lut_3_lut_4_lut_else_3_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[2]), .D(cnt_init[1]), .Z(n38772)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i27237_2_lut_3_lut_4_lut_else_3_lut.init = 16'hffef;
    LUT4 n37750_bdd_3_lut_then_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(sw1_c), .Z(n38776)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n37750_bdd_3_lut_then_3_lut.init = 16'h2020;
    FD1S3AX state_back_i4 (.D(state_back_5__N_999[4]), .CK(sys_clk_c), .Q(state_back[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_back_i4.GSR = "ENABLED";
    FD1S3AX state_back_i3 (.D(state_back_5__N_999[3]), .CK(sys_clk_c), .Q(state_back[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_back_i3.GSR = "ENABLED";
    FD1S3AX state_back_i2 (.D(state_back_5__N_999[2]), .CK(sys_clk_c), .Q(state_back[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_back_i2.GSR = "ENABLED";
    FD1S3AX state_back_i1 (.D(state_back_5__N_999[1]), .CK(sys_clk_c), .Q(state_back[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_back_i1.GSR = "ENABLED";
    FD1S3AX char_reg_i7 (.D(char_reg_7__N_917[7]), .CK(sys_clk_c), .Q(char_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_reg_i7.GSR = "ENABLED";
    FD1S3AX char_reg_i6 (.D(char_reg_7__N_917[6]), .CK(sys_clk_c), .Q(char_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_reg_i6.GSR = "ENABLED";
    FD1S3AX char_reg_i5 (.D(char_reg_7__N_917[5]), .CK(sys_clk_c), .Q(char_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_reg_i5.GSR = "ENABLED";
    FD1S3AX char_reg_i4 (.D(char_reg_7__N_917[4]), .CK(sys_clk_c), .Q(char_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_reg_i4.GSR = "ENABLED";
    FD1S3AX char_reg_i3 (.D(char_reg_7__N_917[3]), .CK(sys_clk_c), .Q(char_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_reg_i3.GSR = "ENABLED";
    FD1S3AX char_reg_i2 (.D(char_reg_7__N_917[2]), .CK(sys_clk_c), .Q(char_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_reg_i2.GSR = "ENABLED";
    FD1S3AX char_reg_i1 (.D(char_reg_7__N_917[1]), .CK(sys_clk_c), .Q(char_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_reg_i1.GSR = "ENABLED";
    FD1S3AX x_ph_i4 (.D(x_ph_7__N_725[4]), .CK(sys_clk_c), .Q(x_ph[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam x_ph_i4.GSR = "ENABLED";
    FD1P3IX num_3023__i5 (.D(n37[5]), .SP(sys_clk_c_enable_219), .CD(n22129), 
            .CK(sys_clk_c), .Q(num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023__i5.GSR = "ENABLED";
    FD1P3IX num_3023__i4 (.D(n37[4]), .SP(sys_clk_c_enable_219), .CD(n22129), 
            .CK(sys_clk_c), .Q(num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023__i4.GSR = "ENABLED";
    FD1S3AX x_ph_i2 (.D(x_ph_7__N_725[2]), .CK(sys_clk_c), .Q(x_ph[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam x_ph_i2.GSR = "ENABLED";
    FD1S3AX x_ph_i1 (.D(x_ph_7__N_725[1]), .CK(sys_clk_c), .Q(x_ph[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam x_ph_i1.GSR = "ENABLED";
    LUT4 n37750_bdd_3_lut_else_3_lut (.A(cnt_main[2]), .B(n38724), .C(cnt_main[0]), 
         .D(sw1_c), .Z(n38775)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !((C (D))+!B))) */ ;
    defparam n37750_bdd_3_lut_else_3_lut.init = 16'h7939;
    LUT4 n16_bdd_4_lut_28382 (.A(n16), .B(n38587), .C(state[1]), .D(state[2]), 
         .Z(n38197)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;
    defparam n16_bdd_4_lut_28382.init = 16'h0a30;
    LUT4 n38215_bdd_4_lut_then_4_lut (.A(char[19]), .B(n38652), .C(num[0]), 
         .D(num[1]), .Z(n38782)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam n38215_bdd_4_lut_then_4_lut.init = 16'h0002;
    PFUMX i27896 (.BLUT(n37365), .ALUT(\hour_warning_tens[0] ), .C0(sw1_c), 
          .Z(n37366));
    LUT4 n38215_bdd_4_lut_else_4_lut (.A(char[8]), .B(n38652), .C(num[0]), 
         .D(num[1]), .Z(n38781)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam n38215_bdd_4_lut_else_4_lut.init = 16'h2220;
    LUT4 i1_4_lut_then_3_lut (.A(cnt_main_c[4]), .B(cnt_main_c[3]), .C(cnt_main[2]), 
         .Z(n38791)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i1_4_lut_then_3_lut.init = 16'h1515;
    LUT4 i1_4_lut_else_3_lut (.A(cnt_main_c[4]), .B(cnt_main[1]), .C(cnt_main_c[3]), 
         .D(cnt_main[2]), .Z(n38790)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C+(D))))) */ ;
    defparam i1_4_lut_else_3_lut.init = 16'h1554;
    LUT4 n7_bdd_4_lut_then_4_lut (.A(cnt_main[1]), .B(cnt_main_c[4]), .C(cnt_main_c[3]), 
         .D(cnt_main[0]), .Z(n38797)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam n7_bdd_4_lut_then_4_lut.init = 16'h0210;
    LUT4 n7_bdd_4_lut_else_4_lut (.A(cnt_main[1]), .B(cnt_main_c[4]), .C(cnt_main_c[3]), 
         .Z(n38796)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n7_bdd_4_lut_else_4_lut.init = 16'h2020;
    PFUMX i28151 (.BLUT(n37877), .ALUT(n37876), .C0(cnt_scan[3]), .Z(n37878));
    LUT4 i27201_4_lut_4_lut_then_3_lut (.A(cnt_init[4]), .B(cnt_init[3]), 
         .C(cnt_init[2]), .Z(n38803)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/oled.v(132[8:12])
    defparam i27201_4_lut_4_lut_then_3_lut.init = 16'hfefe;
    LUT4 i27201_4_lut_4_lut_else_3_lut (.A(cnt_init[0]), .B(cnt_init[4]), 
         .C(cnt_init[3]), .D(cnt_init[2]), .Z(n38802)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/new porject/top-xu/oled.v(132[8:12])
    defparam i27201_4_lut_4_lut_else_3_lut.init = 16'hfefc;
    LUT4 n8_bdd_4_lut (.A(n38603), .B(state[1]), .C(n38611), .D(oled_dcn_N_1364), 
         .Z(n38153)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;
    defparam n8_bdd_4_lut.init = 16'hc444;
    LUT4 i3929_2_lut_rep_555 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n38675)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(162[25:41])
    defparam i3929_2_lut_rep_555.init = 16'h8888;
    LUT4 i8_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n4261[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(162[25:41])
    defparam i8_2_lut_3_lut.init = 16'h7878;
    LUT4 i7_2_lut_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n4261[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(162[25:41])
    defparam i7_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3AX char_i0_i19 (.D(n36066), .SP(sys_clk_c_enable_298), .CK(sys_clk_c), 
            .Q(char[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_i0_i19.GSR = "ENABLED";
    PFUMX i28149 (.BLUT(n37874), .ALUT(n37873), .C0(cnt_scan[1]), .Z(n37875));
    FD1P3AX char_i0_i11 (.D(n36190), .SP(sys_clk_c_enable_298), .CK(sys_clk_c), 
            .Q(char[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_i0_i11.GSR = "ENABLED";
    PFUMX i27407 (.BLUT(n36714), .ALUT(n36715), .C0(cnt_write[1]), .Z(n36716));
    FD1P3AX char_i0_i8 (.D(n35892), .SP(sys_clk_c_enable_298), .CK(sys_clk_c), 
            .Q(char[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_i0_i8.GSR = "ENABLED";
    FD1P3AX char_i0_i4 (.D(n38417), .SP(sys_clk_c_enable_298), .CK(sys_clk_c), 
            .Q(char[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_i0_i4.GSR = "ENABLED";
    FD1P3IX num_3023__i3 (.D(n37[3]), .SP(sys_clk_c_enable_219), .CD(n22129), 
            .CK(sys_clk_c), .Q(num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023__i3.GSR = "ENABLED";
    FD1P3IX num_3023__i1 (.D(n37[1]), .SP(sys_clk_c_enable_219), .CD(n22129), 
            .CK(sys_clk_c), .Q(num[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023__i1.GSR = "ENABLED";
    LUT4 mux_3480_i1_4_lut (.A(n38807), .B(n37380), .C(cnt_main[2]), .D(n38637), 
         .Z(n10398)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3480_i1_4_lut.init = 16'hcac0;
    LUT4 n39279_bdd_2_lut (.A(n39279), .B(cnt_scan[4]), .Z(n39280)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n39279_bdd_2_lut.init = 16'heeee;
    LUT4 cnt_scan_4__bdd_4_lut_28911 (.A(cnt_scan[1]), .B(cnt_scan[2]), 
         .C(cnt_scan[3]), .D(cnt_scan[0]), .Z(n39279)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam cnt_scan_4__bdd_4_lut_28911.init = 16'hc2c0;
    LUT4 cnt_main_1__bdd_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main_c[3]), .Z(n39421)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam cnt_main_1__bdd_4_lut.init = 16'he001;
    LUT4 n39421_bdd_2_lut (.A(n39421), .B(cnt_main_c[4]), .Z(n39422)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n39421_bdd_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_561 (.A(cnt_write[3]), .B(cnt_write[1]), .Z(n38681)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam i1_2_lut_rep_561.init = 16'heeee;
    LUT4 i1_2_lut_rep_511_3_lut (.A(cnt_write[3]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n38631)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam i1_2_lut_rep_511_3_lut.init = 16'hfefe;
    LUT4 mux_2487_i1_4_lut_4_lut (.A(n38724), .B(n14733), .C(n9504[0]), 
         .D(n37369), .Z(n9776[0])) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_2487_i1_4_lut_4_lut.init = 16'hea40;
    LUT4 n2693_bdd_4_lut_28963 (.A(n2693), .B(x_pl[3]), .C(cnt_scan[2]), 
         .D(cnt_scan[1]), .Z(n39498)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n2693_bdd_4_lut_28963.init = 16'ha00c;
    LUT4 i2_4_lut_4_lut_4_lut_then_4_lut (.A(cnt_main[1]), .B(cnt_main_c[4]), 
         .C(cnt_main_c[3]), .D(cnt_main[2]), .Z(n39969)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(105[8:12])
    defparam i2_4_lut_4_lut_4_lut_then_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut (.A(cnt_main[1]), .B(cnt_main_c[4]), .C(cnt_main[0]), 
         .Z(n36062)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_562 (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n38682)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_562.init = 16'h8888;
    LUT4 i3900_2_lut_rep_502_3_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .Z(n38622)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3900_2_lut_rep_502_3_lut.init = 16'h8080;
    LUT4 i3898_2_lut_3_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .Z(n2332[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i3898_2_lut_3_lut.init = 16'h7878;
    LUT4 n36742_bdd_3_lut_28469 (.A(n3074), .B(n3452), .C(cnt_scan[0]), 
         .Z(n38282)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36742_bdd_3_lut_28469.init = 16'hcaca;
    LUT4 i3905_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n2332[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i3905_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i18231_2_lut_rep_563 (.A(cnt_init[4]), .B(cnt_init[3]), .Z(n38683)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18231_2_lut_rep_563.init = 16'heeee;
    LUT4 n39496_bdd_2_lut (.A(n39496), .B(cnt_scan[2]), .Z(n39497)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n39496_bdd_2_lut.init = 16'h2222;
    LUT4 gnd_bdd_2_lut_28895 (.A(n39498), .B(cnt_scan[0]), .Z(n39499)) /* synthesis lut_function=(A (B)) */ ;
    defparam gnd_bdd_2_lut_28895.init = 16'h8888;
    LUT4 i2_3_lut_rep_491_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), .C(cnt_init[2]), 
         .D(cnt_init[1]), .Z(n38611)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_rep_491_4_lut.init = 16'h0010;
    LUT4 n3071_bdd_3_lut_28959 (.A(n3071), .B(n3827), .C(cnt_scan[1]), 
         .Z(n39495)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3071_bdd_3_lut_28959.init = 16'hcaca;
    LUT4 n3071_bdd_3_lut_28880 (.A(n3449), .B(n4205), .C(cnt_scan[1]), 
         .Z(n39494)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3071_bdd_3_lut_28880.init = 16'hcaca;
    LUT4 n37692_bdd_3_lut_28411 (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(n2696), 
         .Z(n38285)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n37692_bdd_3_lut_28411.init = 16'h8080;
    LUT4 i1_4_lut_4_lut (.A(state[3]), .B(state[0]), .C(n38573), .D(state_back[1]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_4_lut.init = 16'hd5c0;
    LUT4 i18332_2_lut_rep_564 (.A(state[1]), .B(state[0]), .Z(n38684)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18332_2_lut_rep_564.init = 16'heeee;
    LUT4 n3073_bdd_3_lut_28892 (.A(n3829), .B(n4207), .C(cnt_scan[0]), 
         .Z(n39523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3073_bdd_3_lut_28892.init = 16'hcaca;
    LUT4 n37692_bdd_3_lut_28472 (.A(n38413), .B(n38285), .C(cnt_scan[2]), 
         .Z(n38286)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37692_bdd_3_lut_28472.init = 16'hcaca;
    LUT4 n3073_bdd_3_lut_29006 (.A(n3073), .B(n3451), .C(cnt_scan[0]), 
         .Z(n39524)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3073_bdd_3_lut_29006.init = 16'hcaca;
    LUT4 i27775_2_lut_rep_456_2_lut_3_lut_4_lut (.A(state[1]), .B(state[0]), 
         .C(state[4]), .D(state[5]), .Z(n38576)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i27775_2_lut_rep_456_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut_adj_27 (.A(state[1]), .B(state[0]), .C(sys_clk_c_enable_220), 
         .Z(n25415)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_27.init = 16'he0e0;
    LUT4 n39525_bdd_2_lut (.A(n39525), .B(cnt_scan[2]), .Z(n39526)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n39525_bdd_2_lut.init = 16'h2222;
    LUT4 n38287_bdd_2_lut (.A(n38287), .B(cnt_scan[4]), .Z(n38288)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n38287_bdd_2_lut.init = 16'h2222;
    LUT4 n2695_bdd_4_lut_29010 (.A(n2695), .B(x_ph[1]), .C(cnt_scan[2]), 
         .D(cnt_scan[0]), .Z(n39527)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n2695_bdd_4_lut_29010.init = 16'ha00c;
    LUT4 gnd_bdd_2_lut_28906 (.A(n39527), .B(cnt_scan[1]), .Z(n39528)) /* synthesis lut_function=(A (B)) */ ;
    defparam gnd_bdd_2_lut_28906.init = 16'h8888;
    LUT4 cnt_init_3__bdd_4_lut_28463 (.A(state[3]), .B(cnt_init[2]), .C(cnt_init[4]), 
         .D(cnt_init[1]), .Z(n38289)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C)))) */ ;
    defparam cnt_init_3__bdd_4_lut_28463.init = 16'h0105;
    LUT4 n38289_bdd_2_lut_29026 (.A(n38289), .B(cnt_init[3]), .Z(n38290)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n38289_bdd_2_lut_29026.init = 16'h2222;
    LUT4 i2_3_lut_rep_547 (.A(num[4]), .B(num[3]), .C(num[2]), .Z(n38667)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/oled.v(138[11:14])
    defparam i2_3_lut_rep_547.init = 16'hfefe;
    LUT4 i18369_2_lut_rep_565 (.A(state[2]), .B(state[0]), .Z(n38685)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18369_2_lut_rep_565.init = 16'heeee;
    LUT4 n39542_bdd_2_lut (.A(n39542), .B(cnt_scan[2]), .Z(n39543)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n39542_bdd_2_lut.init = 16'h2222;
    LUT4 mux_2487_i3_4_lut_4_lut (.A(n38724), .B(n14733), .C(n9504[2]), 
         .D(n9638[2]), .Z(n9776[2])) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_2487_i3_4_lut_4_lut.init = 16'hea40;
    LUT4 i2_2_lut_rep_510_4_lut (.A(num[4]), .B(num[3]), .C(num[2]), .D(n38708), 
         .Z(n38630)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(138[11:14])
    defparam i2_2_lut_rep_510_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_3_lut_4_lut (.A(state[2]), .B(state[0]), .C(state_back[1]), 
         .D(state[3]), .Z(n21)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 n3072_bdd_3_lut_28903 (.A(n3828), .B(n4206), .C(cnt_scan[0]), 
         .Z(n39540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3072_bdd_3_lut_28903.init = 16'hcaca;
    LUT4 n3072_bdd_3_lut_28968 (.A(n3072), .B(n3450), .C(cnt_scan[0]), 
         .Z(n39541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3072_bdd_3_lut_28968.init = 16'hcaca;
    LUT4 n2694_bdd_4_lut_28972 (.A(n2694), .B(x_ph[2]), .C(cnt_scan[2]), 
         .D(cnt_scan[0]), .Z(n39544)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n2694_bdd_4_lut_28972.init = 16'ha00c;
    LUT4 gnd_bdd_2_lut_28909 (.A(n39544), .B(cnt_scan[1]), .Z(n39545)) /* synthesis lut_function=(A (B)) */ ;
    defparam gnd_bdd_2_lut_28909.init = 16'h8888;
    LUT4 i18220_2_lut_rep_566 (.A(state[3]), .B(state[2]), .Z(n38686)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18220_2_lut_rep_566.init = 16'heeee;
    LUT4 i18781_2_lut_rep_494_3_lut_4_lut (.A(state[3]), .B(state[2]), .C(state[4]), 
         .D(state[5]), .Z(n38614)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i18781_2_lut_rep_494_3_lut_4_lut.init = 16'hfffe;
    LUT4 i27077_2_lut_3_lut_4_lut (.A(state[3]), .B(state[2]), .C(state[4]), 
         .D(state[0]), .Z(n36384)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27077_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i27002_2_lut_rep_567 (.A(cnt_main_c[4]), .B(cnt_main_c[3]), .Z(n38687)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27002_2_lut_rep_567.init = 16'heeee;
    LUT4 i1_2_lut_rep_495_3_lut (.A(cnt_main_c[4]), .B(cnt_main_c[3]), .C(cnt_main[2]), 
         .Z(n38615)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_495_3_lut.init = 16'hefef;
    LUT4 equal_40_i6_2_lut_rep_568 (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n38688)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/oled.v(108[8:12])
    defparam equal_40_i6_2_lut_rep_568.init = 16'hdddd;
    LUT4 n3_bdd_4_lut_28454 (.A(n38658), .B(cnt_main[0]), .C(sw1_c), .D(cnt_main[2]), 
         .Z(n38348)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam n3_bdd_4_lut_28454.init = 16'h0200;
    LUT4 i1_4_lut (.A(n35913), .B(n4_c), .C(state[0]), .D(n38575), .Z(sys_clk_c_enable_241)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha088;
    LUT4 i2_4_lut_4_lut_4_lut_else_4_lut (.A(cnt_main[1]), .B(cnt_main_c[4]), 
         .C(cnt_main_c[3]), .D(cnt_main[2]), .Z(n39968)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(C (D)))) */ ;   // d:/new porject/top-xu/oled.v(105[8:12])
    defparam i2_4_lut_4_lut_4_lut_else_4_lut.init = 16'hedff;
    LUT4 i2_3_lut_rep_426_4_lut_4_lut (.A(state[4]), .B(state[5]), .C(n38597), 
         .D(state[3]), .Z(n38546)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_3_lut_rep_426_4_lut_4_lut.init = 16'hfffd;
    LUT4 n38631_bdd_4_lut_29083 (.A(n38631), .B(cnt_write[0]), .C(state[4]), 
         .D(cnt_write[4]), .Z(n39722)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam n38631_bdd_4_lut_29083.init = 16'h4000;
    FD1P3AX num_3023__i2 (.D(n47[2]), .SP(sys_clk_c_enable_219), .CK(sys_clk_c), 
            .Q(num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023__i2.GSR = "ENABLED";
    LUT4 i3869_2_lut_3_lut_4_lut (.A(cnt_init[0]), .B(cnt_init[1]), .C(cnt_init[3]), 
         .D(cnt_init[2]), .Z(n2122[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i3869_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3AX state_i0_i1 (.D(n34326), .SP(sys_clk_c_enable_220), .CK(sys_clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 n38570_bdd_3_lut_29086 (.A(n38570), .B(state[5]), .C(state[4]), 
         .Z(n39720)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n38570_bdd_3_lut_29086.init = 16'h0202;
    LUT4 n38631_bdd_2_lut_29082 (.A(state[4]), .B(state_back[5]), .Z(n39721)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n38631_bdd_2_lut_29082.init = 16'h4444;
    LUT4 i18559_2_lut_rep_454_3_lut_4_lut_then_4_lut (.A(cnt_main_c[3]), .B(cnt_main[2]), 
         .C(cnt_main_c[4]), .D(cnt_main[0]), .Z(n39957)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/new porject/top-xu/oled.v(111[8:13])
    defparam i18559_2_lut_rep_454_3_lut_4_lut_then_4_lut.init = 16'hfffd;
    LUT4 i18559_2_lut_rep_454_3_lut_4_lut_else_4_lut (.A(cnt_main_c[3]), .B(cnt_main[2]), 
         .C(cnt_main_c[4]), .D(cnt_main[0]), .Z(n39956)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/new porject/top-xu/oled.v(111[8:13])
    defparam i18559_2_lut_rep_454_3_lut_4_lut_else_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main_c[3]), 
         .D(cnt_main_c[4]), .Z(n27615)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfff7;
    LUT4 i2_3_lut_adj_28 (.A(cnt_write[4]), .B(state[4]), .C(cnt_write[0]), 
         .Z(n4_c)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_adj_28.init = 16'h4040;
    LUT4 i1_2_lut_rep_497_3_lut (.A(cnt_main_c[4]), .B(cnt_main[2]), .C(cnt_main_c[3]), 
         .Z(n38617)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_497_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_499_3_lut (.A(cnt_main_c[4]), .B(cnt_main[2]), .C(cnt_main_c[3]), 
         .Z(n38619)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_499_3_lut.init = 16'hfefe;
    LUT4 x_ph_4__bdd_3_lut_29081 (.A(x_ph[4]), .B(n39760), .C(state[1]), 
         .Z(n39761)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam x_ph_4__bdd_3_lut_29081.init = 16'hcaca;
    LUT4 n38550_bdd_4_lut (.A(n38550), .B(n39422), .C(x_ph[4]), .D(n38614), 
         .Z(n39760)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B ((D)+!C)+!B (D))) */ ;
    defparam n38550_bdd_4_lut.init = 16'ha0f3;
    LUT4 state_0__bdd_2_lut (.A(n38550), .B(x_ph[4]), .Z(n39759)) /* synthesis lut_function=(A (B)) */ ;
    defparam state_0__bdd_2_lut.init = 16'h8888;
    LUT4 equal_31_i9_2_lut_rep_467_3_lut_3_lut_4_lut (.A(cnt_main_c[4]), .B(cnt_main[2]), 
         .C(cnt_main_c[3]), .D(n38695), .Z(n38587)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam equal_31_i9_2_lut_rep_467_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i27412_4_lut_then_4_lut (.A(sw1_c), .B(n10372), .C(\hundres_0__N_316[3] ), 
         .D(\hundres_0__N_316[3]_adj_2 ), .Z(n38728)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (D)+!B !(D)))) */ ;
    defparam i27412_4_lut_then_4_lut.init = 16'h396c;
    LUT4 i27604_3_lut (.A(n9784[3]), .B(n36719), .C(n38724), .Z(n9837[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27604_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(cnt_scan[4]), .B(n63), .Z(n64)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    LUT4 mux_89_i1_4_lut_4_lut (.A(cnt_scan[0]), .B(n9), .C(n38593), .D(n2323), 
         .Z(cnt_scan_4__N_1022[0])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/new porject/top-xu/oled.v(141[24:39])
    defparam mux_89_i1_4_lut_4_lut.init = 16'h7340;
    LUT4 i12882_3_lut_4_lut_4_lut (.A(n38550), .B(n38633), .C(n38552), 
         .D(n38597), .Z(n21994)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i12882_3_lut_4_lut_4_lut.init = 16'h5400;
    LUT4 i19044_4_lut_4_lut (.A(cnt_scan[0]), .B(n8_adj_1725), .C(n36169), 
         .D(n7), .Z(n14292)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/new porject/top-xu/oled.v(141[24:39])
    defparam i19044_4_lut_4_lut.init = 16'h0002;
    LUT4 i27721_2_lut_3_lut_4_lut_4_lut (.A(n38550), .B(n28205), .C(n38524), 
         .D(n38597), .Z(sys_clk_c_enable_252)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i27721_2_lut_3_lut_4_lut_4_lut.init = 16'h1500;
    LUT4 i27806_2_lut_3_lut_4_lut_4_lut (.A(n38550), .B(n38597), .C(n38524), 
         .D(n39955), .Z(sys_clk_c_enable_129)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i27806_2_lut_3_lut_4_lut_4_lut.init = 16'h0444;
    LUT4 i3_4_lut (.A(num[6]), .B(num[5]), .C(n38630), .D(num[7]), .Z(n2323)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(138[11:14])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i27187_2_lut_rep_574 (.A(cnt_main[0]), .B(cnt_main[2]), .Z(n38694)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27187_2_lut_rep_574.init = 16'heeee;
    LUT4 i27412_4_lut_else_4_lut (.A(sw1_c), .B(time_set), .C(flash_bit), 
         .Z(n38727)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i27412_4_lut_else_4_lut.init = 16'h5151;
    LUT4 i27633_2_lut_rep_575 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n38695)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i27633_2_lut_rep_575.init = 16'h1111;
    LUT4 i2_4_lut_rep_407 (.A(n38580), .B(n9346), .C(n38600), .D(n38552), 
         .Z(sys_clk_c_enable_298)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i2_4_lut_rep_407.init = 16'h0a88;
    LUT4 n8_bdd_4_lut_4_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(n38615), 
         .D(n38617), .Z(n28205)) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;
    defparam n8_bdd_4_lut_4_lut_4_lut.init = 16'hf454;
    LUT4 i2_2_lut_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(x_ph[1]), 
         .Z(n9_adj_1726)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(n38715), 
         .D(cnt_main_c[4]), .Z(n16_adj_1727)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hffe0;
    LUT4 i12976_2_lut_3_lut (.A(n38580), .B(n38600), .C(n38552), .Z(n22086)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i12976_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_4_lut_4_lut_adj_29 (.A(cnt_init[0]), .B(n36304), .C(n19), 
         .D(state[2]), .Z(n6_adj_1712)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_29.init = 16'hf400;
    LUT4 i1_3_lut_3_lut (.A(cnt_init[0]), .B(n38522), .C(num_delay[7]), 
         .Z(n16_adj_1728)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_30 (.A(cnt_init[0]), .B(n38612), .C(n38522), 
         .D(num_delay[9]), .Z(num_delay_15__N_1256[9])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_30.init = 16'hdc00;
    LUT4 n38186_bdd_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38624), .C(char_reg[5]), 
         .D(n38186), .Z(char_reg_7__N_1240[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam n38186_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_4_lut_adj_31 (.A(cnt_init[0]), .B(n38612), .C(n38522), 
         .D(num_delay[11]), .Z(num_delay_15__N_1256[11])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_31.init = 16'hdc00;
    LUT4 i27814_4_lut (.A(state[2]), .B(n34004), .C(n17), .D(n38662), 
         .Z(sys_clk_c_enable_219)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i27814_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_3_lut_adj_32 (.A(cnt_init[0]), .B(n38522), .C(num_delay[14]), 
         .Z(n16_adj_1729)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_3_lut_adj_32.init = 16'h4040;
    LUT4 i27331_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38624), .C(\cnt[3] ), 
         .D(\cnt[4] ), .Z(n36640)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam i27331_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_4_lut_adj_33 (.A(cnt_init[0]), .B(n38612), .C(n38522), 
         .D(num_delay[15]), .Z(num_delay_15__N_1256[15])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_33.init = 16'hdc00;
    LUT4 i3_4_lut_adj_34 (.A(n3549), .B(state[3]), .C(state[0]), .D(num_7__N_1056[2]), 
         .Z(n34004)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_34.init = 16'h0002;
    LUT4 i1_4_lut_4_lut_adj_35 (.A(cnt_init[0]), .B(n38612), .C(n38522), 
         .D(num_delay[10]), .Z(num_delay_15__N_1256[10])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_35.init = 16'hdc00;
    LUT4 mux_266_Mux_2_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38624), 
         .C(char_reg[2]), .D(n38276), .Z(n1575[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam mux_266_Mux_2_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut_4_lut (.A(cnt_init[0]), .B(n38522), .C(num_delay[8]), 
         .D(n4_adj_1730), .Z(num_delay_15__N_1256[8])) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam i2_4_lut_4_lut.init = 16'hff40;
    LUT4 i27388_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38624), .C(\cnt[3] ), 
         .D(\cnt[4] ), .Z(n36697)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam i27388_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_3_lut_3_lut_adj_36 (.A(cnt_init[0]), .B(n38522), .C(num_delay[5]), 
         .Z(n16_adj_1731)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_3_lut_adj_36.init = 16'h4040;
    LUT4 mux_266_Mux_7_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38624), 
         .C(char_reg[7]), .D(n37500), .Z(n1575[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam mux_266_Mux_7_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_4_lut_adj_37 (.A(cnt_init[0]), .B(n38612), .C(n38522), 
         .D(num_delay[4]), .Z(num_delay_15__N_1256[4])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_37.init = 16'hdc00;
    LUT4 num_3023_mux_6_i1_4_lut (.A(n14151), .B(n37[0]), .C(state[3]), 
         .D(state[0]), .Z(n47[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023_mux_6_i1_4_lut.init = 16'hc0c5;
    LUT4 i13_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38624), .C(char_reg[3]), 
         .D(n28217), .Z(n14_adj_1733)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam i13_3_lut_4_lut.init = 16'he0f1;
    LUT4 mux_3472_i1_4_lut (.A(n3549), .B(n38688), .C(num_7__N_1056[2]), 
         .D(n38619), .Z(n14151)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam mux_3472_i1_4_lut.init = 16'hfaca;
    LUT4 i1_3_lut_3_lut_adj_38 (.A(cnt_init[0]), .B(n38522), .C(num_delay[3]), 
         .Z(n16_adj_1734)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_3_lut_adj_38.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_39 (.A(cnt_init[0]), .B(n38612), .C(n38522), 
         .D(num_delay[1]), .Z(num_delay_15__N_1256[1])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_39.init = 16'hdc00;
    LUT4 i1_4_lut_4_lut_adj_40 (.A(cnt_init[0]), .B(state[2]), .C(n38683), 
         .D(n36484), .Z(n36112)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_40.init = 16'h0004;
    LUT4 mux_266_Mux_1_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38624), 
         .C(char_reg[1]), .D(n38163), .Z(n1575[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam mux_266_Mux_1_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_3_lut_3_lut_adj_41 (.A(cnt_init[0]), .B(n38522), .C(num_delay[13]), 
         .Z(n16_adj_1735)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_3_lut_adj_41.init = 16'h4040;
    LUT4 mux_266_Mux_6_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38624), 
         .C(char_reg[6]), .D(n38361), .Z(n1575[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam mux_266_Mux_6_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_4_lut_adj_42 (.A(cnt_init[0]), .B(n38612), .C(n38522), 
         .D(num_delay[12]), .Z(num_delay_15__N_1256[12])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_42.init = 16'hdc00;
    LUT4 i1_4_lut_4_lut_adj_43 (.A(cnt_init[0]), .B(n38612), .C(n38522), 
         .D(num_delay[6]), .Z(num_delay_15__N_1256[6])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_43.init = 16'hdc00;
    LUT4 i27384_2_lut_rep_386_3_lut (.A(oled_dcn_N_1364), .B(n38624), .C(\cnt[4] ), 
         .Z(n38506)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam i27384_2_lut_rep_386_3_lut.init = 16'h0101;
    LUT4 n37423_bdd_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38624), .C(char_reg[0]), 
         .D(n37423), .Z(n37424)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam n37423_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n39724_bdd_2_lut_4_lut (.A(n39723), .B(n39720), .C(state[2]), 
         .D(state[3]), .Z(n39725)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n39724_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 i12850_2_lut_3_lut_3_lut_4_lut (.A(state[0]), .B(n38656), .C(n38552), 
         .D(n38550), .Z(n21962)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(185[5:10])
    defparam i12850_2_lut_3_lut_3_lut_4_lut.init = 16'h00b0;
    LUT4 i27791_2_lut_rep_453_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[3]), 
         .D(state[1]), .Z(n38573)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i27791_2_lut_rep_453_3_lut_4_lut.init = 16'h0001;
    LUT4 cnt_main_0__bdd_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main_c[3]), 
         .D(cnt_main[2]), .Z(n39945)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C+(D))+!B !(C (D)))) */ ;
    defparam cnt_main_0__bdd_4_lut.init = 16'hef7b;
    LUT4 i1_2_lut_rep_363_4_lut_4_lut (.A(n38539), .B(n2527), .C(n38571), 
         .D(n2524), .Z(n38483)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(151[51:79])
    defparam i1_2_lut_rep_363_4_lut_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_adj_44 (.A(n38455), .B(n38555), .C(n6_adj_1736), .D(cnt_scan[3]), 
         .Z(sys_clk_c_enable_220)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_44.init = 16'haaa8;
    LUT4 i27645_4_lut (.A(n50), .B(n36819), .C(n38686), .D(n38684), 
         .Z(n42)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i27645_4_lut.init = 16'hccc4;
    LUT4 i27644_4_lut (.A(n44_adj_1737), .B(n38662), .C(n38294), .D(n38686), 
         .Z(n36819)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i27644_4_lut.init = 16'hcfcd;
    LUT4 i72_4_lut (.A(state[0]), .B(n16_adj_1727), .C(state[1]), .D(n38587), 
         .Z(n44_adj_1737)) /* synthesis lut_function=(!(A (C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i72_4_lut.init = 16'h1a5a;
    LUT4 i1_4_lut_4_lut_adj_45 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1739), 
         .D(num_delay[11]), .Z(num_delay_15__N_945[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_45.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_46 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1740), 
         .D(num_delay[12]), .Z(num_delay_15__N_945[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_46.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_47 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1741), 
         .D(num_delay[14]), .Z(num_delay_15__N_945[14])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_47.init = 16'hdc50;
    LUT4 n38293_bdd_2_lut_3_lut (.A(n38414), .B(state[0]), .C(state[1]), 
         .Z(n38294)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n38293_bdd_2_lut_3_lut.init = 16'h0202;
    LUT4 i2_3_lut_4_lut_4_lut (.A(state[0]), .B(n8_adj_1742), .C(n38613), 
         .D(state[3]), .Z(n8)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_4_lut_adj_48 (.A(state[0]), .B(n38550), .C(n16_adj_1743), 
         .D(x_ph[2]), .Z(x_ph_7__N_725[2])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_48.init = 16'hdc50;
    LUT4 i45_4_lut_3_lut (.A(state[0]), .B(state_5__N_1310[1]), .C(state[2]), 
         .Z(n28)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i45_4_lut_3_lut.init = 16'h4a4a;
    LUT4 i1_4_lut_4_lut_adj_49 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1744), 
         .D(num_delay[1]), .Z(num_delay_15__N_945[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_49.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_50 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1745), 
         .D(num_delay[3]), .Z(num_delay_15__N_945[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_50.init = 16'hdc50;
    LUT4 i3813_2_lut_rep_552 (.A(cnt_main[0]), .B(warning_TEM), .Z(n38672)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(91[40:55])
    defparam i3813_2_lut_rep_552.init = 16'h8888;
    LUT4 i2_3_lut_adj_51 (.A(n38575), .B(state[4]), .C(n1), .Z(n33494)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/new porject/top-xu/oled.v(45[42:51])
    defparam i2_3_lut_adj_51.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_52 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1746), 
         .D(num_delay[4]), .Z(num_delay_15__N_945[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_52.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_53 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1747), 
         .D(num_delay[13]), .Z(num_delay_15__N_945[13])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_53.init = 16'hdc50;
    LUT4 cnt_write_4__bdd_1_lut_1_lut (.A(state[0]), .Z(n37729)) /* synthesis lut_function=(A) */ ;
    defparam cnt_write_4__bdd_1_lut_1_lut.init = 16'haaaa;
    LUT4 num_3023_mux_6_i3_4_lut_4_lut (.A(state[0]), .B(state[3]), .C(n37[2]), 
         .D(num_7__N_1056[2]), .Z(n47[2])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam num_3023_mux_6_i3_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_4_lut_4_lut_adj_54 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1748), 
         .D(num_delay[5]), .Z(num_delay_15__N_945[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_54.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_55 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1749), 
         .D(num_delay[10]), .Z(num_delay_15__N_945[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_55.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_56 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1750), 
         .D(num_delay[6]), .Z(num_delay_15__N_945[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_56.init = 16'hdc50;
    LUT4 i27685_4_lut_4_lut (.A(state[0]), .B(n19_adj_1738), .C(n24_adj_1751), 
         .D(num_delay[2]), .Z(num_delay_15__N_945[2])) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;
    defparam i27685_4_lut_4_lut.init = 16'haf23;
    LUT4 i1_4_lut_4_lut_adj_57 (.A(state[0]), .B(n38550), .C(n16_adj_1752), 
         .D(x_ph[1]), .Z(x_ph_7__N_725[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_57.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_58 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1753), 
         .D(num_delay[15]), .Z(num_delay_15__N_945[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_58.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_59 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1754), 
         .D(num_delay[9]), .Z(num_delay_15__N_945[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_59.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_60 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1755), 
         .D(num_delay[7]), .Z(num_delay_15__N_945[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_60.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_61 (.A(state[0]), .B(n19_adj_1738), .C(n16_adj_1756), 
         .D(num_delay[8]), .Z(num_delay_15__N_945[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_61.init = 16'hdc50;
    LUT4 i27744_2_lut_3_lut_4_lut (.A(n38662), .B(n38560), .C(n38580), 
         .D(n38600), .Z(sys_clk_c_enable_310)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i27744_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 i3826_2_lut_3_lut_4_lut (.A(cnt_main[0]), .B(warning_TEM), .C(cnt_main[2]), 
         .D(cnt_main[1]), .Z(n11[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(91[40:55])
    defparam i3826_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3AX oled_dat_338 (.D(n33494), .SP(sys_clk_c_enable_241), .CK(sys_clk_c), 
            .Q(oled_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam oled_dat_338.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n27), .B(n38576), .C(n8_adj_1758), .D(state_back[0]), 
         .Z(state_back_5__N_999[0])) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(47[13:18])
    defparam i1_2_lut_4_lut.init = 16'hea00;
    LUT4 i1_2_lut_4_lut_adj_62 (.A(n27), .B(n38576), .C(n8_adj_1758), 
         .D(state_back[4]), .Z(state_back_5__N_999[4])) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(47[13:18])
    defparam i1_2_lut_4_lut_adj_62.init = 16'hea00;
    LUT4 i18383_2_lut_4_lut (.A(n37879), .B(n38483), .C(n2523), .D(n38583), 
         .Z(n126)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i18383_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_adj_63 (.A(cnt_scan[4]), .B(n63_adj_1716), .Z(n64_adj_1759)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_63.init = 16'h4444;
    FD1P3AY oled_clk_337 (.D(n37727), .SP(sys_clk_c_enable_246), .CK(sys_clk_c), 
            .Q(oled_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam oled_clk_337.GSR = "ENABLED";
    LUT4 cnt_3__bdd_4_lut_27919 (.A(\cnt[3] ), .B(\cnt[0] ), .C(\cnt[2] ), 
         .D(\cnt[1] ), .Z(n37241)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam cnt_3__bdd_4_lut_27919.init = 16'h1a09;
    LUT4 i27690_4_lut (.A(state[0]), .B(num_delay[0]), .C(n28213), .D(n19_adj_1738), 
         .Z(num_delay_15__N_945[0])) /* synthesis lut_function=(A (B+!(D))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i27690_4_lut.init = 16'hc8fa;
    LUT4 i41_4_lut (.A(num_delay[0]), .B(n38573), .C(state[2]), .D(n35969), 
         .Z(n28213)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i41_4_lut.init = 16'hfa3a;
    LUT4 i27233_4_lut (.A(n38747), .B(state[1]), .C(n36384), .D(state[5]), 
         .Z(n36542)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C+!(D)))) */ ;
    defparam i27233_4_lut.init = 16'habae;
    LUT4 i1_4_lut_adj_64 (.A(cnt_init[0]), .B(num_delay[0]), .C(n15), 
         .D(n38612), .Z(n35969)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_64.init = 16'hdc50;
    LUT4 i1_4_lut_adj_65 (.A(state[2]), .B(n2234[4]), .C(n6_adj_1760), 
         .D(n38585), .Z(n6_adj_1717)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_adj_65.init = 16'ha8a0;
    LUT4 i1_2_lut_rep_335_4_lut (.A(n38563), .B(state[4]), .C(state[5]), 
         .D(n4283), .Z(n38455)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(160[5:10])
    defparam i1_2_lut_rep_335_4_lut.init = 16'hffef;
    FD1P3IX cnt_write_i0_i1 (.D(n4261[1]), .SP(sys_clk_c_enable_276), .CD(n25434), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    LUT4 i16345_4_lut (.A(n38546), .B(sys_clk_c_enable_276), .C(n38584), 
         .D(n13), .Z(n25434)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i16345_4_lut.init = 16'hc0ca;
    LUT4 cnt_init_4__I_0_366_i7_2_lut_rep_579 (.A(cnt_init[3]), .B(cnt_init[4]), 
         .Z(n38699)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(123[8:12])
    defparam cnt_init_4__I_0_366_i7_2_lut_rep_579.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_66 (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[0]), .D(n38700), .Z(n35930)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(123[8:12])
    defparam i1_2_lut_3_lut_4_lut_adj_66.init = 16'h0010;
    LUT4 cnt_init_4__I_0_364_i8_2_lut_rep_483_3_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[2]), .Z(n38603)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/new porject/top-xu/oled.v(123[8:12])
    defparam cnt_init_4__I_0_364_i8_2_lut_rep_483_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_rep_543 (.A(state[1]), .B(state[2]), .C(state[0]), .Z(n38663)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i2_3_lut_rep_543.init = 16'hfbfb;
    LUT4 i1_2_lut_adj_67 (.A(cnt_scan[4]), .B(n39529), .Z(n64_adj_1761)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_67.init = 16'h4444;
    FD1P3IX cnt_write_i0_i2 (.D(n4261[2]), .SP(sys_clk_c_enable_276), .CD(n25434), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i3 (.D(n4261[3]), .SP(sys_clk_c_enable_276), .CD(n25434), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i4 (.D(n4261[4]), .SP(sys_clk_c_enable_276), .CD(n25434), 
            .CK(sys_clk_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    LUT4 i3927_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n4261[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(162[25:41])
    defparam i3927_2_lut.init = 16'h6666;
    FD1P3AX x_pl_i0_i3 (.D(n28211), .SP(sys_clk_c_enable_252), .CK(sys_clk_c), 
            .Q(x_pl[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam x_pl_i0_i3.GSR = "ENABLED";
    PFUMX i28074 (.BLUT(n37745), .ALUT(n37744), .C0(state[2]), .Z(n37746));
    FD1P3AX oled_dcn_336 (.D(n35516), .SP(sys_clk_c_enable_253), .CK(sys_clk_c), 
            .Q(oled_dc_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam oled_dcn_336.GSR = "ENABLED";
    LUT4 i27710_2_lut_rep_450_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[0]), .D(cnt_init[2]), .Z(n38570)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(123[8:12])
    defparam i27710_2_lut_rep_450_3_lut_4_lut.init = 16'h0010;
    FD1P3AY oled_rst_335 (.D(n6367[0]), .SP(sys_clk_c_enable_254), .CK(sys_clk_c), 
            .Q(oled_res_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam oled_rst_335.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_492_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n38612)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/new porject/top-xu/oled.v(123[8:12])
    defparam i2_3_lut_rep_492_4_lut.init = 16'hfeee;
    FD1P3IX cnt_delay_i0_i1 (.D(n4285[1]), .SP(sys_clk_c_enable_269), .CD(n22036), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_504_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(n38700), .Z(n38624)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(123[8:12])
    defparam i2_3_lut_rep_504_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_580 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n38700)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_580.init = 16'hdddd;
    LUT4 i1_3_lut_rep_402_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(oled_dcn_N_1364), 
         .D(n38611), .Z(n38522)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i1_3_lut_rep_402_4_lut.init = 16'hfddd;
    FD1P3IX cnt_delay_i0_i2 (.D(n4285[2]), .SP(sys_clk_c_enable_269), .CD(n22036), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_68 (.A(cnt_init[2]), .B(cnt_init[1]), .C(n36542), 
         .D(n36112), .Z(n36114)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_3_lut_4_lut_adj_68.init = 16'hd000;
    LUT4 i92_4_lut_4_lut (.A(cnt_scan[2]), .B(n36734), .C(cnt_scan[3]), 
         .D(n33426), .Z(n57_adj_1715)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(142[7] 158[14])
    defparam i92_4_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_4_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(n36730), 
         .D(n36729), .Z(n61_adj_1720)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/new porject/top-xu/oled.v(142[7] 158[14])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_69 (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(n36071), 
         .D(n14293), .Z(n61)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/new porject/top-xu/oled.v(142[7] 158[14])
    defparam i1_4_lut_4_lut_adj_69.init = 16'h5140;
    LUT4 i18625_4_lut (.A(n1477), .B(n38652), .C(n38629), .D(num[2]), 
         .Z(n2523)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam i18625_4_lut.init = 16'h3022;
    LUT4 gnd_bdd_2_lut_28445_2_lut (.A(cnt_scan[2]), .B(n38283), .Z(n38284)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(142[7] 158[14])
    defparam gnd_bdd_2_lut_28445_2_lut.init = 16'h4444;
    LUT4 gnd_bdd_2_lut_28168_2_lut (.A(cnt_scan[2]), .B(n37875), .Z(n37876)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/new porject/top-xu/oled.v(142[7] 158[14])
    defparam gnd_bdd_2_lut_28168_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_70 (.A(num_delay[0]), .B(n38700), .C(n38611), .D(oled_dcn_N_1364), 
         .Z(n15)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_70.init = 16'ha8f8;
    LUT4 i1_4_lut_adj_71 (.A(n26_adj_1718), .B(n29), .C(n38662), .D(n38686), 
         .Z(n32)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_adj_71.init = 16'h0ace;
    LUT4 i48_4_lut (.A(state[4]), .B(state[5]), .C(n38584), .D(state_back[4]), 
         .Z(n29)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i48_4_lut.init = 16'h4602;
    LUT4 shift_right_91_i1477_4_lut (.A(char[4]), .B(char[11]), .C(num[1]), 
         .D(num[0]), .Z(n1477)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam shift_right_91_i1477_4_lut.init = 16'hc00a;
    LUT4 i1_2_lut_3_lut_adj_72 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[4]), 
         .Z(n33426)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_72.init = 16'h1010;
    LUT4 i1_2_lut_rep_581 (.A(cnt_scan[0]), .B(cnt_scan[2]), .Z(n38701)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_581.init = 16'h8888;
    FD1P3IX cnt_delay_i0_i3 (.D(n4285[3]), .SP(sys_clk_c_enable_269), .CD(n22036), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_adj_73 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(n2521), 
         .Z(n6_adj_1762)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut_adj_73.init = 16'h8080;
    FD1P3IX cnt_delay_i0_i4 (.D(n4285[4]), .SP(sys_clk_c_enable_269), .CD(n22036), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    LUT4 i27642_3_lut_4_lut (.A(n10), .B(n38576), .C(n36542), .D(n37731), 
         .Z(sys_clk_c_enable_246)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i27642_3_lut_4_lut.init = 16'h7000;
    LUT4 i20_4_lut_4_lut (.A(state[2]), .B(n3795), .C(n8_adj_1742), .D(state[3]), 
         .Z(n8_adj_1758)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;
    defparam i20_4_lut_4_lut.init = 16'h44a0;
    LUT4 i1_2_lut_3_lut_adj_74 (.A(state[2]), .B(n3795), .C(state_back[5]), 
         .Z(n36056)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_74.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_75 (.A(state[2]), .B(n3795), .C(state_back[2]), 
         .Z(n36055)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_75.init = 16'h4040;
    LUT4 i2_3_lut_4_lut (.A(state[3]), .B(n38662), .C(state[1]), .D(n21_adj_1763), 
         .Z(n19_adj_1738)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    PFUMX i28061 (.BLUT(n37730), .ALUT(n37729), .C0(n38575), .Z(n37731));
    LUT4 i1_2_lut_adj_76 (.A(state[0]), .B(sys_clk_c_enable_220), .Z(n25407)) /* synthesis lut_function=(A (B)) */ ;   // d:/new porject/top-xu/oled.v(47[13:18])
    defparam i1_2_lut_adj_76.init = 16'h8888;
    LUT4 equal_2242_i11_2_lut_rep_460_3_lut_4_lut (.A(state[3]), .B(n38662), 
         .C(n38656), .D(state[0]), .Z(n38580)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam equal_2242_i11_2_lut_rep_460_3_lut_4_lut.init = 16'hffef;
    LUT4 i3_4_lut_adj_77 (.A(cnt_scan[4]), .B(n38547), .C(state[2]), .D(n37675), 
         .Z(n35516)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_77.init = 16'h0400;
    LUT4 i2_4_lut (.A(n37746), .B(n38707), .C(n20789), .D(state[5]), 
         .Z(n39)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i2_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_adj_78 (.A(cnt_scan[4]), .B(n39546), .Z(n64_adj_1764)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_78.init = 16'h4444;
    LUT4 i27682_4_lut (.A(n33453), .B(n38599), .C(n38656), .D(state[0]), 
         .Z(sys_clk_c_enable_293)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;
    defparam i27682_4_lut.init = 16'hbaaa;
    PFUMX i27834 (.BLUT(n37263), .ALUT(n37262), .C0(sw1_c), .Z(n37264));
    LUT4 i3_4_lut_adj_79 (.A(n5), .B(state[0]), .C(n27797), .D(state[2]), 
         .Z(n33453)) /* synthesis lut_function=(!((B (C+(D))+!B (C+!(D)))+!A)) */ ;
    defparam i3_4_lut_adj_79.init = 16'h0208;
    CCU2D sub_2302_add_2_17 (.A0(cnt_delay[15]), .B0(num_delay[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33311), .S1(n4283));
    defparam sub_2302_add_2_17.INIT0 = 16'h5999;
    defparam sub_2302_add_2_17.INIT1 = 16'h0000;
    defparam sub_2302_add_2_17.INJECT1_0 = "NO";
    defparam sub_2302_add_2_17.INJECT1_1 = "NO";
    LUT4 i27688_2_lut_2_lut_4_lut (.A(n38578), .B(state[0]), .C(state[1]), 
         .D(n28205), .Z(n28211)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(89[5:9])
    defparam i27688_2_lut_2_lut_4_lut.init = 16'h0010;
    LUT4 i18253_2_lut (.A(n2158[15]), .B(oled_dcn_N_1364), .Z(n2184[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18253_2_lut.init = 16'h2222;
    LUT4 i18732_2_lut (.A(state[1]), .B(state[5]), .Z(n27797)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18732_2_lut.init = 16'heeee;
    FD1P3IX cnt_delay_i0_i0 (.D(n4285[0]), .SP(sys_clk_c_enable_269), .CD(n22036), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    LUT4 i48_4_lut_adj_80 (.A(n36542), .B(n36114), .C(n38547), .D(n38545), 
         .Z(sys_clk_c_enable_254)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i48_4_lut_adj_80.init = 16'hcac0;
    LUT4 i26969_2_lut_4_lut (.A(n38578), .B(state[0]), .C(state[1]), .D(n8832), 
         .Z(n36261)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(89[5:9])
    defparam i26969_2_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_404_4_lut (.A(n38578), .B(state[0]), .C(state[1]), 
         .D(n3549), .Z(n38524)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(89[5:9])
    defparam i1_2_lut_rep_404_4_lut.init = 16'h1000;
    LUT4 i18254_2_lut (.A(n2158[14]), .B(oled_dcn_N_1364), .Z(n2184[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18254_2_lut.init = 16'h2222;
    LUT4 i27718_2_lut_2_lut_4_lut (.A(n38578), .B(state[0]), .C(state[1]), 
         .D(n39955), .Z(n28101)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(89[5:9])
    defparam i27718_2_lut_2_lut_4_lut.init = 16'h0010;
    LUT4 mux_2021_i1_4_lut (.A(n38545), .B(cnt_init[1]), .C(n38547), .D(n36112), 
         .Z(n6367[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam mux_2021_i1_4_lut.init = 16'hca0a;
    LUT4 i18255_2_lut (.A(n2158[13]), .B(oled_dcn_N_1364), .Z(n2184[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18255_2_lut.init = 16'h2222;
    LUT4 i27175_2_lut (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n36484)) /* synthesis lut_function=(A (B)) */ ;
    defparam i27175_2_lut.init = 16'h8888;
    LUT4 i18256_2_lut (.A(n2158[12]), .B(oled_dcn_N_1364), .Z(n2184[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18256_2_lut.init = 16'h2222;
    LUT4 n36720_bdd_3_lut (.A(n36720), .B(n38729), .C(cnt_main[2]), .Z(n37301)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36720_bdd_3_lut.init = 16'hcaca;
    L6MUX21 i27862 (.D0(n37302), .D1(n37300), .SD(n8832), .Z(char_167__N_1072[1]));
    CCU2D sub_2302_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33310), .COUT(n33311));
    defparam sub_2302_add_2_15.INIT0 = 16'h5999;
    defparam sub_2302_add_2_15.INIT1 = 16'h5999;
    defparam sub_2302_add_2_15.INJECT1_0 = "NO";
    defparam sub_2302_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_2302_add_2_13 (.A0(cnt_delay[11]), .B0(num_delay[11]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33309), .COUT(n33310));
    defparam sub_2302_add_2_13.INIT0 = 16'h5999;
    defparam sub_2302_add_2_13.INIT1 = 16'h5999;
    defparam sub_2302_add_2_13.INJECT1_0 = "NO";
    defparam sub_2302_add_2_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_81 (.A(state[3]), .B(n38662), .C(n38656), 
         .D(state[0]), .Z(n36100)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam i1_2_lut_3_lut_4_lut_adj_81.init = 16'h1101;
    CCU2D add_131_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33234), .S0(n4285[15]));   // d:/new porject/top-xu/oled.v(188[29:45])
    defparam add_131_17.INIT0 = 16'h5aaa;
    defparam add_131_17.INIT1 = 16'h0000;
    defparam add_131_17.INJECT1_0 = "NO";
    defparam add_131_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_82 (.A(cnt_scan[4]), .B(n39500), .Z(n64_adj_1765)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_82.init = 16'h4444;
    LUT4 i1_2_lut_adj_83 (.A(cnt_scan[4]), .B(n63_adj_1721), .Z(n64_adj_1766)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_83.init = 16'h4444;
    LUT4 i27737_3_lut_3_lut_4_lut (.A(n39945), .B(cnt_main_c[4]), .C(n3549), 
         .D(n38552), .Z(n28243)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i27737_3_lut_3_lut_4_lut.init = 16'h001f;
    LUT4 i18257_2_lut (.A(n2158[11]), .B(oled_dcn_N_1364), .Z(n2184[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18257_2_lut.init = 16'h2222;
    FD1P3IX cnt_write_i0_i0 (.D(n2), .SP(sys_clk_c_enable_276), .CD(n25434), 
            .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    CCU2D sub_2302_add_2_11 (.A0(cnt_delay[9]), .B0(num_delay[9]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(num_delay[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33308), .COUT(n33309));
    defparam sub_2302_add_2_11.INIT0 = 16'h5999;
    defparam sub_2302_add_2_11.INIT1 = 16'h5999;
    defparam sub_2302_add_2_11.INJECT1_0 = "NO";
    defparam sub_2302_add_2_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_84 (.A(cnt_scan[4]), .B(n37878), .Z(n64_adj_1767)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_84.init = 16'h4444;
    CCU2D sub_2302_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33307), .COUT(n33308));
    defparam sub_2302_add_2_9.INIT0 = 16'h5999;
    defparam sub_2302_add_2_9.INIT1 = 16'h5999;
    defparam sub_2302_add_2_9.INJECT1_0 = "NO";
    defparam sub_2302_add_2_9.INJECT1_1 = "NO";
    LUT4 mux_89_i3_4_lut (.A(n2323), .B(n2332[2]), .C(n9), .D(n38593), 
         .Z(cnt_scan_4__N_1022[2])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/new porject/top-xu/oled.v(140[16] 141[40])
    defparam mux_89_i3_4_lut.init = 16'hc505;
    LUT4 i13037_2_lut_3_lut_4_lut (.A(state[3]), .B(n38662), .C(sys_clk_c_enable_293), 
         .D(n38663), .Z(n22136)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam i13037_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i18258_2_lut (.A(n2158[10]), .B(oled_dcn_N_1364), .Z(n2184[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18258_2_lut.init = 16'h2222;
    LUT4 i18340_2_lut_rep_587 (.A(state[4]), .B(state[3]), .Z(n38707)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18340_2_lut_rep_587.init = 16'heeee;
    LUT4 n38198_bdd_2_lut_3_lut (.A(state[4]), .B(state[3]), .C(n38198), 
         .Z(n38199)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n38198_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_85 (.A(state[4]), .B(state[3]), .C(n38611), 
         .D(cnt_init[0]), .Z(n5)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_85.init = 16'h0010;
    LUT4 i10449_2_lut_rep_588 (.A(num[0]), .B(num[1]), .Z(n38708)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam i10449_2_lut_rep_588.init = 16'heeee;
    LUT4 i18594_2_lut_rep_509_3_lut (.A(num[0]), .B(num[1]), .C(char[19]), 
         .Z(n38629)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam i18594_2_lut_rep_509_3_lut.init = 16'h1010;
    LUT4 i18619_2_lut_rep_463_3_lut_4_lut (.A(num[0]), .B(num[1]), .C(char[5]), 
         .D(n38667), .Z(n38583)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam i18619_2_lut_rep_463_3_lut_4_lut.init = 16'h0010;
    LUT4 i18259_2_lut (.A(n2158[9]), .B(oled_dcn_N_1364), .Z(n2184[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18259_2_lut.init = 16'h2222;
    LUT4 i26994_2_lut (.A(n2527), .B(n20568), .Z(n36299)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i26994_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_86 (.A(n2523), .B(n38539), .C(n2524), .D(n36169), 
         .Z(n20568)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/new porject/top-xu/oled.v(151[51:79])
    defparam i3_4_lut_adj_86.init = 16'hfffd;
    LUT4 i18644_2_lut_rep_451_3_lut_4_lut (.A(num[0]), .B(num[1]), .C(char[1]), 
         .D(n38667), .Z(n38571)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam i18644_2_lut_rep_451_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_adj_87 (.A(n2527), .B(n19899), .C(n2521), .Z(n36071)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_adj_87.init = 16'h2020;
    LUT4 i10806_4_lut (.A(n38164), .B(n20568), .C(cnt_scan[0]), .D(n38583), 
         .Z(n19899)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;
    defparam i10806_4_lut.init = 16'hc5cf;
    LUT4 mux_2486_i3_4_lut (.A(n9632[2]), .B(n10398), .C(cnt_main[0]), 
         .D(n21041), .Z(n9770[2])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam mux_2486_i3_4_lut.init = 16'h3aca;
    LUT4 i18260_2_lut (.A(n2158[8]), .B(oled_dcn_N_1364), .Z(n2184[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18260_2_lut.init = 16'h2222;
    LUT4 i18261_2_lut (.A(n2158[7]), .B(oled_dcn_N_1364), .Z(n2184[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18261_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_88 (.A(n19_adj_1768), .B(\cnt[4] ), .C(n20_adj_1769), 
         .D(n4), .Z(oled_dcn_N_1364)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_88.init = 16'hfefa;
    LUT4 i18262_2_lut (.A(n2158[6]), .B(oled_dcn_N_1364), .Z(n2184[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18262_2_lut.init = 16'h2222;
    LUT4 i8_4_lut (.A(cnt[5]), .B(cnt[11]), .C(cnt[10]), .D(cnt[13]), 
         .Z(n19_adj_1768)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt[9]), .B(n18), .C(cnt[8]), .D(cnt[6]), .Z(n20_adj_1769)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 n38349_bdd_4_lut (.A(n38349), .B(n38348), .C(n38724), .D(n36261), 
         .Z(n38417)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n38349_bdd_4_lut.init = 16'h00ca;
    LUT4 i7_4_lut (.A(cnt[7]), .B(cnt[14]), .C(cnt[12]), .D(cnt[15]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_89 (.A(cnt_init[0]), .B(n20675), .C(state_back[2]), 
         .D(n38700), .Z(n16_adj_1771)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_89.init = 16'h5444;
    LUT4 i1_3_lut (.A(state_back[2]), .B(n38611), .C(oled_dcn_N_1364), 
         .Z(n20675)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1_3_lut.init = 16'h8c8c;
    LUT4 i18263_2_lut (.A(n2158[5]), .B(oled_dcn_N_1364), .Z(n2184[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18263_2_lut.init = 16'h2222;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n38597), .B(state[3]), .C(n20570), .D(n38662), 
         .Z(n6_adj_1736)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/new porject/top-xu/oled.v(136[5:9])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i27749_2_lut (.A(state[5]), .B(state[3]), .Z(n36689)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i27749_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_rep_416_4_lut (.A(state[3]), .B(n38597), .C(state[5]), 
         .D(state[4]), .Z(n38536)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(160[5:10])
    defparam i2_3_lut_rep_416_4_lut.init = 16'hffef;
    LUT4 n39945_bdd_2_lut_rep_607 (.A(n39945), .B(cnt_main_c[4]), .Z(n39955)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n39945_bdd_2_lut_rep_607.init = 16'heeee;
    FD1P3IX cnt_i0_i0 (.D(n2184[0]), .SP(sys_clk_c_enable_293), .CD(n22136), 
            .CK(sys_clk_c), .Q(\cnt[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    LUT4 i3619_2_lut_rep_595 (.A(cnt_main[2]), .B(cnt_main_c[3]), .Z(n38715)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3619_2_lut_rep_595.init = 16'h8888;
    LUT4 i3487_2_lut_rep_513_3_lut (.A(cnt_main[2]), .B(cnt_main_c[3]), 
         .C(cnt_main_c[4]), .Z(n38633)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i3487_2_lut_rep_513_3_lut.init = 16'hf8f8;
    PFUMX i27860 (.BLUT(n9784[1]), .ALUT(n37301), .C0(n38724), .Z(n37302));
    LUT4 state_0__bdd_4_lut (.A(state[4]), .B(n38631), .C(cnt_write[0]), 
         .D(cnt_write[4]), .Z(n37726)) /* synthesis lut_function=(!((B (C+(D))+!B (C+!(D)))+!A)) */ ;
    defparam state_0__bdd_4_lut.init = 16'h0208;
    LUT4 i18321_2_lut (.A(state[4]), .B(state_back[0]), .Z(n41)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i18321_2_lut.init = 16'h1111;
    LUT4 i27406_3_lut (.A(char_reg[2]), .B(char_reg[0]), .C(cnt_write[2]), 
         .Z(n36715)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27406_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_90 (.A(state[4]), .B(state[0]), .C(n38631), .D(n38584), 
         .Z(n34)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_adj_90.init = 16'h0a22;
    LUT4 cnt_write_4__bdd_4_lut (.A(cnt_write[4]), .B(n38631), .C(state[4]), 
         .D(cnt_write[0]), .Z(n37730)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C)+!B (C (D))))) */ ;
    defparam cnt_write_4__bdd_4_lut.init = 16'h5060;
    LUT4 mux_89_i4_4_lut (.A(n2323), .B(n2332[3]), .C(n9), .D(n38593), 
         .Z(cnt_scan_4__N_1022[3])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/new porject/top-xu/oled.v(140[16] 141[40])
    defparam mux_89_i4_4_lut.init = 16'hc505;
    CCU2D sub_2302_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33306), .COUT(n33307));
    defparam sub_2302_add_2_7.INIT0 = 16'h5999;
    defparam sub_2302_add_2_7.INIT1 = 16'h5999;
    defparam sub_2302_add_2_7.INJECT1_0 = "NO";
    defparam sub_2302_add_2_7.INJECT1_1 = "NO";
    LUT4 i30_4_lut_3_lut (.A(state[3]), .B(state[0]), .C(state[1]), .Z(n17)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i30_4_lut_3_lut.init = 16'h1616;
    LUT4 i1_4_lut_4_lut_adj_91 (.A(state[2]), .B(n3795), .C(n64_adj_1766), 
         .D(char_reg[5]), .Z(n12_adj_1702)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_4_lut_adj_91.init = 16'h5450;
    PFUMX i27858 (.BLUT(n37299), .ALUT(n15209), .C0(cnt_main[0]), .Z(n37300));
    LUT4 i1_4_lut_4_lut_adj_92 (.A(state[2]), .B(char_reg[3]), .C(n64_adj_1765), 
         .D(n3795), .Z(n12_adj_1699)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_4_lut_adj_92.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_93 (.A(state[2]), .B(n3795), .C(n64), .D(char_reg[7]), 
         .Z(n12)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_4_lut_adj_93.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_94 (.A(state[2]), .B(n36153), .C(n14), .D(state_back[1]), 
         .Z(state_back_5__N_999[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_4_lut_adj_94.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_95 (.A(state[2]), .B(char_reg[2]), .C(n64_adj_1764), 
         .D(n3795), .Z(n12_adj_1696)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_4_lut_adj_95.init = 16'h5450;
    LUT4 i1_3_lut_3_lut_adj_96 (.A(state[2]), .B(n3795), .C(state_back[3]), 
         .Z(n12_adj_1710)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_3_lut_3_lut_adj_96.init = 16'h5151;
    LUT4 i1_4_lut_4_lut_adj_97 (.A(state[2]), .B(n3795), .C(n64_adj_1767), 
         .D(char_reg[6]), .Z(n12_adj_1705)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_4_lut_adj_97.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_98 (.A(state[2]), .B(n3795), .C(n64_adj_1759), 
         .D(char_reg[4]), .Z(n12_adj_1690)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_4_lut_adj_98.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_99 (.A(state[2]), .B(char_reg[1]), .C(n64_adj_1761), 
         .D(n3795), .Z(n12_adj_1693)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_4_lut_adj_99.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_100 (.A(state[2]), .B(char_reg[0]), .C(n38288), 
         .D(n3795), .Z(n12_adj_1687)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam i1_4_lut_4_lut_adj_100.init = 16'h5450;
    LUT4 i18264_2_lut (.A(n2158[4]), .B(oled_dcn_N_1364), .Z(n2184[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18264_2_lut.init = 16'h2222;
    LUT4 i18266_2_lut (.A(n2158[3]), .B(oled_dcn_N_1364), .Z(n2184[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18266_2_lut.init = 16'h2222;
    LUT4 i3821_2_lut_rep_485_3_lut (.A(cnt_main[0]), .B(warning_TEM), .C(cnt_main[1]), 
         .Z(n38605)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(91[40:55])
    defparam i3821_2_lut_rep_485_3_lut.init = 16'h8080;
    LUT4 i18270_2_lut (.A(n2158[2]), .B(oled_dcn_N_1364), .Z(n2184[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18270_2_lut.init = 16'h2222;
    LUT4 i18271_2_lut (.A(n2158[1]), .B(oled_dcn_N_1364), .Z(n2184[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18271_2_lut.init = 16'h2222;
    LUT4 i2_2_lut (.A(n2523), .B(n2524), .Z(n8_adj_1725)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i2_2_lut.init = 16'hbbbb;
    LUT4 i4_4_lut (.A(n9), .B(n36001), .C(state[5]), .D(n6_adj_1772), 
         .Z(n36002)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_adj_101 (.A(cnt_scan[4]), .B(n38560), .C(cnt_scan[3]), 
         .D(n38622), .Z(n36001)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_101.init = 16'h1222;
    LUT4 n9_bdd_3_lut_28073 (.A(n16), .B(state[3]), .C(state[1]), .Z(n37744)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n9_bdd_3_lut_28073.init = 16'h0808;
    LUT4 i27729_2_lut (.A(sys_clk_c_enable_219), .B(state[3]), .Z(n22129)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i27729_2_lut.init = 16'h2222;
    CCU2D add_131_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33233), .COUT(n33234), .S0(n4285[13]), 
          .S1(n4285[14]));   // d:/new porject/top-xu/oled.v(188[29:45])
    defparam add_131_15.INIT0 = 16'h5aaa;
    defparam add_131_15.INIT1 = 16'h5aaa;
    defparam add_131_15.INJECT1_0 = "NO";
    defparam add_131_15.INJECT1_1 = "NO";
    LUT4 i27734_2_lut_4_lut (.A(n38545), .B(n39281), .C(n38547), .D(n36542), 
         .Z(sys_clk_c_enable_253)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;
    defparam i27734_2_lut_4_lut.init = 16'h3a00;
    LUT4 i27405_3_lut (.A(char_reg[3]), .B(char_reg[1]), .C(cnt_write[2]), 
         .Z(n36714)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27405_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_102 (.A(cnt_init[0]), .B(n38603), .C(n38612), 
         .D(num_delay[8]), .Z(n4_adj_1730)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;
    defparam i1_3_lut_4_lut_adj_102.init = 16'hf222;
    CCU2D add_131_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33232), .COUT(n33233), .S0(n4285[11]), 
          .S1(n4285[12]));   // d:/new porject/top-xu/oled.v(188[29:45])
    defparam add_131_13.INIT0 = 16'h5aaa;
    defparam add_131_13.INIT1 = 16'h5aaa;
    defparam add_131_13.INJECT1_0 = "NO";
    defparam add_131_13.INJECT1_1 = "NO";
    FD1P3IX char_i0_i0 (.D(char_167__N_1072[0]), .SP(sys_clk_c_enable_298), 
            .CD(n22086), .CK(sys_clk_c), .Q(char[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam char_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_103 (.A(cnt_scan[3]), .B(n20570), .Z(n9)) /* synthesis lut_function=((B)+!A) */ ;   // d:/new porject/top-xu/oled.v(155[8:13])
    defparam i1_2_lut_adj_103.init = 16'hdddd;
    LUT4 i2_4_lut_rep_604 (.A(cnt_main_c[4]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(cnt_main_c[3]), .Z(n38724)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i2_4_lut_rep_604.init = 16'h0110;
    LUT4 i18642_4_lut (.A(n36341), .B(n38667), .C(char[19]), .D(num[1]), 
         .Z(n2524)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam i18642_4_lut.init = 16'h3022;
    LUT4 i3840_3_lut_4_lut (.A(cnt_main[2]), .B(n38605), .C(cnt_main_c[3]), 
         .D(cnt_main_c[4]), .Z(n11[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/oled.v(91[40:55])
    defparam i3840_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_4_lut_adj_104 (.A(n37486), .B(n1575[6]), .C(n36640), 
         .D(state[2]), .Z(n6_adj_1704)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_104.init = 16'hac00;
    LUT4 i1_2_lut_4_lut_adj_105 (.A(n37241), .B(n14_adj_1733), .C(n38506), 
         .D(state[2]), .Z(n6_adj_1698)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_105.init = 16'hac00;
    LUT4 i1_2_lut_4_lut_adj_106 (.A(n22), .B(n1575[2]), .C(n36697), .D(state[2]), 
         .Z(n6_adj_1695)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_106.init = 16'hac00;
    PFUMX i29135 (.BLUT(n39968), .ALUT(n39969), .C0(cnt_main[0]), .Z(n27610));
    PFUMX i28490 (.BLUT(n38727), .ALUT(n38728), .C0(cnt_main[0]), .Z(n38729));
    LUT4 i27821_2_lut (.A(cnt_scan[3]), .B(cnt_scan[1]), .Z(n36618)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i27821_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_606 (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n38726)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(156[8:13])
    defparam i1_2_lut_rep_606.init = 16'heeee;
    LUT4 i18447_2_lut (.A(state[4]), .B(oled_dcn_N_1364), .Z(n2234[4])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/new porject/top-xu/oled.v(127[20] 130[14])
    defparam i18447_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_4_lut_adj_107 (.A(n37237), .B(n1575[1]), .C(n36697), 
         .D(state[2]), .Z(n6_adj_1692)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_107.init = 16'hac00;
    LUT4 i1_2_lut_rep_512_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), 
         .C(cnt_scan[3]), .D(cnt_scan[2]), .Z(n38632)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(156[8:13])
    defparam i1_2_lut_rep_512_3_lut_4_lut.init = 16'he000;
    LUT4 i1_2_lut_3_lut_2_lut (.A(state[1]), .B(state[2]), .Z(n38656)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1_2_lut_3_lut_2_lut.init = 16'h1111;
    LUT4 i27552_3_lut_4_lut (.A(n38593), .B(n38685), .C(state[5]), .D(n21), 
         .Z(n23)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i27552_3_lut_4_lut.init = 16'hf101;
    LUT4 i1_2_lut_4_lut_adj_108 (.A(n37417), .B(n37424), .C(n38506), .D(state[2]), 
         .Z(n6_adj_1686)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_108.init = 16'hac00;
    LUT4 cnt_scan_3__bdd_4_lut_2_lut_2_lut (.A(cnt_scan[3]), .B(cnt_scan[2]), 
         .Z(n37675)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(156[8:13])
    defparam cnt_scan_3__bdd_4_lut_2_lut_2_lut.init = 16'h6666;
    LUT4 i27608_3_lut (.A(n37264), .B(n9776[2]), .C(n36687), .Z(n9837[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27608_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_109 (.A(n37497), .B(n1575[7]), .C(n36640), 
         .D(state[2]), .Z(n6)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_109.init = 16'hac00;
    LUT4 n37726_bdd_3_lut_4_lut (.A(state[0]), .B(n38614), .C(state[1]), 
         .D(n37726), .Z(n37727)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam n37726_bdd_3_lut_4_lut.init = 16'hef02;
    LUT4 i1_4_lut_adj_110 (.A(state[0]), .B(x_ph[0]), .C(n16_adj_1774), 
         .D(n38550), .Z(x_ph_7__N_725[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_110.init = 16'hdc50;
    LUT4 i1_3_lut_4_lut_adj_111 (.A(cnt_init[2]), .B(n38699), .C(cnt_init[1]), 
         .D(cnt_init[0]), .Z(n59)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(120[8:12])
    defparam i1_3_lut_4_lut_adj_111.init = 16'h1011;
    LUT4 i33_4_lut (.A(x_ph[0]), .B(x_ph_7__N_1040[0]), .C(state[1]), 
         .D(n38614), .Z(n16_adj_1774)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut.init = 16'h0aca;
    LUT4 i2_4_lut_adj_112 (.A(n38577), .B(n27610), .C(x_ph[0]), .D(n3549), 
         .Z(x_ph_7__N_1040[0])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i2_4_lut_adj_112.init = 16'hf777;
    LUT4 i1_3_lut_rep_430_4_lut (.A(state[2]), .B(n38599), .C(state[0]), 
         .D(state[1]), .Z(n38550)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/new porject/top-xu/oled.v(89[5:9])
    defparam i1_3_lut_rep_430_4_lut.init = 16'hfeee;
    LUT4 i2_3_lut_rep_432_4_lut (.A(state[2]), .B(n38599), .C(state[1]), 
         .D(state[0]), .Z(n38552)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/new porject/top-xu/oled.v(89[5:9])
    defparam i2_3_lut_rep_432_4_lut.init = 16'hffef;
    LUT4 i3925_1_lut (.A(cnt_write[0]), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/oled.v(162[25:41])
    defparam i3925_1_lut.init = 16'h5555;
    CCU2D sub_2302_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33305), .COUT(n33306));
    defparam sub_2302_add_2_5.INIT0 = 16'h5999;
    defparam sub_2302_add_2_5.INIT1 = 16'h5999;
    defparam sub_2302_add_2_5.INJECT1_0 = "NO";
    defparam sub_2302_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_2302_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33304), .COUT(n33305));
    defparam sub_2302_add_2_3.INIT0 = 16'h5999;
    defparam sub_2302_add_2_3.INIT1 = 16'h5999;
    defparam sub_2302_add_2_3.INJECT1_0 = "NO";
    defparam sub_2302_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_2302_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n33304));
    defparam sub_2302_add_2_1.INIT0 = 16'h0000;
    defparam sub_2302_add_2_1.INIT1 = 16'h5999;
    defparam sub_2302_add_2_1.INJECT1_0 = "NO";
    defparam sub_2302_add_2_1.INJECT1_1 = "NO";
    LUT4 i33_4_lut_adj_113 (.A(num_delay[15]), .B(num_delay_15__N_1256[15]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1753)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_113.init = 16'hca0a;
    LUT4 i33_4_lut_adj_114 (.A(num_delay[14]), .B(num_delay_15__N_1256[14]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1741)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_114.init = 16'hca0a;
    LUT4 i1_4_lut_adj_115 (.A(n38570), .B(num_delay[14]), .C(n16_adj_1729), 
         .D(n38612), .Z(num_delay_15__N_1256[14])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_115.init = 16'hfefa;
    LUT4 gnd_bdd_2_lut_27904 (.A(n37366), .B(cnt_main[0]), .Z(n37367)) /* synthesis lut_function=(A (B)) */ ;
    defparam gnd_bdd_2_lut_27904.init = 16'h8888;
    FD1P3IX cnt_main_i0_i1 (.D(cnt_main_4__N_1012[1]), .SP(sys_clk_c_enable_314), 
            .CD(n21962), .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    LUT4 i33_4_lut_adj_116 (.A(num_delay[13]), .B(num_delay_15__N_1256[13]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1747)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_116.init = 16'hca0a;
    LUT4 i1_4_lut_adj_117 (.A(n38570), .B(num_delay[13]), .C(n16_adj_1735), 
         .D(n38612), .Z(num_delay_15__N_1256[13])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_117.init = 16'hfefa;
    LUT4 i33_4_lut_adj_118 (.A(num_delay[12]), .B(num_delay_15__N_1256[12]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1740)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_118.init = 16'hca0a;
    LUT4 i1_3_lut_adj_119 (.A(state[2]), .B(state_back[3]), .C(n8_adj_1742), 
         .Z(n6_adj_1709)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_119.init = 16'h8080;
    CCU2D add_131_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33231), .COUT(n33232), .S0(n4285[9]), .S1(n4285[10]));   // d:/new porject/top-xu/oled.v(188[29:45])
    defparam add_131_11.INIT0 = 16'h5aaa;
    defparam add_131_11.INIT1 = 16'h5aaa;
    defparam add_131_11.INJECT1_0 = "NO";
    defparam add_131_11.INJECT1_1 = "NO";
    LUT4 i33_4_lut_adj_120 (.A(num_delay[11]), .B(num_delay_15__N_1256[11]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1739)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_120.init = 16'hca0a;
    LUT4 i33_4_lut_adj_121 (.A(num_delay[10]), .B(num_delay_15__N_1256[10]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1749)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_121.init = 16'hca0a;
    LUT4 i33_4_lut_adj_122 (.A(num_delay[9]), .B(num_delay_15__N_1256[9]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1754)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_122.init = 16'hca0a;
    LUT4 i33_4_lut_adj_123 (.A(num_delay[8]), .B(num_delay_15__N_1256[8]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1756)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_123.init = 16'hca0a;
    LUT4 i33_4_lut_adj_124 (.A(num_delay[7]), .B(num_delay_15__N_1256[7]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1755)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_124.init = 16'hca0a;
    LUT4 i1_4_lut_adj_125 (.A(n38570), .B(num_delay[7]), .C(n16_adj_1728), 
         .D(n38612), .Z(num_delay_15__N_1256[7])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_125.init = 16'hfefa;
    LUT4 i33_4_lut_adj_126 (.A(num_delay[6]), .B(num_delay_15__N_1256[6]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1750)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_126.init = 16'hca0a;
    LUT4 i33_4_lut_adj_127 (.A(num_delay[5]), .B(num_delay_15__N_1256[5]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1748)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_127.init = 16'hca0a;
    LUT4 i1_4_lut_adj_128 (.A(n38570), .B(num_delay[5]), .C(n16_adj_1731), 
         .D(n38612), .Z(num_delay_15__N_1256[5])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_128.init = 16'hfefa;
    LUT4 i33_4_lut_adj_129 (.A(num_delay[4]), .B(num_delay_15__N_1256[4]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1746)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_129.init = 16'hca0a;
    LUT4 i33_4_lut_adj_130 (.A(num_delay[3]), .B(num_delay_15__N_1256[3]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1745)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_130.init = 16'hca0a;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_init[0]), .B(n38603), .C(oled_dcn_N_1364), 
         .D(n38611), .Z(n16)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;   // d:/new porject/top-xu/oled.v(121[8:12])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h5111;
    LUT4 i1_4_lut_adj_131 (.A(n24_adj_1688), .B(char_reg[0]), .C(n38576), 
         .D(n27), .Z(char_reg_7__N_917[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_131.init = 16'heca0;
    LUT4 i2_4_lut_adj_132 (.A(n38613), .B(n38685), .C(n21_adj_1763), .D(state[3]), 
         .Z(n27)) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;
    defparam i2_4_lut_adj_132.init = 16'hfefb;
    FD1P3IX cnt_main_i0_i2 (.D(n11[2]), .SP(sys_clk_c_enable_314), .CD(n21994), 
            .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_133 (.A(n38570), .B(num_delay[3]), .C(n16_adj_1734), 
         .D(n38612), .Z(num_delay_15__N_1256[3])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_133.init = 16'hfefa;
    LUT4 i1_2_lut_adj_134 (.A(state[2]), .B(state[0]), .Z(n21_adj_1763)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_134.init = 16'h8888;
    LUT4 i18758_2_lut_3_lut_4_lut (.A(cnt_scan[4]), .B(n38632), .C(state[2]), 
         .D(n38593), .Z(n49)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/new porject/top-xu/oled.v(142[7] 158[14])
    defparam i18758_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i41_4_lut_adj_135 (.A(num_delay[2]), .B(n38573), .C(state[2]), 
         .D(n36009), .Z(n24_adj_1751)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i41_4_lut_adj_135.init = 16'hc505;
    LUT4 i1_4_lut_adj_136 (.A(cnt_init[0]), .B(num_delay[2]), .C(n15_adj_1775), 
         .D(n38612), .Z(n36009)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_136.init = 16'h23af;
    LUT4 i1_4_lut_adj_137 (.A(num_delay[2]), .B(n38700), .C(n38611), .D(oled_dcn_N_1364), 
         .Z(n15_adj_1775)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_137.init = 16'ha8f8;
    LUT4 i33_4_lut_adj_138 (.A(num_delay[1]), .B(num_delay_15__N_1256[1]), 
         .C(state[2]), .D(n38573), .Z(n16_adj_1744)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut_adj_138.init = 16'hca0a;
    LUT4 i1_4_lut_adj_139 (.A(n24_adj_1713), .B(state_back[5]), .C(n38576), 
         .D(n27), .Z(state_back_5__N_999[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_139.init = 16'heca0;
    LUT4 i1_4_lut_adj_140 (.A(n24_adj_1711), .B(state_back[3]), .C(n38576), 
         .D(n27), .Z(state_back_5__N_999[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_140.init = 16'heca0;
    CCU2D add_131_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33230), .COUT(n33231), .S0(n4285[7]), .S1(n4285[8]));   // d:/new porject/top-xu/oled.v(188[29:45])
    defparam add_131_9.INIT0 = 16'h5aaa;
    defparam add_131_9.INIT1 = 16'h5aaa;
    defparam add_131_9.INJECT1_0 = "NO";
    defparam add_131_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_141 (.A(n24_adj_1708), .B(state_back[2]), .C(n38576), 
         .D(n27), .Z(state_back_5__N_999[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_141.init = 16'heca0;
    CCU2D add_131_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33229), .COUT(n33230), .S0(n4285[5]), .S1(n4285[6]));   // d:/new porject/top-xu/oled.v(188[29:45])
    defparam add_131_7.INIT0 = 16'h5aaa;
    defparam add_131_7.INIT1 = 16'h5aaa;
    defparam add_131_7.INJECT1_0 = "NO";
    defparam add_131_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_142 (.A(n24), .B(char_reg[7]), .C(n38576), .D(n27), 
         .Z(char_reg_7__N_917[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_142.init = 16'heca0;
    LUT4 n3068_bdd_3_lut_28148 (.A(n3824), .B(n4202), .C(cnt_scan[0]), 
         .Z(n37873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3068_bdd_3_lut_28148.init = 16'hcaca;
    LUT4 i1_4_lut_adj_143 (.A(n24_adj_1706), .B(char_reg[6]), .C(n38576), 
         .D(n27), .Z(char_reg_7__N_917[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_143.init = 16'heca0;
    LUT4 i1_4_lut_adj_144 (.A(n24_adj_1703), .B(char_reg[5]), .C(n38576), 
         .D(n27), .Z(char_reg_7__N_917[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_144.init = 16'heca0;
    LUT4 i1_4_lut_adj_145 (.A(n24_adj_1691), .B(char_reg[4]), .C(n38576), 
         .D(n27), .Z(char_reg_7__N_917[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_145.init = 16'heca0;
    LUT4 i1_4_lut_adj_146 (.A(n24_adj_1700), .B(n27), .C(n38576), .D(char_reg[3]), 
         .Z(char_reg_7__N_917[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_146.init = 16'heca0;
    LUT4 i1_4_lut_adj_147 (.A(n35913), .B(n35998), .C(state[0]), .D(n38575), 
         .Z(sys_clk_c_enable_11)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_147.init = 16'ha088;
    LUT4 i1_4_lut_adj_148 (.A(n24_adj_1697), .B(n27), .C(n38576), .D(char_reg[2]), 
         .Z(char_reg_7__N_917[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_148.init = 16'heca0;
    LUT4 i2_4_lut_adj_149 (.A(n38681), .B(state[4]), .C(n36789), .D(cnt_write[2]), 
         .Z(n35998)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut_adj_149.init = 16'h0004;
    LUT4 i27614_2_lut (.A(cnt_write[4]), .B(cnt_write[0]), .Z(n36789)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i27614_2_lut.init = 16'h6666;
    CCU2D add_131_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33228), .COUT(n33229), .S0(n4285[3]), .S1(n4285[4]));   // d:/new porject/top-xu/oled.v(188[29:45])
    defparam add_131_5.INIT0 = 16'h5aaa;
    defparam add_131_5.INIT1 = 16'h5aaa;
    defparam add_131_5.INJECT1_0 = "NO";
    defparam add_131_5.INJECT1_1 = "NO";
    LUT4 i27034_3_lut (.A(char[3]), .B(char[11]), .C(num[0]), .Z(n36341)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27034_3_lut.init = 16'hcaca;
    CCU2D add_131_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33227), .COUT(n33228), .S0(n4285[1]), .S1(n4285[2]));   // d:/new porject/top-xu/oled.v(188[29:45])
    defparam add_131_3.INIT0 = 16'h5aaa;
    defparam add_131_3.INIT1 = 16'h5aaa;
    defparam add_131_3.INJECT1_0 = "NO";
    defparam add_131_3.INJECT1_1 = "NO";
    LUT4 i27120_2_lut_3_lut_4_lut_4_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(n38617), .D(n38615), .Z(n36428)) /* synthesis lut_function=(A (B+(C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i27120_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hf8e8;
    CCU2D add_131_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33227), .S1(n4285[0]));   // d:/new porject/top-xu/oled.v(188[29:45])
    defparam add_131_1.INIT0 = 16'hF000;
    defparam add_131_1.INIT1 = 16'h5555;
    defparam add_131_1.INJECT1_0 = "NO";
    defparam add_131_1.INJECT1_1 = "NO";
    LUT4 mux_1994_i1_4_lut (.A(cnt_write[4]), .B(state[0]), .C(n38575), 
         .D(state[4]), .Z(n6331[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(80[4] 191[11])
    defparam mux_1994_i1_4_lut.init = 16'hcac0;
    CCU2D add_57_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33226), 
          .S0(n2158[15]));   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam add_57_17.INIT0 = 16'h5aaa;
    defparam add_57_17.INIT1 = 16'h0000;
    defparam add_57_17.INJECT1_0 = "NO";
    defparam add_57_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_150 (.A(n24_adj_1694), .B(n27), .C(n38576), .D(char_reg[1]), 
         .Z(char_reg_7__N_917[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_150.init = 16'heca0;
    LUT4 n3068_bdd_3_lut_28164 (.A(n3068), .B(n3446), .C(cnt_scan[0]), 
         .Z(n37874)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3068_bdd_3_lut_28164.init = 16'hcaca;
    CCU2D add_57_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33225), 
          .COUT(n33226), .S0(n2158[13]), .S1(n2158[14]));   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam add_57_15.INIT0 = 16'h5aaa;
    defparam add_57_15.INIT1 = 16'h5aaa;
    defparam add_57_15.INJECT1_0 = "NO";
    defparam add_57_15.INJECT1_1 = "NO";
    LUT4 n3068_bdd_4_lut (.A(n2690), .B(cnt_scan[1]), .C(cnt_scan[0]), 
         .D(cnt_scan[2]), .Z(n37877)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n3068_bdd_4_lut.init = 16'h8000;
    FD1P3IX cnt_scan_i0_i0 (.D(cnt_scan_4__N_1022[0]), .SP(sys_clk_c_enable_310), 
            .CD(n25424), .CK(sys_clk_c), .Q(cnt_scan[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_scan_i0_i0.GSR = "ENABLED";
    LUT4 i33_4_lut_adj_151 (.A(x_ph[2]), .B(x_ph_7__N_1040[2]), .C(state[1]), 
         .D(n38614), .Z(n16_adj_1743)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_151.init = 16'h0aca;
    LUT4 n2526_bdd_4_lut (.A(n38571), .B(n2527), .C(n38539), .D(n2524), 
         .Z(n37879)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+!(D)))+!A)) */ ;
    defparam n2526_bdd_4_lut.init = 16'h0280;
    LUT4 i2_4_lut_adj_152 (.A(n27615), .B(n36428), .C(x_ph[2]), .D(n3549), 
         .Z(x_ph_7__N_1040[2])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i2_4_lut_adj_152.init = 16'hf777;
    LUT4 i1_2_lut_4_lut_adj_153 (.A(cnt_scan[4]), .B(n38641), .C(n38726), 
         .D(state[4]), .Z(n6_adj_1772)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_153.init = 16'h00fb;
    LUT4 i33_4_lut_adj_154 (.A(x_ph[1]), .B(x_ph_7__N_1040[1]), .C(state[1]), 
         .D(n38614), .Z(n16_adj_1752)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_154.init = 16'h0aca;
    LUT4 i2_3_lut_adj_155 (.A(x_ph[1]), .B(n27610), .C(n16_adj_1727), 
         .Z(n6_adj_1776)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam i2_3_lut_adj_155.init = 16'hb3b3;
    CCU2D add_57_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33224), 
          .COUT(n33225), .S0(n2158[11]), .S1(n2158[12]));   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam add_57_13.INIT0 = 16'h5aaa;
    defparam add_57_13.INIT1 = 16'h5aaa;
    defparam add_57_13.INJECT1_0 = "NO";
    defparam add_57_13.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_156 (.A(cnt_main[1]), .B(n38724), .C(cnt_main[0]), 
         .D(n36261), .Z(n36066)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut_adj_156.init = 16'h0010;
    LUT4 i27403_3_lut (.A(char_reg[5]), .B(char_reg[4]), .C(cnt_write[1]), 
         .Z(n36712)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27403_3_lut.init = 16'hcaca;
    LUT4 i27801_4_lut (.A(cnt_main[2]), .B(n38521), .C(cnt_main[1]), .D(cnt_main[0]), 
         .Z(n35892)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i27801_4_lut.init = 16'h0311;
    LUT4 i92_4_lut (.A(n33426), .B(n2691), .C(cnt_scan[1]), .D(n38701), 
         .Z(n57_adj_1719)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i92_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_157 (.A(cnt_init[2]), .B(n38699), .C(state[4]), 
         .D(cnt_init[0]), .Z(n6_adj_1760)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(120[8:12])
    defparam i1_2_lut_3_lut_4_lut_adj_157.init = 16'h0010;
    LUT4 i1_4_lut_adj_158 (.A(state[2]), .B(n38570), .C(n19_adj_1777), 
         .D(n16_adj_1771), .Z(n6_adj_1707)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_158.init = 16'haaa8;
    LUT4 i3876_3_lut_4_lut (.A(cnt_init[2]), .B(n38671), .C(cnt_init[3]), 
         .D(cnt_init[4]), .Z(n2122[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/new porject/top-xu/oled.v(119[49:64])
    defparam i3876_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3833_2_lut_3_lut_4_lut (.A(cnt_main[1]), .B(n38672), .C(cnt_main_c[3]), 
         .D(cnt_main[2]), .Z(n11[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(91[40:55])
    defparam i3833_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i92_4_lut_adj_159 (.A(n33426), .B(n36299), .C(cnt_scan[1]), .D(n6_adj_1762), 
         .Z(n57)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i92_4_lut_adj_159.init = 16'h3a0a;
    LUT4 i1_2_lut_adj_160 (.A(state[2]), .B(char_reg_7__N_1240[5]), .Z(n6_adj_1701)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_160.init = 16'h8888;
    LUT4 i18252_2_lut (.A(n2158[0]), .B(oled_dcn_N_1364), .Z(n2184[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam i18252_2_lut.init = 16'h2222;
    FD1P3IX cnt_main_i0_i3 (.D(n11[3]), .SP(sys_clk_c_enable_314), .CD(n21994), 
            .CK(sys_clk_c), .Q(cnt_main_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i4 (.D(n11[4]), .SP(sys_clk_c_enable_314), .CD(n21994), 
            .CK(sys_clk_c), .Q(cnt_main_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_main_i0_i4.GSR = "ENABLED";
    LUT4 hundres_0__N_316_3__bdd_4_lut_27901 (.A(\hundres_0__N_316[3]_adj_3 ), 
         .B(n38452), .C(n38595), .D(\hundres_1__N_306[3] ), .Z(n37378)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A !(B (C+!(D))+!B ((D)+!C))) */ ;
    defparam hundres_0__N_316_3__bdd_4_lut_27901.init = 16'h8e30;
    LUT4 hundres_0__N_316_3__bdd_4_lut_28733 (.A(\hundres_0__N_316[3]_adj_4 ), 
         .B(n38594), .C(\hundres_1__N_306[3]_adj_5 ), .D(n38453), .Z(n37379)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam hundres_0__N_316_3__bdd_4_lut_28733.init = 16'hb02c;
    LUT4 i1_4_lut_adj_161 (.A(n38656), .B(n36100), .C(n69), .D(n36103), 
         .Z(sys_clk_c_enable_319)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_161.init = 16'hc888;
    FD1P3IX cnt_init_i0_i1 (.D(n2122[1]), .SP(sys_clk_c_enable_319), .CD(n21989), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_162 (.A(n35930), .B(n38528), .C(n59), .D(n38774), 
         .Z(n69)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_162.init = 16'heaee;
    CCU2D add_57_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33223), 
          .COUT(n33224), .S0(n2158[9]), .S1(n2158[10]));   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam add_57_11.INIT0 = 16'h5aaa;
    defparam add_57_11.INIT1 = 16'h5aaa;
    defparam add_57_11.INJECT1_0 = "NO";
    defparam add_57_11.INJECT1_1 = "NO";
    LUT4 i6_3_lut_4_lut (.A(cnt_write[2]), .B(n38675), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n4261[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam i6_3_lut_4_lut.init = 16'h78f0;
    PFUMX i29127 (.BLUT(n39956), .ALUT(n39957), .C0(cnt_main[1]), .Z(n39958));
    LUT4 i27794_2_lut_4_lut_4_lut (.A(n38694), .B(n38552), .C(n38724), 
         .D(n8832), .Z(n36190)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i27794_2_lut_4_lut_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_163 (.A(state[2]), .B(n38272), .C(char_reg[4]), 
         .D(n38528), .Z(n6_adj_1689)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_163.init = 16'ha088;
    LUT4 i1_4_lut_4_lut_adj_164 (.A(cnt_scan[2]), .B(n38682), .C(cnt_scan[3]), 
         .D(cnt_scan[4]), .Z(n3795)) /* synthesis lut_function=(A (C+(D))+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_164.init = 16'hffa4;
    LUT4 i2_4_lut_adj_165 (.A(n38569), .B(cnt_init[0]), .C(n38804), .D(n38528), 
         .Z(n36000)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_165.init = 16'h0100;
    LUT4 i1_2_lut_rep_465_4_lut (.A(cnt_init[1]), .B(n38683), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n38585)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/new porject/top-xu/oled.v(118[7] 134[14])
    defparam i1_2_lut_rep_465_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_166 (.A(cnt_init[2]), .B(n38699), .C(cnt_init[0]), 
         .D(n38522), .Z(n8_adj_1742)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_166.init = 16'hefec;
    LUT4 i1_2_lut_4_lut_adj_167 (.A(cnt_init[2]), .B(n38699), .C(cnt_init[0]), 
         .D(state_back[2]), .Z(n19_adj_1777)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_167.init = 16'hec00;
    LUT4 i1_2_lut_4_lut_adj_168 (.A(cnt_init[2]), .B(n38699), .C(cnt_init[0]), 
         .D(state_back[5]), .Z(n19)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_168.init = 16'hec00;
    LUT4 i1_4_lut_adj_169 (.A(n35930), .B(n36100), .C(n38656), .D(n36103), 
         .Z(n21989)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_169.init = 16'hc8c0;
    LUT4 i3855_2_lut (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n2122[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(119[49:64])
    defparam i3855_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_adj_170 (.A(state[1]), .B(n38662), .C(n30), .D(state[0]), 
         .Z(n36153)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_170.init = 16'hfffe;
    CCU2D add_57_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33222), 
          .COUT(n33223), .S0(n2158[7]), .S1(n2158[8]));   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam add_57_9.INIT0 = 16'h5aaa;
    defparam add_57_9.INIT1 = 16'h5aaa;
    defparam add_57_9.INJECT1_0 = "NO";
    defparam add_57_9.INJECT1_1 = "NO";
    CCU2D add_57_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33221), 
          .COUT(n33222), .S0(n2158[5]), .S1(n2158[6]));   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam add_57_7.INIT0 = 16'h5aaa;
    defparam add_57_7.INIT1 = 16'h5aaa;
    defparam add_57_7.INJECT1_0 = "NO";
    defparam add_57_7.INJECT1_1 = "NO";
    LUT4 n2525_bdd_4_lut (.A(n38539), .B(n2523), .C(n38571), .D(n2524), 
         .Z(n38164)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam n2525_bdd_4_lut.init = 16'h0420;
    LUT4 i1_3_lut_4_lut_4_lut_adj_171 (.A(n38684), .B(state[2]), .C(n3795), 
         .D(n38662), .Z(n20)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_171.init = 16'hccdc;
    LUT4 i1_3_lut_rep_455_4_lut (.A(n38662), .B(n38686), .C(state[1]), 
         .D(state[0]), .Z(n38575)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_rep_455_4_lut.init = 16'h0110;
    LUT4 i2654_2_lut_rep_425_3_lut_4_lut (.A(n38662), .B(n38686), .C(state[1]), 
         .D(state[0]), .Z(n38545)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2654_2_lut_rep_425_3_lut_4_lut.init = 16'h0100;
    L6MUX21 i23987 (.D0(n36713), .D1(n36716), .SD(cnt_write[3]), .Z(n1));
    PFUMX i29024 (.BLUT(n39761), .ALUT(n39759), .C0(state[0]), .Z(x_ph_7__N_725[4]));
    LUT4 i18555_3_lut_rep_457_4_lut_4_lut (.A(n38695), .B(n38617), .C(n38687), 
         .D(cnt_main[2]), .Z(n38577)) /* synthesis lut_function=((B (C+!(D)))+!A) */ ;
    defparam i18555_3_lut_rep_457_4_lut_4_lut.init = 16'hd5dd;
    LUT4 i27433_3_lut (.A(n3830), .B(n4208), .C(cnt_scan[0]), .Z(n36742)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27433_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(n38656), .B(n38597), .C(n38662), 
         .D(state[3]), .Z(n25424)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i27748_2_lut_3_lut_4_lut_4_lut_4_lut (.A(n38656), .B(n38546), .C(n38599), 
         .D(n38597), .Z(sys_clk_c_enable_276)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C+(D))))) */ ;
    defparam i27748_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h3b30;
    LUT4 i27746_2_lut_rep_379_3_lut_4_lut_4_lut_4_lut (.A(n38656), .B(n38536), 
         .C(n38599), .D(n38597), .Z(sys_clk_c_enable_269)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C+(D))))) */ ;
    defparam i27746_2_lut_rep_379_3_lut_4_lut_4_lut_4_lut.init = 16'h3b30;
    FD1P3IX cnt_init_i0_i2 (.D(n2122[2]), .SP(sys_clk_c_enable_319), .CD(n21989), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    LUT4 oled_dcn_N_1373_bdd_4_lut (.A(n38586), .B(state[3]), .C(n38290), 
         .D(state[2]), .Z(n38414)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam oled_dcn_N_1373_bdd_4_lut.init = 16'hf044;
    PFUMX i29001 (.BLUT(n39722), .ALUT(n39721), .C0(state[5]), .Z(n39723));
    LUT4 i5302_2_lut_rep_408_4_lut (.A(n38700), .B(cnt_init[0]), .C(n38699), 
         .D(oled_dcn_N_1364), .Z(n38528)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/oled.v(132[8:12])
    defparam i5302_2_lut_rep_408_4_lut.init = 16'hfffe;
    LUT4 i12972_2_lut_3_lut_4_lut_4_lut (.A(n38536), .B(n38600), .C(n4283), 
         .D(n38580), .Z(n22036)) /* synthesis lut_function=(!(A (B+!(D))+!A !(C (D)))) */ ;
    defparam i12972_2_lut_3_lut_4_lut_4_lut.init = 16'h7200;
    LUT4 i1_4_lut_then_4_lut_adj_172 (.A(n27797), .B(state[2]), .C(state[3]), 
         .D(state[0]), .Z(n38746)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_4_lut_then_4_lut_adj_172.init = 16'h0001;
    LUT4 i1_4_lut_else_4_lut_adj_173 (.A(n27797), .B(state[2]), .C(state[3]), 
         .D(state[0]), .Z(n38745)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_else_4_lut_adj_173.init = 16'h0114;
    LUT4 n38131_bdd_3_lut_4_lut (.A(char[19]), .B(n38708), .C(num[2]), 
         .D(n38131), .Z(n38132)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam n38131_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(n38667), .B(n38708), .C(char[1]), 
         .D(char[5]), .Z(n36169)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(138[11:14])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i7997_2_lut_3_lut_rep_464_4_lut (.A(cnt_write[2]), .B(n38681), 
         .C(cnt_write[4]), .D(cnt_write[0]), .Z(n38584)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam i7997_2_lut_3_lut_rep_464_4_lut.init = 16'hf0e0;
    LUT4 n9_bdd_3_lut_4_lut_4_lut (.A(n38695), .B(n16_adj_1727), .C(state[1]), 
         .D(n38619), .Z(n37745)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C)))) */ ;
    defparam n9_bdd_3_lut_4_lut_4_lut.init = 16'h3010;
    LUT4 i18319_3_lut_4_lut (.A(n38715), .B(cnt_main_c[4]), .C(n38672), 
         .D(cnt_main[1]), .Z(cnt_main_4__N_1012[1])) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;
    defparam i18319_3_lut_4_lut.init = 16'heffe;
    LUT4 i18246_3_lut_4_lut (.A(n38715), .B(cnt_main_c[4]), .C(warning_TEM), 
         .D(cnt_main[0]), .Z(cnt_main_4__N_1012[0])) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;
    defparam i18246_3_lut_4_lut.init = 16'heffe;
    FD1P3IX cnt_init_i0_i3 (.D(n2122[3]), .SP(sys_clk_c_enable_319), .CD(n21989), 
            .CK(sys_clk_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_init_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i4 (.D(n2122[4]), .SP(sys_clk_c_enable_319), .CD(n21989), 
            .CK(sys_clk_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=413, LSE_RLINE=443 */ ;   // d:/new porject/top-xu/oled.v(79[12] 192[6])
    defparam cnt_init_i0_i4.GSR = "ENABLED";
    LUT4 i27424_3_lut (.A(n3826), .B(n4204), .C(cnt_scan[0]), .Z(n36733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27424_3_lut.init = 16'hcaca;
    PFUMX i28907 (.BLUT(n39545), .ALUT(n39543), .C0(cnt_scan[3]), .Z(n39546));
    LUT4 i18704_2_lut_rep_521 (.A(cnt_scan[2]), .B(cnt_scan[3]), .Z(n38641)) /* synthesis lut_function=(A (B)) */ ;
    defparam i18704_2_lut_rep_521.init = 16'h8888;
    LUT4 i2_3_lut_rep_473_4_lut (.A(cnt_scan[2]), .B(cnt_scan[3]), .C(n38726), 
         .D(cnt_scan[4]), .Z(n38593)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_rep_473_4_lut.init = 16'hfff7;
    CCU2D add_57_5 (.A0(\cnt[3] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[4] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33220), 
          .COUT(n33221), .S0(n2158[3]), .S1(n2158[4]));   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam add_57_5.INIT0 = 16'h5aaa;
    defparam add_57_5.INIT1 = 16'h5aaa;
    defparam add_57_5.INJECT1_0 = "NO";
    defparam add_57_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_466_3_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[3]), 
         .C(cnt_scan[4]), .D(n38726), .Z(n38586)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_rep_466_3_lut_4_lut.init = 16'hf8f0;
    PFUMX i28904 (.BLUT(n39541), .ALUT(n39540), .C0(cnt_scan[1]), .Z(n39542));
    PFUMX i28896 (.BLUT(n39528), .ALUT(n39526), .C0(cnt_scan[3]), .Z(n39529));
    LUT4 i1229_2_lut_rep_435_3_lut_4_lut_2_lut_3_lut (.A(cnt_scan[2]), .B(cnt_scan[3]), 
         .C(cnt_scan[4]), .Z(n38555)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1229_2_lut_rep_435_3_lut_4_lut_2_lut_3_lut.init = 16'hf8f8;
    CCU2D add_57_3 (.A0(\cnt[1] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[2] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33219), 
          .COUT(n33220), .S0(n2158[1]), .S1(n2158[2]));   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam add_57_3.INIT0 = 16'h5aaa;
    defparam add_57_3.INIT1 = 16'h5aaa;
    defparam add_57_3.INJECT1_0 = "NO";
    defparam add_57_3.INJECT1_1 = "NO";
    LUT4 i27423_3_lut (.A(n3070), .B(n3448), .C(cnt_scan[0]), .Z(n36732)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27423_3_lut.init = 16'hcaca;
    PFUMX i28412 (.BLUT(n38286), .ALUT(n38284), .C0(cnt_scan[3]), .Z(n38287));
    PFUMX i28893 (.BLUT(n39524), .ALUT(n39523), .C0(cnt_scan[1]), .Z(n39525));
    CCU2D add_57_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n33219), 
          .S1(n2158[0]));   // d:/new porject/top-xu/oled.v(128[19:29])
    defparam add_57_1.INIT0 = 16'hF000;
    defparam add_57_1.INIT1 = 16'h5555;
    defparam add_57_1.INJECT1_0 = "NO";
    defparam add_57_1.INJECT1_1 = "NO";
    PFUMX i28883 (.BLUT(n39499), .ALUT(n39497), .C0(cnt_scan[3]), .Z(n39500));
    PFUMX i28409 (.BLUT(n38282), .ALUT(n36742), .C0(cnt_scan[1]), .Z(n38283));
    LUT4 i2_3_lut_adj_174 (.A(state[1]), .B(state[0]), .C(state[2]), .Z(n36103)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut_adj_174.init = 16'h1010;
    LUT4 i3_4_lut_adj_175 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(cnt_scan[4]), 
         .D(cnt_scan[1]), .Z(n20570)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/new porject/top-xu/oled.v(156[8:13])
    defparam i3_4_lut_adj_175.init = 16'hfdff;
    LUT4 i27421_3_lut (.A(n3825), .B(n4203), .C(cnt_scan[0]), .Z(n36730)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27421_3_lut.init = 16'hcaca;
    LUT4 char_2__bdd_3_lut_28301 (.A(char[11]), .B(char[8]), .C(num[0]), 
         .Z(n38129)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam char_2__bdd_3_lut_28301.init = 16'hacac;
    LUT4 i4032_4_lut (.A(\hundres_0__N_313[1] ), .B(n21026), .C(\hundres_0__N_313[1]_adj_6 ), 
         .D(sw1_c), .Z(n12120)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;
    defparam i4032_4_lut.init = 16'h3c66;
    LUT4 char_2__bdd_3_lut (.A(char[2]), .B(char[8]), .C(num[0]), .Z(n38130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam char_2__bdd_3_lut.init = 16'hcaca;
    LUT4 i27420_3_lut (.A(n3069), .B(n3447), .C(cnt_scan[0]), .Z(n36729)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27420_3_lut.init = 16'hcaca;
    PFUMX i28881 (.BLUT(n39495), .ALUT(n39494), .C0(cnt_scan[0]), .Z(n39496));
    LUT4 i1_3_lut_adj_176 (.A(n10380), .B(n10381), .C(n10398), .Z(n4_adj_7)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut_adj_176.init = 16'h6a6a;
    LUT4 i1_3_lut_adj_177 (.A(\hundres_0__N_313[0] ), .B(n38459), .C(n10398), 
         .Z(n4_adj_8)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut_adj_177.init = 16'h6a6a;
    CCU2D num_3023_add_4_9 (.A0(cnt_scan[3]), .B0(n20570), .C0(num[7]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33371), .S0(n37[7]));   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023_add_4_9.INIT0 = 16'he1e1;
    defparam num_3023_add_4_9.INIT1 = 16'h0000;
    defparam num_3023_add_4_9.INJECT1_0 = "NO";
    defparam num_3023_add_4_9.INJECT1_1 = "NO";
    LUT4 mux_2321_i1_3_lut (.A(\hour[0] ), .B(\hour_warning[0] ), .C(sw1_c), 
         .Z(n9504[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(105[120:151])
    defparam mux_2321_i1_3_lut.init = 16'hcaca;
    CCU2D num_3023_add_4_7 (.A0(cnt_scan[3]), .B0(n20570), .C0(num[5]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20570), .C1(num[6]), 
          .D1(GND_net), .CIN(n33370), .COUT(n33371), .S0(n37[5]), .S1(n37[6]));   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023_add_4_7.INIT0 = 16'he1e1;
    defparam num_3023_add_4_7.INIT1 = 16'he1e1;
    defparam num_3023_add_4_7.INJECT1_0 = "NO";
    defparam num_3023_add_4_7.INJECT1_1 = "NO";
    LUT4 i10480_2_lut_rep_532 (.A(num[3]), .B(num[4]), .Z(n38652)) /* synthesis lut_function=(A+(B)) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam i10480_2_lut_rep_532.init = 16'heeee;
    LUT4 n38132_bdd_2_lut_rep_419_3_lut (.A(num[3]), .B(num[4]), .C(n38132), 
         .Z(n38539)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam n38132_bdd_2_lut_rep_419_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_178 (.A(num[3]), .B(num[4]), .C(n2527), 
         .D(n38132), .Z(n7)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/new porject/top-xu/oled.v(151[59:71])
    defparam i1_2_lut_3_lut_4_lut_adj_178.init = 16'hfeff;
    LUT4 i5730_2_lut (.A(cnt_main[2]), .B(cnt_main[0]), .Z(n14733)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i5730_2_lut.init = 16'h2222;
    CCU2D num_3023_add_4_5 (.A0(cnt_scan[3]), .B0(n20570), .C0(num[3]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20570), .C1(num[4]), 
          .D1(GND_net), .CIN(n33369), .COUT(n33370), .S0(n37[3]), .S1(n37[4]));   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023_add_4_5.INIT0 = 16'he1e1;
    defparam num_3023_add_4_5.INIT1 = 16'he1e1;
    defparam num_3023_add_4_5.INJECT1_0 = "NO";
    defparam num_3023_add_4_5.INJECT1_1 = "NO";
    PFUMX i28783 (.BLUT(n39280), .ALUT(n38528), .C0(state[2]), .Z(n39281));
    CCU2D num_3023_add_4_3 (.A0(cnt_scan[3]), .B0(n20570), .C0(num[1]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20570), .C1(num[2]), 
          .D1(GND_net), .CIN(n33368), .COUT(n33369), .S0(n37[1]), .S1(n37[2]));   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023_add_4_3.INIT0 = 16'he1e1;
    defparam num_3023_add_4_3.INIT1 = 16'he1e1;
    defparam num_3023_add_4_3.INJECT1_0 = "NO";
    defparam num_3023_add_4_3.INJECT1_1 = "NO";
    LUT4 i27752_3_lut (.A(n38724), .B(cnt_main[2]), .C(cnt_main[0]), .Z(n36687)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i27752_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_rep_443_3_lut_4_lut (.A(state[1]), .B(state[2]), .C(state[3]), 
         .D(state[0]), .Z(n38563)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_443_3_lut_4_lut.init = 16'hfffe;
    LUT4 equal_2242_i8_2_lut_rep_477_3_lut (.A(state[1]), .B(state[2]), 
         .C(state[0]), .Z(n38597)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam equal_2242_i8_2_lut_rep_477_3_lut.init = 16'hfefe;
    LUT4 i27810_2_lut_rep_383_2_lut_4_lut_4_lut_4_lut (.A(state[1]), .B(state[2]), 
         .C(n38578), .D(state[0]), .Z(sys_clk_c_enable_314)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i27810_2_lut_rep_383_2_lut_4_lut_4_lut_4_lut.init = 16'h050e;
    LUT4 equal_2248_i9_2_lut_rep_480_3_lut_4_lut (.A(state[1]), .B(state[2]), 
         .C(state[3]), .D(n38662), .Z(n38600)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam equal_2248_i9_2_lut_rep_480_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_adj_179 (.A(state[1]), .B(state[2]), .C(state_back[3]), 
         .Z(n20789)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_179.init = 16'h1010;
    LUT4 i1_2_lut_rep_440_3_lut_4_lut (.A(state[1]), .B(state[2]), .C(state[3]), 
         .D(state[0]), .Z(n38560)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_440_3_lut_4_lut.init = 16'hffef;
    LUT4 n16_bdd_2_lut_28482_3_lut (.A(state[1]), .B(state[2]), .C(state_back[2]), 
         .Z(n38196)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n16_bdd_2_lut_28482_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_3_lut_4_lut (.A(state[1]), .B(state[2]), 
         .C(state[0]), .D(n38599), .Z(n13)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_538 (.A(flash_bit), .B(time_set), .Z(n38658)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_538.init = 16'hbbbb;
    CCU2D num_3023_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20570), .C1(num[0]), 
          .D1(GND_net), .COUT(n33368), .S1(n37[0]));   // d:/new porject/top-xu/oled.v(92[7] 115[14])
    defparam num_3023_add_4_1.INIT0 = 16'hF000;
    defparam num_3023_add_4_1.INIT1 = 16'he1e1;
    defparam num_3023_add_4_1.INJECT1_0 = "NO";
    defparam num_3023_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut_3_lut_adj_180 (.A(flash_bit), .B(time_set), .C(cnt_main[1]), 
         .Z(n9674[2])) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i2_2_lut_3_lut_adj_180.init = 16'hbfbf;
    LUT4 mux_2323_i1_3_lut (.A(\min[0] ), .B(\min_warning[0] ), .C(sw1_c), 
         .Z(n9514[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(107[119:149])
    defparam mux_2323_i1_3_lut.init = 16'hcaca;
    PFUMX i32 (.BLUT(n9_adj_1726), .ALUT(n36062), .C0(cnt_main_c[3]), 
          .Z(n13_adj_1785));
    LUT4 i3_4_lut_4_lut (.A(cnt_main[2]), .B(n13_adj_1785), .C(n39958), 
         .D(n6_adj_1776), .Z(x_ph_7__N_1040[1])) /* synthesis lut_function=(A ((D)+!C)+!A (B+((D)+!C))) */ ;
    defparam i3_4_lut_4_lut.init = 16'hff4f;
    LUT4 mux_2489_i2_4_lut_4_lut (.A(cnt_main[2]), .B(cnt_main[0]), .C(n9674[2]), 
         .D(n9504[1]), .Z(n9784[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;
    defparam mux_2489_i2_4_lut_4_lut.init = 16'hf3d1;
    PFUMX i28540 (.BLUT(n38802), .ALUT(n38803), .C0(cnt_init[1]), .Z(n38804));
    LUT4 i2_3_lut_rep_401 (.A(n8832), .B(n38724), .C(n38552), .Z(n38521)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_401.init = 16'hfefe;
    LUT4 flash_bit_I_0_1_lut (.A(flash_bit), .Z(flash_bit_N_1389)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/oled.v(63[17:28])
    defparam flash_bit_I_0_1_lut.init = 16'h5555;
    LUT4 n3_bdd_4_lut_28489_4_lut (.A(cnt_main[2]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(n38658), .Z(n38349)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (((D)+!C)+!B)) */ ;
    defparam n3_bdd_4_lut_28489_4_lut.init = 16'hf535;
    PFUMX i28536 (.BLUT(n38796), .ALUT(n38797), .C0(cnt_main[2]), .Z(n8832));
    LUT4 mux_2489_i4_4_lut_4_lut (.A(cnt_main[2]), .B(cnt_main[0]), .C(n9674[2]), 
         .D(n9504[3]), .Z(n9784[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;
    defparam mux_2489_i4_4_lut_4_lut.init = 16'hf3d1;
    PFUMX i28532 (.BLUT(n38790), .ALUT(n38791), .C0(cnt_main[0]), .Z(n9346));
    LUT4 mux_2929_i2_3_lut (.A(\hundres_0__N_316[3]_adj_4 ), .B(\hundres_0__N_316[3]_adj_3 ), 
         .C(sw1_c), .Z(n10381)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/new porject/top-xu/oled.v(106[118:147])
    defparam mux_2929_i2_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_4_lut_adj_181 (.A(cnt_main[2]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(n38687), .Z(num_7__N_1056[2])) /* synthesis lut_function=(!(A+(B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i3_4_lut_4_lut_adj_181.init = 16'h0014;
    PFUMX i28526 (.BLUT(n38781), .ALUT(n38782), .C0(num[2]), .Z(n2521));
    LUT4 i26997_2_lut_4_lut (.A(n38611), .B(n38700), .C(oled_dcn_N_1364), 
         .D(state_back[5]), .Z(n36304)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i26997_2_lut_4_lut.init = 16'hec00;
    LUT4 mux_89_i2_4_lut (.A(n2323), .B(n2332[1]), .C(n9), .D(n38593), 
         .Z(cnt_scan_4__N_1022[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/new porject/top-xu/oled.v(140[16] 141[40])
    defparam mux_89_i2_4_lut.init = 16'hca0a;
    LUT4 i3891_2_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n2332[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/new porject/top-xu/oled.v(141[24:39])
    defparam i3891_2_lut.init = 16'h6666;
    PFUMX i28522 (.BLUT(n38775), .ALUT(n38776), .C0(n8832), .Z(char_167__N_1072[5]));
    PFUMX i28346 (.BLUT(n38197), .ALUT(n38196), .C0(state[5]), .Z(n38198));
    PFUMX i28520 (.BLUT(n38772), .ALUT(n38773), .C0(cnt_init[0]), .Z(n38774));
    LUT4 i27601_3_lut (.A(n36717), .B(n36718), .C(cnt_main[2]), .Z(n36719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27601_3_lut.init = 16'hcaca;
    PFUMX i28518 (.BLUT(n38769), .ALUT(n38770), .C0(cnt_main[2]), .Z(n3549));
    PFUMX i28516 (.BLUT(n38766), .ALUT(n38767), .C0(num[1]), .Z(n2527));
    PFUMX i27404 (.BLUT(n36711), .ALUT(n36712), .C0(cnt_write[2]), .Z(n36713));
    LUT4 mux_2486_i4_3_lut (.A(n9632[3]), .B(n9645), .C(cnt_main[0]), 
         .Z(n9770[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_2486_i4_3_lut.init = 16'hcaca;
    PFUMX i28506 (.BLUT(n38751), .ALUT(n38752), .C0(state[0]), .Z(n35913));
    PFUMX i28333 (.BLUT(n38185), .ALUT(n38184), .C0(\cnt[1] ), .Z(n38186));
    \divide(WIDTH=32,N=12000000)  divide_1Hz (.GND_net(GND_net), .clk_in_1Hz(clk_in_1Hz), 
            .sys_clk_c(sys_clk_c), .sys_rst_n_c(sys_rst_n_c), .rst_n_in_N_1482(rst_n_in_N_1482)) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/oled.v(53[36] 57[5])
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000) 
//

module \divide(WIDTH=32,N=12000000)  (GND_net, clk_in_1Hz, sys_clk_c, 
            sys_rst_n_c, rst_n_in_N_1482) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_in_1Hz;
    input sys_clk_c;
    input sys_rst_n_c;
    output rst_n_in_N_1482;
    
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // d:/new porject/top-xu/oled.v(51[9:19])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire n33363;
    wire [31:0]cnt_p;   // d:/new porject/top-xu/clock.v(11[19:24])
    wire [31:0]n101;
    
    wire n33364, n33362, n33361, n33360, n33359, n33358, n33357, 
        n33356, n33355, n33354;
    wire [31:0]n200;
    
    wire n33353, n33352, n36552, n36870, n36550, n22010, clkout_N_259, 
        n36548, n28_adj_1682, n19, n27_adj_1683, n25, n26_adj_1684, 
        n24, n33399, n33398, n33397, n33396, n33395, n33394, n33393, 
        n33392, n33391, n33390, n33389, n33388, n33367, n33366, 
        n33365;
    
    CCU2D cnt_p_3022_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33363), .COUT(n33364), .S0(n101[23]), 
          .S1(n101[24]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33362), .COUT(n33363), .S0(n101[21]), 
          .S1(n101[22]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33361), .COUT(n33362), .S0(n101[19]), 
          .S1(n101[20]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33360), .COUT(n33361), .S0(n101[17]), 
          .S1(n101[18]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33359), .COUT(n33360), .S0(n101[15]), 
          .S1(n101[16]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33358), .COUT(n33359), .S0(n101[13]), 
          .S1(n101[14]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33357), .COUT(n33358), .S0(n101[11]), 
          .S1(n101[12]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33356), .COUT(n33357), .S0(n101[9]), .S1(n101[10]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33355), .COUT(n33356), .S0(n101[7]), .S1(n101[8]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33354), .COUT(n33355), .S0(n101[5]), .S1(n101[6]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33353), .COUT(n33354), .S0(n101[3]), .S1(n101[4]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33352), .COUT(n33353), .S0(n101[1]), .S1(n101[2]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33352), .S1(n101[0]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_3022_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_3022_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_1.INJECT1_1 = "NO";
    LUT4 i27696_3_lut (.A(n36552), .B(n36870), .C(n36550), .Z(n22010)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i27696_3_lut.init = 16'h8080;
    LUT4 i27243_4_lut (.A(n200[1]), .B(cnt_p[11]), .C(n200[2]), .D(n200[3]), 
         .Z(n36552)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27243_4_lut.init = 16'h8000;
    FD1S3AX clk_p_29 (.D(clkout_N_259), .CK(sys_clk_c), .Q(clk_in_1Hz)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=36, LSE_RCOL=5, LSE_LLINE=53, LSE_RLINE=57 */ ;   // d:/new porject/top-xu/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    LUT4 i27695_4_lut (.A(n36548), .B(n200[0]), .C(n28_adj_1682), .D(cnt_p[16]), 
         .Z(n36870)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i27695_4_lut.init = 16'h0800;
    LUT4 i27241_4_lut (.A(n200[5]), .B(cnt_p[17]), .C(cnt_p[12]), .D(cnt_p[20]), 
         .Z(n36550)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27241_4_lut.init = 16'h8000;
    LUT4 i27239_4_lut (.A(cnt_p[23]), .B(cnt_p[21]), .C(cnt_p[7]), .D(cnt_p[9]), 
         .Z(n36548)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27239_4_lut.init = 16'h8000;
    LUT4 i10_3_lut (.A(n19), .B(n200[6]), .C(cnt_p[18]), .Z(n28_adj_1682)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i10_3_lut.init = 16'hbfbf;
    LUT4 i1_4_lut (.A(n27_adj_1683), .B(n200[4]), .C(n25), .D(n26_adj_1684), 
         .Z(n19)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i12_4_lut (.A(cnt_p[19]), .B(n24), .C(cnt_p[8]), .D(cnt_p[14]), 
         .Z(n27_adj_1683)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_p[30]), .B(cnt_p[22]), .C(cnt_p[13]), .D(cnt_p[25]), 
         .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(cnt_p[28]), .B(cnt_p[15]), .C(cnt_p[31]), .D(cnt_p[29]), 
         .Z(n26_adj_1684)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt_p[26]), .B(cnt_p[24]), .C(cnt_p[10]), .D(cnt_p[27]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam i9_4_lut.init = 16'hfffe;
    FD1S3IX cnt_p_3022__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n22010), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i1.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n22010), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n22010), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n22010), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n22010), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n22010), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n22010), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_3022__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n22010), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022__i0.GSR = "ENABLED";
    CCU2D add_24019_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33399), 
          .S0(clkout_N_259));
    defparam add_24019_cout.INIT0 = 16'h0000;
    defparam add_24019_cout.INIT1 = 16'h0000;
    defparam add_24019_cout.INJECT1_0 = "NO";
    defparam add_24019_cout.INJECT1_1 = "NO";
    CCU2D add_24019_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33398), .COUT(n33399));
    defparam add_24019_24.INIT0 = 16'h5555;
    defparam add_24019_24.INIT1 = 16'h5555;
    defparam add_24019_24.INJECT1_0 = "NO";
    defparam add_24019_24.INJECT1_1 = "NO";
    CCU2D add_24019_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33397), .COUT(n33398));
    defparam add_24019_22.INIT0 = 16'h5555;
    defparam add_24019_22.INIT1 = 16'h5555;
    defparam add_24019_22.INJECT1_0 = "NO";
    defparam add_24019_22.INJECT1_1 = "NO";
    CCU2D add_24019_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33396), .COUT(n33397));
    defparam add_24019_20.INIT0 = 16'h5555;
    defparam add_24019_20.INIT1 = 16'h5555;
    defparam add_24019_20.INJECT1_0 = "NO";
    defparam add_24019_20.INJECT1_1 = "NO";
    CCU2D add_24019_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33395), .COUT(n33396));
    defparam add_24019_18.INIT0 = 16'h5555;
    defparam add_24019_18.INIT1 = 16'h5555;
    defparam add_24019_18.INJECT1_0 = "NO";
    defparam add_24019_18.INJECT1_1 = "NO";
    CCU2D add_24019_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33394), .COUT(n33395));
    defparam add_24019_16.INIT0 = 16'h5aaa;
    defparam add_24019_16.INIT1 = 16'h5555;
    defparam add_24019_16.INJECT1_0 = "NO";
    defparam add_24019_16.INJECT1_1 = "NO";
    CCU2D add_24019_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33393), .COUT(n33394));
    defparam add_24019_14.INIT0 = 16'h5aaa;
    defparam add_24019_14.INIT1 = 16'h5555;
    defparam add_24019_14.INJECT1_0 = "NO";
    defparam add_24019_14.INJECT1_1 = "NO";
    CCU2D add_24019_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33392), .COUT(n33393));
    defparam add_24019_12.INIT0 = 16'h5555;
    defparam add_24019_12.INIT1 = 16'h5aaa;
    defparam add_24019_12.INJECT1_0 = "NO";
    defparam add_24019_12.INJECT1_1 = "NO";
    CCU2D add_24019_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33391), .COUT(n33392));
    defparam add_24019_10.INIT0 = 16'h5aaa;
    defparam add_24019_10.INIT1 = 16'h5aaa;
    defparam add_24019_10.INJECT1_0 = "NO";
    defparam add_24019_10.INJECT1_1 = "NO";
    CCU2D add_24019_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33390), .COUT(n33391));
    defparam add_24019_8.INIT0 = 16'h5555;
    defparam add_24019_8.INIT1 = 16'h5aaa;
    defparam add_24019_8.INJECT1_0 = "NO";
    defparam add_24019_8.INJECT1_1 = "NO";
    CCU2D add_24019_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33389), .COUT(n33390));
    defparam add_24019_6.INIT0 = 16'h5555;
    defparam add_24019_6.INIT1 = 16'h5555;
    defparam add_24019_6.INJECT1_0 = "NO";
    defparam add_24019_6.INJECT1_1 = "NO";
    CCU2D add_24019_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33388), .COUT(n33389));
    defparam add_24019_4.INIT0 = 16'h5aaa;
    defparam add_24019_4.INIT1 = 16'h5aaa;
    defparam add_24019_4.INJECT1_0 = "NO";
    defparam add_24019_4.INJECT1_1 = "NO";
    CCU2D add_24019_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n33388));
    defparam add_24019_2.INIT0 = 16'h7000;
    defparam add_24019_2.INIT1 = 16'h5555;
    defparam add_24019_2.INJECT1_0 = "NO";
    defparam add_24019_2.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33367), .S0(n101[31]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_3022_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33366), .COUT(n33367), .S0(n101[29]), 
          .S1(n101[30]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33365), .COUT(n33366), .S0(n101[27]), 
          .S1(n101[28]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_3022_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33364), .COUT(n33365), .S0(n101[25]), 
          .S1(n101[26]));   // d:/new porject/top-xu/clock.v(22[16:23])
    defparam cnt_p_3022_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_3022_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_3022_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_3022_add_4_27.INJECT1_1 = "NO";
    LUT4 rst_n_in_I_0_1_lut (.A(sys_rst_n_c), .Z(rst_n_in_N_1482)) /* synthesis lut_function=(!(A)) */ ;   // d:/new porject/top-xu/beep.v(81[5:14])
    defparam rst_n_in_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module KEY
//

module KEY (sys_clk_c, key_sec_pre, key_sec, key3_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key3_c;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/top.v(3[8:15])
    
    wire key_rst_pre, key_rst;
    wire [17:0]cnt;   // d:/new porject/top-xu/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire sys_clk_c_enable_285, n21, n34, n30, n22, n31, n28, n33287, 
        n33286, n33285, n33284, n33283, n33282, n33281, n33280, 
        n33279;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key3_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1S3IX cnt_3012__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i0.GSR = "ENABLED";
    FD1S3IX cnt_3012__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i17.GSR = "ENABLED";
    FD1S3IX cnt_3012__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i16.GSR = "ENABLED";
    FD1S3IX cnt_3012__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i15.GSR = "ENABLED";
    FD1S3IX cnt_3012__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i14.GSR = "ENABLED";
    FD1S3IX cnt_3012__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i13.GSR = "ENABLED";
    FD1S3IX cnt_3012__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i12.GSR = "ENABLED";
    FD1S3IX cnt_3012__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i11.GSR = "ENABLED";
    FD1S3IX cnt_3012__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i10.GSR = "ENABLED";
    FD1S3IX cnt_3012__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i9.GSR = "ENABLED";
    FD1S3IX cnt_3012__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i8.GSR = "ENABLED";
    FD1S3IX cnt_3012__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i7.GSR = "ENABLED";
    FD1S3IX cnt_3012__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i6.GSR = "ENABLED";
    FD1S3IX cnt_3012__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i5.GSR = "ENABLED";
    FD1S3IX cnt_3012__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i4.GSR = "ENABLED";
    FD1S3IX cnt_3012__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i3.GSR = "ENABLED";
    FD1S3IX cnt_3012__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i2.GSR = "ENABLED";
    FD1S3IX cnt_3012__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012__i1.GSR = "ENABLED";
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    FD1P3AY key_sec_29 (.D(key3_c), .SP(sys_clk_c_enable_285), .CK(sys_clk_c), 
            .Q(key_sec)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=55, LSE_RLINE=60 */ ;   // d:/new porject/top-xu/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_285)) /* synthesis lut_function=(A (B (C (D)))) */ ;
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
    CCU2D cnt_3012_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33287), .S0(n77[17]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_3012_add_4_19.INIT1 = 16'h0000;
    defparam cnt_3012_add_4_19.INJECT1_0 = "NO";
    defparam cnt_3012_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_3012_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33286), .COUT(n33287), .S0(n77[15]), .S1(n77[16]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_3012_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_3012_add_4_17.INJECT1_0 = "NO";
    defparam cnt_3012_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_3012_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33285), .COUT(n33286), .S0(n77[13]), .S1(n77[14]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_3012_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_3012_add_4_15.INJECT1_0 = "NO";
    defparam cnt_3012_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_3012_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33284), .COUT(n33285), .S0(n77[11]), .S1(n77[12]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_3012_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_3012_add_4_13.INJECT1_0 = "NO";
    defparam cnt_3012_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_3012_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33283), .COUT(n33284), .S0(n77[9]), .S1(n77[10]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_3012_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_3012_add_4_11.INJECT1_0 = "NO";
    defparam cnt_3012_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_3012_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33282), 
          .COUT(n33283), .S0(n77[7]), .S1(n77[8]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_3012_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_3012_add_4_9.INJECT1_0 = "NO";
    defparam cnt_3012_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_3012_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33281), 
          .COUT(n33282), .S0(n77[5]), .S1(n77[6]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_3012_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_3012_add_4_7.INJECT1_0 = "NO";
    defparam cnt_3012_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_3012_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33280), 
          .COUT(n33281), .S0(n77[3]), .S1(n77[4]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_3012_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_3012_add_4_5.INJECT1_0 = "NO";
    defparam cnt_3012_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_3012_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33279), 
          .COUT(n33280), .S0(n77[1]), .S1(n77[2]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_3012_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_3012_add_4_3.INJECT1_0 = "NO";
    defparam cnt_3012_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_3012_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33279), .S1(n77[0]));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_3012_add_4_1.INIT0 = 16'hF000;
    defparam cnt_3012_add_4_1.INIT1 = 16'h0555;
    defparam cnt_3012_add_4_1.INJECT1_0 = "NO";
    defparam cnt_3012_add_4_1.INJECT1_1 = "NO";
    
endmodule
