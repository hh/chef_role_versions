puts "Loading role versions library."

class Chef::RunList::RunListExpansion
    def check_env_for_versioned_role
        puts "Doing the awesomeness."
	end
end

class Chef::RunList::RunListExpansionFromDisk
	alias old_fetch_role fetch_role

	# Override fetch role to do version magic first.
	def fetch_role
		vName = check_env_for_versioned_role
		old_fetch_role(vName, included_by)
	end
end

class Chef::RunList::RunListExpansionFromDisk
    alias old_fetch_role fetch_role

    # Override fetch role to do version magic first.
    def fetch_role 		  
	    vName = check_env_for_versioned_role
		old_fetch_role(vName, included_by)
	end
end

puts "Done loading role versions library."
