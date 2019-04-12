def local_cache(basebox_name)
  cache_dir = Vagrant::Environment.new.home_path.join('cache', 'apt', basebox_name)
  partial_dir = cache_dir.join('partial')
  partial_dir.mkdir unless partial_dir.exist?
  cache_dir
end

Vagrant.configure("2") do |config|
  config.vm.box           = "geerlingguy/ubuntu1804"
  config.vm.hostname      = "xubuntu"
  config.vm.network         "private_network", type: "dhcp"
  config.vm.network         "forwarded_port", guest: 3389, host:3389    
  config.vm.provider :virtualbox do |v|
    v.memory = 4096
    v.cpus = 2
  end
  
  cache_dir = local_cache(config.vm.box)  
  config.vm.synced_folder cache_dir, 
                         "/var/cache/apt/archives/"
                         
  # Thanks Rob Allen -> https://dzone.com/articles/provisioning-ansible-within
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.provision :shell,
    :keep_color => true,
    :inline => "export PYTHONUNBUFFERED=1 && export ANSIBLE_FORCE_COLOR=1 && cd /vagrant/provisioning && bash init.sh"

end



