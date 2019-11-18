
#!/bin/bash

# подключим репозиторий EPEL:
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# установим необходимые пакеты:
yum install -y gcc kernel-devel kernel-headers dkms make bzip2 perl xorg-x11-drivers xorg-x11-utils nano mc htop

# обновим ядро:
sudo yum -y update kernel*

# Reboot VM
sudo shutdown -r now


