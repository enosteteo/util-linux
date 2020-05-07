sudo apt update
sudo apt -y upgrade 

# install snap
sudo apt install -y snapd

# install essentials
sudo apt install -y build-essential curl

# BASIC USERS
# install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
cat /etc/apt/sources.list.d/google-chrome.list

# install utils
sudo snap install spotify
sudo snap install telegram-desktop

# install editor de txt
sudo snap install code --classic

# install IDE JetBrains - Community
# sudo snap install intellij-idea-community --classic --edge
# sudo snap install pycharm-community --classic

# install IDE - Professional
# sudo snap install intellij-idea-ultimate --classic --edge
# sudo snap install pycharm-professional --classic

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
# sudo npm install -g @angular/cli

;

# install protractor
npm install -g protractor
webdriver-manager update

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






