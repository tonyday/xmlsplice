# This forces us to supply sudo password (used for nfs mounting) earlier (rather than later)
system('sudo pwd')

Vagrant.configure(2) do |config|
  config.vm.box = 'ruby222.2'
  config.vm.hostname = File.basename(Dir.pwd)
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network 'private_network', type: 'dhcp'
  config.ssh.forward_agent = true
  config.vm.synced_folder '.', '/vagrant', type: 'rsync'
  config.vm.provider 'virtualbox' do |v|
    v.memory = 2048
    v.cpus = 2
  end
end
