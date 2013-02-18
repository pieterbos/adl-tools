note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

class ICON_RM_GENERIC_PACKAGE

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/generic/package"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,B9,7A,00) A(FF,B9,7A,00) 
					A(FF,B9,7A,00) A(FF,B9,7A,00) A(FF,B9,7A,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,B9,7A,00) A(FF,FF,E2,B1) A(FF,FF,E2,B1) A(FF,FF,E2,B1) A(FF,FF,E2,B1) A(FF,FF,E2,B1) A(FF,B9,7A,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,B9,7A,00) A(FF,DC,92,00) 
					A(FF,DC,92,00) A(FF,DC,92,00) A(FF,DC,92,00) A(FF,DC,92,00) A(FF,DC,92,00) A(FF,DC,92,00) A(FF,B9,7A,00) A(FF,B9,7A,00) A(FF,B9,7A,00) A(FF,B9,7A,00) 
					A(FF,B9,7A,00) A(FF,B9,7A,00) A(00,00,00,00) A(00,00,00,00) A(FF,B9,7A,00) A(FF,FF,E2,B1) A(FF,FF,E2,B1) A(FF,FF,D4,8E) A(FF,FF,E2,B1) A(FF,FF,E2,B1) 
					A(FF,FF,E2,B1) A(FF,FF,E2,B1) A(FF,FF,E2,B1) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,73,4A,00) A(00,00,00,00) 
					A(FF,B9,7A,00) A(FF,FF,E2,B1) A(FF,FF,E2,B1) A(FF,FF,E2,B1) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) 
					A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,73,4A,00) A(00,00,00,00) A(FF,B9,7A,00) A(FF,FF,E2,B1) A(FF,FF,D4,8E) A(FF,FF,D4,8E) 
					A(FF,FF,E2,B1) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,C6,6B) 
					A(FF,73,4A,00) A(00,00,00,00) A(FF,B9,7A,00) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) 
					A(FF,FF,C6,6B) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,73,4A,00) A(00,00,00,00) A(FF,B9,7A,00) A(FF,FF,E2,B1) 
					A(FF,FF,D4,8E) A(FF,FF,E2,B1) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,D4,8E) 
					A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,73,4A,00) A(00,00,00,00) A(FF,B9,7A,00) A(FF,FF,E2,B1) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,D4,8E) 
					A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,B8,48) A(FF,73,4A,00) A(00,00,00,00) 
					A(FF,B9,7A,00) A(FF,FF,E2,B1) A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,C6,6B) 
					A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,B8,48) A(FF,73,4A,00) A(00,00,00,00) A(FF,B9,7A,00) A(FF,FF,D4,8E) A(FF,FF,D4,8E) A(FF,FF,C6,6B) 
					A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,B8,48) A(FF,FF,C6,6B) 
					A(FF,73,4A,00) A(00,00,00,00) A(FF,B9,7A,00) A(FF,FF,D4,8E) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,C6,6B) 
					A(FF,FF,B8,48) A(FF,FF,C6,6B) A(FF,FF,C6,6B) A(FF,FF,B8,48) A(FF,FF,C6,6B) A(FF,FF,B8,48) A(FF,73,4A,00) A(00,00,00,00) A(00,00,00,00) A(FF,73,4A,00) 
					A(FF,73,4A,00) A(FF,73,4A,00) A(FF,73,4A,00) A(FF,73,4A,00) A(FF,73,4A,00) A(FF,73,4A,00) A(FF,73,4A,00) A(FF,73,4A,00) A(FF,73,4A,00) A(FF,73,4A,00) 
					A(FF,73,4A,00) A(FF,73,4A,00) A(FF,73,4A,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
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