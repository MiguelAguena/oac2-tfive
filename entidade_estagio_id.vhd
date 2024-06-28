----------------------------------------------------------------------------------------------
----------MODULO ESTAGIO DE DECODIFICAÇAO E REGISTRADORES-------------------------------------
----------------------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

library work;
use work.tipos.all;

-- O estágio de decodificaçao e leitura de registradores (id) deve realizar a decodificaç±ao 
-- da instruçao lida no estágio de
-- busca (if) e produzir os sinais de controle necessários para este estágio, assim como para todos os 
-- demais estágios a seguir.
-- Além disso ele deve realizar a descisao dos desvios condicionais assim como calcular o endereço de 
-- destino para executar essas instruçoes.
-- Lembrar que no Pipeline com detecçao de Hazards e antecipaçao ("Forwarding"), existirao sinais que
-- influenciarao as decisoes tomadas neste estágio.
-- Neste estágio deve ser feita também a geraçao dos valores imediatos para todas as instruçoes. 
-- Atençao especial deve ser dada a esses imediatos pois o RISK-V optou por embaralhar os 
-- imediatos para manter todos os endereços de regostradores nas instruçoes nas mesmas posiçoes 
-- na instruçao. 
-- As informaçoes passadas deste estágio para os seguintes devem ser feitas por meio de um 
-- registrador (BID). Para
-- identificar claramente cada campo desse registrador pode-se utilizar o mecanismo do VHDL de definiçao 
-- de apelidos ("alias").
-- Foi adicionado um sinal para fins de ilustraçao chamado COP_id que identifica a instruçao sendo 
-- processada pelo estágio.
-- Neste estágio deve ser implementado também o módulo de detecçao de conflitos - Hazards.
-- Devem existir diversos sinais vindos do outros módulos que sao necessários para a relizaç±ao das 
-- funçoes alocadas a este estágio de decodificaçao - id.
-- A definiç±ao dos sinais vindos de outros módulos encontra-se nos comentários da declaraç±ao de 
-- entidade do estágio id.

entity estagio_id is
    port(
		-- Entradas
		clock				: in 	std_logic; 						-- Base de tempo- bancada de teste
		BID					: in 	std_logic_vector(063 downto 0);	-- Informaçoes vindas estágio Busca
		MemRead_ex			: in	std_logic;						-- Leitura de memória no estagio ex
		rd_ex				: in	std_logic_vector(004 downto 0);	-- Destino nos regs. no estágio ex
		ula_ex				: in 	std_logic_vector(031 downto 0);	-- Saída da ULA no estágio Ex
		MemRead_mem			: in	std_logic;						-- Leitura na memória no estágio mem
		rd_mem				: in	std_logic_vector(004 downto 0);	-- Escrita nos regs. no est'agio mem
		ula_mem				: in 	std_logic_vector(031 downto 0);	-- Saída da ULA no estágio Mem 
		NPC_mem				: in	std_logic_vector(031 downto 0); -- Valor do NPC no estagio mem
        RegWrite_wb			: in 	std_logic; 						-- Escrita no RegFile vindo de wb
        writedata_wb		: in 	std_logic_vector(031 downto 0);	-- Valor escrito no RegFile - wb
        rd_wb				: in 	std_logic_vector(004 downto 0);	-- Endereço do registrador escrito
        ex_fw_A_Branch		: in 	std_logic_vector(001 downto 0);	-- Seleçao de Branch forwardA
        ex_fw_B_Branch		: in 	std_logic_vector(001 downto 0);	-- Seleçao de Branch forwardB 
		
		-- Saídas
		id_Jump_PC			: out	std_logic_vector(031 downto 0) := x"00000000";-- Destino JUmp/Desvio
		id_PC_src			: out	std_logic := '0';				-- Seleciona a entrado do PC
		id_hd_hazard		: out	std_logic := '0';				-- Preserva o if_id e nao inc. PC
		id_Branch_nop		: out	std_logic := '0';				-- Inserçao de um NOP devido ao Branch. 
																	-- limpa o if_id.ri
		rs1_id_ex			: out	std_logic_vector(004 downto 0);	-- Endereço rs1 no estágio id
		rs2_id_ex			: out	std_logic_vector(004 downto 0);	-- Endereço rs2 no estágio id
		BEX					: out 	std_logic_vector(151 downto 0) := (others => '0');-- Saída do ID > EX
		COP_id				: out	instruction_type  := NOP;		-- Instrucao no estagio id
		COP_ex				: out 	instruction_type := NOP			-- Instruçao no estágio id passada> EX
    );
end entity;

architecture arch of estagio_id is
	signal s_instruction : std_logic_vector(31 downto 0) := (others => '0');
	signal rs2_id, rs1_id, rd_id : std_logic_vector(4 downto 0) := (others => '0');
	signal s_op : std_logic_vector(5 downto 0) := (others => '0');
	signal s_funct3 : std_logic_vector(2 downto 0) := (others => '0');
	signal s_funct7 : std_logic_vector(6 downto 0) := (others => '0');
	signal s_pc : std_logic_vector(31 downto 0) := (others => '0');

	
begin
    s_instruction <= BID(31 downto 0);
    s_pc <= BID(63 downto 32);
	
    rs2_id <= s_instruction(24 downto 20);
    rs1_id <= s_instruction(19 downto 15);
	rd_id <= s_instruction(11 downto 7);
	s_op <= s_instruction(6 downto 0);
	s_funct3 <= s_instruction(14 downto 12);
	s_funct7 <= s_instruction(31 downto 25);

	BEX(151 downto 150) <= MemtoReg_id(01 downto 0);
	BEX(149) <= RegWrite_id;
	BEX(148) <= Memwrite_id;
	BEX(147) <= Memread_id;
	BEX(146) <= AluSrc_id;
	BEX(145 downto 143) <= Aluop_id(02 downto 0);
	BEX(142 downto 138) <= rd_id(04 downto 0);
	BEX(137 downto 133) <= rs2_id(04 downto 0);
	BEX(132 downto 128) <= rs1_id(04 downto 0);
	BEX(127 downto 096) <= PC_id_Plus4(31 downto 0);
	BEX(095 downto 064) <= Imed_id(31 downto 0);
	BEX(063 downto 032) <= RB_id(31 downto 0);
	BEX(031 downto 000) <= RA_id(31 downto 0);
end architecture;