
    library ieee;
    use ieee.std_logic_1164.all;

    entity triangle_entity is
      port ( address : in std_logic_vector(6 downto 0);
             data : out real );
    end entity triangle_entity;

    architecture triangle_arch of triangle_entity is
      type mem is array ( 0 to 99) of real;
      constant my_rom : mem := (
       0 =>-1.0,
 1 =>-0.979797979797980,
 2 =>-0.959595959595960,
 3 =>-0.939393939393939,
 4 =>-0.919191919191919,
 5 =>-0.898989898989899,
 6 =>-0.878787878787879,
 7 =>-0.858585858585859,
 8 =>-0.838383838383838,
 9 =>-0.818181818181818,
 10 =>-0.797979797979798,
 11 =>-0.777777777777778,
 12 =>-0.757575757575758,
 13 =>-0.737373737373737,
 14 =>-0.717171717171717,
 15 =>-0.696969696969697,
 16 =>-0.676767676767677,
 17 =>-0.656565656565657,
 18 =>-0.636363636363636,
 19 =>-0.616161616161616,
 20 =>-0.595959595959596,
 21 =>-0.575757575757576,
 22 =>-0.555555555555556,
 23 =>-0.535353535353535,
 24 =>-0.515151515151515,
 25 =>-0.494949494949495,
 26 =>-0.474747474747475,
 27 =>-0.454545454545455,
 28 =>-0.434343434343434,
 29 =>-0.414141414141414,
 30 =>-0.393939393939394,
 31 =>-0.373737373737374,
 32 =>-0.353535353535354,
 33 =>-0.333333333333333,
 34 =>-0.313131313131313,
 35 =>-0.292929292929293,
 36 =>-0.272727272727273,
 37 =>-0.252525252525252,
 38 =>-0.232323232323232,
 39 =>-0.212121212121212,
 40 =>-0.191919191919192,
 41 =>-0.171717171717172,
 42 =>-0.151515151515152,
 43 =>-0.131313131313131,
 44 =>-0.111111111111111,
 45 =>-0.0909090909090908,
 46 =>-0.0707070707070707,
 47 =>-0.0505050505050504,
 48 =>-0.0303030303030303,
 49 =>-0.0101010101010102,
 50 =>0.0101010101010102,
 51 =>0.0303030303030303,
 52 =>0.0505050505050506,
 53 =>0.0707070707070707,
 54 =>0.0909090909090908,
 55 =>0.111111111111111,
 56 =>0.131313131313131,
 57 =>0.151515151515151,
 58 =>0.171717171717172,
 59 =>0.191919191919192,
 60 =>0.212121212121212,
 61 =>0.232323232323232,
 62 =>0.252525252525252,
 63 =>0.272727272727273,
 64 =>0.292929292929293,
 65 =>0.313131313131313,
 66 =>0.333333333333333,
 67 =>0.353535353535354,
 68 =>0.373737373737374,
 69 =>0.393939393939394,
 70 =>0.414141414141414,
 71 =>0.434343434343435,
 72 =>0.454545454545455,
 73 =>0.474747474747475,
 74 =>0.494949494949495,
 75 =>0.515151515151515,
 76 =>0.535353535353536,
 77 =>0.555555555555556,
 78 =>0.575757575757576,
 79 =>0.595959595959596,
 80 =>0.616161616161616,
 81 =>0.636363636363636,
 82 =>0.656565656565656,
 83 =>0.676767676767677,
 84 =>0.696969696969697,
 85 =>0.717171717171717,
 86 =>0.737373737373737,
 87 =>0.757575757575757,
 88 =>0.777777777777778,
 89 =>0.797979797979798,
 90 =>0.818181818181818,
 91 =>0.838383838383839,
 92 =>0.858585858585859,
 93 =>0.878787878787879,
 94 =>0.898989898989899,
 95 =>0.919191919191919,
 96 =>0.939393939393939,
 97 =>0.959595959595960,
 98 =>0.979797979797980,
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
        end triangle_arch;
        