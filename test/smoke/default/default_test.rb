# # encoding: utf-8

# Inspec test for recipe docker_setup::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe apt('https://apt.dockerproject.org/repo') do
  it { should exist }
  it { should be_enabled }
end

describe package 'docker-engine' do
  it { should be_installed }
end

describe docker.version do
  its('Client.Version') { should match(/^17.04/) }
  its('Server.Version') { should match(/^17.04/) }
end

describe service('docker') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
