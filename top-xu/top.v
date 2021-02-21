module top(sys_clk, sys_rst_n, sw1,sw2,beep,uart_txd,one_wire, uart_rxd,oled_res, key1, key2, key3, oled_cs, oled_dc, oled_sck, oled_mosi, led);
	
	input sys_clk;
	input sys_rst_n;
	input key1;
	input key2;
	input key3;
	
	output reg led;
	input sw1;//��ʱ�ͱ��������л�
	input sw2;//��Ƶ�ܿ���
	input           uart_rxd;           //UART���ն˿�
	
	output oled_res;
	output oled_cs;
	output oled_dc;
	output oled_sck;
	output oled_mosi;
	output          beep;               //�������ӿ�
	output  uart_txd;            //UART���Ͷ˿�
	
	inout	one_wire;		//�������ź���
	
	reg [7 : 0] sec;
	reg [7 : 0] min;
	reg [7 : 0] hour;
	
	wire clk_1s;
	divide #(.WIDTH(32), .N(12000000)) devide_1s (
		
		.sys_clk(sys_clk),
		.sys_rst_n(sys_rst_n),
		.clkout(clk_1s)
		
	);
	
	wire key1_pulse;
	KEY key_1(
		.sys_clk(sys_clk),
		.sys_rst_n(sys_rst_n),
		.key(key1),
		.key_pulse(key1_pulse)
	);
	
	wire key2_pulse;
	KEY key_2(
		.sys_clk(sys_clk),
		.sys_rst_n(sys_rst_n),
		.key(key2),
		.key_pulse(key2_pulse)
	);
	
	wire key3_pulse;
	KEY key_3(
		.sys_clk(sys_clk),
		.sys_rst_n(sys_rst_n),
		.key(key3),
		.key_pulse(key3_pulse)
	);
	
	reg		[7 : 0]		sec_t;//ģʽ����
	reg		[7 : 0]		min_t;
	reg		[7 : 0]		hour_t;
	reg		[2 : 0]		key_mode;
	

	reg		[7 : 0]		min_warning;//�趨�ı���ʱ��
	reg		[7 : 0]		hour_warning;
	
	reg					warning;//������־λ
	reg					time_set;//�����趨��ǰʱ��������趨����ʱ��ı�־λ
	reg		[7 : 0]		warning_time;//������ʼ��ʱ��
	
	always @(posedge sys_clk or negedge sys_rst_n) begin
		if (!sys_rst_n)
			begin
				key_mode <= 3'd0;
				
				time_set <= 1'b0;
			end else begin
				if (key1_pulse)
					begin
						
						if(sw1 == 0)//�ж�SW1������ʱ/�����趨
							if(key_mode <= 2) begin
								key_mode <= key_mode + 1'b1;
								time_set <= 1'b1;
							end else begin//��ʱ
								key_mode <= 3'd0;
								time_set <= 1'b0;
							end else begin
								if (key_mode <= 1) begin//����
									key_mode <= key_mode + 1'b1;
									time_set <= 1'b1;
								end else begin
									key_mode <= 3'd0;
									time_set <= 1'b0;
								end
							end
					end
				else if (key2_pulse) begin
					case (key_mode)
						3'd1: begin
							if(sw1 == 0) begin
								hour_t <= hour_t + 1'b1; 
								if (hour_t >=23)
									hour_t <= 0;
							end else begin
								hour_warning <= hour_warning + 1'b1; 
								if (hour_warning >=23)
									hour_warning <= 0;
							end
						end
						3'd2: begin
							if(sw1 == 0) begin
								min_t <= min_t + 1'b1; 
								if (min_t >= 59)
									min_t <= 0;
							end else begin
								min_warning <= min_warning + 1'b1; 
								if (min_warning >= 59)
									min_warning <= 0;
							end
						end
						3'd3: begin
							if(sw1 == 0) begin
								sec_t <= sec_t + 1'b1; 
									if (sec_t >= 59)
										sec_t <= 0;
							end
						end
					endcase
				end else if (key3_pulse)
					begin
						case (key_mode)
							3'd1: begin
								if(sw1 == 0) begin
								hour_t <= hour_t - 1'b1; 
								if (hour_t <= 0)
									hour_t <= 0;
								end else begin
									hour_warning <= hour_warning - 1'b1; 
									if (hour_warning <= 0)
										hour_warning <= 0;
								end
									
							end
							3'd2: begin
								if(sw1 == 0) begin
									min_t <= min_t - 1'b1; 
									if (min_t <= 0)
										min_t <= 0;
								end else begin
									min_warning <= min_warning - 1'b1; 
									if (min_warning <= 0)
										min_warning <= 0;
								end
							end
							3'd3: begin
								if(sw1 == 0) begin
								sec_t <= sec_t - 1'b1; 
									if (sec_t <= 0)
										sec_t <= 0;
								end
							end
						endcase
					end
				else if (!key_mode)
					begin
						sec_t <= sec;
						min_t <= min;
						hour_t <= hour;
						
					end
			end
	end
	
	
	
	always @(posedge clk_1s or negedge sys_rst_n) begin
		if (!sys_rst_n)
			begin
				warning_time <= 8'd0;
				led <= 1'b1;
			end else begin
				if((min_warning == min) && (hour_warning == hour)) begin
					if(warning_time <= 9) begin//�������ֲ��ŵ�ʱ��
						warning <= 1'b1;
						led = ~led;
						warning_time <= warning_time + 8'd1;
					end else begin
						warning <= 1'b0;
						led <= 1'b1;
					end
				end else begin
					warning_time <= 8'd0;
				end
				
			end
	end
	
	always @(posedge clk_1s or negedge sys_rst_n)//��ʱģ��
		begin
			
			if (!sys_rst_n)
				begin
					
					sec <= 8'd0;
					min <= 8'd0;
					hour <= 8'd0;
					
				end
			else 
				begin
					if (key_mode)
						begin
							sec <= sec_t;
							min <= min_t;
							hour <= hour_t;
						end
					else
						begin
							if (sec >= 59)
								begin
									sec <= 1'b0;
									min <= min + 1'b1;
								end
							else
								sec <= sec + 1'b1;
							if (min >= 59)
								begin
									
									min <= 1'b0;
									hour <= 1'b1;
									
								end
							if (hour >= 23)
								hour <= 1'b0;
						end
				end
		end
	
	
	wire [7 : 0] w_sec;
	wire [3 : 0] sec_hundres;
	wire [3 : 0] sec_tens;
	wire [3 : 0] sec_ones;
	
	wire [7 : 0] w_min;
	wire [3 : 0] min_hundres;
	wire [3 : 0] min_tens;
	wire [3 : 0] min_ones;
	
	wire [7 : 0] w_hour;
	wire [3 : 0] hour_hundres;
	wire [3 : 0] hour_tens;
	wire [3 : 0] hour_ones;
	
	assign w_sec = sec;
	assign w_min = min;
	assign w_hour = hour;
	
	wire [7 : 0] min_warning_bcd;
	wire [3 : 0] min_warning_tens;
	wire [3 : 0] min_warning_ones;
	
	wire [7 : 0] hour_warning_bcd;
	wire [3 : 0] hour_warning_tens;
	wire [3 : 0] hour_warning_ones;
	

	assign min_warning_bcd = min_warning;
	assign hour_warning_bcd = hour_warning;
	BCD bcd_sec (
	
		.binary(w_sec),
		.hundres(sec_hundres),
		.tens(sec_tens),
		.ones(sec_ones)
	
	);
	
	BCD bcd_min (
	
		.binary(w_min),
		.hundres(min_hundres),
		.tens(min_tens),
		.ones(min_ones)
	
	);
	
	BCD bcd_hour (
	
		.binary(w_hour),
		.hundres(hour_hundres),
		.tens(hour_tens),
		.ones(hour_ones)
	
	);
	
		BCD bcd_hour_warning (
	
		.binary(hour_warning_bcd),
		.tens(hour_warning_tens),
		.ones(hour_warning_ones)
	
	);
	
		BCD bcd_min_warning (
	
		.binary(min_warning_bcd),
		.tens(min_warning_tens),
		.ones(min_warning_ones)
	
	);
	
