# Initial setup
sudo apt-get update

cp home/.vimrc ~
cp home/.tmux.conf ~

# Needed for a few tools
sudo apt-get install -y golang-go

# Install Vim Plugins
sudo apt-get install -y git

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# Install Docker Client
sudo apt install -y socat docker.io

