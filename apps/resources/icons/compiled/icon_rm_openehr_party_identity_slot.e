note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

class ICON_RM_OPENEHR_PARTY_IDENTITY_SLOT

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/openehr/party_identity_slot"
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
					A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) 
					A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) 
					A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) 
					A(FF,01,34,8D) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,6F,6F,6F) A(FF,5C,5C,5C) A(FF,54,54,54) A(FF,39,39,39) A(FF,1C,1C,1C) A(FF,43,43,43) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) 
					A(FF,53,53,53) A(FF,94,94,94) A(FF,F0,F0,F0) A(FF,C0,C0,C0) A(FF,97,97,97) A(FF,73,73,73) A(FF,DF,DF,DF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,5F,5F,5F) A(FF,7B,7B,7B) A(FF,EC,EC,EC) A(FF,D2,D2,D2) 
					A(FF,9C,9C,9C) A(FF,77,77,77) A(FF,82,82,82) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,00,00,80) A(FF,01,34,8D) A(FF,84,84,84) A(FF,A2,A2,A2) A(FF,AE,AE,AE) A(FF,9E,9E,9E) A(FF,7F,7F,7F) A(FF,7B,7B,7B) A(FF,FF,FF,FF) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(00,00,00,00) A(FF,76,76,76) 
					A(FF,74,74,74) A(FF,6F,6F,6F) A(FF,76,76,76) A(FF,9B,9B,9B) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,DF,DF,DF) A(FF,F6,F6,F6) A(FF,EE,EE,EE) A(FF,BD,BD,BD) A(FF,A9,A9,A9) A(FF,D1,D1,D1) 
					A(FF,70,70,70) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) 
					A(FF,D4,D4,D4) A(FF,F8,F8,F8) A(FF,E9,E9,E9) A(FF,FF,FF,FF) A(FF,B2,B2,B2) A(FF,F8,F8,F8) A(FF,6A,6A,6A) A(FF,90,90,90) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,DC,DC,DC) A(FF,E0,E0,E0) A(FF,E3,E3,E3) A(FF,FA,FA,FA) 
					A(FF,B7,B7,B7) A(FF,BE,BE,BE) A(FF,6C,6C,6C) A(FF,7B,7B,7B) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,00,00,80) A(FF,01,34,8D) A(FF,D1,D1,D1) A(FF,BE,BE,BE) A(FF,AB,AB,AB) A(FF,B1,B1,B1) A(FF,96,96,96) A(FF,6D,6D,6D) A(FF,6A,6A,6A) A(FF,84,84,84) 
					A(FF,7B,7B,7B) A(FF,B2,B2,B2) A(FF,B4,B4,B4) A(FF,A2,A2,A2) A(FF,B5,B5,B5) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,B5,B5,B5) A(FF,B5,B5,B5) 
					A(FF,9F,9F,9F) A(FF,90,90,90) A(FF,8D,8D,8D) A(FF,5F,5F,5F) A(FF,5C,5C,5C) A(FF,7D,7D,7D) A(FF,4B,4B,4B) A(FF,8A,8A,8A) A(FF,8A,8A,8A) A(FF,AF,AF,AF) 
					A(FF,87,87,87) A(FF,82,82,82) A(FF,00,00,80) A(FF,01,34,8D) A(FF,97,97,97) A(FF,96,96,96) A(FF,90,90,90) A(FF,7C,7C,7C) A(FF,66,66,66) A(FF,6E,6E,6E) 
					A(FF,61,61,61) A(FF,9E,9E,9E) A(FF,4B,4B,4B) A(FF,8C,8C,8C) A(FF,85,85,85) A(00,00,00,00) A(FF,A2,A2,A2) A(FF,7E,7E,7E) A(FF,00,00,80) A(FF,01,34,8D) 
					A(FF,90,90,90) A(FF,72,72,72) A(FF,72,72,72) A(FF,6C,6C,6C) A(FF,86,86,86) A(FF,A0,A0,A0) A(FF,FF,FF,FF) A(FF,9B,9B,9B) A(FF,4B,4B,4B) A(FF,8C,8C,8C) 
					A(FF,85,85,85) A(00,00,00,00) A(FF,9D,9D,9D) A(FF,85,85,85) A(FF,00,00,80) A(FF,00,00,80) A(FF,01,34,8D) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) 
					A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,95,95,95) 
					A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) 
					A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) ;
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