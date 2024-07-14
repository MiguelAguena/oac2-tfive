----------------------------------------------------------------------------------------------------
-------------MODULO ESTAGIO DE EXECU�AO-------------------------------------------------------------
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

library work;
use work.tipos.all;

-- Especifica�ao do estagio Executa - ex: declara�ao de entidade
-- Neste est�gio sao executadas as instru�oes do tipo RR e calculado os endere�os 
-- das instru�oes de load e store.
-- O m�dulo que implementa a antecipa�ao de valores (Forwarding) � feita neste est�gio 
-- num m�dulo separado dentro do est�gio ex.
-- A unidade l�gica e aritm�tica - ULA - fica neste est�gio.
-- Os multiplexadores de estrada da ULA que selecionam os valores corretos dependendo 
-- da antecipa�ao ficam neste est�gio.
-- A defini�ao do sinais de entrada e sa�da do est�gio EX encontram-se na declara�ao 
-- da entidade est�gio_ex e sao passados pelo registrador BEX

entity estagio_ex is
    port(
		-- Entradas
		clock				: in 	std_logic;					  		-- Rel�gio do Sistema
      	BEX					: in 	std_logic_vector (151 downto 0);  	-- Dados vindos do id
		COP_ex				: in 	instruction_type;				  	-- Mnem�nico no est�gio ex
		ula_mem				: in 	std_logic_vector (031 downto 0);	-- ULA no est�gio de Mem�ria
		rs1_id_ex			: in	std_logic_vector (004 downto 0);    -- rs1 no est�gio id para o ex
		rs2_id_ex			: in	std_logic_vector (004 downto 0);    -- rs2 no est�gio id para o ex
		MemRead_mem			: in 	std_logic;					  		-- Leitura na mem�ria no  mem
		RegWrite_mem		: in 	std_logic;					  		-- Escrita nos regs. no  mem
		rd_mem				: in 	std_logic_vector (004 downto 0);	-- Destino nos regs. mem
		RegWrite_wb			: in	Std_logic;							-- Escrita nos regs no estagio wb
		rd_wb				: in	std_logic_vector (004 downto 0);	-- Destino no rges no est�gio wb
		writedata_wb		: in 	std_logic_vector (031 downto 0);	-- Dado a ser escrito no regs.
		Memval_mem			: in	std_logic_vector (031 downto 0);	-- Sa�da da mem�ria no mem
		
		-- Sa�das
		MemRead_ex			: out	std_logic;							-- Leitura da mem�ria no ex 
		rd_ex				: out	std_logic_vector (004 downto 0);	-- Destino dos regs no ex
		ULA_ex				: out	std_logic_vector (031 downto 0);	-- ULA no est�gio ex
		ex_fw_A_Branch		: out 	std_logic_vector (001 downto 0);	-- Dado comparado em A no id 
																		-- em desvios com forward
        ex_fw_B_Branch		: out 	std_logic_vector (001 downto 0);	-- Dado comparado em B no id 
																		-- em desvios com forward
        BMEM				: out 	std_logic_vector (115 downto 0) := (others => '0'); -- dados para mem
		COP_mem				: out 	instruction_type := NOP			  	-- Mnem�nico no est�gio mem
		
		);
end entity;

architecture behavior_ex of estagio_ex is

	signal s_rd_ex, s_rs1_ex, s_rs2_ex : std_logic_vector(004 downto 0) := (others => '0');
	signal ula_a, ula_b, s_immed, s_RB, s_RA, s_pcPlus4, s_ULA, s_dado_arma, s_NPC  : std_logic_vector(031 downto 0) := (others => '0');
	signal s_fw_a, s_fw_b, s_ula_a, s_ula_b, s_MemToReg : std_logic_vector(001 downto 0) := (others => '0');
	signal s_aluSrc : std_logic := '0';
	signal s_aluOp : std_logic_vector(002 downto 0) := "000";

	component forward_unit is
		port(
			-- Entradas
			rs1_id_ex			: in	std_logic_vector (004 downto 0);    -- rs1 no est�gio id para o ex
			rs2_id_ex			: in	std_logic_vector (004 downto 0);    -- rs2 no est�gio id para o ex
			rs1_ex              : in    std_logic_vector (004 downto 0);
			rs2_ex              : in    std_logic_vector (004 downto 0);
			rd_mem				: in 	std_logic_vector (004 downto 0);	-- Destino nos regs. mem
			rd_wb				: in	std_logic_vector (004 downto 0);	-- Destino no rges no est�gio wb
			rd_ex               : in    std_logic_vector (004 downto 0);
			MemRead_mem			: in 	std_logic;					  		-- Leitura na mem�ria no  mem
			RegWrite_mem		: in 	std_logic;					  		-- Escrita nos regs. no  mem
			RegWrite_wb			: in	Std_logic;							-- Escrita nos regs no estagio wb
			
			-- Sa�das
			ex_fw_A_Branch		: out 	std_logic_vector (001 downto 0);	-- Dado comparado em A no id 
																			-- em desvios com forward
			ex_fw_B_Branch		: out 	std_logic_vector (001 downto 0);	-- Dado comparado em B no id 
																			-- em desvios com forward
			ula_sel_a           : out   std_logic_vector (001 downto 0);
			ula_sel_b           : out   std_logic_vector (001 downto 0);
			);
	end component;

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
   end component;


