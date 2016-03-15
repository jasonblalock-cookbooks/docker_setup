#
# Cookbook Name:: docker
# Attributes:: default
#
# Copyright (C) 2016 Jason Blalock
#
# MIT License
#

default['docker']['repository']['uri'] = 'https://apt.dockerproject.org/repo'
default['docker']['platform']['distro'] = 'ubuntu-trusty'
default['docker']['repository']['key'] = '58118E89F3A912897C070ADBF76221572C52609D'
default['docker']['repository']['keyserver'] = 'hkp://p80.pool.sks-keyservers.net:80'
