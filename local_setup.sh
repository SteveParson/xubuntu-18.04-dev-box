#!/bin/bash
# Thanks Rob Allen -> https://dzone.com/articles/provisioning-ansible-within
if [ $(dpkg-query -W -f='${Status}' ansible 2>/dev/null | grep -c "ok installed") -eq 0 ]; then

    echo "Adding ansible apt repos"
    sudo apt-get install -y software-properties-common
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update 
 
    echo "Installing Ansible"
    sudo apt-get install -y ansible
fi

cd provisioning
echo "Running playbook"
ansible-playbook -i hosts site.yml --connection=local --extra-vars "user=$USER" -K

echo "Please reboot now"

