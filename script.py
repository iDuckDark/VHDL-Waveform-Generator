def main():
    entityName=input("entityName:")
    architectureName=input("architectureName:")
    csvfile=input("csvfile:")
    filename=input("filename:")

    start = '''
    library ieee;
    use ieee.std_logic_1164.all;

    entity '''+ entityName +''' is
      port ( address : in std_logic_vector(6 downto 0);
             data : out real );
    end entity '''+ entityName +''';

    architecture '''+ architectureName +''' of '''+ entityName +''' is
      type mem is array ( 0 to 99) of real;
      constant my_rom : mem := (
      '''
    string = ""
    with open(csvfile) as f:
            content = f.readlines()
            content = [x.strip() for x in content]
            #print(content)
            for i in range(0,100):
                if(i == 99):
                    string+= " "+ str(i) +" =>" + str(content[i]) + ");" '\n'
                else:
##                    if(content[i]=='0'or '1'):
##                        string+= " "+ str(i) +" =>" + str(str(content[i])+'.0') + "," + '\n'
##                    else:
                        string+= " "+ str(i) +" =>" + str(content[i]) + "," + '\n'
                
    process='''
    begin
       process (address)
       begin
         case address is
         '''
    string2 = ""
    for i in range(0,100):
            string2 += "when "+'"'+ '{:07b}'.format(i)+'"' + " => data <= my_rom("+str(i)+");"+ '\n'
   # print(process+string2)
    
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
               when others => data <= 0.0;
                 end case;
          end process;
        end '''+ architectureName +''';
        '''


    f = open(filename, "w")
    f.write(start)
    f.write(string)
    f.write(process)
    f.write(string2)
    f.write(end)
    
main()
