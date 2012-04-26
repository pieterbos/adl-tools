note
	component:   "openEHR Archetype Project"
	description: "Description controls in ADL editor"
	keywords:    "test, ADL"
	author:      "Thomas Beale <thomas.beale@OceanInformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2005 Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"


class GUI_DESCRIPTION_CONTROLS

inherit
	GUI_ARCHETYPE_TARGETTED_TOOL
		redefine
			can_populate, can_repopulate, can_edit, disable_edit, enable_edit
		end

create
	make

feature -- Definitions

	min_text_height: INTEGER = 35

	min_list_height: INTEGER = 50

	min_entry_control_width: INTEGER = 150

	desc_label_width: INTEGER = 70

feature {NONE} -- Initialisation

	make (a_text_box_select_all_handler: PROCEDURE [ANY, TUPLE]; an_undo_redo_update_agent: like undo_redo_update_agent)
		do
			-- create widgets
			create ev_root_container
			ev_root_container.set_data (Current)

			create gui_authoring_tab_controls.make (0)
			create gui_description_tab_controls.make (0)

			-- set up undo handling
			undo_redo_update_agent := an_undo_redo_update_agent
			create authoring_tab_undo_redo_chain.make (undo_redo_update_agent)
			create description_tab_undo_redo_chain.make (undo_redo_update_agent)

			-- ====== Authoring tab =======
			create admin_vbox
			ev_root_container.extend (admin_vbox)
			ev_root_container.set_item_text (admin_vbox, create_message_content ("authoring_tab_text", Void))

			-- lifecycle state control - single line text field
			create lifecycle_state_text_ctl.make_editable (create_message_content ("lifecycle_state_label_text", Void),
				agent :STRING do Result := source_archetype.description.lifecycle_state end,
				agent (a_str: STRING) do source_archetype.description.set_lifecycle_state (a_str) end,
				Void,
				authoring_tab_undo_redo_chain,
				0, 250, True, False, a_text_box_select_all_handler)
			gui_authoring_tab_controls.extend (lifecycle_state_text_ctl)
			admin_vbox.extend (lifecycle_state_text_ctl.ev_root_container)
			admin_vbox.disable_item_expand (lifecycle_state_text_ctl.ev_root_container)

			create auth_frame_ctl.make (create_message_content ("auth_frame_text", Void), 70, 0, True)
			admin_vbox.extend (auth_frame_ctl.ev_root_container)

			-- original_author control
			create original_author_ctl.make_editable (create_message_content ("auth_orig_auth_label_text", Void),
				agent :HASH_TABLE [STRING, STRING] do Result := source_archetype.description.original_author end,
				agent (a_key, a_val: STRING) do source_archetype.description.put_original_author_item (a_key, a_val) end,
				agent (a_key: STRING) do source_archetype.description.remove_original_author_item (a_key) end,
				authoring_tab_undo_redo_chain,
				65, min_entry_control_width, False)
			gui_authoring_tab_controls.extend (original_author_ctl)

			-- contributors - list
			create auth_contrib_list_ctl.make_editable (create_message_content ("auth_contrib_label_text", Void),
				agent :DYNAMIC_LIST [STRING] do if attached source_archetype.description.other_contributors then Result := source_archetype.description.other_contributors end end,
				agent (a_str: STRING; i: INTEGER) do source_archetype.description.add_other_contributor (a_str, i) end,
				agent (a_str: STRING) do source_archetype.description.remove_other_contributor (a_str) end,
				authoring_tab_undo_redo_chain,
				30, min_entry_control_width, False)
			gui_authoring_tab_controls.extend (auth_contrib_list_ctl)
			auth_frame_ctl.extend (original_author_ctl.ev_root_container, True)
			auth_frame_ctl.extend (auth_contrib_list_ctl.ev_root_container, True)

			create lang_frame_ctl.make (create_message_content ("lang_frame_text", Void), 130, 0, False)
			admin_vbox.extend (lang_frame_ctl.ev_root_container)
			create lang_original_trans_hbox
			lang_frame_ctl.extend (lang_original_trans_hbox, False)

			-- original_language - text field (not modifiable)
			create original_language_text_ctl.make (create_message_content ("original_language_label_text", Void),
				agent :STRING do Result := source_archetype.original_language.code_string end,
				0, 0, True, False, a_text_box_select_all_handler)
			gui_authoring_tab_controls.extend (original_language_text_ctl)
			lang_original_trans_hbox.extend (original_language_text_ctl.ev_root_container)

			-- translation languages selector (not modifiable)
			create trans_languages_ctl.make (create_message_content ("trans_languages_label_text", Void),
				agent :DYNAMIC_LIST [STRING]
					do
						if source_archetype.has_translations then
							Result := create {ARRAYED_LIST [STRING]}.make_from_array (source_archetype.translations.current_keys)
						end
					end,
				0, 0, True)
			lang_original_trans_hbox.extend (trans_languages_ctl.ev_root_container)
			gui_authoring_tab_controls.extend (trans_languages_ctl)

			create lang_translations_hbox
			lang_frame_ctl.extend (lang_translations_hbox, True)

			-- translation author - Hash table
			create trans_author_accreditation_vbox
			lang_translations_hbox.extend (trans_author_accreditation_vbox)
			create trans_author_ctl.make_editable (create_message_content ("author_label_text", Void),
				agent :HASH_TABLE [STRING, STRING] do if source_archetype.has_translations then Result := translation_details.author end end,
				agent (a_key, a_val: STRING) do translation_details.put_author_item (a_key, a_val) end,
				agent (a_key: STRING) do translation_details.remove_author_item (a_key) end,
				authoring_tab_undo_redo_chain,
				65, min_entry_control_width, False)
			gui_authoring_tab_controls.extend (trans_author_ctl)
			trans_languages_ctl.add_linked_control (trans_author_ctl)
			trans_author_accreditation_vbox.extend (trans_author_ctl.ev_root_container)

			-- translator accreditation - multi-line text field
			create trans_accreditation_text_ctl.make_editable (create_message_content ("accreditation_label_text", Void),
				agent :STRING do if source_archetype.has_translations then Result := translation_details.accreditation end end,
				agent (a_str: STRING) do translation_details.set_accreditation (a_str) end,
				agent do translation_details.clear_accreditation end,
				authoring_tab_undo_redo_chain,
				0, 0, False, True, a_text_box_select_all_handler)
			gui_authoring_tab_controls.extend (trans_accreditation_text_ctl)
			trans_author_accreditation_vbox.extend (trans_accreditation_text_ctl.ev_root_container)
			trans_languages_ctl.add_linked_control (trans_accreditation_text_ctl)

			-- translator other_details - Hash
			create trans_other_details_ctl.make_editable (create_message_content ("other_details_label_text", Void),
				agent :HASH_TABLE [STRING, STRING] do if source_archetype.has_translations then Result := translation_details.other_details end end,
				agent (a_key, a_val: STRING) do translation_details.put_other_details_item (a_key, a_val) end,
				agent (a_key: STRING) do translation_details.remove_other_details_item (a_key) end,
				authoring_tab_undo_redo_chain,
				40, min_entry_control_width, False)
			gui_authoring_tab_controls.extend (trans_other_details_ctl)
			trans_languages_ctl.add_linked_control (trans_other_details_ctl)
			lang_translations_hbox.extend (trans_other_details_ctl.ev_root_container)

			-- copyright - multi-line text
			create copyright_text_ctl.make_editable (create_message_content ("copyright_label_text", Void),
				agent :STRING do if attached description_details then Result := description_details.copyright end end,
				agent (a_str: STRING) do description_details.set_copyright (a_str) end,
				agent do description_details.clear_copyright end,
				authoring_tab_undo_redo_chain,
				44, min_entry_control_width, True, True, a_text_box_select_all_handler)
			gui_authoring_tab_controls.extend (copyright_text_ctl)
			admin_vbox.extend (copyright_text_ctl.ev_root_container)
			admin_vbox.disable_item_expand (copyright_text_ctl.ev_root_container)


			-- ======== Descriptive tab =========
			create description_vbox
			ev_root_container.extend (description_vbox)
			ev_root_container.set_item_text (description_vbox, create_message_content ("descriptive_tab_text", Void))

			create details_hbox
			description_vbox.extend (details_hbox)
			create details_frame_ctl.make (create_message_content ("archetype_details_label_text", Void), 70, 0, False)
			details_hbox.extend (details_frame_ctl.ev_root_container)

			-- purpose - mutli-line String
			create purpose_text_ctl.make_editable (create_message_content ("purpose_label_text", Void),
				agent :STRING do if attached description_details then Result := description_details.purpose end end,
				agent (a_str: STRING) do description_details.set_purpose (a_str) end,
				Void,
				description_tab_undo_redo_chain,
				0, 0, True, True, a_text_box_select_all_handler)
			gui_description_tab_controls.extend (purpose_text_ctl)
			details_frame_ctl.extend (purpose_text_ctl.ev_root_container, True)

			-- use - mutli-line String
			create use_text_ctl.make_editable (create_message_content ("use_label_text", Void),
				agent :STRING do if attached description_details then Result := description_details.use end end,
				agent (a_str: STRING) do description_details.set_use (a_str) end,
				agent do description_details.clear_use end,
				description_tab_undo_redo_chain,
				0, 0, True, True, a_text_box_select_all_handler)
			gui_description_tab_controls.extend (use_text_ctl)
			details_frame_ctl.extend (use_text_ctl.ev_root_container, True)

			-- misuse - mutli-line String
			create misuse_text_ctl.make_editable (create_message_content ("misuse_label_text", Void),
				agent :STRING do if attached description_details then Result := description_details.misuse end end,
				agent (a_str: STRING) do description_details.set_misuse (a_str) end,
				agent do description_details.clear_misuse end,
				description_tab_undo_redo_chain,
				0, 0, True, True, a_text_box_select_all_handler)
			gui_description_tab_controls.extend (misuse_text_ctl)
			details_frame_ctl.extend (misuse_text_ctl.ev_root_container, True)

			-- keywords list
			create keywords_list_ctl.make_editable (create_message_content ("keywords_label_text", Void),
				agent :DYNAMIC_LIST [STRING] do if attached description_details then Result := description_details.keywords end end,
				agent (a_str: STRING; i: INTEGER) do description_details.add_keyword (a_str, i) end,
				agent (a_str: STRING) do description_details.remove_keyword (a_str) end,
				description_tab_undo_redo_chain,
				0, 200, False)
			gui_description_tab_controls.extend (keywords_list_ctl)
			details_hbox.extend (keywords_list_ctl.ev_root_container)
			details_hbox.disable_item_expand (keywords_list_ctl.ev_root_container)

			create resource_frame_ctl.make (create_message_content ("resources_label_text", Void), 90, 0, False)
			description_vbox.extend (resource_frame_ctl.ev_root_container)
			description_vbox.disable_item_expand (resource_frame_ctl.ev_root_container)

			-- resource package - String
			create resource_package_ctl.make_editable (create_message_content ("packages_label_text", Void),
				agent :STRING
					do
						if attached source_archetype.description.resource_package_uri then
							Result := source_archetype.description.resource_package_uri.out
						end
					end,
				agent (a_str: STRING) do source_archetype.description.set_resource_package_uri (a_str) end,
				agent do source_archetype.description.clear_resource_package_uri end,
				description_tab_undo_redo_chain,
				0, 0, True, True, a_text_box_select_all_handler)
			gui_description_tab_controls.extend (resource_package_ctl)
			resource_frame_ctl.extend (resource_package_ctl.ev_root_container, False)

			-- original resources - Hash
			create original_resources_ctl.make_editable (create_message_content ("resource_orig_res_label_text", Void),
				agent :HASH_TABLE [STRING, STRING]
					do
						if attached description_details as dd and then attached dd.original_resource_uri then
							Result := dd.original_resource_uri
						end
					end,
				agent (a_key, a_val: STRING) do description_details.put_original_resource_uri_item (a_key, a_val) end,
				agent (a_key: STRING) do description_details.remove_original_resource_uri_item (a_key) end,
				description_tab_undo_redo_chain,
				44, 0, True)
			gui_description_tab_controls.extend (original_resources_ctl)
			resource_frame_ctl.extend (original_resources_ctl.ev_root_container, False)

			-- =========== set up events ==========
			ev_root_container.selection_actions.extend (agent on_select_notebook)
			ev_root_container.select_item (admin_vbox)

			if not editing_enabled then
				disable_edit
			end
		end

