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
            for i in range(0,100):
                if(i == 99):
                    string+= " "+ str(i) +" =>" + str(content[i]) + ");" '\n'
                else:
                  string+= " "+ str(i) +" =>" + str(content[i]) + "," + '\n'       
    process='''
    begin
       process (address)
       begin
         case address is
         '''
    cases = ""
    for i in range(0,100):
            cases += "when "+'"'+ '{:07b}'.format(i)+'"' + " => data <= my_rom("+str(i)+");"+ '\n'
    end_end = '''
               when others => data <= 0.0;
                 end case;
          end process;
        end '''+ architectureName +''';
        '''
    f = open(filename, "w")
    f.write(start)
    f.write(string)
    f.write(process)
    f.write(cases)
    f.write(end_end)
    
main()
