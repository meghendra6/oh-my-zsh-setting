# oh-my-zsh-setting
fast-theme safari


## Plugins
1. zplug

wget https://raw.githubusercontent.com/zplug/installer/master/installer.zsh && zsh installer.zsh


2. fzf

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install

after that, select all 'y'


3. k

git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k


4. fasd

git clone https://github.com/clvv/fasd.git

cd fasd/

sudo make install

cd ..

rm -rf fasd


5. fd

sudo apt install cargo

cargo install fd-find


6. aria2

https://aria2.github.io

sudo apt install aria2


7. ripgrep

https://github.com/BurntSushi/ripgrep

sudo apt install ripgrep


8. enhancd

https://github.com/b4b4r07/enhancd

9. exa
cargo install exa
https://github.com/ogham/exa

10. bat
cargo install bat
https://github.com/sharkdp/bat
https://github.com/eth-p/bat-extras

11. hexyl
cargo install hexyl
https://github.com/sharkdp/hexyl

12. procs
cargo install procs
https://github.com/dalance/procs
>>>>>>> Add various linux tools

## gnome-terminal setting

1. export

dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf


2. import

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf


3. icons in terminal (font)

https://github.com/sebastiencs/icons-in-terminal

git clone https://github.com/sebastiencs/icons-in-terminal.git

./install-autodetect.sh
