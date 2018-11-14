
    library ieee;
    use ieee.std_logic_1164.all;

    entity sin_entity is
      port ( address : in std_logic_vector(6 downto 0);
             data : out real );
    end entity sin_entity;

    architecture sin_arch of sin_entity is
      type mem is array ( 0 to 99) of real;
      constant my_rom : mem := (
       0 =>0.0,
 1 =>0.06342392,
 2 =>0.126592454,
 3 =>0.189251244,
 4 =>0.251147987,
 5 =>0.312033446,
 6 =>0.371662456,
 7 =>0.429794912,
 8 =>0.486196736,
 9 =>0.540640817,
 10 =>0.592907929,
 11 =>0.64278761,
 12 =>0.690079011,
 13 =>0.734591709,
 14 =>0.776146464,
 15 =>0.814575952,
 16 =>0.84972543,
 17 =>0.881453363,
 18 =>0.909631995,
 19 =>0.93414786,
 20 =>0.954902241,
 21 =>0.971811568,
 22 =>0.984807753,
 23 =>0.993838464,
 24 =>0.998867339,
 25 =>0.999874128,
 26 =>0.996854776,
 27 =>0.989821442,
 28 =>0.978802446,
 29 =>0.963842159,
 30 =>0.945000819,
 31 =>0.922354294,
 32 =>0.895993774,
 33 =>0.866025404,
 34 =>0.832569855,
 35 =>0.795761841,
 36 =>0.755749574,
 37 =>0.712694171,
 38 =>0.666769001,
 39 =>0.618158986,
 40 =>0.567059864,
 41 =>0.513677392,
 42 =>0.458226522,
 43 =>0.400930535,
 44 =>0.342020143,
 45 =>0.281732557,
 46 =>0.220310533,
 47 =>0.158001396,
 48 =>0.095056043,
 49 =>0.031727933,
 50 =>-0.031727933,
 51 =>-0.095056043,
 52 =>-0.158001396,
 53 =>-0.220310533,
 54 =>-0.281732557,
 55 =>-0.342020143,
 56 =>-0.400930535,
 57 =>-0.458226522,
 58 =>-0.513677392,
 59 =>-0.567059864,
 60 =>-0.618158986,
 61 =>-0.666769001,
 62 =>-0.712694171,
 63 =>-0.755749574,
 64 =>-0.795761841,
 65 =>-0.832569855,
 66 =>-0.866025404,
 67 =>-0.895993774,
 68 =>-0.922354294,
 69 =>-0.945000819,
 70 =>-0.963842159,
 71 =>-0.978802446,
 72 =>-0.989821442,
 73 =>-0.996854776,
 74 =>-0.999874128,
 75 =>-0.998867339,
 76 =>-0.993838464,
 77 =>-0.984807753,
 78 =>-0.971811568,
 79 =>-0.954902241,
 80 =>-0.93414786,
 81 =>-0.909631995,
 82 =>-0.881453363,
 83 =>-0.84972543,
 84 =>-0.814575952,
 85 =>-0.776146464,
 86 =>-0.734591709,
 87 =>-0.690079011,
 88 =>-0.64278761,
 89 =>-0.592907929,
 90 =>-0.540640817,
 91 =>-0.486196736,
 92 =>-0.429794912,
 93 =>-0.371662456,
 94 =>-0.312033446,
 95 =>-0.251147987,
 96 =>-0.189251244,
 97 =>-0.126592454,
 98 =>-0.06342392,
 99 =>-2.45E-16);

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
        end sin_arch;
        