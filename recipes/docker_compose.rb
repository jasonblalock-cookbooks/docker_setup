
def get_install_url
  release = node['docker_setup']['docker_compose']['release']
  kernel_name = node['kernel']['name']
  machine_hw_name = node['kernel']['machine']
  "https://github.com/docker/compose/releases/download/#{release}/docker-compose-#{kernel_name}-#{machine_hw_name}"
end

command_path = node['docker_setup']['docker_compose']['command_path']
install_url = get_install_url

remote_file command_path do
  source install_url
  owner 'root'
  group 'docker'
  mode '0755'
  action :create
end
