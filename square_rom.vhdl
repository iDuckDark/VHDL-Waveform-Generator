
    library ieee;
    use ieee.std_logic_1164.all;

    entity square_entity is
      port ( address : in std_logic_vector(6 downto 0);
             data : out real );
    end entity square_entity;

    architecture square_arch of square_entity is
      type mem is array ( 0 to 99) of real;
      constant my_rom : mem := (
       0 =>0.0,
 1 =>1.0,
 2 =>1.0,
 3 =>1.0,
 4 =>1.0,
 5 =>1.0,
 6 =>1.0,
 7 =>1.0,
 8 =>1.0,
 9 =>1.0,
 10 =>1.0,
 11 =>1.0,
 12 =>1.0,
 13 =>1.0,
 14 =>1.0,
 15 =>1.0,
 16 =>1.0,
 17 =>1.0,
 18 =>1.0,
 19 =>1.0,
 20 =>1.0,
 21 =>1.0,
 22 =>1.0,
 23 =>1.0,
 24 =>1.0,
 25 =>1.0,
 26 =>1.0,
 27 =>1.0,
 28 =>1.0,
 29 =>1.0,
 30 =>1.0,
 31 =>1.0,
 32 =>1.0,
 33 =>1.0,
 34 =>1.0,
 35 =>1.0,
 36 =>1.0,
 37 =>1.0,
 38 =>1.0,
 39 =>1.0,
 40 =>1.0,
 41 =>1.0,
 42 =>1.0,
 43 =>1.0,
 44 =>1.0,
 45 =>1.0,
 46 =>1.0,
 47 =>1.0,
 48 =>1.0,
 49 =>1.0,
 50 =>-1.0,
 51 =>-1.0,
 52 =>-1.0,
 53 =>-1.0,
 54 =>-1.0,
 55 =>-1.0,
 56 =>-1.0,
 57 =>-1.0,
 58 =>-1.0,
 59 =>-1.0,
 60 =>-1.0,
 61 =>-1.0,
 62 =>-1.0,
 63 =>-1.0,
 64 =>-1.0,
 65 =>-1.0,
 66 =>-1.0,
 67 =>-1.0,
 68 =>-1.0,
 69 =>-1.0,
 70 =>-1.0,
 71 =>-1.0,
 72 =>-1.0,
 73 =>-1.0,
 74 =>-1.0,
 75 =>-1.0,
 76 =>-1.0,
 77 =>-1.0,
 78 =>-1.0,
 79 =>-1.0,
 80 =>-1.0,
 81 =>-1.0,
 82 =>-1.0,
 83 =>-1.0,
 84 =>-1.0,
 85 =>-1.0,
 86 =>-1.0,
 87 =>-1.0,
 88 =>-1.0,
 89 =>-1.0,
 90 =>-1.0,
 91 =>-1.0,
 92 =>-1.0,
 93 =>-1.0,
 94 =>-1.0,
 95 =>-1.0,
 96 =>-1.0,
 97 =>-1.0,
 98 =>-1.0,
 99 =>-1.0);

    begin
       process (address)
       begin
         case address is
         when "0000000" => data <= my_rom(0);
when "0000001" => data <= my_rom(1);
when "0000010" => data <= my_rom(2);
when "0000011" => data <= my_rom(3);
when "0000100" => data <= my_rom(4);
when "0000101" => data <= my_rom(5);
when "0000110" => data <= my_rom(6);
when "0000111" => data <= my_rom(7);
when "0001000" => data <= my_rom(8);
when "0001001" => data <= my_rom(9);
when "0001010" => data <= my_rom(10);
when "0001011" => data <= my_rom(11);
when "0001100" => data <= my_rom(12);
when "0001101" => data <= my_rom(13);
when "0001110" => data <= my_rom(14);
when "0001111" => data <= my_rom(15);
when "0010000" => data <= my_rom(16);
when "0010001" => data <= my_rom(17);
when "0010010" => data <= my_rom(18);
when "0010011" => data <= my_rom(19);
when "0010100" => data <= my_rom(20);
when "0010101" => data <= my_rom(21);
when "0010110" => data <= my_rom(22);
when "0010111" => data <= my_rom(23);
when "0011000" => data <= my_rom(24);
when "0011001" => data <= my_rom(25);
when "0011010" => data <= my_rom(26);
when "0011011" => data <= my_rom(27);
when "0011100" => data <= my_rom(28);
when "0011101" => data <= my_rom(29);
when "0011110" => data <= my_rom(30);
when "0011111" => data <= my_rom(31);
when "0100000" => data <= my_rom(32);
when "0100001" => data <= my_rom(33);
when "0100010" => data <= my_rom(34);
when "0100011" => data <= my_rom(35);
when "0100100" => data <= my_rom(36);
when "0100101" => data <= my_rom(37);
when "0100110" => data <= my_rom(38);
when "0100111" => data <= my_rom(39);
when "0101000" => data <= my_rom(40);
when "0101001" => data <= my_rom(41);
when "0101010" => data <= my_rom(42);
when "0101011" => data <= my_rom(43);
when "0101100" => data <= my_rom(44);
when "0101101" => data <= my_rom(45);
when "0101110" => data <= my_rom(46);
when "0101111" => data <= my_rom(47);
when "0110000" => data <= my_rom(48);
when "0110001" => data <= my_rom(49);
when "0110010" => data <= my_rom(50);
when "0110011" => data <= my_rom(51);
when "0110100" => data <= my_rom(52);
when "0110101" => data <= my_rom(53);
when "0110110" => data <= my_rom(54);
when "0110111" => data <= my_rom(55);
when "0111000" => data <= my_rom(56);
when "0111001" => data <= my_rom(57);
when "0111010" => data <= my_rom(58);
when "0111011" => data <= my_rom(59);
when "0111100" => data <= my_rom(60);
when "0111101" => data <= my_rom(61);
when "0111110" => data <= my_rom(62);
when "0111111" => data <= my_rom(63);
when "1000000" => data <= my_rom(64);
when "1000001" => data <= my_rom(65);
when "1000010" => data <= my_rom(66);
when "1000011" => data <= my_rom(67);
when "1000100" => data <= my_rom(68);
when "1000101" => data <= my_rom(69);
when "1000110" => data <= my_rom(70);
when "1000111" => data <= my_rom(71);
when "1001000" => data <= my_rom(72);
when "1001001" => data <= my_rom(73);
when "1001010" => data <= my_rom(74);
when "1001011" => data <= my_rom(75);
when "1001100" => data <= my_rom(76);
when "1001101" => data <= my_rom(77);
when "1001110" => data <= my_rom(78);
when "1001111" => data <= my_rom(79);
when "1010000" => data <= my_rom(80);
when "1010001" => data <= my_rom(81);
when "1010010" => data <= my_rom(82);
when "1010011" => data <= my_rom(83);
when "1010100" => data <= my_rom(84);
when "1010101" => data <= my_rom(85);
when "1010110" => data <= my_rom(86);
when "1010111" => data <= my_rom(87);
when "1011000" => data <= my_rom(88);
when "1011001" => data <= my_rom(89);
when "1011010" => data <= my_rom(90);
when "1011011" => data <= my_rom(91);
when "1011100" => data <= my_rom(92);
when "1011101" => data <= my_rom(93);
when "1011110" => data <= my_rom(94);
when "1011111" => data <= my_rom(95);
when "1100000" => data <= my_rom(96);
when "1100001" => data <= my_rom(97);
when "1100010" => data <= my_rom(98);
when "1100011" => data <= my_rom(99);

               when others => data <= 0.0;
                 end case;
          end process;
        end square_arch;
        