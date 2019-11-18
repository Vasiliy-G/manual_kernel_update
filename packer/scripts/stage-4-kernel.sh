#!/bin/bash

# установим необходимые пакеты:
sudo yum -y update
sudo yum install -y ncurses-devel wget make gcc bc bison flex elfutils-libelf-devel openssl-devel grub2 wget mc htop git nano

# скачиваем ядро с https://www.kernel.org/
wget https://git.kernel.org/torvalds/t/linux-5.4-rc6.tar.gz

# разархивируем файл:
tar -xzvf linux-5.4-rc6.tar.gz
cd linux-5.4-rc6

# копируем содержимое в конфигурационный файл командой:
sudo cp -v /boot/config-$(uname -r) .config

# запускаем сборку ядра:
sudo make olddefconfig
sudo make -j2
sudo make modules
sudo make modules_install
sudo make install

# Обновляем конфигурацию загрузчика:
sudo grub2-mkconfig -o /boot/grub2/grub.cfg

# Выбираем загрузку с новым ядром по-умолчанию:
sudo grub2-set-default 0

# Reboot VM
sudo shutdown -r now
