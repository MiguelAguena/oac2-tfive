---------------------------------------------------------------------------------------------------------
---------------MOD�LO DE BUSCA - IF -------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

library work;
use work.tipos.all;

-- Especifica�ao do est�gio de BUSCA - if
-- Est�gio de Busca de Instru�oes - if: neste est�gio se encontra o PC(PC_if) (Contador de Programa) 
-- o Registrador de Instru�oes ri_if,o registrador  
-- NPC (NPC_if = PC incrementado de 4), a mem�ria Cache de instru�oes - iMEM e um conjunto de informa�oes 
-- passadas ao est�gio de decodifica�ao-id.
-- Essas informa�oes sao passadas por um sinal chamado BID (Buffer para o est�gio id). Este buffer � de 
-- sa�do do est�gio if 
-- e de entrada no est�gio id. Este est�gio recebe sinais vindos de outros est�gios, a saber:
--		clock; Sinal vindo da Bancada de teste que implementa o rel�gio do Pipeline;
-- 		id_hd_hazard: Sinal de controle vindo do est�gio id, no m�dulo hd, que carrega 0's na parte do ri  
-- 			do registrador de sa�da do est�gio de Busca (BID) quando da ocorr�ncia de um conflito;
-- 		id_hd_Branch_nop:Sinal vindo do est�gio id, do m�dulo hd, que indica inser�ao de NoP devido  
--          a desvio ou pulo;
-- 		id_PC_Src: Sinal vindo do est�gio id que define a sele�ao do multiplexador da entrada 
--		do registrador PC;
-- 		id_Jump_PC: Sinal vindo do est�gio id com o endere�o destino ("target") dos Pulos ou desvios  
--			a serem realizados.
--		keep_simulating: sinal que indica continua�ao (true) ou parada (false) da simula�ao.
-- O BID possui 64 bits alocados da seguinte forma: o ri_if nas posi�oes de 0 a 31 e o PC_if de 32 a 63.

entity estagio_if is
    generic(
        imem_init_file: string := "imem.txt"	--Nome do arquivo com o conte�do da memoria de programa
    );
    port(
			--Entradas
			clock			: in 	std_logic;	-- Base de tempo vinda da bancada de teste
        	id_hd_hazard	: in 	std_logic;	-- Sinal de controle que carrega 0's na parte do RI do 
												-- registrador de sa�da BID
			id_Branch_nop	: in 	std_logic;	-- Sinal que determina inser�ao de NOP- desvio ou pulo
			id_PC_Src		: in 	std_logic;	-- Sele�ao do mux da entrada do PC
			id_Jump_PC		: in 	std_logic_vector(31 downto 0) := x"00000000";	-- Endere�o do Jump ou 
																					-- desvio realizado
			keep_simulating	: in	Boolean := True; -- Sinal que indica a continua�ao da simula�ao
			
			-- Sa�da
        	BID				: out 	std_logic_vector(63 downto 0) := x"0000000000000000"--Reg. de sa�da 
																						-- if para id
    );
end entity;