#!/bin/bash

# make sure the OS is up to date
aptitude update
DEBIAN_FRONTEND=noninteractive aptitude safe-upgrade -y

# remove apt package cache
aptitude clean

# install some necessary dev packages
aptitude install git vim-nox tree tmux -y

# install cpanm and carton
curl -L http://cpanmin.us | perl - App::cpanminus
cpanm Carton
chown -R vagrant:vagrant /home/vagrant/.cpanm
