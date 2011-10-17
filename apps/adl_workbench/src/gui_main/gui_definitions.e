note
	component:   "openEHR Archetype Project"
	description: "Application constant redefinitions"
	keywords:    "constants"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.com>"
	copyright:   "Copyright (c) 2003-2007 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

	description: "Objects that provide access to constants loaded from files."
	date: "$Date$"
	revision: "$Revision$"

class
	GUI_DEFINITIONS

inherit
	SHARED_APP_UI_RESOURCES
		export
			{NONE} all
		end

feature -- Definitions

	icons: STRING
			-- The path to the directory containing icon files.
		once
			Result := application_startup_directory + os_directory_separator.out + "icons"
		end

	padding_width: INTEGER = 3

	border_width: INTEGER = 4

	editable_colour: EV_COLOR
		once
			create Result.make_with_8_bit_rgb (255, 255, 255)
		end

	screen_10_pt_regular_font: EV_FONT
		do
			create Result
			Result.set_family ({EV_FONT_CONSTANTS}.Family_screen)
			Result.set_weight ({EV_FONT_CONSTANTS}.Weight_regular)
			Result.set_shape ({EV_FONT_CONSTANTS}.Shape_regular)
			Result.set_height_in_points (10)
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
--| The Original Code is constants.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2003-2007
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