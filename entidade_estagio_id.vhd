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
		rd_ex			   	: in	std_logic_vector(004 downto 0);	-- Destino nos regs. no estágio ex
		ula_ex				: in 	std_logic_vector(031 downto 0);	-- Saída da ULA no estágio Ex
		MemRead_mem			: in	std_logic;						-- Leitura na memória no estágio mem
		rd_mem				: in	std_logic_vector(004 downto 0);	-- Escrita nos regs. no est'agio mem
		ula_mem				: in 	std_logic_vector(031 downto 0);	-- Saída da ULA no estágio Mem 
		NPC_mem				: in	std_logic_vector(031 downto 0); -- Valor do NPC no estagio mem
      	RegWrite_wb			: in 	std_logic; 						-- Escrita no RegFile vindo de wb
      	writedata_wb		: in 	std_logic_vector(031 downto 0);	-- Valor escrito no RegFile - wb
      	rd_wb			   	: in 	std_logic_vector(004 downto 0);	-- Endereço do registrador escrito
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
	component alu is
		 port(
			-- Entradas
			  in_a		: in 	std_logic_vector(31 downto 0);
			  in_b		: in 	std_logic_vector(31 downto 0);
			  ALUOp		: in 	std_logic_vector(02 downto 0);
			
			-- std_logic_vector
			  ULA			: out 	std_logic_vector(31 downto 0);
			  zero		: out 	std_logic
		 );
	end component;
	
	component regfile is
		port(
			-- Entradas
			clock			: 	in 		std_logic;						-- Base de tempo - Bancada de teste
			RegWrite		: 	in 		std_logic; 						-- Sinal de escrita no RegFile
			read_reg_rs1	: 	in 		std_logic_vector(04 downto 0);	-- Endere�o do registrador na sa�da RA
			read_reg_rs2	: 	in 		std_logic_vector(04 downto 0);	-- Endere�o do registrador na sa�da RB
			write_reg_rd	: 	in 		std_logic_vector(04 downto 0);	-- Endere�o do registrador a ser escrito
			data_in			: 	in 		std_logic_vector(31 downto 0);	-- Valor a ser escrito no registrador
			
			-- Sa�das
			data_out_a		: 	out 	std_logic_vector(31 downto 0);	-- Valor lido pelo endere�o rs1
			data_out_b		: 	out 	std_logic_vector(31 downto 0) 	-- Valor lido pelo enderc�o rs2
		);
	end component;

	component hazard_detection is
		port(
			-- Entradas
			clock				: in 	std_logic;
			rd_ex			   	: in	std_logic_vector(004 downto 0);	-- Destino nos regs. no estágio ex
			rd_mem				: in	std_logic_vector(004 downto 0);	-- Escrita nos regs. no est'agio mem
			rd_wb			   	: in 	std_logic_vector(004 downto 0);	-- Endereço do registrador escrito
			pc						: in  std_logic_vector(031 downto 0);
			rs1_id					: in  std_logic_vector(004 downto 0);
			rs2_id					: in  std_logic_vector(004 downto 0);
			RA_id					: in  std_logic_vector(031 downto 0);
			RB_id					: in  std_logic_vector(031 downto 0);
			alu_mem					: in std_logic_vector(031 downto 0);
			writedata_wb			: in std_logic_vector(031 downto 0);
			op						: in  std_logic_vector(006 downto 0);
			funct3					: in  std_logic_vector(002 downto 0);
			immediate			: in  std_logic_vector(031 downto 0);
			MemRead_mem			: in	std_logic;						-- Leitura na memória no estágio mem
			
			-- Saídas
			id_PC_src			: out std_logic;
			id_Jump_PC			: out std_logic_vector(031 downto 0);
			id_Branch_nop		: out std_logic; --IF-ID Flush
			id_hd_hazard		: out std_logic; --IF-ID Stall
			RA_out				: out std_logic_vector(031 downto 0);
			RB_out				: out std_logic_vector(031 downto 0)
		);
	end component;
	
	signal s_pc, s_instruction : std_logic_vector(31 downto 0) := (others => '0');
	signal rs2_id, rs1_id, rd_id : std_logic_vector(4 downto 0) := (others => '0');
	signal s_op : std_logic_vector(6 downto 0) := (others => '0');
	signal s_funct3 : std_logic_vector(2 downto 0) := (others => '0');
	signal s_funct7 : std_logic_vector(6 downto 0) := (others => '0');
	signal RegWrite_id, Memwrite_id, Memread_id, AluSrc_id, Branch, Jump, s_id_hd_hazard : std_logic;
	signal MemtoReg_id : std_logic_vector(1 downto 0) := (others => '0');
	signal RA_id, RB_id, Imed_id, PC_id_Plus4 : std_logic_vector(31 downto 0) := (others => '0');
	signal ImmSrc: std_logic_vector(1 downto 0) := (others => '0');
	signal Aluop_id: std_logic_vector(2 downto 0) := (others => '0');
	signal s_id_Jump_PC, s_RA, s_RB: std_logic_vector(31 downto 0) := (others => '0');
