#!/bin/bash


#student number: 10496218
#name: Zaid Samnakay
#generate a random number and assign to "age" variable.

let age=20+$((RANDOM%=50))

#start a loop to allow for multiple attempts.
while true; do

    #ask for user input.
    read -p "Guess how old I am (between 20 and 70): " guess

    #compare input with predetermined age.
    if [[ "$guess" -lt "$age" ]] && [[ "$guess" -ge 20 ]]; then
        echo "I am older than that!"
    elif [[ "$guess" -gt "$age" ]] && [[ "$guess" -le 70 ]]; then     
        echo "I am younger than that!"
    elif [ "$guess" -eq "$age" ]; then
        echo "Thats correct! I am $age years old."; exit 0
    else
        echo "Invalid guess. Try again..."
    fi
done