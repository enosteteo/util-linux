#!/bin/bash

sudo apt update
sudo apt -y upgrade 

# install snap
sudo apt install -y snapd

# install essentials
sudo apt install -y build-essential curl wget tree autoconf m4 libncurses5-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev \
 make libreadline-dev libsqlite3-dev llvm \
 libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev libpq-dev git

# install zsh + oh-my-zsh + basic utils for terminal + Zinit
sudo apt install -y zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
exec bash
zinit self-update
cd ~
echo "#ZSH config\nzinit light zdharma/fast-syntax-highlighting\nzinit light zsh-users/zsh-autosuggestions\nzinit light zsh-users/zsh-completions\n" >> ./.zshrc

# install theme Starship for terminal
curl -sS https://starship.rs/install.sh | bash
echo 'eval "$(starship init zsh)"' >> ./.zshrc


# monitor de recursos
# sudo add-apt-repository ppa:bashtop-monitor/bashtop
# sudo apt update
# sudo apt install bashtop

# --------------------------------------------------------------
# BASIC USERS

# install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# install spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client

# install telegram
sudo snap install telegram-desktop

# install whatsapp
sudo snap install whatsapp-for-linux

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

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.0
echo '. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
echo 'plugins=(asdf)' >> ~/.zshrc\necho "# append completions to fpath\nfpath=(${ASDF_DIR}/completions $fpath)\n# initialise completions with ZSH's compinit\nautoload -Uz compinit\ncompinit" >> ~/.zshrc

chsh -s $(which zsh)
# asdf pluggins-add

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add python
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf plugin-add deno https://github.com/asdf-community/asdf-deno.git
asdf plugin-add java
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add kotlin https://github.com/missingcharacter/asdf-kotlin.git
asdf plugin-add crystal https://github.com/asdf-community/asdf-crystal.git
asdf plugin-add maven


# asdf install

asdf install deno 1.29.1
asdf install golang 1.19.4
asdf install java openjdk-19.0.1
asdf install nodejs lts
asdf install python 3.11.1
asdf install ruby 3.1.3
asdf install rust 1.66
asdf install maven 3.8.6

# asdf global

asdf global java openjdk-19.0.1
echo ". ~/.asdf/plugins/java/set-java-home.zsh" >> ~/.zshrc
asdf global deno 1.29.1
asdf global golang 1.19.4
asdf global nodejs lts
asdf global python 3.11.1
asdf global rust 1.66
asdf global ruby 3.1.3
asdf global maven 3.8.6

# versions
deno --version
go version
javac --version
java --version
node --version
python --version
ruby --version
gem --version
npm --version
cargo --version

# list all asdf 
asdf current



#-----------------------------------------------------------
# DEVELOPER USERS WITHOUT ASDF

pip install pipenv
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.zshrc
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.bashrc



# atualizar npm
npm install -g npm

# install yarn
npm install -g yarn

# install typescript
npm install -g typescript

# # install docker
sudo snap install docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# install postman
# sudo snap install postman

# install postgres
# sudo apt -y install postgresql-12 postgresql-contrib postgresql-server-dev-12 redis-server libhiredis-dev memcached libmemcached-dev

# --------------------------------------------------------------
