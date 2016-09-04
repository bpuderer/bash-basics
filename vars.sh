#!/bin/bash

# shebang/sha-bang https://en.wikipedia.org/wiki/Shebang_(Unix)

echo hey hey!

# https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameters
# https://www.gnu.org/software/bash/manual/bash.html#Shell-Variables
echo first arg: $1  second arg: $2
echo a random number: $RANDOM

# case sensitive, no spaces around =
myvar='blah blah'
echo $myvar
echo "\$myvar's value: $myvar"

# https://www.gnu.org/software/bash/manual/bash.html#Quoting
# single quotes- literal val of each char preserved
# double quotes- literal with exceptions

# command substitution
# https://www.gnu.org/software/bash/manual/bash.html#Command-Substitution
# The POSIX $() form of command substitution is implemented (see Command Substitution), and preferred to the Bourne shell’s `` (which is also implemented for backwards compatibility).
homecount=$(ls ~ | wc -l)
echo number of files in home dir: $homecount

# export
export myvar

./export_ex.sh
