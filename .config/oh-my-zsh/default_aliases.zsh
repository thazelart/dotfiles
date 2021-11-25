function serve() {
  dir=$1
  cd $dir
  python3 -m http.server
  cd -
}
export GOPATH=$HOME/go
export GOROOT=/usr/bin//go
export PATH=$PATH:/usr/bin/go/bin:$GOPATH/bin


## Custom variables
export me=$USER

## Source
source /home/thazelart/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

## Aliases
source /usr/share/bash-completion/completions/git
alias dotfiles='/usr/bin/git --git-dir=$HOME/git/dotfiles --work-tree=$HOME'
__git_complete_command dotfiles
alias certext='openssl x509 -text -noout -in -'
alias vi=nvim
alias k=kubectl
complete -F __start_kubectl k

## Functions
function banner() {
  echo "$1" | figlet | sed "s/^/# /;s/[[:space:]]*$//"
}
