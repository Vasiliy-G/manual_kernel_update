#!/bin/bash

# добавим переменную среды KERN_DIR:
KERN_DIR=/usr/src/kernels/`uname -r`
export KERN_DIR

# скачиваем образ гостевого диска:
curl https://download.virtualbox.org/virtualbox/6.0.14/VBoxGuestAdditions_6.0.14.iso -o /tmp/VBoxGuestAdditions_6.0.14.iso

# монтируем образ:
sudo mount /tmp/VBoxGuestAdditions_6.0.14.iso /mnt -o loop

# запускаем файл:
sudo /mnt/VBoxLinuxAdditions.run

# Reboot VM
sudo shutdown -r now

