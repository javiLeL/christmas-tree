#!/bin/bash
WIDTH=$(/usr/bin/tput cols)
HEIGHT=$(/usr/bin/tput lines)
# this function need the position X size by high and high to draw 
function triangulo(){
    for((i=$(($2-$3));i<$2;i++)); do
        for((j=0;j<$1;j++));do
	    echo -e ' ''\c'
	done

        for((j=1;j<$2-i;j++));do
	    echo -e ' ''\c'
	done

        for((j=0;j<i;j++)); do
	    CORRANDOM=$(($RANDOM%40))
	    if [ $CORRANDOM = 1 ]; then
		echo -e '\e[1;34m* ''\c'	
	    elif [ $CORRANDOM = 2 ]; then
		echo -e '\e[1;31m* ''\c' 
	    elif [ $CORRANDOM = 3 ]; then
		echo -e '\e[1;35m* ''\c' 
	    elif [ $CORRANDOM = 4 ]; then
		echo -e '\e[1;33m* ''\c' 
	    elif [ $CORRANDOM = 5 ]; then
		echo -e '\e[1;37m* ''\c' 
	    else
		echo -e "$4"'\c'
	    fi
	done
	echo -e ''
    done
}

# this function need the position X, size X and size Y
function rectangulo(){
    for((i=0;i<$3;i++));do
	
        for((j=0;j<$1;j++));do
	    echo -e ' ''\c'
	done

	for((j=0;j<$2;j++)); do
	    echo -e "$4"'\c'
	done
	echo -e ''
    done
}
triangulo 15 10 10 '\e[0;32m* '
triangulo 8 17 10 '\e[0;32m* ' 
triangulo 5 20 8 '\e[0;32m* '  
rectangulo 18 6 4 '\e[0;33m* ' 
