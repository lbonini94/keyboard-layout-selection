#!/bin/bash
# Bash Menu Script Example
#echo "1) Notebook (INTL - PT/BR)"
#echo "2) Keyboard (ABNT2 - PT/BR)"
PS3='Please enter your choice: '
options=("Notebook (INTL - PT/BR)" "Keyboard (ABNT2 - PT/BR)" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Notebook (INTL - PT/BR)")
            echo "you chose choice 1"
            sudo setxkbmap -model abnt2 -layout us -variant intl
            break
            ;;
        "Keyboard (ABNT2 - PT/BR)")
            echo "you chose choice 2"
            sudo setxkbmap -model abnt2 -layout br -variant abnt2
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


