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
		rd_ex			   	: in	std_logic_vector(004 downto 0);	-- Destino nos regs. no estágio ex
		rd_mem				: in	std_logic_vector(004 downto 0);	-- Escrita nos regs. no est'agio mem
      	rd_wb			   	: in 	std_logic_vector(004 downto 0);	-- Endereço do registrador escrito
		pc						: in  std_logic_vector(031 downto 0);
		rs1_id					: in  std_logic_vector(031 downto 0);
		rs2_id					: in  std_logic_vector(031 downto 0);
		RA_id					: in  std_logic_vector(031 downto 0);
		op						: in  std_logic_vector(006 downto 0);
		funct3					: in  std_logic_vector(002 downto 0);
		immediate			: in  std_logic_vector(031 downto 0);
		MemRead_mem			: in	std_logic;						-- Leitura na memória no estágio mem
		
		-- Saídas
		id_Jump_PC			: out std_logic_vector(031 downto 0);
		id_Branch_nop		: out std_logic; --IF-ID Flush
		id_hd_hazard		: out std_logic; --IF-ID Stall
		fwd_rs1_from_mem	: out std_logic;
		fwd_rs2_from_mem	: out std_logic;
		fwd_rs1_from_wb		: out std_logic;
		fwd_rs2_from_wb		: out std_logic
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
		in_a => rs1_id,
		in_b => rs2_id,
		ALUOp	=> s_alu_branching_op,
		ULA => open,
		zero => s_branching_zero
	);

	DATA_HAZARD: process(rs1_id, rs2_id, rd_ex, rd_mem, rd_wb)
	begin
		--RS1
		if(rs1_id = rd_ex) then

			s_id_hd_hazard_rs1 <= '1';

		elsif(rs1_id = rd_mem) then

			if(MemRead_mem = '1') then

				s_id_hd_hazard_rs1 <= '1';
				
			else

				fwd_rs1_from_mem <= '1';

			end if;

		elsif(rs1_id = rd_wb) then

			fwd_rs1_from_wb <= '1';

		else

			s_id_hd_hazard_rs1 <= '0';
			fwd_rs1_from_mem <= '0';
			fwd_rs1_from_wb <= '0';

		end if;

		--RS2
		if(rs2_id = rd_ex) then

			s_id_hd_hazard_rs2 <= '1';

		elsif(rs2_id = rd_mem) then

			if(MemRead_mem = '1') then

				s_id_hd_hazard_rs2 <= '1';
				
			else

				fwd_rs2_from_mem <= '1';

			end if;

		elsif(rs2_id = rd_wb) then

			fwd_rs2_from_wb <= '1';

		else
			
			s_id_hd_hazard_rs2 <= '0';
			fwd_rs2_from_mem <= '0';
			fwd_rs2_from_wb <= '0';

		end if;

		id_hd_hazard <= (s_id_hd_hazard_rs1 or s_id_hd_hazard_rs2);

	end process;
	
	CONTROL_HAZARD: process(op, immediate, funct3, s_branching_zero, s_branching_res)
	begin
		if (op = "0010011") then --beq, bne, blt
			
			s_a <= pc;
			
			if((funct3 = "000" and s_branching_zero = '1') or
	    	   (funct3 = "001" and s_branching_zero = '0') or
			   (funct3 = "100" and s_branching_res(31) = '1')) then --beq

				
				id_Branch_nop <= '1';

			else

				id_Branch_nop <= '0';

			end if;
		
		elsif (op = "1101111") then --jal

			s_a <= pc;	  
			id_Branch_nop <= '1';
		
		elsif (op = "1100111") then --jalr

			s_a <= RA_id;		  
			id_Branch_nop <= '1';

		else
			id_Branch_nop <= '0';
		end if;
	
	end process;

end architecture;