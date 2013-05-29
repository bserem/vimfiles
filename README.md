# vimfiles
My vim configuration. Based on [Vundle](https://github.com/gmarik/vundle) for
managing plugins and using the excellent
[Solarized](https://github.com/altercation/vim-colors-solarized) as colorscheme.

Vundle **IS** automatically installed on first run,  
so there are only a few steps you need to do on first run.

# Installation
Clone this repo and install it in your home folder:
`git clone https://github.com/bserem/vimfiles.git && mv vimfiles/.vim* ~`  
If you have some other configuration already you should backup it up 
and remove it before running the above commands bu issuing `rm -rf .vim*`.

# First Run
Vundle will autoinstall itself on first run.
Vim will inform you about about having problems setting the colorscheme, **ignore them**.

From inside Vim run:
`:BundleInstall`
and all plugins and colorschemes that are set on the vimrc will be installed automatically.

# Usage
Study the .vimrc file to see what options are set.
The following keys are mapped:
* F2 for toggling paste mode
* F3 for toggling relative numbers
* F4 for NERDTree 
  
A .vimbackup folder is also created. My config keeps swap and backup files  
in there in order to now mess with your filesystem (and your VCS). 
You can find more info on that inside the .vimrc file. 

Adapt the .vimrc file to your needs, mainly by adding/removing plugins.
You can use `:BundleClean` and `:BundleInstall` for let Vundle handle the dirty work.

As for the set options, if you believe I'm missing something important please let me know.

# FAQ
For more info on Vundle please visit the authors repo at
https://github.com/gmarik/vundle
For Solarized you can find about the vim colorscheme here at
https://github.com/altercation/vim-colors-solarized and the official site
http://ethanschoonover.com/solarized for all other utilities.

# Credits
All credit goes to the original developers.
