#! /bin/bash
# This script is a minimal configuration for the ds servers 
set -e

# Ensure latest packages 
sudo yum -y check-update
sudo yum -y upgrade 
sudo yum -y install git

# Set up terminal
sudo yum -y install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd .oh-my-sh && clone git://github.com/zsh-users/zsh-syntax-highlighting.git

echo "if [ -f /bin/zsh ]\nthen\n  exec /bin/zsh\nfi" >> .bashrc

# Set up VIM
sudo yum -y install vim vim-enhanced 

# neovim
sudo yum -y install epel-release
curl -o /etc/yum.repos.d/dperson-neovim-epel-7.repo https://copr.fedorainfracloud.org/coprs/dperson/neovim/repo/epel-7/dperson-neovim-epel-7.repo 
sudo yum -y install neovim

# Anaconda
curl -O https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh
bash Anaconda3-4.4.0-Linux-x86_64.sh -b -p $HOME/anaconda
echo "export PATH=$HOME/anaconda/bin:$PATH" >> .bashrc
echo "source $HOME/anaconda/bin/activate"

# Lift out all dotfiles
cp -r .* $HOME/

# Vundle Plugins
vim -es -n -c "PluginInstall"
