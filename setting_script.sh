#!/bin/bash
#[0] BASIC UPGRADE
sudo apt-get update && sudo apt-get upgrade -y 
sudo apt-get install gcc g++ openjdk-8-jdk vim terminator net-tools finger -y
sudo apt-get install vim-gnome -y
spd-say done

#[m1] INSTALL ZSH and oh-my-zsh
sudo apt-get install zsh curl git -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#[m2] INSTALL ZSH SYNTAX HIGHLIGHTING
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

#[m3] INSTALL ZSH AUTOSUGGESTIONS
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

#[m4] ADD ~./ZSHRC FILE AS BELOW 
sed  '/\[option\]/a Hello World' input 
ZSH_THEME="amuse"
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
)
echo '
export XDG_CONFIG_HOME="$HOME/.config"

source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
alias install="sudo apt install"
alias remove="sudo apt remove"
alias updnupg="sudo apt update && sudo apt upgrade"
alias py="python3"
' >> ~/.zshrc

