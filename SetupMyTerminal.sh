echo "installing oh-my-zsh with plugins"
echo "   - git \n   - syntax-highlighting \n   - autosuggestions \n   - z \n \n \n \n \n "

#install zsh
apt-get install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "\n\n"

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "\n\n"

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


echo "\n\n"

cp .zshrc ~/.zshrc

# for parts that needs to be done at home directory
cd 

echo "\n\n"

echo "installing additional plugins: \n   - trash-cli \n   - theFuck (with python3 and pip)"
# install trash-cli 
git clone https://github.com/andreafrancia/trash-cli.git
cd trash-cli
python setup.py install

cd

echo "\n\n"

#install python-3 for theFukc
apt install python3-dev python3-pip python3-setuptools

echo "\n\n"

#install theFuck
pip3 install thefuck

echo "\n \n \n switch to zsh"
echo "whoami? "
whoami