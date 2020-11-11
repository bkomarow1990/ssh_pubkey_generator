#!/bin/bash
sudo ssh-keygen
read -r -p "Enter user for ssh conection" user
sudo ssh-copy-id $user
sed 's/PubkeyAuthentication no/PubkeyAuthentication yes/g' /etc/ssh/sshd_config