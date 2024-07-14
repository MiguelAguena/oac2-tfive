--Hazard Detection

library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

library work;
use work.tipos.all;

entity hazard_detection is
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
		alu_mem					: in  std_logic_vector(031 downto 0);
		alu_ex					: in  std_logic_vector(031 downto 0);	-- Saída da ULA no estágio Ex
		NPC_mem					: in  std_logic_vector(031 downto 0); -- Valor do NPC no estagio mem
		writedata_wb			: in  std_logic_vector(031 downto 0);
		immediate				: in  std_logic_vector(031 downto 0);
		op						: in  std_logic_vector(006 downto 0);
		funct3					: in  std_logic_vector(002 downto 0);
		MemRead_mem			: in	std_logic;						-- Leitura na memória no estágio mem
		MemRead_ex			: in	std_logic;						-- Leitura de memória no estagio ex
		RegWrite_wb			: in 	std_logic; 						-- Escrita no RegFile vindo de wb
		ex_fw_A_Branch		: in 	std_logic_vector(001 downto 0);	-- Seleçao de Branch forwardA
		ex_fw_B_Branch		: in 	std_logic_vector(001 downto 0);	-- Seleçao de Branch forwardB 
		
		-- Saídas
		id_hd_hazard		: out std_logic; --IF-ID Stall
		id_PC_src			: out std_logic;
		id_Jump_PC			: out std_logic_vector(031 downto 0);
		id_Branch_nop		: out std_logic; --IF-ID Flush
		RA_out				: out std_logic_vector(031 downto 0);
		RB_out				: out std_logic_vector(031 downto 0)
    
	);
end entity;

architecture arch of hazard_detection is
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
	
	signal s_a : std_logic_vector(31 downto 0) := (others => '0');	
	signal s_b : std_logic_vector(31 downto 0) := (others => '0');	
	signal s_alu_target_op : std_logic_vector(2 downto 0) := "000";	
	signal s_target_res : std_logic_vector(31 downto 0) := (others => '0');	

	signal s_id_hd_hazard_rs1 : std_logic := '0';
	signal s_id_hd_hazard_rs2 : std_logic := '0';
	 
	signal s_branching_a : std_logic_vector(31 downto 0) := (others => '0');	
	signal s_branching_b : std_logic_vector(31 downto 0) := (others => '0');	
	signal s_alu_branching_op : std_logic_vector(2 downto 0) := "001";	
	signal s_branching_zero : std_logic := '0';
	signal s_branching_res : std_logic_vector(31 downto 0) := (others => '0');	
	
	signal s_RA : std_logic_vector(31 downto 0) := (others => '0');
begin

	
	TARGET_ADDER : alu
	port map (
		in_a => s_a,
		in_b => immediate,
		ALUOp	=> s_alu_target_op,
		ULA => id_Jump_PC,
		zero => open
	);
	
	BRANCHING_ALU : alu
	port map (
		in_a => (31 downto 5 => '0') & rs1_id,
		in_b => (31 downto 5 => '0') & rs2_id,
		ALUOp	=> s_alu_branching_op,
		ULA => open,
		zero => s_branching_zero
	);

	NOP_HAZARD: process(rs1_id, rs2_id, rd_ex, rd_mem, rd_wb, RA_id, RB_id)
	begin
		--RS1
		if(rs1_id /= "00000") then
			if(rs1_id = rd_ex) then

				s_id_hd_hazard_rs1 <= '0';
				
			elsif(rs1_id = rd_mem) then

				if(MemRead_mem = '1') then

					s_id_hd_hazard_rs1 <= '1';
					
				else

					s_id_hd_hazard_rs1 <= '0';
					
				end if;

			elsif(rs1_id = rd_wb) then

				s_id_hd_hazard_rs1 <= '0';

			else

				s_id_hd_hazard_rs1 <= '0';

			end if;
		else
			
			s_id_hd_hazard_rs1 <= '0';

		end if;

		--RS2
		if(rs2_id /= "00000") then
			if(rs2_id = rd_ex) then

				s_id_hd_hazard_rs2 <= '0';

			elsif(rs2_id = rd_mem) then

				if(MemRead_mem = '1') then

					s_id_hd_hazard_rs2 <= '1';
						
				else

					s_id_hd_hazard_rs2 <= '0';

				end if;
				
			elsif(rs2_id = rd_wb) then
					
				s_id_hd_hazard_rs2 <= '0';
			else
					
				s_id_hd_hazard_rs2 <= '0';
					
			end if;
			else
				s_id_hd_hazard_rs2 <= '0';
		end if;
	end process;
			
	id_hd_hazard <= (s_id_hd_hazard_rs1 or s_id_hd_hazard_rs2);
	
	CONTROL_HAZARD: process(op, immediate, funct3, s_branching_zero, s_branching_res)
	begin
		if (op = "1100011") then --beq, bne, blt
			s_a <= pc;
			
			if((funct3 = "000" and s_branching_zero = '1') or
	    	   (funct3 = "001" and s_branching_zero = '0') or
			   (funct3 = "100" and s_branching_res(31) = '1')) then --beq

			   	id_PC_src <= '1';
				id_Branch_nop <= '1';

			else
			    id_PC_src <= '0';
				id_Branch_nop <= '0';

			end if;
		
		elsif (op = "1101111") then --jal

			s_a <= pc;
			id_PC_src <= '1';	  
			id_Branch_nop <= '1';
		
		elsif (op = "1100111") then --jalr

			s_a <= s_RA;
			id_PC_src <= '1';		  
			id_Branch_nop <= '1';

		else
			id_PC_src <= '0';
			id_Branch_nop <= '0';
		end if;
	
	end process;

end architecture;