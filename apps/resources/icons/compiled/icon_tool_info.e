note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

class ICON_TOOL_INFO

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/info"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,03,1E,32) A(FF,0F,61,9D) A(FF,3D,9E,E0) A(FF,57,AC,E5) 
					A(FF,57,AC,E5) A(FF,3D,9E,E0) A(FF,0F,61,9D) A(FF,03,1E,32) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,04,5A,98) A(FF,42,A2,E1) A(FF,94,D5,F8) A(FF,89,D3,FA) A(FF,75,CB,FA) A(FF,75,CB,FA) A(FF,89,D3,FA) A(FF,94,D5,F8) A(FF,41,A0,E1) 
					A(FF,04,5F,95) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,04,3C,5A) A(FF,36,9C,DE) A(FF,67,C4,F7) A(FF,27,AC,F4) 
					A(FF,21,A9,F3) A(FF,F2,FA,FE) A(FF,F2,FA,FE) A(FF,21,A9,F3) A(FF,27,AC,F4) A(FF,67,C4,F7) A(FF,35,9B,DE) A(FF,03,31,5A) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,0F,79,C5) A(FF,48,B5,F1) A(FF,1C,A3,EE) A(FF,12,A0,EE) A(FF,12,A0,EE) A(FF,87,CE,F4) A(FF,87,CE,F4) A(FF,12,A0,EE) 
					A(FF,12,A0,EE) A(FF,1C,A3,EE) A(FF,48,B5,F1) A(FF,0D,79,C5) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,04,35,57) A(FF,1C,8F,D7) A(FF,25,A2,EB) 
					A(FF,14,9C,E9) A(FF,14,9C,E9) A(FF,45,B0,ED) A(FF,49,B2,ED) A(FF,49,B2,ED) A(FF,1C,9F,EA) A(FF,14,9C,E9) A(FF,14,9C,E9) A(FF,25,A2,EB) A(FF,1C,8E,D7) 
					A(FF,04,34,57) A(00,00,00,00) A(00,00,00,00) A(FF,05,30,54) A(FF,21,99,E1) A(FF,17,98,E4) A(FF,16,98,E4) A(FF,16,98,E4) A(FF,46,AC,E8) A(FF,F6,F6,F6) 
					A(FF,F6,F6,F6) A(FF,34,A4,E6) A(FF,16,98,E4) A(FF,16,98,E4) A(FF,17,98,E4) A(FF,21,99,E1) A(FF,05,30,54) A(00,00,00,00) A(00,00,00,00) A(FF,05,2D,4E) 
					A(FF,1D,95,E0) A(FF,17,92,DF) A(FF,17,92,DF) A(FF,17,92,DF) A(FF,34,9F,E1) A(FF,F3,F2,F2) A(FF,F3,F2,F2) A(FF,34,9F,E1) A(FF,17,92,DF) A(FF,17,92,DF) 
					A(FF,17,92,DF) A(FF,1D,95,E0) A(FF,05,2D,4E) A(00,00,00,00) A(00,00,00,00) A(FF,04,29,4A) A(FF,1A,8A,D6) A(FF,16,8C,DA) A(FF,15,8C,DA) A(FF,15,8C,DA) 
					A(FF,32,99,DD) A(FF,EF,EF,EF) A(FF,EF,EF,EF) A(FF,32,99,DD) A(FF,15,8C,DA) A(FF,15,8C,DA) A(FF,16,8C,DA) A(FF,1A,8B,D6) A(FF,04,29,4A) A(00,00,00,00) 
					A(00,00,00,00) A(FF,02,25,45) A(FF,14,73,BD) A(FF,1B,88,D7) A(FF,13,83,D5) A(FF,13,83,D5) A(FF,30,91,D8) A(FF,EC,EB,EB) A(FF,EC,EB,EB) A(FF,30,91,D8) 
					A(FF,13,83,D5) A(FF,13,83,D5) A(FF,1B,88,D7) A(FF,14,73,BD) A(FF,02,25,45) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,06,50,92) A(FF,2C,89,D4) 
					A(FF,14,7C,D0) A(FF,10,79,CF) A(FF,30,8A,D3) A(FF,E9,E8,E8) A(FF,E9,E8,E8) A(FF,30,8A,D3) A(FF,10,79,CF) A(FF,15,7C,D0) A(FF,2C,89,D4) A(FF,06,4F,90) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,01,20,3E) A(FF,1C,63,A5) A(FF,3A,8A,D3) A(FF,18,77,CC) A(FF,52,94,D2) A(FF,79,AA,D7) 
					A(FF,79,AA,D7) A(FF,55,96,D2) A(FF,18,77,CC) A(FF,3A,8A,D3) A(FF,1C,62,A5) A(FF,01,1E,33) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,01,28,54) A(FF,20,5E,9C) A(FF,4F,8F,D0) A(FF,49,8F,D4) A(FF,38,84,D0) A(FF,38,84,D0) A(FF,49,8F,D4) A(FF,4F,8F,D0) A(FF,20,5E,9C) 
					A(FF,01,27,55) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,08,11) A(FF,03,21,41) 
					A(FF,1B,4E,82) A(FF,2A,60,99) A(FF,2A,5F,98) A(FF,1B,4E,83) A(FF,03,21,41) A(FF,00,07,10) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
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