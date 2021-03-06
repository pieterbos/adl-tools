note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_TOOL_JSON

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/json"
			make_with_size (16, 16)
			fill_memory
		end

feature {NONE} -- Image data
	
	c_colors_0 (a_ptr: POINTER; a_offset: INTEGER)
			-- Fill `a_ptr' with colors data from `a_offset'.
		external
			"C inline"
		alias
			"{
				{
					#define B(q) #q
					#ifdef EIF_WINDOWS
						#define A(a,r,g,b) B(\x##b\x##g\x##r\x##a)
					#else
						#define A(a,r,g,b) B(\x##r\x##g\x##b\x##a)
					#endif

					char l_data[] =
					A(00,00,00,00) A(00,E9,E9,E8) A(00,E9,E9,E8) A(01,EB,EB,EA) A(0D,EB,EB,EA) A(0E,EC,EC,EB) A(0E,EC,EC,EB) A(0E,EC,EC,EB) A(0E,ED,EC,EC) A(0B,EA,E9,E9) 
					A(00,68,66,66) A(00,AE,AE,AD) A(00,9E,9D,9D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,E9,E9,E8) A(03,E8,E8,E7) A(70,EA,EA,E9) 
					A(C4,EB,EB,EA) A(C4,EC,EC,EB) A(C4,EC,EC,EB) A(C4,ED,EC,EC) A(C5,EE,ED,ED) A(BB,D9,D8,D7) A(46,A1,A0,A0) A(00,A7,A6,A5) A(00,A5,A4,A3) A(00,A8,A7,A7) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,EA,EA,E9) A(14,E9,E9,E9) A(D5,EB,EA,EA) A(FF,EC,EC,EB) A(FF,EC,EC,EB) A(FF,ED,EC,EC) A(FF,ED,ED,EC) 
					A(FF,EF,EE,EE) A(FF,D3,D3,D2) A(E0,9A,99,98) A(48,9E,9D,9D) A(00,97,96,96) A(00,AC,AB,AB) A(00,AE,AD,AD) A(00,00,00,00) A(00,00,00,00) A(00,EB,EB,EA) 
					A(17,EB,EA,EA) A(D7,EB,EB,EA) A(FF,EC,EC,EB) A(FF,ED,EC,EC) A(FF,ED,ED,EC) A(FF,EE,ED,ED) A(FF,EF,EE,EE) A(FF,DA,D9,D8) A(FF,9A,99,98) A(E1,9A,99,99) 
					A(49,A1,A0,A0) A(00,B1,B1,AF) A(00,9A,99,99) A(00,00,00,00) A(00,CA,C6,78) A(00,EB,EB,EA) A(17,EB,EB,EA) A(D7,EC,EB,EB) A(FF,EC,EC,EB) A(FF,ED,EC,EC) 
					A(FF,ED,ED,EC) A(FF,EE,ED,ED) A(FF,EE,ED,ED) A(FF,EC,EB,EB) A(FF,D0,D0,CF) A(FF,C4,C3,C3) A(D9,CD,CC,CC) A(22,DE,DE,DD) A(00,DD,DD,DC) A(00,C7,C2,6F) 
					A(00,BC,B7,66) A(00,D3,D0,A7) A(15,EE,EF,F7) A(D6,EB,EB,EB) A(FF,EC,EC,EB) A(FF,ED,EC,EC) A(FF,ED,ED,ED) A(FF,EE,ED,ED) A(FF,EE,ED,ED) A(FF,EE,ED,ED) 
					A(FF,EE,EE,EE) A(FF,EE,ED,ED) A(EF,ED,ED,EC) A(2F,ED,EE,F0) A(00,DA,D8,B8) A(00,D8,D5,8D) A(00,BF,BA,67) A(26,BD,B8,65) A(8F,C7,C3,77) A(ED,D4,D1,9F) 
					A(FF,D6,D3,A3) A(FF,D6,D3,A3) A(FF,D7,D4,A4) A(FF,D6,D4,A3) A(FF,D6,D4,A4) A(FF,D7,D4,A4) A(FF,D6,D3,A3) A(FF,D6,D3,A3) A(F7,D5,D3,A2) A(A0,CA,C6,7E) 
					A(38,BF,BA,65) A(00,C6,C1,6D) A(00,B5,B0,62) A(6E,B3,AE,62) A(FF,B4,AF,63) A(FF,B8,B3,6A) A(FF,C1,BD,86) A(FF,C7,C3,8C) A(FF,CD,CA,9C) A(FF,B9,B4,74) 
					A(FF,CD,C9,95) A(FF,D1,CD,A0) A(FF,BC,B7,7A) A(FF,CA,C7,94) A(FF,B9,B5,73) A(FF,BF,BB,82) A(93,B1,AB,5F) A(00,C1,BD,77) A(00,99,93,4D) A(72,9C,96,52) 
					A(FF,9B,95,50) A(FF,A5,A0,63) A(FF,BF,BC,9D) A(FF,C0,BC,9B) A(FF,C6,C2,A3) A(FF,B9,B5,8F) A(FF,B9,B6,94) A(FF,AC,A8,74) A(FF,C3,C0,A3) A(FF,D3,D1,BD) 
					A(FF,C2,BE,A1) A(FF,B6,B2,8F) A(95,96,90,4C) A(00,86,7F,45) A(00,85,7E,42) A(72,85,7F,43) A(FF,9B,95,65) A(FF,B8,B5,94) A(FF,B8,B4,97) A(FF,AE,A9,85) 
					A(FF,BF,BC,9F) A(FF,BA,B6,9B) A(FF,B8,B4,97) A(FF,AF,AB,83) A(FF,B8,B4,99) A(FF,B5,B1,94) A(FF,C1,BE,A5) A(FF,B8,B5,9A) A(96,82,7C,41) A(00,7B,75,40) 
					A(00,72,6A,39) A(64,75,6E,3C) A(FC,7A,73,46) A(FF,97,92,70) A(FF,83,7C,53) A(FF,88,82,5A) A(FF,95,90,6D) A(FF,7C,76,4A) A(FF,8D,87,61) A(FF,97,91,70) 
					A(FF,7E,77,4C) A(FF,84,7D,54) A(FF,7F,79,4E) A(FF,86,80,59) A(88,73,6C,3A) A(00,6C,64,35) A(00,6A,63,38) A(13,66,5F,32) A(60,78,72,4D) A(E5,A9,A5,93) 
					A(FF,B1,AE,9E) A(FF,B3,B0,9F) A(FF,B3,B0,A0) A(FF,B5,B2,A2) A(FF,B4,B1,A1) A(FF,B4,B1,A0) A(FF,B5,B1,A1) A(FF,B4,B0,A0) A(F4,B0,AC,9C) A(75,84,7E,5E) 
					A(1D,64,5C,2E) A(00,67,5F,34) A(00,B4,AA,5E) A(00,99,95,84) A(13,EE,EE,F8) A(D7,D5,D5,D6) A(FF,D9,D8,D9) A(FF,DD,DC,DD) A(FF,E0,DF,E0) A(FF,E1,E1,E1) 
					A(FF,E2,E1,E2) A(FF,E1,E1,E1) A(FF,E0,DF,E0) A(FF,DD,DD,DD) A(EF,DA,D9,DA) A(2D,E2,E2,E6) A(00,A8,A4,95) A(00,AF,A4,58) A(01,03,00,00) A(03,00,00,00) 
					A(12,71,6F,6F) A(B0,C3,C2,C2) A(FB,CC,CB,CB) A(FA,CF,CE,CE) A(FA,D2,D1,D1) A(FA,D4,D3,D3) A(FA,D4,D3,D3) A(FA,D4,D3,D3) A(FA,D2,D1,D1) A(FB,D0,CF,CF) 
					A(CC,CA,C9,C9) A(22,9F,9E,9E) A(03,00,00,00) A(01,03,00,00) A(02,03,00,00) A(11,03,00,00) A(1E,00,00,00) A(3A,51,4F,4F) A(60,87,85,85) A(64,89,87,87) 
					A(65,89,87,87) A(66,89,87,87) A(66,89,87,87) A(65,8A,88,88) A(64,8A,89,89) A(62,8B,8A,8A) A(42,65,63,63) A(1F,01,00,00) A(11,03,00,00) A(02,03,00,00) 
					A(00,03,00,00) A(02,03,00,00) A(03,06,03,03) A(03,00,00,00) A(02,00,00,00) A(02,00,00,00) A(03,00,00,00) A(03,00,00,00) A(03,00,00,00) A(03,00,00,00) 
					A(02,00,00,00) A(02,00,00,00) A(02,00,00,00) A(03,02,00,00) A(02,03,00,00) A(00,03,00,00) ;
					memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
				}
			}"
		end

	build_colors (a_ptr: POINTER)
			-- Build `colors'
		do
			c_colors_0 (a_ptr, 0)
		end

end