#!/bin/sh
# Installs ("stows") user configuration (dot)files

stow -t ~ --no-folding -v dotfiles