feature -- Access

	ev_root_container: EV_NOTEBOOK

feature -- Status Report

	can_populate (a_source: attached like source): BOOLEAN
		do
			Result := a_source.is_valid
		end

	can_repopulate: BOOLEAN
		do
			Result := is_populated and source.is_valid
		end

	can_edit: BOOLEAN
			-- True if this tool has editing capability
		do
			Result := True
		end

feature -- Events

	on_select_notebook
		do
			if ev_root_container.selected_item = admin_vbox then
				undo_redo_update_agent.call ([authoring_tab_undo_redo_chain])
			else
				undo_redo_update_agent.call ([description_tab_undo_redo_chain])
			end
		end

feature -- Commands

	enable_edit
			-- enable editing
		do
			precursor
			gui_authoring_tab_controls.do_all (agent (an_item: GUI_DATA_CONTROL) do if an_item.can_edit then an_item.enable_edit end end)
			gui_description_tab_controls.do_all (agent (an_item: GUI_DATA_CONTROL) do if an_item.can_edit then an_item.enable_edit end end)
		end

	disable_edit
			-- disable editing
		do
			precursor
			gui_authoring_tab_controls.do_all (agent (an_item: GUI_DATA_CONTROL) do if an_item.can_edit then an_item.disable_edit end end)
			gui_description_tab_controls.do_all (agent (an_item: GUI_DATA_CONTROL) do if an_item.can_edit then an_item.disable_edit end end)
		end

