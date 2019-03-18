#!/bin/bash
# Thanks Rob Allen -> https://dzone.com/articles/provisioning-ansible-within

if [ $(dpkg-query -W -f='${Status}' ansible 2>/dev/null | grep -c "ok installed") -eq 0 ]; then

    echo "Adding ansible apt repos"
    export DEBIAN_FRONTEND=noninteractive
    apt-get install -qq software-properties-common &> /dev/null || exit 1
    apt-add-repository ppa:ansible/ansible &> /dev/null || exit 1
    apt-get update -qq
 
    echo "Installing Ansible"
    apt-get install -qq ansible &> /dev/null || exit 1
fi

cd /vagrant/provisioning
echo "Running playbook"
ansible-playbook -i hosts site.yml --connection=local

IP=`hostname -I | cut -d' ' -f2`
echo "** Xubuntu box deployed at ${IP}, rebooting now"
reboot -h now

