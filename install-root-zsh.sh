#!/bin/sh
# Make root use zsh and our zsh config, but with a slightly modified profile

cp root/.profile /root/.profile
ln -s /root/.profile /root/.zprofile
mkdir -p /root/.config/zsh
ln -s $PWD/dotfiles/.config/zsh/.* /root/.config/zsh/
ln -s $PWD/dotfiles/.config/zsh/* /root/.config/zsh/

chsh -s /bin/zsh root
