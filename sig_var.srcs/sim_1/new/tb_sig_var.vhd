----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/03/10 11:10:16
-- Design Name: 
-- Module Name: tb_sig_var - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_sig_var is
end tb_sig_var;

architecture Behavioral of tb_sig_var is
    component sig_var is
    port(
    x,y,z:in std_logic;
    res1,res2:out std_logic
    );
    end component;
    
    signal x : std_logic := '0';
    signal y : std_logic := '0';
    signal z : std_logic := '0';
    
    signal res1 : std_logic ;
    signal res2 : std_logic ;
    
begin
    uut:sig_var port map(
    x => x,
    y => y,
    z => z,
    res1 => res1,
    res2 => res2
    );
    
    x_ptocess :process
    begin
        x<='0';
        wait for 40ns;
        x<='1';
        wait for 40ns;
    end process;
    
    y_ptocess :process
    begin
        y<='0';
        wait for 20ns;
        y<='1';
        wait for 20ns;
    end process;
        
    z_ptocess :process
    begin
        z<='0';
        wait for 10ns;
        z<='1';
        wait for 10ns;
    end process;

end Behavioral;
