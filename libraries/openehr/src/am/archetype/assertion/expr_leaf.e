indexing
	component:   "openEHR Archetype Project"
	description: "leaf node in an expression tree"
	keywords:    "assertion, ADL"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2003, 2004 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class EXPR_LEAF

inherit
	EXPR_ITEM
		redefine
			out
		end

creation
	make_boolean, make_integer, make_real, make_string, make_character, 
	make_attribute_ref, make_object_ref, make_feature_call,
	make_ordinal, make_coded_term,
	make_constraint

feature -- Initialisation
	
	make_feature_call(a_ref: STRING) is
			-- node represents a feature call on Archetype object itself
		require
			ref_exists: a_ref /= Void and then not a_ref.is_empty
		do
			item := a_ref
			type := "FEATURE_CALL"
		end
	
	make_attribute_ref(a_ref: OG_PATH) is
			-- node refers to an attribute in the runtime data
		require
			ref_exists: a_ref /= Void and then not a_ref.is_empty
		do
			item := a_ref
			type := "ATTRIBUTE_REF"
		end
	
	make_object_ref(a_ref: OG_PATH) is
			-- node refers to an object in the runtime data
		require
			ref_exists: a_ref /= Void and then not a_ref.is_empty
		do
			item := a_ref
			type := "OBJECT_REF"
		end
	
	make_boolean(an_item: BOOLEAN) is
			-- node is a boolean value
   		do
			item := an_item
			type := "BOOLEAN"
		end

	make_real(an_item: REAL) is
			-- node is a real value
   		do
			item := an_item
			type := "REAL"
		end

	make_integer(an_item: INTEGER) is
			-- node is an integer value
   		do
			item := an_item
			type := "INTEGER"
		end

	make_string(an_item: STRING) is
			-- node is a string value
		require
			Item_exists: an_item /= Void
   		do
			item := an_item
			type := "STRING"
		end

	make_character(an_item: CHARACTER) is
			-- node is a character value
   		do
			item := an_item
			type := "CHARACTER"
		end

	make_ordinal(an_item: ORDINAL) is
			-- node is a ordinal value
		require
			Item_exists: an_item /= Void
   		do
			item := an_item
			type := "ORDINAL"
		end

	make_coded_term(an_item: CODE_PHRASE) is
			-- node is a term value
		require
			Item_exists: an_item /= Void
   		do
			item := an_item
			type := "CODE_PHRASE"
		end

	make_constraint(an_item: C_PRIMITIVE) is
			-- node is a constraint on a primitive type; can only be used with "matches" function
		require
			Item_exists: an_item /= Void
   		do
			item := an_item
			type := "CONSTRAINT"
		end

feature -- Access

	type: STRING

	item: ANY

feature -- Conversion

	out: STRING is 
		do
			create Result.make(0)
			Result.append(item.out)
		end
		
	as_string: STRING is
		do
			create Result.make(0)
			if type.is_equal("CONSTRAINT") then
				Result.append("{")			
			end			
			Result.append(item.out)
			if type.is_equal("CONSTRAINT") then
				Result.append("}")			
			end
		end
		
end


--|
--| ***** BEGIN LICENSE BLOCK *****
--| Version: MPL 1.1/GPL 2.0/LGPL 2.1
--|
--| The contents of this file are subject to the Mozilla Public License Version
--| 1.1 (the 'License'); you may not use this file except in compliance with
--| the License. You may obtain a copy of the License at
--| http://www.mozilla.org/MPL/
--|
--| Software distributed under the License is distributed on an 'AS IS' basis,
--| WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
--| for the specific language governing rights and limitations under the
--| License.
--|
--| The Original Code is adl_expr_leaf.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2003-2004
--| the Initial Developer. All Rights Reserved.
--|
--| Contributor(s):
--|
--| Alternatively, the contents of this file may be used under the terms of
--| either the GNU General Public License Version 2 or later (the 'GPL'), or
--| the GNU Lesser General Public License Version 2.1 or later (the 'LGPL'),
--| in which case the provisions of the GPL or the LGPL are applicable instead
--| of those above. If you wish to allow use of your version of this file only
--| under the terms of either the GPL or the LGPL, and not to allow others to
--| use your version of this file under the terms of the MPL, indicate your
--| decision by deleting the provisions above and replace them with the notice
--| and other provisions required by the GPL or the LGPL. If you do not delete
--| the provisions above, a recipient may use your version of this file under
--| the terms of any one of the MPL, the GPL or the LGPL.
--|
--| ***** END LICENSE BLOCK *****
--|
