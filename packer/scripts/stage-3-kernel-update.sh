#!/bin/bash

# Install elrepo
sudo yum install -y http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
# Install new kernel
sudo yum --enablerepo elrepo-kernel install kernel-ml -y
# Remove older kernels (Only for demo! Not Production!)
# sudo rm -f /boot/*3.10*
# Update GRUB
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo grub2-set-default 0
echo "Grub update done."
# Reboot VM
sudo shutdown -r now

