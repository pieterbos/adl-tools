note
	component:   "openEHR Archetype Project"
	description: "Descriptor of a node in a directory of archetypes"
	keywords:    "ADL, archetype"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2006 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL: http://www.openehr.org/svn/ref_impl_eiffel/TRUNK/components/archetype_repository/src/directory/arch_rep_item.e $"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate: 2008-03-12 00:23:45 +0000 (Wed, 12 Mar 2008) $"


deferred class ARCH_REP_ITEM

inherit
	SHARED_RESOURCES
		export
			{NONE} all
		undefine
			is_equal
		end

	ARCHETYPE_DEFINITIONS
		export
			{NONE} all
		undefine
			is_equal
		end

	BMM_DEFINITIONS
		export
			{NONE} all
		undefine
			is_equal
		end

	COMPARABLE

feature -- Initialisation

	make
		do
		end

feature -- Access

	group_name: attached STRING
			-- Name distinguishing the type of item and the group to which its `repository' belongs.
			-- Useful as a logical key to pixmap icons, etc.
		deferred
		ensure
			not_empty: not Result.is_empty
		end

	ontological_name: STRING
			-- semantic name of this node, relative to parent concept, which is either class or package name, or else as concept name of archetype
			-- used to generate ontological path
			-- For Classes, will be the name of the top-level package & class e.g. EHR-OBSERVATION
			-- For archetypes will be the id
		deferred
		end

	display_name: STRING
			-- semantic name of this node to use in display context
		deferred
		end

	ontological_path: STRING
			-- path from root of ontology structure down to this point
			-- for classes in the RM, it will look lie 			/content_item/care_entry/observation
			-- for archetypes, it will look like 				/content_item/care_entry/observation/lab_result
			-- for specialised archetypes, it will look like 	/content_item/care_entry/observation/lab_result/microbiology
		do
			create Result.make (0)
			if parent /= Void then
				Result.append(parent.ontological_path + Ontological_path_separator)
			end
			Result.append (display_name)
		end

	subtree_artefact_counts: HASH_TABLE [INTEGER, INTEGER]
			-- stored counter of archetype child objects, keyed by artefact type,
			-- i.e. archetype & template counts stored separately
		local
			atf_types: ARRAYED_LIST [INTEGER]
		do
			if subtree_artefact_counts_cache = Void then
				-- create empty set of counters
				create subtree_artefact_counts_cache.make(0)
				atf_types := (create {ARTEFACT_TYPE}).types.linear_representation
				from atf_types.start until atf_types.off loop
					subtree_artefact_counts_cache.put (0, atf_types.item)
					atf_types.forth
				end

				-- aggregate child counts and local count
				if has_children then
					from children.start until children.off loop
						-- the following is technically naughty, since it creates a dependency on a descendant type, but
						-- the code reduction seems worth it
						from subtree_artefact_counts_cache.start until subtree_artefact_counts_cache.off loop
							subtree_artefact_counts_cache.replace (subtree_artefact_counts_cache.item_for_iteration +
																	children.item.subtree_artefact_counts.item(subtree_artefact_counts_cache.key_for_iteration),
																	subtree_artefact_counts_cache.key_for_iteration)
							subtree_artefact_counts_cache.forth
						end
						if attached {ARCH_REP_ARCHETYPE} children.item as ara then
							subtree_artefact_counts_cache.replace(subtree_artefact_counts_cache.item(ara.artefact_type) + 1, ara.artefact_type)
						end
						children.forth
					end
				end
			end
			Result := subtree_artefact_counts_cache
		end

   	sub_tree_artefact_count (artefact_types: ARRAY [INTEGER]): INTEGER
   			-- number of artefacts below this node of the types mentioned in `artefact_types'
		require
			artefact_types_attached: artefact_types /= Void
   		local
			i: INTEGER
		do
 			from i := artefact_types.lower until i > artefact_types.lower loop
 				Result := Result + subtree_artefact_counts.item(artefact_types[i])
 				i := i + 1
 			end
		end

feature -- Status Report

	has_artefacts: BOOLEAN
			-- True if there are any artefacts at or below this point
		deferred
		end

	has_children: BOOLEAN
			-- True if there are any child nodes
		do
			Result := children /= Void
		end

	is_root: BOOLEAN
			-- True if this node is the root of the tree
		do
			Result := parent = Void
		end

feature -- Iteration

	child_start
			-- iterate through child nodes
		require
			has_chidlren: has_children
		do
			children.start
		end

	child_off: BOOLEAN
		require
			has_chidlren: has_children
		do
			Result := children.off
		end

	child_forth
		require
			has_chidlren: has_children
		do
			children.forth
		end

	child_item: like child_type
		require
			has_chidlren: has_children
		do
			Result := children.item
		end

feature {ARCHETYPE_DIRECTORY} -- Modification

	put_child (a_child: like child_type)
		require
			a_child /= Void
		do
			if children = Void then
				create children.make
			end
			children.extend (a_child)
			a_child.set_parent(Current)
		end

feature {ARCH_REP_ITEM} -- Modification

	set_parent (a_parent: ARCH_REP_ITEM)
		require
			a_parent /= Void
		do
			parent := a_parent
		end

feature -- Comparison

	is_less alias "<" (other: like Current): BOOLEAN
			-- Is current object less than `other'?
		do
			Result := ontological_name < other.ontological_name
		end

feature {ARCH_REP_ITEM} -- Implementation

	children: SORTED_TWO_WAY_LIST [like child_type]
			-- list of child nodes

	child_type: ARCH_REP_ITEM
			-- type of allowable child node

	parent: ARCH_REP_ITEM
			-- parent node

	subtree_artefact_counts_cache: HASH_TABLE [INTEGER, INTEGER]
			-- stored counter of archetype child objects, keyed by artefact type,
			-- i.e. archetype & template counts stored separately

invariant
	ontological_name_attached: ontological_name /= Void

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
--| The Original Code is archetype_directory_item.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2006
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
