--数码管控制模块 2017/04/11
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY LED_CTRL IS
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
END LED_CTRL;

ARCHITECTURE BEHAV OF LED_CTRL IS
BEGIN
	PROCESS(CLK_1KHZ)
		VARIABLE CNT : INTEGER RANGE 0 TO 5;
	BEGIN
		IF RISING_EDGE(CLK_1KHZ) THEN
			DP_OUT <= '0';
			CASE CNT IS
				WHEN 0 => CURSOR <= "000";	DATA_OUT <= HOUR_HIGH_IN;
				WHEN 1 => CURSOR <= "001";	DATA_OUT <= HOUR_LOW_IN;	IF CLK_1HZ = '1' THEN DP_OUT <= '1'; ELSE DP_OUT <= '0'; END IF;
				WHEN 2 => CURSOR <= "010";	DATA_OUT <= MINUTE_HIGH_IN;
				WHEN 3 => CURSOR <= "011";	DATA_OUT <= MINUTE_LOW_IN;	IF CLK_1HZ = '1' THEN DP_OUT <= '1'; ELSE DP_OUT <= '0'; END IF;
				WHEN 4 => CURSOR <= "100";	DATA_OUT <= SECOND_HIGH_IN;
				WHEN 5 => CURSOR <= "101";	DATA_OUT <= SECOND_LOW_IN;
				WHEN OTHERS => CURSOR <= "000"; DATA_OUT <= 0;
			END CASE;
			IF CNT = 5 THEN
				CNT := 0;
			ELSE
				CNT := CNT + 1;
			END IF;
		END IF;
	END PROCESS;
END BEHAV;