#! /bin/bash


sudo add-apt-repository ppa:x4121/ripgrep && sudo apt update && sudo apt install ripgrep

wget https://raw.githubusercontent.com/zplug/installer/master/installer.zsh && zsh installer.zsh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
sudo apt install highlight

ln -s ~/.oh-my-zsh-setting/zshrc ~/.zshrc

