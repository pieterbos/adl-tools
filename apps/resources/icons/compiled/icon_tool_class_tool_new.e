note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

class ICON_TOOL_CLASS_TOOL_NEW

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/class_tool_new"
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
					A(00,00,00,00) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) 
					A(FF,80,80,80) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(FF,80,80,80) A(FF,80,80,80) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(FF,FF,6B,0B) 
					A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(FF,80,80,80) A(FF,80,80,80) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,0D,57,B3) A(FF,0A,58,B7) A(FF,05,59,C0) A(FF,00,5A,C9) A(00,00,00,00) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(00,00,00,00) A(00,00,00,00) A(FF,80,80,80) 
					A(FF,80,80,80) A(00,00,00,00) A(00,00,00,00) A(FF,17,54,A2) A(FF,14,55,A6) A(FF,0F,56,AF) A(FF,0A,58,B7) A(FF,08,58,BC) A(FF,03,59,C5) A(FF,07,5F,CC) 
					A(FF,0E,64,CF) A(FF,FF,6B,0B) A(FF,FF,6B,0B) A(00,00,00,00) A(00,00,00,00) A(FF,80,80,80) A(FF,80,80,80) A(00,00,00,00) A(FF,1A,54,9D) A(FF,14,55,A6) 
					A(FF,12,56,AA) A(FF,0D,57,B3) A(FF,08,58,BC) A(FF,05,59,C0) A(FF,00,5A,C9) A(FF,0E,64,CF) A(FF,15,69,D2) A(FF,23,73,D8) A(FF,2A,78,DB) A(FF,38,82,E1) 
					A(00,00,00,00) A(FF,80,80,80) A(FF,80,80,80) A(FF,1C,53,99) A(FF,17,54,A2) A(FF,12,56,AA) A(FF,0F,56,AF) A(FF,0A,58,B7) A(FF,05,59,C0) A(FF,03,59,C5) 
					A(FF,07,5F,CC) A(FF,15,69,D2) A(FF,1C,6E,D5) A(FF,2A,78,DB) A(FF,31,7D,DE) A(FF,40,87,E4) A(FF,4E,91,EA) A(FF,80,80,80) A(FF,80,80,80) A(FF,1A,54,9D) 
					A(FF,14,55,A6) A(FF,0F,56,AF) A(FF,0D,57,B3) A(FF,08,58,BC) A(FF,03,59,C5) A(FF,00,5A,C9) A(FF,0E,64,CF) A(FF,1C,6E,D5) A(FF,23,73,D8) A(FF,31,7D,DE) 
					A(FF,38,82,E1) A(FF,47,8C,E7) A(FF,55,96,ED) A(FF,80,80,80) A(FF,80,80,80) A(00,00,00,00) A(FF,12,56,AA) A(FF,0D,57,B3) A(FF,0A,58,B7) A(FF,05,59,C0) 
					A(FF,00,5A,C9) A(FF,07,5F,CC) A(FF,15,69,D2) A(FF,23,73,D8) A(FF,2A,78,DB) A(FF,38,82,E1) A(FF,40,87,E4) A(FF,4E,91,EA) A(00,00,00,00) A(FF,80,80,80) 
					A(FF,80,80,80) A(00,00,00,00) A(00,00,00,00) A(FF,0A,58,B7) A(FF,08,58,BC) A(FF,03,59,C5) A(FF,07,5F,CC) A(FF,0E,64,CF) A(FF,1C,6E,D5) A(FF,2A,78,DB) 
					A(FF,31,7D,DE) A(FF,40,87,E4) A(FF,47,8C,E7) A(00,00,00,00) A(00,00,00,00) A(FF,80,80,80) A(FF,80,80,80) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,0E,64,CF) A(FF,15,69,D2) A(FF,23,73,D8) A(FF,31,7D,DE) A(FF,38,82,E1) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,80,80,80) A(FF,80,80,80) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) 
					A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) 
					A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(FF,80,80,80) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
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