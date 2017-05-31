# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name "docker_setup"

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'docker_setup::engine_deps', 'chef-apt-docker::default', 'docker_setup::engine'

# Specify a custom source for a single cookbook:
cookbook "docker_setup", path: "."
cookbook 'chef-apt-docker', '~> 1.1.1'
