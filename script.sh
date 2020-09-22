#!/bin/bash

sudo apt update
sudo apt -y upgrade 

# install snap
sudo apt install -y snapd

# install essentials
sudo apt install -y build-essential curl wget tree autoconf m4 libncurses5-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk
sudo apt install -y libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev libncurses5-dev libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev 


# install git
sudo apt install -y git

# install zsh + oh-my-zsh + basic utils for terminal
sudo apt install -y zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
cd ~
echo "#ZSH config\nzinit light zdharma/fast-syntax-highlighting\nzinit light zsh-users/zsh-autosuggestions\nzinit light zsh-users/zsh-completions\n" >> ./.zshrc

# install theme Starship for terminal
curl -fsSL https://starship.rs/install.sh | bash
echo 'eval "$(starship init zsh)"' >> ./.zshrc


# install Zinit's
wget https://github.com/Peltoche/lsd/releases/download/0.18.0/lsd_0.18.0_amd64.deb
sudo apt install ./lsd_0.18.0_amd64.deb
alias ls="lsd"

# monitor de recursos
# sudo add-apt-repository ppa:bashtop-monitor/bashtop
# sudo apt update
# sudo apt install bashtop

# --------------------------------------------------------------
# BASIC USERS

# install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
cat /etc/apt/sources.list.d/google-chrome.list

# install spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client

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
# sudo snap install webstorm --classic

# --------------------------------------------------------------
# DEVELOPER USERS WITH ASDF


# install asdf 
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
echo '. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
echo 'plugins=(asdf)' >> ~/.zshrc
echo "# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit" >> ~/.zshrc

# asdf installs

# install ruby
# asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
# asdf install ruby 2.7.1  
# asdf global ruby 2.7.1


# install python
# asdf plugin-add python
# asdf install python 3.8.3
# asdf global python 3.8.3


# install nodejs
# asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
# asdf install nodejs latest
# asdf global nodejs 14.4.0

# install golang
# asdf plugin-add golang https://github.com/kennyp/asdf-golang.git

# install erlang
# asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git

# install elixir
# asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

# install kotlin
# asdf plugin-add kotlin https://github.com/missingcharacter/asdf-kotlin.git

# install rust
# asdf plugin-add rust https://github.com/code-lever/asdf-rust.git

# install crystal
# asdf plugin-add crystal https://github.com/asdf-community/asdf-crystal.git

#-----------------------------------------------------------
# DEVELOPER USERS WITHOUT ASDF

# install python
sudo apt install -y python3.8

# install nodejs
sudo apt install -y nodejs npm

# install pip and pipenv
sudo apt install python3-pip
pip install -U pip
pip install pipenv
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.zshrc
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.bashrc
sudo apt-get install -y python3-venv libpq-dev python3-dev libapache2-mod-wsgi

# install yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get -y install yarn

# atualizar npm
sudo npm install -g npm

# install typescript
sudo npm install -g typescript

# install angular/cli
sudo npm install -g @angular/cli

# install protractor
sudo npm install -g protractor
sudo webdriver-manager update

# install maven
sudo apt install -y maven

# # install docker
# sudo apt install -y docker.io
# sudo systemctl start docker
# sudo systemctl enable docker

# install docker-compose
# sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose

# install postman
sudo snap install postman

# install postgres

# sudo apt -y install postgresql-12 postgresql-contrib postgresql-server-dev-12 redis-server libhiredis-dev memcached libmemcached-dev

# --------------------------------------------------------------
