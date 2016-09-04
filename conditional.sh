#!/bin/bash


# https://www.gnu.org/software/bash/manual/bash.html#Conditional-Constructs
# https://www.gnu.org/software/bash/manual/bash.html#Bash-Conditional-Expressions
num=30
# spaces necessary
if [ $num -gt 2 ] && [ $num -lt 10 ]; then
    echo 2 \< $num \< 10
elif [ $num -le 2 ]; then
    echo $num \<= 2
else
    echo $num \>= 10
fi


# https://www.gnu.org/software/bash/manual/bash.html#Pattern-Matching
case $1 in
    start)
        echo starting
        ;;
    stop)
        echo stopping
        ;;
    restart)
        echo restarting
        ;;
    *)
        echo ???
        ;;
esac


names='Brees Manning Hebert Quit'
# PS3 used for select command prompt. if not set '#? ' is used
PS3='Choose QB: '
select name in $names; do
    if [ $name = 'Quit' ]; then
        break
    fi
    echo You chose $name
done