feature {NONE} -- Implementation

	admin_vbox, description_vbox, trans_author_accreditation_vbox: EV_VERTICAL_BOX

	details_hbox, lang_translations_hbox, lang_original_trans_hbox: EV_HORIZONTAL_BOX

	auth_frame_ctl, lang_frame_ctl, details_frame_ctl, resource_frame_ctl: GUI_FRAME_CONTROL

	lifecycle_state_text_ctl, original_language_text_ctl, resource_package_ctl: GUI_SINGLE_LINE_TEXT_CONTROL

	original_author_ctl, trans_author_ctl, trans_other_details_ctl, original_resources_ctl: GUI_HASH_TABLE_CONTROL

	auth_contrib_list_ctl, keywords_list_ctl: GUI_TEXT_LIST_CONTROL

	trans_accreditation_text_ctl, copyright_text_ctl, purpose_text_ctl, use_text_ctl, misuse_text_ctl: GUI_MULTILINE_TEXT_CONTROL

	trans_languages_ctl: GUI_COMBO_CONTROL

	undo_redo_update_agent: PROCEDURE [ANY, TUPLE [UNDO_REDO_CHAIN]]

	gui_authoring_tab_controls, gui_description_tab_controls: ARRAYED_LIST [GUI_DATA_CONTROL]

	authoring_tab_undo_redo_chain, description_tab_undo_redo_chain: UNDO_REDO_CHAIN

	do_clear
			-- Wipe out content.
		do
			gui_authoring_tab_controls.do_all (agent (an_item: GUI_DATA_CONTROL) do an_item.do_clear end)
			gui_description_tab_controls.do_all (agent (an_item: GUI_DATA_CONTROL) do an_item.do_clear end)
		end

	do_populate
		do
			gui_authoring_tab_controls.do_all (agent (an_item: GUI_DATA_CONTROL) do an_item.do_populate end)
			gui_description_tab_controls.do_all (agent (an_item: GUI_DATA_CONTROL) do an_item.do_populate end)
		end

	description_details: detachable RESOURCE_DESCRIPTION_ITEM
		do
			if attached source_archetype.description.details then
				Result := source_archetype.description.detail_for_language (selected_language)
			end
		end

	translation_details: detachable TRANSLATION_DETAILS
		do
			if source_archetype.has_translations then
				Result := source_archetype.translation_for_language (trans_languages_ctl.ev_data_control.text)
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
--| The Original Code is adl_ontology_controls.e.
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
