note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

class ICON_RM_ISO_COMPOSITION

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/iso/composition"
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
					A(00,00,00,00) A(3F,9B,A8,B6) A(7F,6B,85,A5) A(7F,6C,85,A3) A(7F,6C,85,A3) A(7F,6C,85,A3) A(7F,6C,85,A3) A(7F,6C,85,A3) A(7F,6C,85,A3) A(7F,6C,85,A3) 
					A(7F,6C,85,A3) A(7F,6C,84,A3) A(87,79,8C,A2) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,60,6F,81) A(FF,43,6F,A4) A(FF,6A,9D,D8) 
					A(FF,68,9B,D6) A(FF,68,9B,D6) A(FF,68,9B,D6) A(FF,68,9B,D6) A(FF,68,9B,D6) A(FF,68,9B,D6) A(FF,68,9B,D6) A(FF,61,94,CF) A(FF,37,46,59) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,63,72,84) A(FF,41,6D,A1) A(FF,63,97,D6) A(FF,67,9C,DB) A(FF,67,9C,DB) A(FF,67,9C,DB) A(FF,67,9C,DB) 
					A(FF,67,9C,DB) A(FF,67,9C,DB) A(FF,68,9D,DC) A(FF,4B,79,B0) A(FF,3A,48,5A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,63,72,84) 
					A(FF,42,6E,A2) A(FF,56,8A,C9) A(FF,56,8A,C8) A(FF,56,8A,C8) A(FF,56,8A,C8) A(FF,56,8A,C8) A(FF,56,8A,C8) A(FF,56,8A,C8) A(FF,57,8B,C9) A(FF,49,76,AD) 
					A(FF,3A,48,5A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,63,72,84) A(FF,42,6E,A2) A(FF,56,8A,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) 
					A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,49,76,AD) A(FF,3A,48,5A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(7F,63,72,84) A(FF,42,6E,A2) A(FF,56,8A,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) 
					A(FF,57,8B,C9) A(FF,49,76,AD) A(FF,3A,48,5A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,63,72,84) A(FF,42,6E,A2) A(FF,56,8A,C9) 
					A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,49,76,AD) A(FF,3A,48,5A) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,63,72,84) A(FF,42,6E,A2) A(FF,56,8A,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) 
					A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,49,76,AD) A(FF,3A,48,5A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,63,72,84) 
					A(FF,42,6E,A2) A(FF,56,8A,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,49,76,AD) 
					A(FF,3A,48,5A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,63,72,84) A(FF,42,6E,A2) A(FF,56,8A,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) 
					A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,49,76,AD) A(FF,3A,48,5A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(7F,63,72,84) A(FF,42,6E,A2) A(FF,56,8A,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C8) 
					A(FF,57,8B,C9) A(FF,49,76,AD) A(FF,3A,48,5A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,63,72,84) A(FF,42,6E,A2) A(FF,56,8A,C9) 
					A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8B,C9) A(FF,57,8A,C9) A(FF,56,8B,C9) A(FF,57,8A,C6) A(FF,59,8B,C3) A(FF,4D,7A,AF) A(FF,39,48,5A) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,63,72,84) A(FF,42,6E,A2) A(FF,56,8A,C9) A(FF,57,8B,C9) A(FF,57,8A,C8) A(FF,57,8B,C9) A(FF,57,8A,C4) 
					A(FF,57,83,B6) A(FF,4A,6C,94) A(FF,36,4F,6F) A(FF,33,4D,6B) A(FF,51,60,73) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7F,63,72,84) 
					A(FF,43,6F,A4) A(FF,55,88,C3) A(FF,56,8A,C7) A(FF,57,8A,C6) A(FF,58,87,BD) A(FF,4B,6E,98) A(FF,2D,43,5E) A(C7,59,68,7B) A(59,97,A7,BA) A(28,FF,FF,FF) 
					A(00,00,00,00) A(00,7A,85,93) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(73,76,86,9A) A(FF,3D,58,79) A(FE,39,5B,83) A(FF,48,6E,9B) A(FF,4A,6C,95) 
					A(FF,2D,46,65) A(F0,50,60,73) A(47,B7,C2,CC) A(00,00,00,00) A(00,E4,E8,EB) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(23,E1,EC,F9) A(7F,6C,83,9D) A(C3,68,7B,92) A(B1,63,74,88) A(5E,98,A6,B6) A(00,00,00,00) A(00,BE,C6,CF) A(00,00,00,00) 
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