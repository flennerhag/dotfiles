#! /bin/bash
set -e

cd $HOME

# Ensure latest packages 
# echo "Updating system"
# sudo yum -y check-update
# sudo yum -y upgrade 
# sudo yum -y install git

# Set up terminal
 echo "Installing zsh"
sudo apt-get -y install zsh
sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd ./.oh-my-sh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
echo "if [ -f /bin/zsh ]\nthen\n  exec /bin/zsh\nfi" >> .bashrc

# Set up VIM
# echo "Setting up VIM"
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt update 
sudo apt -y install vim

# Anaconda
# echo "Installing Anaconda"
# curl -O https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh
# bash Anaconda3-4.4.0-Linux-x86_64.sh -b -p $HOME/anaconda
# echo "export PATH=$HOME/anaconda/bin:$PATH" >> .bashrc
# echo "source $HOME/anaconda/bin/activate"

# Lift out all dotfiles
echo "Porting all dotfiles"
rsync -av --progress $HOME/dotfiles/ $HOME/ --exclude .git 

# Vundle Plugins
echo "Syncing dotfile dependencies"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -es -n -c "PluginInstall"
source $HOME/.zshrc

echo "Install complete"
