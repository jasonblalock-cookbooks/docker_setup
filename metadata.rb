name 'docker_setup'
maintainer 'Jason Blalock'
maintainer_email 'jasonblalock@users.noreply.github.com'
license 'MIT'
description 'Installs/Configures docker-engine and docker-compose'
long_description 'Installs/Configures docker-engine and docker-compose'
version '0.1.0'
chef_version '>= 12.7' if respond_to?(:chef_version)

supports 'ubuntu'

issues_url 'https://github.com/jasonblalock-cookbooks/docker_setup/issues'
source_url 'https://github.com/jasonblalock-cookbooks/docker_setup'

depends 'docker', '~> 2.0'
