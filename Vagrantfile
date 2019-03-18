Vagrant.configure("2") do |config|
  config.vm.box           = "geerlingguy/ubuntu1804"
  config.vm.hostname      = "xubuntu"
  config.vm.network         "private_network", type: "dhcp"
    
  config.vm.provider :virtualbox do |v|
    v.memory = 4096
    v.cpus = 2
  end
    
  # Thanks Rob Allen -> https://dzone.com/articles/provisioning-ansible-within
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.provision :shell,
    :keep_color => true,
    :inline => "export PYTHONUNBUFFERED=1 && export ANSIBLE_FORCE_COLOR=1 && cd /vagrant/provisioning && bash init.sh"

end



