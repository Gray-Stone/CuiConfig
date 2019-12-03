# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


cp .zshrc ~/.zshrc

# for parts that needs to be done at home directory
cd 

# install trash-cli 
git clone https://github.com/andreafrancia/trash-cli.git
cd trash-cli
sudo python setup.py install


#install theFuck
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck
