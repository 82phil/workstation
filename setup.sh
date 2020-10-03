# Initial setup
sudo apt-get update

cp home/.vimrc ~
cp home/.tmux.conf ~
cp home/.bash_additions ~

# Needed for a few tools
sudo apt-get install -y golang-go

# Install Vim Plugins
sudo apt-get install -y git

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# Install Docker Client
sudo apt install -y socat docker.io

# Install Powerline Go
go get -u github.com/justjanne/powerline-go

# Setup bashrc
echo \
    "\n################################################################################" \
    "\n# My Additons" \
    "\n################################################################################" \
    "\n" \
    "\nif [ -f ~/.bash_additions ]; then" \
    "\n        . ~/.bash_additions" \
    "\nfi" >> ~/.bashrc

