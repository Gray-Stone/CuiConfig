#! /bin/bash
set -x 

echo "Installing git and curl"
sudo apt update
sudo apt -y install git
sudo apt -y install  curl

echo "Install zsh and on my zsh"

sudo apt-get -y install  zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "Install ZSH syntax highlight and auto suggest plugins "

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Install finished"