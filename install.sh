#!/bin/bash

# Update the system
sudo apt-get update

# Install required packages
sudo apt-get install -y software-properties-common

# Add the Ansible PPA repository
sudo apt-add-repository --yes --update ppa:ansible/ansible

# Install Ansible
sudo apt-get install -y ansible

# Check Ansible version to confirm installation
ansible --version

# Install Ansible Lint
sudo pip3 install ansible-lint

# Install Ansible Galaxy roles
ansible-galaxy install -r setup-laptop/requirements.yml

# Run Ansible Playbook
ansible-playbook setup-local/main.yaml --vault-password-file=~/vault.txt -K
