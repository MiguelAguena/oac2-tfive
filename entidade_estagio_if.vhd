---------------------------------------------------------------------------------------------------------
---------------MOD�LO DE BUSCA - IF -------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

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
        		id_hd_hazard		: in 	std_logic;	-- Sinal de controle que carrega 0's na parte do RI do 
												-- registrador de sa�da BID
			id_Branch_nop		: in 	std_logic;	-- Sinal que determina inser�ao de NOP- desvio ou pulo
			id_PC_Src		: in 	std_logic;	-- Sele�ao do mux da entrada do PC
			id_Jump_PC		: in 	std_logic_vector(31 downto 0) := x"00000000";	-- Endere�o do Jump ou 
																					-- desvio realizado
			keep_simulating		: in	Boolean := True; -- Sinal que indica a continua�ao da simula�ao
			
			-- Sa�da
        		BID			: out 	std_logic_vector(63 downto 0) := x"0000000000000000"--Reg. de sa�da 
																					-- if para id
    );
end entity;

architecture arch of estagio_if is

	component ram is
		 generic(
			  address_bits	: integer 	:= 32;		  -- N�mero de biots de endere�o da mem�ria
			  size			: integer 	:= 4096;		  -- Tamanho da mem�ria em bytes
			  ram_init_file	: string 	:= "imem.txt" -- Arquivo que contem o conte�do da mem�ria
		 );
		 port (
			-- Entradas
			  clock 	: in  std_logic;								-- Base de tempo, mem�ria s�ncrona para escrita
			  write 	: in  std_logic;								-- Sinal de escrita na mem�ria
			  address : in  std_logic_vector(address_bits-1 downto 0);-- Entrada de endere�o da mem�ria
			  data_in : in  std_logic_vector(address_bits-1 downto 0);-- Entrada de dados na mem�ria
			
			-- Sa�da
			  data_out: out std_logic_vector(address_bits-1 downto 0)	-- Sa�da de dados da mem�ria
		 );
	end component ram;
	
	component alu is
		 port(
			-- Entradas
			  in_a		: in 	std_logic_vector(31 downto 0);
			  in_b		: in 	std_logic_vector(31 downto 0);
			  ALUOp		: in 	std_logic_vector(02 downto 0);
			
			-- Sa�das
			  ULA			: out 	std_logic_vector(31 downto 0);
			  zero		: out 	std_logic
		 );
	end component alu;
	
	signal s_pc_out : std_logic_vector(31 downto 0) := (others => '0');
	signal s_pc_plus4 : std_logic_vector(31 downto 0);
	signal s_imem_out : std_logic_vector(31 downto 0);
	signal s_instr : std_logic_vector(31 downto 0);
	signal s_pc_in : std_logic_vector(31 downto 0);
	signal s_pc_enable: std_logic;
	
begin

	adder4 : alu
	port map (
		in_a => s_pc_out,
		in_b => (2 => '1', others => '0'),
		ALUOp	=> "000",
		ULA => s_pc_plus4,
		zero => open
	);
	
	imem : ram
	generic map (
		address_bits => 32,
		size => 4096,
		ram_init_file => imem_init_file
	)
	port map (
		clock => clock,
		write => '0',
		address => s_pc_out,
		data_in => (others => '0'),
		data_out => s_imem_out
	);

	mainPro: process(clock)
	
	begin
	
		if rising_edge(clock) then
			if(id_Branch_nop = '1') then
				if(id_hd_hazard = '1') then
				     s_instr <= (others => '0');
				else
				     s_instr <= s_imem_out;
				end if;
			else
				s_instr <= s_imem_out;
			end if;
		end if;
	end process;

	pc: process(clock)
	begin
		if(rising_edge(clock) and id_branch_nop = '0') then
			s_pc_enable <= '1';
		end if;
		if(rising_edge(clock) and s_pc_enable = '1') then
			s_pc_out <= s_pc_in;
			s_pc_enable <= '0';
		end if;
	end process;

	s_pc_in <= s_pc_plus4 when id_Pc_Src = '0' else
		   id_Jump_PC;
	
	BID <= s_pc_out & s_instr;

end architecture;