# xubuntu-18.04-dev-box
Produce a throwaway fresh install of Xubuntu 18.04 with RDP, with a Vagrant-managed, Ansible-provisioned virtual machine.

Requires:
- Vagrant 2.x
- Virtualbox 5.x
- RDP client of your choice

Adds the following extra apt packages:
- build-essential
- default-jdk
- default-jdk-doc
- docker.io
- irssi
- openssh-server
- git
- keepassxc
- snapd
- terminator
- ttf-mscorefonts-installer
- vagrant
- vim
- virtualbox
- xrdp
- xubuntu-desktop
- xubuntu-restricted-extras

Adds the following snap packages:
- caprine (Fakebook Messenger)
- slack
- yakyak (Google Hangouts)

Adds the following IDEs:
- Pycharm CE 2018.3.5 in `/usr/local/bin`
- IntelliJ IDEA CE 2018.3.5 in `/usr/local/bin`

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
