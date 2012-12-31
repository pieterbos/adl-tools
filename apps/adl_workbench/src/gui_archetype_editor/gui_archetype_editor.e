note
	component:   "openEHR Archetype Project"
	description: "Archetype editor container"
	keywords:    "GUI, ADL"
	author:      "Thomas Beale <thomas.beale@OceanInformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2012 Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "See notice at bottom of class"

class GUI_ARCHETYPE_EDITOR

inherit
	GUI_ARCHETYPE_TOOL
		redefine
			make, do_populate, can_populate,
			can_edit, enable_edit, disable_edit,
			add_editing_controls, on_set_primary_source,
			tool_refresh_required
		end

	GUI_EDITING_ENABLED
		export
			{NONE} all
		redefine
			populate_undo_redo_controls
		end

create
	make

feature {NONE}-- Initialization

	make
		do
			precursor
			-- translation control
			ev_notebook.extend (translation_control.ev_root_container)
			ev_notebook.set_item_text (translation_control.ev_root_container, get_text ("translation_tab_text"))
			-- ev_notebook.item_tab (translation_control.ev_root_container).set_pixmap (get_icon_pixmap ("tool/translation"))

			select_flat_view
		end

feature -- Status Report

	can_populate (a_source: attached like source): BOOLEAN
		do
			Result := a_source.is_valid
		end

	can_edit: BOOLEAN
			-- True if this tool had editing capability
		do
			Result := True
		end

feature -- Commands

	enable_edit
		do
			precursor
			description_controls.enable_edit
			definition_control.enable_edit
			ontology_controls.enable_edit
			annotations_control.enable_edit
			translation_control.enable_edit
		end

	disable_edit
		do
			precursor
			description_controls.disable_edit
			definition_control.disable_edit
			ontology_controls.disable_edit
			annotations_control.disable_edit
			translation_control.disable_edit
		end

feature -- Events

	on_set_primary_source
		do
--			if source_archetype.is_generated then
--				edit_archetype.set_is_generated
--			else
--				edit_archetype.clear_is_generated
--			end
			populate_primary_source
		end

feature {NONE} -- Implementation

	make_core_tools
		do
			create description_controls.make_editable (agent update_undo_redo_controls)
			create definition_control.make_editable (agent update_undo_redo_controls)
			create ontology_controls.make_editable (agent update_undo_redo_controls)
			create annotations_control.make
			create translation_control.make
		end

	do_populate
			-- pre-populate the description and node-map controls
		do
			precursor
			description_controls.populate (source, differential_view, selected_language)
			definition_control.populate (source, differential_view, selected_language)
		end

	attach_gui_context
		local
			gui_context: GUI_ARCH_CAT_EDITOR_STATE
		do
			if not source.has_gui_context then
				create gui_context.make (source)
				source.set_gui_context (gui_context)
			elseif attached {GUI_ARCH_CAT_EDITOR_STATE} source.gui_context as gc then
				gui_context := gc
			end
			gui_context.set_editable (undo_redo_chain)
		end

	do_commit
		do
			source.commit
			gui_agents.refresh_archetype_viewers_agent.call ([source.id.as_string])
			gui_agents.console_tool_append_agent.call ([get_msg ("arch_editor_commit_notification", <<source.id.as_string, source.differential_path>>)])
		end

	populate_undo_redo_controls
		do
			precursor
			populate_primary_source
		end

	add_editing_controls
		do
			add_undo_redo_commit_toolbar
		end

	tool_refresh_required (an_arch_tool: GUI_ARCHETYPE_TARGETTED_TOOL): BOOLEAN
			-- Return True if `an_arch_tool' should be refreshed with its current content
		do
			Result := True
		end

	translation_control: GUI_TRANSLATION_CONTROLS

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
--| The Original Code is gui_archetype_tool.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 20011
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
