# xubuntu-18.04-dev-box
Produce a throwaway fresh install of Xubuntu 18.04 with RDP, with a Vagrant-managed, Ansible-provisioned virtual machine.

Requires:
- Vagrant 2.x
- Virtualbox 5.x
- RDP client of your choice

Adds the following extra packages:
- ansible
- awscli (via pip)
- azure-cli
- build-essential
- caprine (via snap)
- code
- default-jdk
- default-jdk-doc
- discord
- docker.io
- git
- [git-interactive-rebase-tool](https://github.com/MitMaro/git-interactive-rebase-tool) (thanks Tim)
- hexchat
- irssi
- keepassxc
- kops
- kubectl
- openssh-server
- python-pip
- slack (via snap)
- snapd
- terminator
- ttf-mscorefonts-installer
- vagrant
- vim
- virtualbox
- xrdp
- xubuntu-desktop
- xubuntu-restricted-extras
- yakyak (via snap)

Adds the following IDEs:
- Pycharm CE 2019.1 in `/home/vagrant/.bin`
- IntelliJ IDEA CE 2019.1 in `/home/vagrant/.bin`

Build the VM:
- `vagrant up` will do the dirty work

Login via RDP:
- `rdesktop <vagrant-ip> -g 1600x900` will open a RDP session with a resolution of 1600x900. Alternatively, use whatever you want to log in. If you are logging in with Microsoft Terminal Services Client or Remmina, you will probably need to change to a color depth of 24bpp.
- Username: `vagrant`
- Password: `vagrant`

TODO:
- Automatically create shortcuts to IDEs
- Add more IDEs
- Generalize so that this can be deployed to a non-VM host
