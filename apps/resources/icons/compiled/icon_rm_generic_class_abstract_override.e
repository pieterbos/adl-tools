note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

class ICON_RM_GENERIC_CLASS_ABSTRACT_OVERRIDE

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/generic/class_abstract_override"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,F3,5F,57) A(FF,F8,5D,54) A(FF,F8,5E,56) A(FF,F8,62,5A) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E6,61,5A) A(FF,EC,5F,58) A(FF,EF,5C,55) A(FF,F3,5F,57) 
					A(FF,F7,5B,53) A(FF,F8,5E,56) A(FF,F8,60,58) A(FF,F8,62,5A) A(FF,F8,6D,66) A(FF,F5,81,7B) A(FF,F3,8D,87) A(FF,F0,A0,9C) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,E6,61,5A) A(FF,EA,5F,58) A(FF,EF,5C,55) A(FF,F3,5D,55) A(FF,F7,5B,53) A(FF,F8,5D,54) A(FF,F8,60,58) A(FF,F8,62,5A) A(FF,F8,6D,66) 
					A(FF,F9,74,6D) A(FF,F3,8D,87) A(FF,F1,96,91) A(FF,F3,A7,A3) A(FF,F4,AE,AA) A(00,00,00,00) A(FF,E4,61,5A) A(FF,EA,5F,58) A(FF,EC,5F,58) A(FF,F3,5D,55) 
					A(FF,F3,5F,57) A(FF,F8,5D,54) A(FF,F8,5E,56) A(FF,F8,62,5A) A(FF,F8,62,5A) A(FF,F9,74,6D) A(FF,F5,81,7B) A(FF,F1,96,91) A(FF,F0,A0,9C) A(FF,F4,AE,AA) 
					A(FF,F6,B6,B2) A(FF,F9,C6,C3) A(FF,E6,61,5A) A(FF,EC,5F,58) A(FF,EF,5C,55) A(FF,F3,5F,57) A(FF,F7,5B,53) A(FF,F8,5E,56) A(FF,F8,60,58) A(FF,F8,62,5A) 
					A(FF,F8,6D,66) A(FF,F5,81,7B) A(FF,F3,8D,87) A(FF,F0,A0,9C) A(FF,F3,A7,A3) A(FF,F6,B6,B2) A(FF,F7,BE,BB) A(FF,FA,CE,CC) A(FF,EA,5F,58) A(FF,EF,5C,55) 
					A(FF,F3,5D,55) A(FF,F7,5B,53) A(FF,F8,5D,54) A(FF,F8,60,58) A(FF,F8,62,5A) A(FF,F8,6D,66) A(FF,F9,74,6D) A(FF,F3,8D,87) A(FF,F1,96,91) A(FF,F3,A7,A3) 
					A(FF,F4,AE,AA) A(FF,F7,BE,BB) A(FF,F9,C6,C3) A(FF,FC,D5,D2) A(FF,EC,5F,58) A(FF,F3,5D,55) A(FF,F3,5F,57) A(FF,F8,5D,54) A(FF,F8,5E,56) A(FF,F8,62,5A) 
					A(FF,F8,62,5A) A(FF,F9,74,6D) A(FF,F5,81,7B) A(FF,F1,96,91) A(FF,F0,A0,9C) A(FF,F4,AE,AA) A(FF,F6,B6,B2) A(FF,F9,C6,C3) A(FF,FA,CE,CC) A(FF,FC,DD,DC) 
					A(00,00,00,00) A(FF,F3,5F,57) A(FF,F7,5B,53) A(FF,F8,5E,56) A(FF,F8,60,58) A(FF,F8,62,5A) A(FF,F8,6D,66) A(FF,F5,81,7B) A(FF,F3,8D,87) A(FF,F0,A0,9C) 
					A(FF,F3,A7,A3) A(FF,F6,B6,B2) A(FF,F7,BE,BB) A(FF,FA,CE,CC) A(FF,FC,D5,D2) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,F8,5D,54) A(FF,F8,60,58) 
					A(FF,F8,62,5A) A(FF,F8,6D,66) A(FF,F9,74,6D) A(FF,F3,8D,87) A(FF,F1,96,91) A(FF,F3,A7,A3) A(FF,F4,AE,AA) A(FF,F7,BE,BB) A(FF,F9,C6,C3) A(FF,FC,D5,D2) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,F5,81,7B) A(FF,F1,96,91) 
					A(FF,F0,A0,9C) A(FF,F4,AE,AA) A(FF,F6,B6,B2) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
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