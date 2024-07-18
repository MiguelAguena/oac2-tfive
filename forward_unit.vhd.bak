library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

library work;
use work.tipos.all;

entity forward_unit is
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
end entity;

architecture behavior_forward_unit of forward_unit is

    signal s_fw_a, s_fw_b, s_ula_a, s_ula_b : std_logic_vector(001 downto 0) := (others => '0');

begin

    ex_fw_A_Branch <= s_fw_a;
    ex_fw_B_Branch <= s_fw_b;
    ula_sel_a <= s_ula_a;
    ula_sel_b <= s_ula_b;

    branch_cases: process(rs1_id_ex, rs2_id_ex, rd_mem, rd_wb, rd_ex)
	begin
		--RS1
		if(rs1_id_ex /= "00000") then

			if(rs1_id_ex = rd_ex) then

                s_fw_a <= "01";		

			elsif(rs1_id_ex = rd_mem) then

                s_fw_a <= "10";

			elsif(rs1_id_ex = rd_wb) then

                s_fw_a <= "11";

			else

                s_fw_a <= "00";

			end if;
		else
            
            s_fw_a <= "00";

		end if;

		--RS2
		if(rs2_id_ex /= "00000") then
            
			if(rs2_id_ex = rd_ex) then

                s_fw_b <= "01";		

			elsif(rs2_id_ex = rd_mem) then

                s_fw_b <= "10";

			elsif(rs2_id_ex = rd_wb) then

                s_fw_b <= "11";

			else

                s_fw_b <= "00";

			end if;
		else
            
            s_fw_b <= "00";

		end if;
	end process;
 
    ula_cases: process(rd_mem, rd_wb, rs1_ex, rs2_ex)
    begin
        -- ula a
        if(rs1_ex /= "00000") then
            if(rs1_ex = rd_mem) then
                if(RegWrite_mem = '1' and MemRead_mem = '0') then

                    s_ula_a <= "01"; -- alu_mem

                elsif(MemRead_mem = '1') then

                    s_ula_a <= "10"; -- mem_out

                else

                    s_ula_a <= "00";

                end if;
            elsif(rs1_ex = rd_wb) then
                if(RegWrite_wb = '1') then

                    s_ula_a <= "11"; -- writeback

                else

                    s_ula_a <= "00";

                end if;
            else

                s_ula_a <= "00";     

            end if;
        end if;

        -- ula a
        if(rs2_ex /= "00000") then
            if(rs2_ex = rd_mem) then
                if(RegWrite_mem = '1' and MemRead_mem = '0') then

                    s_ula_b <= "01"; -- alu_mem

                elsif(MemRead_mem = '1') then

                    s_ula_b <= "10"; -- mem_out

                else

                    s_ula_b <= "00"; -- sem fw

                end if;

            elsif(rs2_ex = rd_wb) then
                if(RegWrite_wb = '1') then

                    s_ula_b <= "11"; -- writeback

                else

                    s_ula_b <= "00"; -- sem fw

                end if;
            else

                s_ula_b <= "00";  -- sem fw     

            end if;
        end if;

    end process;

end behavior_forward_unit ; -- behavior_forward_unit