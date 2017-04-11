--滴答走时模块 2017/04/11
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY TICK IS
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
END TICK;

ARCHITECTURE BEHAV OF TICK IS
	SIGNAL HOUR_HIGH : INTEGER RANGE 0 TO 2;
	SIGNAL HOUR_LOW : INTEGER RANGE 0 TO 9;
	SIGNAL MINUTE_HIGH : INTEGER RANGE 0 TO 5;
	SIGNAL MINUTE_LOW : INTEGER RANGE 0 TO 9;
	SIGNAL SECOND_HIGH : INTEGER RANGE 0 TO 5;
	SIGNAL SECOND_LOW : INTEGER RANGE 0 TO 9;
	SIGNAL PAUSE : STD_LOGIC;
BEGIN
	PROCESS (ENA, RST, CLK_1HZ)
	BEGIN
		IF RST = '0' THEN	--异步复位
			HOUR_HIGH <= 0;
			HOUR_LOW <= 0;
			MINUTE_HIGH <= 0;
			MINUTE_LOW <= 0;
			SECOND_HIGH <= 0;
			SECOND_LOW <= 0;
			CO_SECOND <= '1';
			PAUSE <= '0';
		ELSE
			IF FALLING_EDGE (ENA) THEN	--暂停控制
				PAUSE <= NOT PAUSE;
			END IF;
			IF RISING_EDGE (CLK_1HZ) AND PAUSE = '0' THEN
				IF SECOND_HIGH = 5 AND SECOND_LOW = 9 THEN
					SECOND_HIGH <= 0;
					SECOND_LOW <= 0;
					CO_SECOND <= '0';
					IF MINUTE_HIGH = 5 AND MINUTE_LOW = 9 THEN
						MINUTE_HIGH <= 0;
						MINUTE_LOW <= 0;
						IF HOUR_HIGH = 2 AND HOUR_LOW = 3 THEN
							HOUR_HIGH <= 0;
							HOUR_LOW <= 0;
						ELSE
							IF HOUR_LOW < 9 THEN
								HOUR_LOW <= HOUR_LOW + 1;
							ELSE
								HOUR_HIGH <= HOUR_HIGH + 1;
								HOUR_LOW <= 0;
							END IF;
						END IF;
					ELSE
						IF MINUTE_LOW < 9 THEN
							MINUTE_LOW <= MINUTE_LOW + 1;
						ELSE
							MINUTE_HIGH <= MINUTE_HIGH + 1;
							MINUTE_LOW <= 0;
						END IF;
					END IF;
				ELSE
					IF SECOND_LOW < 9 THEN
						SECOND_LOW <= SECOND_LOW + 1;
					ELSE
						SECOND_HIGH <= SECOND_HIGH + 1;
						SECOND_LOW <= 0;
					END IF;
					CO_SECOND <= '1';
				END IF;
			END IF;
		END IF;
	END PROCESS;
	
	HOUR_HIGH_OUT <= HOUR_HIGH;
	HOUR_LOW_OUT <= HOUR_LOW;
	MINUTE_HIGH_OUT <= MINUTE_HIGH;
	MINUTE_LOW_OUT <= MINUTE_LOW;
	SECOND_HIGH_OUT <= SECOND_HIGH;
	SECOND_LOW_OUT <= SECOND_LOW;
END BEHAV;