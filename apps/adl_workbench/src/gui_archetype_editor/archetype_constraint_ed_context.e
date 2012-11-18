note
	component:   "openEHR Archetype Project"
	description: "Node type corresponding to ARCHETYPE_CONSTRAINT"
	keywords:    "archetype, editing"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2012 Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "See notice at bottom of class"
	void_safety: "initial"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

deferred class ARCHETYPE_CONSTRAINT_ED_CONTEXT

inherit
	ANY_ED_CONTEXT
		redefine
			arch_node
		end

feature -- Access

	arch_node: detachable ARCHETYPE_CONSTRAINT
			-- archetype node being edited

	parent: ARCHETYPE_CONSTRAINT_ED_CONTEXT
			-- parent node in tree

	path: STRING
			-- path of this node with respect to top of archetype
		deferred
		end

	rm_depth: INTEGER
			-- depth of this node with respect to its top-most RM (non-constrained) node
			-- note that this will always be intermediate in the structure, since it has
			-- to be the child of some archetyped node
		require
			is_rm
		deferred
		end

feature -- Status Report

	is_root: BOOLEAN
			-- True if this node is the top of tree structure
		do
			Result := not attached parent
		end

feature -- Display

	prepare_display_in_grid (a_gui_grid: EVX_GRID)
		do
			gui_grid := a_gui_grid

			-- create a new row
			if not is_rm and then arch_node.is_root then
				gui_grid.add_row (Current)
			else
				gui_grid.add_sub_row (parent.gui_grid_row, Current)
			end
			gui_grid_row := gui_grid.last_row
		end

feature -- Modification

	set_parent (an_attr_ed_node: like parent)
		do
			parent := an_attr_ed_node
		end

feature {NONE} -- Implementation

	node_tooltip_str: STRING
			-- generate a tooltip for this node
		local
			p: STRING
			bindings: HASH_TABLE [CODE_PHRASE, STRING]
		do
			if not is_rm then
				p := arch_node.path
				Result := ed_context.flat_ontology.physical_to_logical_path (p, display_settings.language, True)
				if display_settings.show_rm_inheritance then
					Result.append ("%N%N" + get_text ("inheritance_status_text") +  specialisation_status_names.item (node_specialisation_status))
				end

				-- node-based bindings
				if attached {C_OBJECT} arch_node as co and then co.is_addressable and then ed_context.flat_ontology.has_any_term_binding (co.node_id) then
					Result.append ("%N%N" + get_text ("node_term_bindings_tooltip_text") + "%N")
					bindings := ed_context.flat_ontology.term_bindings_for_key (co.node_id)
					across bindings as bindings_csr loop
						Result.append ("  " + bindings_csr.key + ": " + bindings_csr.item.as_string + "%N")
					end
				end

				-- path-based bindings
				if ed_context.flat_ontology.has_any_term_binding (p) then
					Result.append ("%N%N" + get_text ("path_term_bindings_tooltip_text") + "%N")
					bindings := ed_context.flat_ontology.term_bindings_for_key (p)
					across bindings as bindings_csr loop
						Result.append ("  " + bindings_csr.key + ": " + bindings_csr.item.as_string + "%N")
					end
				end

				if ed_context.archetype.has_annotation_at_path (display_settings.language, arch_node.path) then
					Result.append ("%N%N" + get_text ("annotations_text") + ":%N")
					Result.append (ed_context.archetype.annotations.annotations_at_path (display_settings.language, arch_node.path).as_string)
				end
			else
				Result := path
			end
		end

	node_specialisation_status: INTEGER
			-- specialisation status of archetype node in this context object
		do
			Result := arch_node.specialisation_status
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
--| The Original Code is arch_ed_context.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2012
--| the Initial Developer. All Rights Reserved.
--|
--| Contributor(s):
--|	Sam Heard
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
