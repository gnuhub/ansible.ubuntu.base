#!/usr/bin/env bash
set -x
vagrant ssh -c "sudo su -l root -c 'mkdir ~/.ssh/'"
vagrant ssh -c "sudo su -l root -c 'echo \"root:gnuhub\" | chpasswd'"
vagrant ssh -c "sudo su -l root -c 'echo \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDoV2oZZSgHPsZtwQClLL5LbIp8oImvJ9wVxLSGNekGb/+cQ8wpRUZaPlmOAVbxRwONY8myUgYbbimffRu2aygtps8NoMhZKeqpzWcgnRA9I2Er/3PiB9T2XHx/plKuE6Z+eF//AwHE2hmkPCVI2sUfH7wye1KreHPVQHBrMPTnFx4exBTI2MEZHUPkGlJ8+oIH71fBXVJ7U3+5BqYIGtYIr8EcG3TQngf7G20e72mA6eWuvo/dyg6wRSCmbPhbwedxY7T2PyhZWsF8Qkt3E8j8rbZQY2NHdYyB/ma0RUjoh+ctKHBslzUMj08PIs8k3ymCAWlS8lauPRLkVZhUQRcZ gnuhub
\" > ~/.ssh/authorized_keys'"
ssh root@192.168.8.9 "echo 'connection is ok'"
