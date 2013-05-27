vimfiles
========

My vim configuration. Based on Vundle for managing plugins and using Solarized as colorscheme.

Vundle isn't included, so there are a few steps you need to do on first run. Nothing difficult though.

Installation
============

Clone this repo and install it in your home folder:
git clone https://github.com/bserem/vimfiles.git
cp vimfiles/.vimrc ~/.vimrc
cp -r vimfiles/.vim ~/.vim

Then clone vundle (https://github.com/gmarik/vundle):
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Launch vim and run:
:BundleInstall

For more info on Vundle please visit the authors repo at
https://github.com/gmarik/vundle

All credit goes to the original developers, I simply gathered all the stuff together.
