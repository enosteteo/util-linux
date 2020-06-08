#!/bin/bash

sudo apt update
sudo apt -y upgrade 

# install snap
sudo apt install -y snapd

# install essentials
sudo apt install -y build-essential curl wget tree

# --------------------------------------------------------------
# install zsh + oh-my-zsh + basic utils for terminal
sudo apt-get install zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
cd ~
echo "#ZSH config\nzinit light zdharma/fast-syntax-highlighting\nzinit light zsh-users/zsh-autosuggestions\nzinit light zsh-users/zsh-completions\n" >> ./zshrc

# install theme Starship for terminal
curl -fsSL https://starship.rs/install.sh | bash
echo 'eval "$(startship init zsh)"' >> ./zshrc

# install Zinit's
wget https://github.com/Peltoche/lsd/releases/download/0.17.0/lsd_0.17.0_amd64.deb
sudo apt install ./lsd_0.17.0_amd64.deb
alias ls="lsd"

# monitor de recursos
sudo add-apt-repository ppa:bashtop-monitor/bashtop
sudo apt update
sudo apt install bashtop

# --------------------------------------------------------------
# BASIC USERS

# install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
cat /etc/apt/sources.list.d/google-chrome.list

# install spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# install telegram
sudo snap install telegram-desktop

# install editor de txt
sudo snap install code --classic

# install IDE JetBrains - Community
# sudo snap install intellij-idea-community --classic --edge
# sudo snap install pycharm-community --classic

# install IDE - Professional
# sudo snap install intellij-idea-ultimate --classic --edge
# sudo snap install pycharm-professional --classic

# --------------------------------------------------------------
# DEVELOPER USERS

# install nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# install yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get -y install yarn

# install typescript
sudo npm install -g typescript

# install angular/cli
sudo npm install -g @angular/cli

# install protractor
sudo npm install -g protractor
sudo webdriver-manager update

# install git
sudo apt install -y git

# install java jdk 11
sudo apt-get install -y openjdk-11-jdk-headless

# install maven
sudo apt install -y maven

# install docker
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# install python3
sudo apt-get install -y python3-pip python3-venv libpq-dev python3-dev libapache2-mod-wsgi libssl-dev libffi-dev

# install postman
sudo snap install postman

# --------------------------------------------------------------
