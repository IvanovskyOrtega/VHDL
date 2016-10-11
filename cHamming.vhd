library ieee;
use ieee.std_logic_1164.all;
entity cHamming is
	port(
		A,B,C,D: in std_logic;
		C1,C2,A0,C3,B0,C0,D0: out std_logic;
		);

attribute pin_numbers of suma: entity is
"A:1 " & "B:2 " & "C:3 " & "D:4 " & "C1:14 " & "C2:15 " & "A0:16 " & "C3:17 " & "B0:18 " & "C0:19 " & "D0:20 ";
end cHamming;
architecture arqcHamming of cHamming is
begin
    C1 <= ((not A)and D) or ((not A) and B) or (B and D);
    C2 <= A xor C xor D;
    A0 <= A;
    C3 <= ((not C) and D) or ((not C) and B) or (B and D);
    B0 <= B;
    C0 <= C;
    D0 <= D;
end arqcHamming;
