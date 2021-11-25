# dotfiles
This is my linux setup. Tested on both Fedora and Ubuntu.

## Install
```bashrc
git clone --bare git@github.com:thazelart/dotfiles.git
alias dotfiles='/usr/bin/git --git-dir=$HOME/git/dotfiles --work-tree=$HOME'
dotfiles checkout -- .workstation

# Install ansible
ansible-playbook --version || python -m pip install python

dotfiles checkout
cd .workstation
ansible-playbook install_workstation.yaml

source ~/.${##*/}rc

nvim +PlugInstall +qall
nvim +UpdateRemotePlugins +qall
nvim +PlugUpdate +qall
nvim +GoInstallBinaries +qall
```

## Push changes
```bashrc
dotfiles add .config/tool/file
dotfiles status
dotfiles commit -m "add configuration for tool"
dotfiles push origin main
```
