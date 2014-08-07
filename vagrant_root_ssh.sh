#!/usr/bin/env bash
set -x
vagrant ssh -c "sudo su -l root -c 'echo \"root:gnuhub\" | chpasswd'"
ssh-copy-id root@192.168.8.9
ssh root@192.168.8.9
