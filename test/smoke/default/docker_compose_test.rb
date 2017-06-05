describe bash('docker-compose --version') do
  its('stdout') { should match(/1.13.0, build 1719ceb/) }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end
