note
	description : "project application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

	SHARED_APP_ROOT

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			app_root.make
			print("config file dir: " + app_root.user_config_file_path + "%N")
			if app_root.initialised then
				print("APP_ROOT initialisation succeeded%N")
			else
				print("APP_ROOT initialisation failed%N")
			end
		end

end