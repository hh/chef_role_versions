version = "0_1_0"
name "simpleRole1-#{version}"
description "A simple role for testing runlist propegation."
run_list "recipe[reallySimple2]"
env_run_lists
default_attributes
override_attributes