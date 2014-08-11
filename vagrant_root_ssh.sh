#!/usr/bin/env bash
set -x
vagrant ssh -c "sudo su -l root -c 'mkdir ~/.ssh/'"
vagrant ssh -c "sudo su -l root -c 'echo \"root:gnuhub\" | chpasswd'"
vagrant ssh -c "sudo su -l root -c 'echo \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCln97Y292n3E741ivfjsZCAa4dCcvizM5PQKppEY6fd5rhVFRGyuyIkvAvhoCNj6Ts9gGZUJSQ1rpYSfKkJJGVs5eZhBUA7cvNyCW7jT+Rds2AuxmYKP1aDHIKyX07eEIWTGuqj4E3tjGLBtaCpFAGK+oyxdeCVqsKiYZmtVy+u9HAoJ0BHHlIy6SAW9B2oC8zas84KySOVx0mzn9ftiYw1OQxAs4Mb8CD+pO2FBeLpLQTQy12IGav/ycfKv4NbTHQ4gUgSd7PEsmALT/FtY20awT8LTp3vZpQ6FfpdhPccJRhedMHLNQmcM6TMeLH5LbkW/xuhbqepFRkE/fOqxx7 home
\" > ~/.ssh/authorized_keys'"
ssh root@192.168.8.9 "echo 'connection is ok'"