begin
	rd_ex <= s_rd_ex;
	MemRead_ex <= s_Memread;
	ULA_ex <= s_ULA;
	ex_fw_A_Branch <= s_fw_a;
	ex_fw_B_Branch <= s_fw_b;

	s_MemtoReg <= BEX(151 downto 150);
	s_RegWrite <= BEX(149);
	s_Memwrite <= BEX(148);
	s_Memread <= BEX(147);
	s_rd_ex <= BEX(142 downto 138);
	s_rs1_ex <= BEX(132 downto 128);
	s_rs2_ex <= BEX(137 downto 133);
	s_aluSrc <= BEX(146);
	s_aluOp <= BEX(145 downto 143);
	s_immed <= BEX(095 downto 064);
	s_RB <= BEX(063 downto 032);
	s_RA <= BEX(031 downto 000);
	s_pcPlus4 <= BEX(127 downto 096);


	fu: forward_unit port map(
		rs1_id_ex => rs1_id_ex,
		rs2_id_ex => rs2_id_ex,
		rs1_ex => s_rs1_ex,
		rs2_ex => s_rs2_ex,
		rd_mem => rd_mem,
		rd_wb => rd_wb,
		rd_ex => s_rd_ex,
		MemRead_mem => MemRead_mem,
		RegWrite_mem => RegWrite_mem,
		RegWrite_wb => RegWrite_wb,
		ex_fw_A_Branch => s_fw_a,
		ex_fw_B_Branch => s_fw_b,
		ula_sel_a => s_ula_a,
		ula_sel_b => s_ula_b
	);

	ula_exec: alu port map(
		in_a => s_pcPlus4,
		in_b => (2 => '1', others => '0'), --4
		ALUOp => (others => '0'), -- add
		ULA => s_NPC,
		zero => open
	);

	ula_NPC: alu port map(
		in_a => ula_a,
		in_b => ula_b,
		ALUOp => s_aluOp,
		ULA => s_ULA,
		zero => open
	);
 
	ula_src: process(s_aluSrc, s_ula_a, s_ula_b, s_RA, s_RB, s_immed, s_pcPlus4, ula_mem, writedata_wb, Memval_mem)
	begin
		-- ula a
		if (s_ula_a = "01") then
			ula_a <= ula_mem;
		elsif (s_ula_a = "10") then
			ula_a <= Memval_mem;
		elsif (s_ula_a = "11") then
			ula_a <= writedata_wb;
		else
			ula_a <= s_RA;
		end if;

		-- ula b
		if(s_aluSrc = '1') then
			ula_b <= s_immed;
		else
			if (s_ula_b = "01") then
				ula_b <= ula_mem;
			elsif (s_ula_b = "10") then
				ula_b <= Memval_mem;
			elsif (s_ula_b = "11") then
				ula_b <= writedata_wb;
			else
				ula_b <= s_RB;
			end if;
		end if;
	end process;

	dado_arma: process(s_ula_b, ula_mem, memval_mem, writedata_wb, s_RB)
	begin
		if (s_ula_b = "01") then
			s_dado_arma <= ula_mem;
		elsif (s_ula_b = "10") then
			s_dado_arma <= Memval_mem;
		elsif (s_ula_b = "11") then
			s_dado_arma <= writedata_wb;
		else  
			s_dado_arma <= s_RB;
		end if;
	end process;


	BMEM_load: process(clock)
	begin
		BMEM(115 downto 114) <= s_MemtoReg;
		BMEM(113) <= s_RegWrite;
		BMEM(112) <= s_Memwrite;
		BMEM(111) <= s_Memread;
		BMEM(110 downto 079) <= s_NPC;
		BMEM(078 downto 047) <= s_ULA;
		BMEM(046 downto 015) <= s_dado_arma;
		BMEM(014 downto 010) <= s_rs1_ex;
		BMEM(009 downto 005) <= s_rs2_ex;
		BMEM(004 downto 000) <= s_rd_ex;
	end process;





end behavior_ex ; -- behavior_ex