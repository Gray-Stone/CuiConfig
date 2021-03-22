echo "installing oh-my-zsh with plugins"
echo "   - git \n   - syntax-highlighting \n   - autosuggestions \n   - z \n \n \n \n \n "

#Update 
sudo apt-get update

#Install Git
sudo apt-get -y install git

# install curl for oh-my-zsh
sudo apt -y install  curl

#install zsh
sudo apt-get -y install  zsh


# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "\n\n"

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "\n\n"

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


echo "\n\n"
cp ~/zshCUIconfig/.zshrc ~/.zshrc


echo "\n \n \n switch to zsh"
echo "whoami? "
whoami
