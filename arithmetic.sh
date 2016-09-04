#!/bin/bash


# https://www.gnu.org/software/bash/manual/bash.html#Shell-Arithmetic
# let - bash builtin for arithmetic on shell variables
let a=7*6
echo $a

num=7
let "a = $num * 6"
echo $a

let a++
echo $a

# spaces required
expr 21 \* 2
expr 42 + 1
expr $num + 2


# double paren - (( expression )) same as let "expression"
# https://www.gnu.org/software/bash/manual/bash.html#Conditional-Constructs
a=$(($num + 3))
echo $a

((a += 5))
echo $a

# https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameter-Expansion
name='brian fox'
echo ${#name} chars in $name
