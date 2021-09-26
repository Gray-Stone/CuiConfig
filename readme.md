# Personal setup stuff for ubuntu CUI

Document my personal experience on setting up ubuntu.

## Setup micro editor and change sudo setting

```zsh
curl https://getmic.ro | bash ; sudo ./micro /etc/sudoers
```

Add `<USERNAME> ALL=(ALL) NOPASSWD:ALL` to set no passwd sudo

make micro globally accessable

```zsh
sudo ln -s micro /usr/bin
```

## To use scripts for the following steps, needs to clone the repo first 

`git clone git@github.com:Gray-Stone/CuiConfig.git`

Recomand clone into home dir

## Setup commonly dependnet software and zsh, on-my-zsh:

use script to do the following command in one shot:
`./CuiConfig/InstallUpToZSH.sh`

```bash
# Install dependencies for to following installs. 
sudo apt update; sudo apt -y install git; sudo apt -y install  curl;

#Install zsh and oh-my-zsh
sudo apt-get -y install  zsh; sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended;

#install plugins

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

```

### Set zsh as default shell 

`chsh -s $(which zsh)`

### replace the default .zshrc with custom one to get headstart. 

`cp ~/CuiConfig/.zshrc ~/.zshrc`

## Install Syncthing for quickly sync files over

`./CuiConfig/InstallSyncthing.sh`

`sudo apt-get install apt-transport-https"`

### add syncthing to systemd

Following command will make syncthing run in systemd as current user.
```bash
systemctl enable syncthing@${USER}.service
systemctl start syncthing@${USER}.service
```
