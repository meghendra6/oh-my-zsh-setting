# oh-my-zsh-setting
fast-theme safari

refer : https://github.com/black7375/BlaCk-Void-Zsh, https://zaiste.net/posts/shell-commands-rust/

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

9. git alias

https://github.com/scmbreeze/scm_breeze

10. forgit

https://github.com/wfxr/forgit

11. zsh-completions

https://github.com/zsh-users/zsh-completions

12. zsh-256color

https://github.com/chrissicool/zsh-256color

13. fast-syntax-highlighting

https://github.com/zdharma/fast-syntax-highlighting

14. exa

cargo install exa

https://github.com/ogham/exa

15. bat

cargo install bat

https://github.com/sharkdp/bat

https://github.com/eth-p/bat-extras

16. hexyl

cargo install hexyl

https://github.com/sharkdp/hexyl

17. procs

cargo install procs

https://github.com/dalance/procs

18. sd

cargo install sd

https://github.com/chmln/sd

19. dust

cargo install dust

https://github.com/bootandy/dust

20. ytop

cargo install ytop

https://github.com/cjbassi/ytop

21. delta

cargo install delta

https://github.com/dandavison/delta

22. tealdeer

cargo install tealdeer

https://github.com/dbrgn/tealdeer

23. grex

cargo install grex

https://github.com/pemistahl/grex

24. zoxide

cargo install zoxide

https://github.com/ajeetdsouza/zoxide


## gnome-terminal setting

1. export

dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf


2. import

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf


3. icons in terminal (font)

https://github.com/sebastiencs/icons-in-terminal

git clone https://github.com/sebastiencs/icons-in-terminal.git

./install-autodetect.sh
