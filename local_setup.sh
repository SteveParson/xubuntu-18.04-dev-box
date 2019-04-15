#!/bin/bash
# Thanks Rob Allen -> https://dzone.com/articles/provisioning-ansible-within
if [ $(dpkg-query -W -f='${Status}' ansible 2>/dev/null | grep -c "ok installed") -eq 0 ]; then

    echo "Adding ansible apt repos"
    sudo apt-get install software-properties-common
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt-get update 
 
    echo "Installing Ansible"
    sudo apt-get install ansible
fi

cd provisioning
echo "Running playbook"
ansible-playbook -i hosts site.yml --connection=local --extra-vars "user=$USER"

echo "Please reboot now"

