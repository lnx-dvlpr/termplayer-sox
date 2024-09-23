#!/data/data/com.termux/files/usr/bin/bash
apt install sox git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
mkdir -p $PREFIX/etc/termplayer-sox
touch $PREFIX/etc/termplayer-sox/lists
chmod 700 -R $PREFIX/etc/termplayer-sox
