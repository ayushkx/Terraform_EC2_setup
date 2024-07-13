#!/bin/bash

# Update package index and install required dependencies
sudo apt update
#sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add Docker repository
#echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker
#sudo apt update
#sudo apt install -y docker-ce docker-ce-cli containerd.io

# Install Ansible
#sudo apt-add-repository -y ppa:ansible/ansible
#sudo apt update
#sudo apt install -y python3-pip
#sudo pip3 install ansible

#sudo apt update
#sudo apt install python3

#sudo apt update
#sudo apt install -y python3-pip

#sudo python3 -m venv ansible_env
# Activate the virtual environment
#sudo source ansible_env/bin/activate
# Install the latest version of Ansible
sudo apt update
sudo apt-get install -y ansible

#UBUNTU_CODENAME=jammy
#wget -O- -y "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o -y /usr/share/keyrings/ansible-archive-keyring.gpg
#echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee -y /etc/apt/sources.list.d/ansible.list
#sudo apt update && sudo apt -y install ansible

# Add the current user to the 'docker' group 
#sudo usermod -aG docker $USER

# Start and enable Docker service
#sudo systemctl start docker
#sudo systemctl enable docker

# Print Docker version
#docker --version
#ansible --version

#echo "docker and ansible successfully installed"
