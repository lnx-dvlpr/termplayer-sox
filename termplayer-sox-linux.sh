#!/bin/bash
$1
case $1 in
	"")
	    echo "Write directory"
	    read dir
	    cd $dir
	    while true; do
	    ls -a > /etc/termplayer-sox/lists
	    export dirs=$(cat /etc/termplayer-sox/lists | fzf --color=bw)
	    clear
	    cd "${dirs}" || play "${dirs}"
            done
	    ;;
        -h)
            echo "Ctrl-Z for exit"
            echo "-R, - run one song for repeat"
            ;;
        -R)
            echo "Write directory"
            read dirr
            cd $dirr
            while true; do
            ls -a > /etc/termplayer-sox/lists
            export dirrs=$(cat /etc/termplayer-sox/lists | fzf --color=bw)
            cd "${dirrs}" || while true; do play "${dirrs}"; done
            done
            ;;
esac
