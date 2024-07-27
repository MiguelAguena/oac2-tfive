------------------------------------------------------------------------------------------------------------
------------MODULO ESTAGIO WRITE-BACK-----------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all; 

library work;
use work.tipos.all;	

-- Especifica�ao do est�gio WRITE-BACK - wb: Declara�ao de entidade
-- Este est�gio  seleciona a informa�ao que deve ser gravada nos registradores, 
-- cuja grava�ao ser� executada no est�gio id
-- Os sinais de entrada e sa�da deste est�gio encontram-es definidos nos coment�rios 
-- da declara�ao de entidade estagio_wb.


entity estagio_wb is
    port(
		-- Entradas
        BWB				: in std_logic_vector(103 downto 0); -- Informa�oes vindas do estagi mem
		COP_wb			: in instruction_type := NOP;		 -- Mnem�nico da instru�ao no estagio wb
		
		-- Sa�das
        writedata_wb	: out std_logic_vector(31 downto 0); -- Valor a ser escrito emregistradores
        rd_wb			: out std_logic_vector(04 downto 0); -- Endere�o do registrador a ser escrito
		RegWrite_wb		: out std_logic						 -- Sinal de escrita nos registradores
    );
end entity;

architecture behavior_wb of estagio_wb is
    signal s_MemtoReg_wb : std_logic_vector(1 downto 0);
    signal s_RegWrite_wb : std_logic;
    signal s_NPC_wb, s_ULA_wb, s_Memval_wb: std_logic_vector(31 downto 0);
    signal s_rd_wb  : std_logic_vector(4 downto 0);
begin
    -- Sinais de controle
    s_MemtoReg_wb <= BWB(103 downto 102);
    s_RegWrite_wb <= BWB(101);
    s_NPC_wb <= BWB(100 downto 69);
    s_ULA_wb <= BWB(68 downto 37);
    s_Memval_wb <= BWB(36 downto 5);
    s_rd_wb <= BWB(4 downto 0);
    
    -- Lógica do estágio WB
    sel_wb: process(s_MemtoReg_wb, s_ULA_wb, s_Memval_wb, s_NPC_wb)
    begin
        case s_MemtoReg_wb is
            when "00" =>
                writedata_wb <= s_ULA_wb;            -- Valor vindo da saída da ULA
            when "01" =>
                writedata_wb <= s_Memval_wb;      -- Valor da saída da memória
            when "10" =>
                writedata_wb <= s_NPC_wb;         -- Endereço de retorno nas chamadas de sub-rotina (Jal ou JALR)
            when others =>
                writedata_wb <= (others => '0');   -- Valor padrão
        end case;
    end process;

    -- Definir os sinais de saída
    rd_wb <= s_rd_wb;                   -- Endereço do registrador a ser escrito
    RegWrite_wb <= s_RegWrite_wb;          -- Sinal de escrita nos registradores

end architecture behavior_wb;