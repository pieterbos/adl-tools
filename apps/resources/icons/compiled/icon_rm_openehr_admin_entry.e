note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

class ICON_RM_OPENEHR_ADMIN_ENTRY

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/openehr/admin_entry"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,B2,B6,BA) A(FF,50,6E,92) A(FF,4D,6A,8D) A(FF,AA,A4,9D) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,71,8B,AC) 
					A(FF,96,9D,A5) A(00,00,00,00) A(FF,79,87,99) A(FF,3F,6C,A0) A(FF,34,56,81) A(FF,48,4C,51) A(00,00,00,00) A(FF,72,8C,AC) A(FF,96,9D,A5) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,5E,79,9A) A(FF,4D,77,AB) A(FF,32,4F,73) A(FF,4D,5E,74) A(FF,46,61,82) A(FF,49,79,B2) 
					A(FF,3B,61,8F) A(FF,2F,40,56) A(FF,6F,85,9F) A(FF,49,72,A5) A(FF,34,52,78) A(FF,4E,5E,71) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,6D,77,87) A(FF,2F,51,7A) A(FF,4E,80,BD) A(FF,3F,69,9C) A(FF,4F,83,C3) A(FF,54,8B,CC) A(FF,4D,7E,B9) A(FF,49,79,B3) A(FF,43,70,A8) A(FF,53,88,C8) 
					A(FF,1F,3A,5A) A(FF,7C,81,89) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,3C,51,6B) A(FF,49,77,AF) A(FF,54,89,C9) 
					A(FF,54,8A,C9) A(FF,44,76,B2) A(FF,43,76,B1) A(FF,54,88,C7) A(FF,53,89,C8) A(FF,3D,64,93) A(FF,30,3D,4D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,7E,8C,9D) A(FF,42,64,8C) A(FF,34,57,82) A(FF,44,67,93) A(FF,55,8C,CE) A(FF,43,74,B0) A(FF,1F,4A,7F) A(FF,77,92,B2) A(FF,7A,94,B4) A(FF,20,4A,7F) 
					A(FF,42,74,AF) A(FF,4D,7E,B9) A(FF,31,49,64) A(FF,36,5A,87) A(FF,42,66,8F) A(FF,72,77,7E) A(FF,54,66,7E) A(FF,42,70,A8) A(FF,51,85,C3) A(FF,53,88,C8) 
					A(FF,4D,80,BF) A(FF,30,58,88) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,39,5F,8D) A(FF,4A,7B,B7) A(FF,4E,80,BC) A(FF,51,85,C5) 
					A(FF,39,62,93) A(FF,3E,43,4A) A(FF,6E,80,97) A(FF,21,3D,5E) A(FF,33,54,7C) A(FF,49,78,B0) A(FF,34,65,9F) A(FF,AB,BB,D0) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,B5,C4,D6) A(FF,32,62,9C) A(FF,43,6E,A2) A(FF,2E,4C,71) A(FF,1E,35,52) A(FF,5E,69,75) A(00,00,00,00) A(FF,FA,FF,FF) 
					A(FF,4C,5D,72) A(FF,4A,79,B2) A(FF,31,61,9B) A(FF,AE,BF,D2) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,BB,C8,D9) A(FF,30,5F,9A) 
					A(FF,3D,64,93) A(FF,43,4E,5B) A(FF,DD,E5,EE) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,4E,6A,8C) A(FF,47,76,AE) A(FF,4B,7F,BC) A(FF,3B,61,8F) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,42,66,92) A(FF,49,7A,B6) A(FF,39,5E,8B) A(FF,3D,4E,63) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,40,60,87) A(FF,4D,82,C1) A(FF,4D,7F,BA) A(FF,47,74,A9) A(FF,3F,70,AA) A(FF,2B,54,86) A(FF,88,9F,BC) A(FF,8C,A2,BE) A(FF,32,5A,8B) 
					A(FF,3E,6E,A8) A(FF,45,70,A4) A(FF,4C,7C,B6) A(FF,41,6D,A2) A(FF,2A,40,5A) A(FF,FF,FF,FF) A(00,00,00,00) A(FF,4C,5C,70) A(FF,2E,4E,75) A(FF,1B,33,4F) 
					A(FF,28,43,63) A(FF,44,6F,A2) A(FF,50,82,BF) A(FF,42,72,AB) A(FF,40,71,AA) A(FF,4D,7F,B9) A(FF,3D,64,92) A(FF,1D,33,4E) A(FF,25,3F,60) A(FF,2C,4B,6F) 
					A(FF,4E,57,62) A(00,00,00,00) A(00,00,00,00) A(FF,A3,AB,B7) A(FF,5F,6F,83) A(FF,D1,DB,E6) A(FF,6D,7B,8E) A(FF,3A,62,93) A(FF,47,76,AE) A(FF,34,56,7E) 
					A(FF,34,55,7D) A(FF,4C,7C,B7) A(FF,2C,4B,71) A(FF,68,70,78) A(FF,FB,FF,FF) A(FF,46,5B,74) A(FF,D1,D0,D2) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,4B,5F,77) A(FF,46,75,AD) A(FF,31,51,77) A(FF,37,45,58) A(FF,2E,42,5C) A(FF,3D,66,96) A(FF,38,5E,8B) A(FF,37,3E,46) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,7B,8B,A0) A(FF,29,43,62) 
					A(FF,2B,3C,4F) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,26,3E,5C) A(FF,23,39,54) A(FF,67,71,7D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,FF) A(FF,7C,8D,A2) A(00,00,00,00) A(00,00,00,00) A(FF,95,A1,B1) 
					A(FF,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
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