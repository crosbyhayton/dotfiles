#!/bin/sh

echo "Installing dotfiles:"
for symlink in zshrc bash_profile env env_chpwd gitconfig \
                vim vimrc ackrc nvmrc hammerspoon
do
  echo " symlink: ~/.$symlink"
	rm ~/.$symlink
	ln -s $PWD/$symlink ~/.$symlink
done