begin
    s_instruction <= BID(31 downto 0);
    s_pc <= BID(63 downto 32);
	
	s_op <= s_instruction(6 downto 0);
	s_funct3 <= s_instruction(14 downto 12);
	s_funct7 <= s_instruction(31 downto 25);
	
	rs1_id_ex <= rs1_id;
	rs2_id_ex <= rs2_id;
	
    id_hd_hazard <= s_id_hd_hazard;
	id_Jump_PC <= s_id_Jump_PC;
	
	ADDER4 : alu
	port map (
		in_a => s_pc,
		in_b => (2 => '1', others => '0'),
		ALUOp	=> "000",
		ULA => PC_id_Plus4,
		zero => open
	);

	INST_DECODE: process (s_op, s_instruction)
	begin
        case s_op is
			when "0110011" => -- R-type
				AluSrc_id <= '0';
				MemtoReg_id <= "00";
				RegWrite_id <= '1';
				Memread_id <= '0';
				Memwrite_id <= '0';
				Branch <= '0';
				Jump <= '0';
				rs2_id <= s_instruction(24 downto 20);
				rs1_id <= s_instruction(19 downto 15);
				rd_id <= s_instruction(11 downto 7);
				
            when "0000011" => -- lw
				AluSrc_id <= '1';
				MemtoReg_id <= "01";
				RegWrite_id <= '1';
				Memread_id <= '1';
				Memwrite_id <= '0';
				Branch <= '0';
				Jump <= '0';
				Imed_id <= (31 downto 12 => s_instruction(31)) & s_instruction(31 downto 20);
				rs2_id <= (others => '0');
				rs1_id <= s_instruction(19 downto 15);
				rd_id <= s_instruction(11 downto 7);
                
            when "0100011" => -- sw
				AluSrc_id <= '1';
				MemtoReg_id <= "00";
				RegWrite_id <= '0';
				Memread_id <= '0';
				Memwrite_id <= '1';
				Branch <= '0';
				Jump <= '0';
				Imed_id <= (31 downto 12 => s_instruction(31)) &
                s_instruction(31 downto 25) & s_instruction(11 downto 7);
				rs2_id <= s_instruction(24 downto 20);
				rs1_id <= s_instruction(19 downto 15);
				rd_id <= (others => '0');

            when "1100011" => -- beq
				AluSrc_id <= '0';
				MemtoReg_id <= "--";
				RegWrite_id <= '0';
				Memread_id <= '0';
				Memwrite_id <= '0';
				Branch <= '1';
				Jump <= '0';
				Imed_id <= (31 downto 12 => s_instruction(31)) & s_instruction(7) & s_instruction(30
                    downto 25) & s_instruction(11 downto 8) & '0';
				rs2_id <= s_instruction(24 downto 20);
				rs1_id <= s_instruction(19 downto 15);
				rd_id <= (others => '0');
                
            when "0010011" => -- I-type ALU
				AluSrc_id <= '1';
				MemtoReg_id <= "00";
				RegWrite_id <= '1';
				Memread_id <= '0';
				Memwrite_id <= '0';
				Branch <= '0';
				Jump <= '0';
				Imed_id <= (31 downto 12 => s_instruction(31)) & s_instruction(31 downto 20);
				rs2_id <= (others => '0');
				rs1_id <= s_instruction(19 downto 15);
				rd_id <= s_instruction(11 downto 7);
                
            when "1101111" => -- jal
				AluSrc_id <= '0';
				MemtoReg_id <= "00";
				RegWrite_id <= '1';
				Memread_id <= '0';
				Memwrite_id <= '0';
				Branch <= '0';
				Jump <= '1';
				Imed_id <= (31 downto 20 => s_instruction(31)) &
							   s_instruction(19 downto 12) & s_instruction(20) &
							   s_instruction(30 downto 21) & '0';
				rs2_id <= (others => '0');
				rs1_id <= (others => '0');
				rd_id <= s_instruction(11 downto 7);

			when "1100111" => -- jalr
				AluSrc_id <= '0';
				MemtoReg_id <= "00";
				RegWrite_id <= '1';
				Memread_id <= '0';
				Memwrite_id <= '0';
				Branch <= '0';
				Jump <= '1';
				Imed_id <= s_instruction(30 downto 21) & '0';
				rs2_id <= (others => '0');
				rs1_id <= s_instruction(19 downto 15);
				rd_id <= s_instruction(11 downto 7);
                
            when others => 
				AluSrc_id <= '0';
				MemtoReg_id <= "00";
				RegWrite_id <= '0';
				Memread_id <= '0';
				Memwrite_id <= '0';
				Branch <= '0';
				Jump <= '0';
				Imed_id <= (others => '0');
				rs2_id <= (others => '0');
				rs1_id <= (others => '0');
				rd_id <= (others => '0');
                
        end case;
    end process;

	process (s_op, s_funct3, s_funct7(5)) begin
        case s_op is 
            when "0000011" =>  -- lw
                Aluop_id <= "000"; -- addition
			when "0100011" =>  -- sw
                Aluop_id <= "000"; -- addition
            when "1100011" =>  -- beq
                Aluop_id <= "001"; -- subtraction
            when others =>
                case s_funct3 is -- R–type or I–type ALU
                    when "000" =>
                        if ((s_funct7(5) and s_op(5)) = '1') then
                            Aluop_id <= "001"; -- sub
                        else 
                            Aluop_id <= "000"; -- add, addi
                        end if;
                    when "010" => 
                        Aluop_id <= "101"; -- slt, slti
                    when "110" => 
                        Aluop_id <= "011"; -- or, ori
                    when "111" => 
                        Aluop_id <= "010"; -- and, andi
                    when others => 
                        Aluop_id <= "000"; -- unknown
                end case;
        end case;
    end process;
	
	rf : regfile
    port map (
        clock => clock,
		RegWrite => RegWrite_id,
		read_reg_rs1 => rs1_id,
		read_reg_rs2 => rs2_id,
		write_reg_rd => rd_id,
		data_in => writedata_wb,
		data_out_a => RA_id,
		data_out_b => RB_id
    );

	hd : hazard_detection
    port map (
		clock => clock,
		rd_ex => rd_ex,
		rd_mem => rd_mem,
		rd_wb => rd_wb,
		pc => s_pc,
		rs1_id => rs1_id,
		rs2_id => rs2_id,
		RA_id => RA_id,
		RB_id => RB_id,
		alu_mem => ula_mem,
		writedata_wb => writedata_wb,
		op => s_op,
		funct3 => s_funct3,
		immediate => Imed_id,
		MemRead_mem => MemRead_mem,
		id_PC_src => id_PC_src,
		id_Jump_PC => s_id_Jump_PC,
		id_Branch_nop => id_Branch_nop,
		id_hd_hazard => s_id_hd_hazard,
		RA_out => s_RA,
		RB_out => s_RB
    );

	bex_reg: process(clock)
	begin
		if(rising_edge(clock) and s_id_hd_hazard = '0') then

			BEX(151 downto 150) <= MemtoReg_id(01 downto 0);
			BEX(149) <= RegWrite_id;
			BEX(148) <= Memwrite_id;
			BEX(147) <= Memread_id;
			BEX(146) <= AluSrc_id;
			BEX(145 downto 143) <= Aluop_id(02 downto 0);
			BEX(142 downto 138) <= rd_id(04 downto 0);
			BEX(137 downto 133) <= rs2_id(04 downto 0);
			BEX(132 downto 128) <= rs1_id(04 downto 0);
			BEX(127 downto 096) <= PC_id_Plus4;
			BEX(095 downto 064) <= Imed_id(31 downto 0);
			BEX(063 downto 032) <= s_RB;
			BEX(031 downto 000) <= s_RA;
		end if;
	end process;

	-- determinar o tipo da instr
    instruct: process(s_instruction)
    begin
		-- pseudo instruções
		if (s_instruction = "00000000000000000000000000000000" or s_instruction = "00000000000000000001000000010011") then 
			COP_id <= NOP;
        -- tipo R
        elsif (s_instruction(31 downto 25) = "0000000" and s_instruction(14 downto 12) = "000" and s_instruction(6 downto 0) = "0110011") then
            COP_id <= ADD;
        elsif (s_instruction(31 downto 25) = "0000000" and s_instruction(14 downto 12) = "010" and s_instruction(6 downto 0) = "0110011") then
            COP_id <= SLT;
        -- tipo I
        elsif (s_instruction(14 downto 12) = "000" and s_instruction(6 downto 0) = "0010011") then
            COP_id <= ADDI;
        elsif (s_instruction(14 downto 12) = "010" and s_instruction(6 downto 0) = "0010011") then
            COP_id <= SLTI;
        elsif (s_instruction(31 downto 25) = "0000000" and s_instruction(14 downto 12) = "001" and s_instruction(6 downto 0) = "0010011") then
            COP_id <= SLLI;
        elsif (s_instruction(31 downto 25) = "0000000" and s_instruction(14 downto 12) = "101" and s_instruction(6 downto 0) = "0010011") then
            COP_id <= SRLI;
        elsif (s_instruction(31 downto 25) = "0100000" and s_instruction(14 downto 12) = "101" and s_instruction(6 downto 0) = "0010011") then
            COP_id <= SRAI;
        -- tipo load
        elsif (s_instruction(14 downto 12) = "010" and s_instruction(6 downto 0) = "0000011") then
            COP_id <= LW;
        -- tipo store
        elsif (s_instruction(14 downto 12) = "010" and s_instruction(6 downto 0) = "0100011") then
            COP_id <= SW;
        -- tipo branch
        elsif (s_instruction(14 downto 12) = "000" and s_instruction(6 downto 0) = "1100011") then
            COP_id <= BEQ;
        elsif (s_instruction(14 downto 12) = "001" and s_instruction(6 downto 0) = "1100011") then
            COP_id <= BNE;
        elsif (s_instruction(14 downto 12) = "100" and s_instruction(6 downto 0) = "1100011") then
            COP_id <= BLT;
		-- Halt
		elsif (s_instruction = x"0000006F") then
			COP_id <= HALT;
        -- tipo Jump
        elsif (s_instruction(6 downto 0) = "1101111") then
            COP_id <= JAL;
        elsif (s_instruction(6 downto 0) = "1100111") then
            COP_id <= JALR;
        -- tipo não existente
        else
            COP_id <= NOP;
        end if;
    end process;
	EX: process(clock)
	begin
		if(rising_edge(clock)) then
			COP_ex <= COP_id;
		end if;
	end process;
end architecture;