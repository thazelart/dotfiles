# dotfiles
This is my linux setup. Tested on both Fedora and Ubuntu.

## Install
```bashrc
git clone --bare git@github.com:thazelart/dotfiles.git

# add this to your ~/.${##*/}rc file
alias dotfiles='/usr/bin/git --git-dir=$HOME/git/dotfiles --work-tree=$HOME'

source ~/.${##*/}rc

dotfiles checkout
```

## Push changes
```bashrc
dotfiles add .config/tool/file
dotfiles status
dotfiles commit -m "add configuration for tool"
dotfiles push origin main
```
