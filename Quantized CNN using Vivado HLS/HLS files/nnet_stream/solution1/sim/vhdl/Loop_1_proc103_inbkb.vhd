-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Loop_1_proc103_inbkb_rom is 
    generic(
             DWIDTH     : integer := 8; 
             AWIDTH     : integer := 10; 
             MEM_SIZE    : integer := 1024
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Loop_1_proc103_inbkb_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 146=> "10000000", 147 => "10001000", 148 => "11110101", 149 => "01111110", 
    150 => "01011100", 151 => "11011001", 152 to 176=> "10000000", 177 => "10001101", 
    178 => "11011111", 179 => "01010100", 180 to 182=> "01111101", 183 => "00011101", 
    184 to 206=> "10000000", 207 => "10010000", 208 => "11011111", 209 => "01010001", 
    210 to 212=> "01111101", 213 => "01110101", 214 => "11111101", 215 => "10010010", 
    216 to 236=> "10000000", 237 => "10101000", 238 => "11100000", 239 => "01001110", 
    240 => "01111101", 241 => "01111110", 242 to 243=> "01111101", 244 => "01000110", 
    245 => "11000000", 246 to 266=> "10000000", 267 => "10101100", 268 => "00110110", 
    269 => "01110000", 270 to 272=> "01111101", 273 => "01111110", 274 => "01111101", 
    275 => "01000110", 276 => "10011000", 277 to 298=> "10000000", 299 => "10001111", 
    300 to 301=> "10111100", 302 => "00101000", 303 to 304=> "01111101", 305 => "01111110", 
    306 => "01001000", 307 => "10010111", 308 to 332=> "10000000", 333 => "11000110", 
    334 => "01110111", 335 to 336=> "01111101", 337 => "01110101", 338 => "10010101", 
    339 to 363=> "10000000", 364 => "11001011", 365 => "01001111", 366 to 367=> "01111101", 
    368 => "01001111", 369 => "11011100", 370 to 394=> "10000000", 395 => "11001111", 
    396 => "01011011", 397 to 399=> "01111101", 400 => "00001010", 401 to 425=> "10000000", 
    426 => "11101001", 427 => "01111010", 428 to 430=> "01111101", 431 => "10100010", 
    432 => "10000001", 433 to 456=> "10000000", 457 => "11011111", 458 to 461=> "01111110", 
    462 => "11011110", 463 to 467=> "10000000", 468 => "10000011", 469 to 471=> "10001101", 
    472 => "10001000", 473 to 488=> "10000000", 489 => "11101011", 490 to 492=> "01111101", 
    493 => "01001100", 494 => "10001111", 495 to 498=> "10000000", 499 => "10010101", 
    500 => "00100110", 501 to 503=> "01111101", 504 => "01010100", 505 => "10011001", 
    506 to 519=> "10000000", 520 => "10100001", 521 => "01011001", 522 to 523=> "01111101", 
    524 => "00000100", 525 => "11000000", 526 to 527=> "10000000", 528 => "10010010", 
    529 => "10101011", 530 => "00011101", 531 => "00101011", 532 to 536=> "01111101", 
    537 => "00100000", 538 => "10000010", 539 to 550=> "10000000", 551 => "10000011", 
    552 => "00100110", 553 to 554=> "01111101", 555 => "01110010", 556 => "10110001", 
    557 => "10010001", 558 => "10110001", 559 => "00011110", 560 => "01010010", 
    561 => "01111110", 562 to 569=> "01111101", 570 => "10001011", 571 to 582=> "10000000", 
    583 => "10001010", 584 => "01100011", 585 to 586=> "01111101", 587 => "01001111", 
    588 => "10001111", 589 => "00101100", 590 to 592=> "01111101", 593 => "01111110", 
    594 => "01110111", 595 => "01001001", 596 => "01111101", 597 to 598=> "01010010", 
    599 to 600=> "01111101", 601 => "00101111", 602 => "10000100", 603 to 614=> "10000000", 
    615 => "10001010", 616 => "01100100", 617 to 618=> "01111101", 619 => "01100000", 
    620 => "11010111", 621 => "01110010", 622 to 623=> "01111101", 624 => "00111000", 
    625 => "10111100", 626 => "10110110", 627 => "10001001", 628 => "10111100", 
    629 => "10100011", 630 => "00110110", 631 to 632=> "01111101", 633 => "10110100", 
    634 to 646=> "10000000", 647 => "10001101", 648 to 651=> "01111101", 652 => "01100111", 
    653 to 655=> "01111101", 656 => "11011101", 657 to 659=> "11010110", 660 => "11101101", 
    661 => "01011001", 662 to 663=> "01111101", 664 => "00000110", 665 => "10000101", 
    666 to 678=> "10000000", 679 => "10000010", 680 => "11110011", 681 to 688=> "01111101", 
    689 => "01111110", 690 to 694=> "01111101", 695 => "00000110", 696 => "10000101", 
    697 to 711=> "10000000", 712 => "10000011", 713 => "00100110", 714 to 720=> "01111101", 
    721 => "01111110", 722 to 724=> "01111101", 725 => "00101111", 726 => "10110100", 
    727 => "10000101", 728 to 744=> "10000000", 745 => "10000111", 746 => "10100011", 
    747 => "00000100", 748 => "01100001", 749 to 751=> "01111101", 752 => "01000011", 
    753 to 755=> "00000100", 756 => "11101110", 757 => "10000100", 758 to 1023=> "10000000" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity Loop_1_proc103_inbkb is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 1024;
        AddressWidth : INTEGER := 10);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Loop_1_proc103_inbkb is
    component Loop_1_proc103_inbkb_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Loop_1_proc103_inbkb_rom_U :  component Loop_1_proc103_inbkb_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


