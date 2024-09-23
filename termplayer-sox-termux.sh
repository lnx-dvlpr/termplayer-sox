#!/data/data/com.termux/files/usr/bin/bash

case $1 in
	"")
	    echo "Write directory"
	    read dir
	    cd $dir
	    while true; do
	    ls -a > $PREFIX/etc/termplayer-mpv/lists
	    export dirs=$(cat $PREFIX/etc/termplayer-mpv/lists | fzf --color=bw)
	    clear
	    cd "${dirs}" || mpv "${dirs}"
            done
	    ;;
        -h)
            echo "Ctrl-Z for exit"
            echo "-R, - run one song for repeat"
            echo "0 - low volume"
            echo "9 - high volume"
            ;;
        -R)
            echo "Write directory"
            read dirr
            cd $dirr
            while true; do
            ls -a > $PREFIX/etc/termplayer-mpv/lists
            export dirrs=$(cat $PREFIX/etc/termplayer-mpv/lists | fzf --color=bw)
            cd "${dirrs}" || while true; do mpv "${dirrs}"; done
            done
            ;;
esac
