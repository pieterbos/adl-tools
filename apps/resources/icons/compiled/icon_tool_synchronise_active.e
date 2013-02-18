note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

class ICON_TOOL_SYNCHRONISE_ACTIVE

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/synchronise_active"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,DE,AA,5C) A(FF,DD,A9,5B) A(FF,DD,A9,5A) A(FF,DD,A9,5A) A(FF,DC,A8,59) 
					A(FF,DC,A9,59) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,DE,AA,5D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,DE,AA,5D) 
					A(FF,DE,AA,5C) A(FF,E3,B1,52) A(FF,EB,BA,47) A(FF,F0,C1,40) A(FF,F0,C2,40) A(FF,EC,BC,46) A(FF,E3,B0,4F) A(FF,DC,A8,57) A(FF,DC,A8,58) A(FF,DE,AA,5C) 
					A(FF,DF,AC,5B) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,DE,AA,5D) A(FF,E2,AF,55) A(FF,F0,C1,3E) A(FF,F7,CA,38) A(FF,F8,CB,38) A(FF,FA,CD,38) 
					A(FF,FA,CE,38) A(FF,FA,CE,39) A(FF,FA,CD,38) A(FF,F2,C4,3F) A(FF,DF,AC,52) A(FF,EC,BD,44) A(FF,E3,B1,53) A(00,00,00,00) A(00,00,00,00) A(FF,DE,AA,5D) 
					A(FF,E2,AF,55) A(FF,F3,C5,3A) A(FF,F7,CA,38) A(FF,F7,CA,3A) A(FF,EB,BC,42) A(FF,E2,B1,46) A(FF,E2,B1,46) A(FF,EC,BC,41) A(FF,FA,CD,3A) A(FF,FC,CF,39) 
					A(FF,FB,CE,39) A(FF,F9,CC,38) A(FF,E3,B1,50) A(00,00,00,00) A(00,00,00,00) A(FF,DE,AA,5C) A(FF,EF,C0,3E) A(FF,F7,CA,38) A(FF,F3,C5,3C) A(FF,DA,A7,4C) 
					A(FF,D7,A3,4C) A(FF,D6,A3,4B) A(FF,D5,A2,49) A(FF,D5,A2,49) A(FF,DA,A8,46) A(FF,FB,CE,3A) A(FF,FD,D0,39) A(FF,FB,CF,39) A(FF,E3,B1,4E) A(00,00,00,00) 
					A(FF,DE,AA,5D) A(FF,E5,B4,4E) A(FF,F5,C8,38) A(FF,F7,C9,3A) A(FF,DA,A7,4C) A(FF,D7,A3,4C) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,D2,9F,42) 
					A(FF,EF,C0,3D) A(FF,FF,D3,39) A(FF,FE,D2,39) A(FF,FD,D0,39) A(FF,E2,B0,4D) A(00,00,00,00) A(FF,DE,AA,5D) A(FF,EC,BC,43) A(FF,F7,CA,38) A(FF,E6,B6,45) 
					A(FF,D7,A4,4D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,D0,9D,3D) A(FF,D3,A1,3D) A(FF,DD,AB,3E) A(FF,DE,AC,40) A(FF,DF,AD,44) A(FF,E0,AE,47) 
					A(FF,DB,A8,4F) A(00,00,00,00) A(FF,DE,AA,5C) A(FF,EE,BF,41) A(FF,F8,CA,38) A(FF,E1,AF,48) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,8D,9E,B1) A(FF,8D,9E,B1) A(FF,8D,9E,B1) A(FF,8D,9E,B1) A(FF,DE,AA,5C) A(FF,E2,B0,50) 
					A(FF,E4,B2,4A) A(FF,D8,A4,4F) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,8B,9E,B1) A(FF,C1,CF,D9) A(FF,BC,CA,D6) A(FF,84,97,AD) A(00,00,00,00) A(FF,8D,9E,B1) A(FF,8D,9E,B1) A(FF,8D,9E,B1) A(FF,8D,9E,B1) A(FF,8D,9E,B1) 
					A(FF,8D,9E,B1) A(FF,8D,9E,B1) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,85,99,AE) A(FF,9B,AD,BE) A(FF,C0,CE,D9) A(FF,B1,C0,CE) A(FF,88,9C,B1) 
					A(00,00,00,00) A(FF,8D,9E,B1) A(FF,A0,AE,BC) A(FF,A7,B5,C2) A(FF,AF,BC,C8) A(FF,9E,AE,BD) A(FF,7A,8D,A3) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,87,9B,B0) A(FF,B9,C7,D4) A(FF,BE,CC,D8) A(FF,A1,B3,C4) A(FF,8B,9F,B4) A(00,00,00,00) A(FF,8D,9E,B1) A(FF,A7,B5,C2) A(FF,AF,BC,C8) 
					A(FF,B3,C0,CB) A(FF,7E,91,A6) A(FF,7C,90,A5) A(00,00,00,00) A(00,00,00,00) A(FF,86,99,AE) A(FF,8C,9F,B3) A(FF,AB,BB,CA) A(FF,BE,CC,D8) A(FF,BA,C9,D6) 
					A(FF,92,A6,BA) A(00,00,00,00) A(00,00,00,00) A(FF,8D,9E,B1) A(FF,AF,BC,C8) A(FF,B7,C4,CE) A(FF,BF,CB,D5) A(FF,C0,CD,D7) A(FF,9D,AD,BD) A(FF,91,A3,B5) 
					A(FF,93,A5,B8) A(FF,A0,B1,C1) A(FF,B9,C7,D4) A(FF,BE,CC,D8) A(FF,BC,CB,D8) A(FF,9C,AF,C1) A(FF,91,A5,BA) A(00,00,00,00) A(00,00,00,00) A(FF,8D,9E,B1) 
					A(FF,9D,AC,BB) A(FF,84,96,A9) A(FF,BB,C8,D3) A(FF,C5,D1,DB) A(FF,C4,D1,DA) A(FF,C3,D0,DA) A(FF,C1,CF,D9) A(FF,C0,CE,D9) A(FF,BE,CC,D8) A(FF,BA,C9,D6) 
					A(FF,9D,AF,C2) A(FF,94,A7,BC) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,8D,9E,B1) A(FF,74,87,9D) A(FF,78,8B,A0) A(FF,7A,8D,A3) A(FF,98,A9,B9) 
					A(FF,AE,BD,CB) A(FF,B2,C1,CE) A(FF,B2,C1,CF) A(FF,AE,BE,CD) A(FF,A0,B2,C3) A(FF,95,A8,BC) A(FF,94,A7,BC) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,8D,9E,B1) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,7F,92,A7) A(FF,81,94,AA) A(FF,84,98,AD) A(FF,88,9B,B0) A(FF,8B,9F,B3) 
					A(FF,8F,A2,B7) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
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