#!/bin/bash
read -n1 -p 'Start music [y/N] ' doit

function treeMusic(){
    alacritty -e mpv --no-video https://www.youtube.com/watch?v=RmUWWVZw28E &	
    watch -ctn .2 ./tree.sh 
}

case $doit in
    y|Y) treeMusic ;;
    *) watch -ctn .$1 ./tree.sh ;;
esac
