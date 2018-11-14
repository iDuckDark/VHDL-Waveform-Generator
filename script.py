def main():
    entityName=input("entityName:")
    architectureName=input("architectureName:")
    csvfile=input("csvfile:")
    filename=input("filename:")

    start = '''
    library ieee;
    use ieee.std_logic_1164.all;

    entity '''+ entityName +''' is
      port ( address : in std_logic_vector(3 downto 0);
             data : out std_logic_vector(7 downto 0) );
    end entity '''+ entityName +''';

    architecture '''+ architectureName +''' of '''+ entityName +''' is
      type mem is array ( 0 to 2**7 - 1) of std_logic_vector(7 downto 0);
      constant my_Rom : mem := (
      '''
    rom = '''
        0  => "00000000",
        1  => "00000001",
        2  => "00000010",
        3  => "00000011",
        4  => "00000100",
        5  => "11110000",
        6  => "11110000",
        7  => "11110000",
        8  => "11110000",
        9  => "11110000",
        10 => "11110000",
        11 => "11110000",
        12 => "11110000",
        13 => "11110000",
        14 => "11110000",
        15 => "11110000");
        '''
    
    process='''
    begin
       process (address)
       begin
         case address is
    '''
    case ='''
           when "0000" => data <= my_rom(0);
           when "0001" => data <= my_rom(1);
           when "0010" => data <= my_rom(2);
           when "0011" => data <= my_rom(3);
           when "0100" => data <= my_rom(4);
           when "0101" => data <= my_rom(5);
           when "0110" => data <= my_rom(6);
           when "0111" => data <= my_rom(7);
           when "1000" => data <= my_rom(8);
           when "1001" => data <= my_rom(9);
           when "1010" => data <= my_rom(10);
           when "1011" => data <= my_rom(11);
           when "1100" => data <= my_rom(12);
           when "1101" => data <= my_rom(13);
           when "1110" => data <= my_rom(14);
           when "1111" => data <= my_rom(15);
           '''
    end = '''
               when others => data <= "00000000";
                 end case;
          end process;
        end '''+ architectureName +''';
        '''

    
    f = open(filename, "a")
    f.write(start)
    f.write(rom)
    f.write(process)
    f.write(case)
    f.write(end)
    
main()
