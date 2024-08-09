---------------------------------------------------------------------------------------------------
-----------MODULO ESTAGIO DE MEMORIA---------------------------------------------------------------
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all; 

library work;
use work.tipos.all;	

-- O est�gio de mem�ria � respons�vel por implementar os acessos a mem�ria de dados nas 
-- instru�oes de load e Store.
-- Nas demais instru�oes este est�gio nao realiza nenhuma opera�ao e passa simplesmente 
-- os dados recebidos para o est�gio wb de forma a viabilizar
-- o armazenamento das informa�oes nos registradores do Banco de registradores.
-- Os sinais de entrada e sa�da deste est�gio encontram-se definidos na declara�ao da 
-- entidade estagio_mem.

entity estagio_mem is
    generic(
        dmem_init_file: string := "dmem.txt"		  		-- Arquivo inicializar a mem�ria de dados
    );
    port(
		-- Entradas
		clock		: in std_logic;						 	-- Base de tempo
        BMEM		: in std_logic_vector(115 downto 0); 	-- Informa�oes vindas do est�gio ex
		COP_mem		: in instruction_type;					-- Mnem�nico sendo processada no est�gio mem
		
		-- Sa�das
        BWB			: out std_logic_vector(103 downto 0) := (others => '0');-- Informa�oes para o wb
		COP_wb 		: out instruction_type := NOP;			-- Mnem�nico a ser processada pelo est�gio wb
		RegWrite_mem: out std_logic;						-- Escrita em regs no est�gio mem
		MemRead_mem	: out std_logic;						-- Leitura da mem�ria no est�gio mem 
		MemWrite_mem: out std_logic;						-- Escrita na memoria de dados no est�gio mem
		rd_mem		: out std_logic_vector(004 downto 0);	-- Destino nos regs. no estagio mem
		ula_mem		: out std_logic_vector(031 downto 0);	-- ULA no est�go mem para o est�gio mem
		NPC_mem		: out std_logic_vector(031 downto 0);	-- Valor do NPC no estagio mem
		Memval_mem	: out std_Logic_vector(031 downto 0)	-- Saida da mem�ria no est�gio mem
		
    );
end entity;

architecture behavior_mem of estagio_mem is
	signal s_rd_ex, s_rs1_ex, s_rs2_ex : std_logic_vector(4 downto 0) := (others => '0');
	signal s_pcPlus4, s_ULA, s_dado_arma, s_memval_mem  : std_logic_vector(31 downto 0) := (others => '0');
	signal s_MemToReg : std_logic_vector(1 downto 0) := (others => '0');
	signal s_Memread, s_RegWrite, s_MemWrite, s_write, s_read : std_logic := '0';
	signal s_mem_out, s_address : std_logic_vector(31 downto 0) := (others => '0'); -- saída da memória

	component data_ram is
		generic(
			address_bits		: integer 	:= 32;		  -- Bits de end. da memória de dados
			size				: integer 	:= 4096;	  -- Tamanho da memória de dados em Bytes
			data_ram_init_file	: string 	:= "dmem.txt" -- Arquivo da memória de dados
		);
		port (
			-- Entradas
			clock 		: in  std_logic;							    -- Base de tempo bancada de teste
			write 		: in  std_logic;								-- Sinal de escrita na memória
			address 	: in  std_logic_vector(address_bits-1 downto 0);-- Entrada de endereço da memória
			data_in 	: in  std_logic_vector(address_bits-1 downto 0);-- Entrada de dados da memória
			
			-- Saída
			data_out 	: out std_logic_vector(address_bits-1 downto 0)	-- Saída de dados da memória
		);
	end component data_ram;
begin
	-- Sinais de controle
	s_MemtoReg <= BMEM(115 downto 114);
	s_RegWrite <= BMEM(113); -- indica escrita no banco de registradores / regwrite_mem
	s_Memwrite <= BMEM(112); -- indica operação de escrita na memória de dados / memwrite_mem
	s_Memread <= BMEM(111);  -- indica operação de leitura na memória de dados / memread_mem
	s_pcPlus4 <= BMEM(110 downto 79); -- NPC no estágio MEM
	s_ULA <= BMEM(78 downto 47); -- endereço da memória de dados a ser acessado / ula_mem
	s_dado_arma <= BMEM(46 downto 15); -- dado para armazenar na memória de dados em operações de escrita
	s_rs1_ex <= BMEM(14 downto 10);
	s_rs2_ex <= BMEM(9 downto 5);
	s_rd_ex <= BMEM(4 downto 0); -- rd_mem
	s_memval_mem <= s_mem_out;

	address_logic: process(clock)
	begin
		if(s_memread = '1' or s_memwrite = '1') then
			s_address <= s_ULA;
		else
			s_address <= (others => '0');
		end if;
	end process;

	-- Instanciação da memória de dados
	inst_mem : data_ram
		generic map (
			address_bits => 32,
			size => 4096,
			data_ram_init_file => dmem_init_file
		)
		port map (
			clock => clock,
			write => s_Memwrite,
			address => s_address,
			data_in => s_dado_arma,
			data_out => s_mem_out
		);


	-- Saídas para os estágios anteriores
	Memval_mem <= s_memval_mem;
	NPC_mem <= s_pcPlus4;
	rd_mem <= s_rd_ex;
	ula_mem <= s_ULA;
	RegWrite_mem <= s_RegWrite;
	MemRead_mem <= s_Memread;
	MemWrite_mem <= s_Memwrite;


	-- Definição do buffer BWB
	BWB_load: process(clock)
	begin
		if(rising_edge(clock)) then
			BWB(103 downto 102) <= s_MemtoReg;      -- Valor que deve ser armazenado em registradores
			BWB(101) <= s_RegWrite;                 -- Sinal de escrita em registradores
			BWB(100 downto 69) <= s_pcPlus4;        -- End. de retorno nas chamada de sub-rotina-Jal ou JALR
			BWB(068 downto 37) <= s_ULA;            -- Valor vindo da saída da ula
			BWB(036 downto 05) <= s_memval_mem;     -- Valor da saída da memória
			BWB(004 downto 00) <= s_rd_ex;          -- Endereço do registrador a ser escrito
		end if;
	end process;

	-- Definição do COP
	WB: process(clock)
	begin
		if(rising_edge(clock)) then
			COP_wb <= COP_mem;
		end if;
	end process;

end architecture;