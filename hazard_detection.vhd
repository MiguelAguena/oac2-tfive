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
		rd_id			   	: in	std_logic_vector(004 downto 0);	-- Destino nos regs. no estágio id
		rd_ex			   	: in	std_logic_vector(004 downto 0);	-- Destino nos regs. no estágio ex
		rd_mem				: in	std_logic_vector(004 downto 0);	-- Escrita nos regs. no est'agio mem
      	rd_wb			   	: in 	std_logic_vector(004 downto 0);	-- Endereço do registrador escrito
		pc						: in  std_logic_vector(031 downto 0);
		RA_id					: in  std_logic_vector(031 downto 0);
		RB_id					: in  std_logic_vector(031 downto 0);
		op						: in  std_logic_vector(006 downto 0);
		immediate			: in  std_logic_vector(031 downto 0);
		MemRead_mem			: in	std_logic;						-- Leitura na memória no estágio mem
		
		-- Saídas
		id_Jump_PC			: out std_logic_vector(031 downto 0);
		id_Branch_nop		: out std_logic;
		id_hd_hazard		: out std_logic;
		fwd_from_mem		: out std_logic;
		fwd_from_wb			: out std_logic;
		stall				: out std_logic
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
	signal s_op : std_logic_vector(2 downto 0) := (others => '0');	
	signal s_res : std_logic_vector(31 downto 0) := (others => '0');	
	 
	signal s_branching_a : std_logic_vector(31 downto 0) := (others => '0');	
	signal s_branching_b : std_logic_vector(31 downto 0) := (others => '0');	
	signal s_branching_op : std_logic_vector(2 downto 0) := (others => '0');	
	signal s_branching_zero : std_logic := '0';
begin
	TARGET_ADDER : alu
	port map (
		in_a => s_a,
		in_b => s_b,
		ALUOp	=> s_op,
		ULA => s_res,
		zero => open
	);
	
	BRANCHING_ALU : alu
	port map (
		in_a => s_branching_a,
		in_b => s_branching_b,
		ALUOp	=> s_branching_op,
		ULA => open,
		zero => s_branching_zero
	);
	
	DATA_HAZARD: process(rd_id, rd_ex, rd_mem, rd_wb, MemRead_mem)
	begin
		if (rd_id = rd_ex) then
			stall <= '1';
			
		elsif (rd_id = rd_mem) then
			if(MemRead_mem = '1') then
				stall <= '1';
				
			else
				fwd_from_mem <= '1';
				
			end if;
			
		elsif (rd_id = rd_wb) then
			fwd_from_wb <= '1';
		
		end if;
	
	end process;
	
	CONTROL_HAZARD: process(op, immediate)
	begin
	
		if (s_op = "0010011") then --beq, bne, blt
			s_branching_a <= RA_id;
			s_branching_b <= RB_id;
			s_branching_op <= "001";
			
			s_a <= pc;
			s_b <= immediate;
			s_op <= "000";
								  
			if(s_branching_zero = '1') then
				id_Jump_PC <= s_res;
				id_Branch_nop <= '1';
				id_hd_hazard <= '1';
			end if;
		end if;
		
		if (s_op = "1101111") then --jal
			s_a <= pc;
			s_b <= immediate;
			s_op <= "000";
			id_Jump_PC <= s_res;
								  
			id_Branch_nop <= '1';
			id_hd_hazard <= '1';
		end if;
		
		if (s_op = "1100111") then --jalr
			s_a <= RA_id;
			s_b <= immediate;
			s_op <= "000";
			id_Jump_PC <= s_res;
								  
			id_Branch_nop <= '1';
			id_hd_hazard <= '1';			
		end if;
	
	end process;

end architecture;