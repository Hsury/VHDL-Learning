--时钟顶层设计文件 2017/04/11
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CLOCK IS
	PORT (CLK_50MHZ : IN STD_LOGIC;	--50MHz时钟
	      KEY_ENA : IN STD_LOGIC;	--时钟使能按键
	      KEY_RST : IN STD_LOGIC;	--时钟复位按键
	      DUAN : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);	--数码管段
	      WEI : OUT BIT_VECTOR (5 DOWNTO 0);	--数码管位
	      BUZZER : OUT STD_LOGIC);	--蜂鸣器
END CLOCK;

ARCHITECTURE BEHAV OF CLOCK IS
	COMPONENT FREQ_DIV IS	--时钟分频模块
		PORT (CLK_50MHZ : IN STD_LOGIC;	--50MHz时钟
		      CLK_1KHZ : BUFFER STD_LOGIC;	--1KHz时钟
		      CLK_1HZ : BUFFER STD_LOGIC);	--1Hz时钟
	END COMPONENT;
	
	COMPONENT TICK IS	--滴答走时模块
		PORT (CLK_1HZ : IN STD_LOGIC;	--1Hz时钟
		      ENA : IN STD_LOGIC;	--时钟使能
		      RST : IN STD_LOGIC;	--时钟复位
		      HOUR_HIGH_OUT : OUT INTEGER RANGE 0 TO 2;	--小时高位
		      HOUR_LOW_OUT : OUT INTEGER RANGE 0 TO 9;	--小时低位
		      MINUTE_HIGH_OUT : OUT INTEGER RANGE 0 TO 5;	--分钟高位
		      MINUTE_LOW_OUT : OUT INTEGER RANGE 0 TO 9;	--分钟低位
		      SECOND_HIGH_OUT : OUT INTEGER RANGE 0 TO 5;	--秒钟高位
		      SECOND_LOW_OUT : OUT INTEGER RANGE 0 TO 9;	--秒钟低位
		      CO_SECOND : OUT STD_LOGIC);	--秒溢出
	END COMPONENT;
	
	COMPONENT KEY_SCAN IS	--按键消抖模块
		GENERIC (KEY_TRIGGER : STD_LOGIC := '0');	--配置按键触发电平
		PORT (CLK_1KHZ : IN STD_LOGIC;	--1KHz时钟
		      KEY_IN : IN STD_LOGIC;	--按键输入
		      KEY_OUT : OUT STD_LOGIC := NOT KEY_TRIGGER);	--按键输出
	END COMPONENT;
	
	COMPONENT LED_CTRL IS	--数码管控制模块
		PORT (CLK_1KHZ : IN STD_LOGIC;	--1KHz时钟
		      CLK_1HZ : IN STD_LOGIC;	--1Hz时钟
		      HOUR_HIGH_IN : IN INTEGER RANGE 0 TO 2;	--小时高位
		      HOUR_LOW_IN : IN INTEGER RANGE 0 TO 9;	--小时低位
		      MINUTE_HIGH_IN : IN INTEGER RANGE 0 TO 5;	--分钟高位
		      MINUTE_LOW_IN : IN INTEGER RANGE 0 TO 9;	--分钟低位
		      SECOND_HIGH_IN : IN INTEGER RANGE 0 TO 5;	--秒钟高位
		      SECOND_LOW_IN : IN INTEGER RANGE 0 TO 9;	--秒钟低位
		      CURSOR : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);	--位选光标
		      DATA_OUT : OUT INTEGER RANGE 0 TO 9;	--输出字符
		      DP_OUT : OUT STD_LOGIC);	--输出小数点
	END COMPONENT;
	
	COMPONENT DECODER_3TO8 IS
	PORT (DATA_IN : IN STD_LOGIC_VECTOR (2 DOWNTO 0);	--二进制光标
	      DATA_OUT : OUT BIT_VECTOR (5 DOWNTO 0));	--数码管位
	END COMPONENT;
	
	COMPONENT SEG8 IS
	PORT (DATA_IN : IN INTEGER RANGE 0 TO 9;	--字符输入
	      DP_IN : IN STD_LOGIC;	--小数点输入
	      BAR : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));	--数码管段
	END COMPONENT;
	
	SIGNAL CLK_1KHZ : STD_LOGIC;
	SIGNAL CLK_1HZ : STD_LOGIC;
	SIGNAL HOUR_HIGH : INTEGER RANGE 0 TO 2;
	SIGNAL HOUR_LOW : INTEGER RANGE 0 TO 9;
	SIGNAL MINUTE_HIGH : INTEGER RANGE 0 TO 5;
	SIGNAL MINUTE_LOW : INTEGER RANGE 0 TO 9;
	SIGNAL SECOND_HIGH : INTEGER RANGE 0 TO 5;
	SIGNAL SECOND_LOW : INTEGER RANGE 0 TO 9;
	SIGNAL CO_SECOND : STD_LOGIC;
	SIGNAL KEY_ENA_REAL : STD_LOGIC;
	SIGNAL KEY_RST_REAL : STD_LOGIC;
	SIGNAL CURSOR : STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL DATA : INTEGER RANGE 0 TO 9;
	SIGNAL DP : STD_LOGIC;
BEGIN
	U0 : FREQ_DIV PORT MAP (CLK_50MHZ => CLK_50MHZ,
	                        CLK_1KHZ => CLK_1KHZ,
	                        CLK_1HZ => CLK_1HZ);
	U1 : TICK PORT MAP (CLK_1HZ => CLK_1HZ,
	                    ENA => KEY_ENA_REAL,
	                    RST => KEY_RST_REAL,
	                    HOUR_HIGH_OUT => HOUR_HIGH,
	                    HOUR_LOW_OUT => HOUR_LOW,
	                    MINUTE_HIGH_OUT => MINUTE_HIGH,
	                    MINUTE_LOW_OUT => MINUTE_LOW,
	                    SECOND_HIGH_OUT => SECOND_HIGH,
	                    SECOND_LOW_OUT => SECOND_LOW,
	                    CO_SECOND => BUZZER);
	U2 : KEY_SCAN PORT MAP (CLK_1KHZ => CLK_1KHZ,
	                        KEY_IN => KEY_ENA,
	                        KEY_OUT => KEY_ENA_REAL);
	U3 : KEY_SCAN PORT MAP (CLK_1KHZ => CLK_1KHZ,
	                        KEY_IN => KEY_RST,
	                        KEY_OUT => KEY_RST_REAL);
	U4 : LED_CTRL PORT MAP (CLK_1KHZ => CLK_1KHZ,
	                        CLK_1HZ => CLK_1HZ,
	                        HOUR_HIGH_IN => HOUR_HIGH,
	                        HOUR_LOW_IN => HOUR_LOW,
	                        MINUTE_HIGH_IN => MINUTE_HIGH,
	                        MINUTE_LOW_IN => MINUTE_LOW,
	                        SECOND_HIGH_IN => SECOND_HIGH,
	                        SECOND_LOW_IN => SECOND_LOW,
	                        CURSOR => CURSOR,
	                        DATA_OUT => DATA,
	                        DP_OUT => DP);
	U5 : DECODER_3TO8 PORT MAP (DATA_IN => CURSOR,
	                            DATA_OUT => WEI);
	U6 : SEG8 PORT MAP (DATA_IN => DATA,
	                    DP_IN => DP,
	                    BAR => DUAN);
END BEHAV;