note
	component:   "openEHR Archetype Project"
	description: "Class map control - Visualise a reference model class as a node map"
	keywords:    "archetype, cadl, gui"
	author:      "Thomas Beale <thomas.beale@OceanInformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2011 Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class
	GUI_VALIDITY_REPORT_CONTROL

inherit
	GUI_ARCHETYPE_TARGETTED_TOOL
		redefine
			can_populate
		end

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			-- create widgets
			create ev_root_container
			ev_root_container.set_data (Current)

			create ev_rich_text

			-- connect them together
			ev_root_container.extend (ev_rich_text)
		end

feature -- Access

	ev_root_container: EV_VERTICAL_BOX

feature -- Status Report

	can_populate (aca: attached ARCH_CAT_ARCHETYPE): BOOLEAN
		do
			Result := True
		end

feature -- Commands

	clear
			-- wipe out content from ontology-related controls
		do
			ev_rich_text.remove_text
		end

	do_populate
			-- populate ontology controls
		do
			ev_rich_text.set_text (target_archetype_descriptor.errors.as_string)
		end

feature {NONE} -- Implementation

	ev_rich_text: EV_RICH_TEXT

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
--| The Original Code is gui_validity_report_control.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2011
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