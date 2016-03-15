#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'apt::default'

package 'apt-transport-https'
package 'ca-certificates'
package "linux-image-extra-#{`uname -r`.strip}"
package 'apparmor'

apt_repository 'docker' do
  uri node['docker']['repository']['uri']
  components ['main']
  distribution node['docker']['platform']['distro']
  key node['docker']['repository']['key']
  keyserver node['docker']['repository']['keyserver']
  action :add
end

package 'docker-engine'

service 'docker' do
  action [ :enable, :start ]
end