//�¶�ת���Ͷ�ȡ
wire [15:0]		ds18b20_data;
wire [7:0]		T;
wire[3:0]		Tem_high;
wire[3:0]		Tem_lower;

assign T = {1'b0,ds18b20_data[10:8],ds18b20_data[7:4]};
BCD bcd_T (

		.binary(T),
		.tens(Tem_high),
		.ones(Tem_lower)
	
	);
	
DS18B20Z  u_DS18B20Z(
	.clk_in				(sys_clk),
	.rst_n_in			(sys_rst_n),
	
	.one_wire			(one_wire),
	.data_out			(ds18b20_data)
);
reg	[7:0]	Temp_H;
always@(posedge sys_clk or negedge sys_rst_n) begin
	if (1)	begin
		if (!sys_rst_n) begin				//ϵͳ��λ
			uart_en <= 1'b0;		
			Temp_H <= 8'b0;
		end
		else begin					
			if(clk_1s == 1'b1) begin	//1Sʱ�䵽
				//�¶���������
				Temp_H[6:4] <= ds18b20_data[10:8];
				Temp_H[3:0] <= ds18b20_data[7:4];
				
				//Temp_H <= ((Temp_H<<4) &8'h70 | (Temp_L >>4) & 8'h0f);
				
				
				uart_en  <= 1'b1;                               //���߷���ʹ���ź�������Ҫ���Ǳ��ش���	
				uart_send_data <= Temp_H;
			end
			else	
				uart_en  <= 1'b0;
				
				
			
			
		end
	end
end

reg		uart_en;
reg [7:0] 	uart_send_data;              //UART��������
wire       	uart_tx_busy;                //UART����æ״̬��־
uart_send u_uart_send( 
    .sys_clk		(sys_clk),					//ϵͳʱ��
	.sys_rst_n		(sys_rst_n),       			//ϵͳ��λ���͵�ƽ��Ч        
                
    
    .uart_en		(uart_en),                  //����ʹ���ź�
    .uart_din		(uart_send_data),           //����������
    .uart_tx_busy	(uart_tx_busy),             //����æ״̬��־      
    .uart_txd		(uart_txd)                  //UART���Ͷ˿�
);
// Temp_H[6:4] <= ds18b20_data[10:8];
// Temp_H[3:0] <= ds18b20_data[7:4];
	
	//ʱ����ʾģ��
	wire[3 : 0] time_sec_lower;
	wire[3 : 0] time_sec_high;
	wire[3 : 0] time_min_lower;
	wire[3 : 0] time_min_high;
	wire[3 : 0] time_hour_lower;
	wire[3 : 0] time_hour_high;
	
	assign time_sec_lower = sec_ones;
	assign time_sec_high = sec_tens;
	assign time_min_lower = min_ones;
	assign time_min_high = min_tens;
	assign time_hour_lower = hour_ones;
	assign time_hour_high = hour_tens;
	

	wire[3 : 0] warningtime_min_lower;
	wire[3 : 0] warningtime_min_high;
	wire[3 : 0] warningtime_hour_lower;
	wire[3 : 0] warningtime_hour_high;
	

	assign warningtime_min_lower = min_warning_ones;
	assign warningtime_min_high = min_warning_tens;
	assign warningtime_hour_lower = hour_warning_ones;
	assign warningtime_hour_high = hour_warning_tens;
	wire		warning_TEM;

	OLED12832 oled1 (
		
		.clk(sys_clk),
		.rst_n(sys_rst_n),		//ϵͳ��λ������Ч
		.sw1(sw1),			//�л���ʱ/��ʱģʽ
 
		.oled_rst(oled_res),	//OLED��λ
		.oled_csn(oled_cs),		//OLEDƬѡ����
		.oled_dcn(oled_dc),		//OLED����ָ�����
		.oled_clk(oled_sck),	//OLEDʱ���ź�
		.oled_dat(oled_mosi),	//OLED�����ź�
		
		
		
		.T_high(Tem_high),
		.T_lower(Tem_lower),
		.warning_TEM(warning_TEM),
		
		.time_set(time_set),
		.warningtime_min_lower(warningtime_min_lower),
		.warningtime_min_high(warningtime_min_high),
		.warningtime_hour_lower(warningtime_hour_lower),
		.warningtime_hour_high(warningtime_hour_high),
		
		.time_sec_lower(time_sec_lower),
		.time_sec_high(time_sec_high),
		.time_min_lower(time_min_lower),
		.time_min_high(time_min_high),
		.time_hour_lower(time_hour_lower),
		.time_hour_high(time_hour_high)
	); 
	
	
	
	
	//��Ƶ����
parameter  CLK_FREQ = 12000000;         //����ϵͳʱ��Ƶ��
parameter  UART_BPS = 115200;           //���崮�ڲ�����
wire        uart_recv_done;              //UART�������
wire  [7:0] uart_recv_data;              //UART��������
wire [7:0]  music_tone;                     //����
reg	[7:0]	beep_tone;
assign music_tone = beep_tone;

//���ڽ���ģ��     
uart_recv #(                          
    .CLK_FREQ       (CLK_FREQ),         //����ϵͳʱ��Ƶ��
    .UART_BPS       (UART_BPS))         //���ô��ڽ��ղ�����
u_uart_recv(                 
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n),
    
    .uart_rxd       (uart_rxd),
    .uart_done      (uart_recv_done),
    .uart_data      (uart_recv_data)
    );

Beeper  m_beep(
	.clk_in	    (sys_clk),		//ϵͳʱ��
    .rst_n_in	(sys_rst_n),	//ϵͳ��λ������Ч
    .tone_en	(sw2),		//������ʹ���ź�
    .tone		(music_tone),	//���������ڿ���
    .piano_out	(beep)			//�������������
);

wire 		clk_1ms;

	divide #(.WIDTH(32),.N(12000000)) divide_1kHz ( 
			.sys_clk(clk),
			.sys_rst_n(rst_n),      
			.clkout(clk_1ms)
			);
 
 
music_play  m_music_play(
    .sys_clk    (sys_clk),            //�ⲿ50Mʱ��
    .sys_rst_n  (sys_rst_n),          //�ⲿ��λ�źţ�����Ч

    .clk_1ms    (clk_1ms),            //1msʱ������

    .uart_done          (uart_recv_done),     //���ڽ������ݱ�־
    .uart_recv_data     (uart_recv_data),     //��������
    .music_stop           (warning),             //���Ա��ز���
    //.blink              (blink),
    .music_tone         (music_tone),        //�������
	.uart_data_busy		(warning_TEM)

    );

endmodule