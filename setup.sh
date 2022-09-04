# Initial setup
sudo apt-get update

cp wsl/home/.vimrc ~
cp wsl/home/.tmux.conf ~
cp wsl/home/.bash_additions ~

# Needed for a few tools
# https://github.com/golang/go/wiki/Ubuntu
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get install -y golang-go

# Install Vim Plugins
sudo apt-get install -y git

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# Install iostat
sudo apt install -y sysstat

# Install Docker Client
sudo apt install -y socat docker.io

# Install Powerline Go
go install github.com/justjanne/powerline-go@latest

# Setup bashrc
echo -e \
    "\n################################################################################" \
    "\n# My Additons" \
    "\n################################################################################" \
    "\n" \
    "\nif [ -f ~/.bash_additions ]; then" \
    "\n        . ~/.bash_additions" \
    "\nfi" >> ~/.bashrc

