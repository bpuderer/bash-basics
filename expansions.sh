#!/bin/bash


# brace expansion to generate arbitrary strings
echo {Boston,Milwaukee,Atlanta}\ Braves

echo ---

# tilde expansion
ls ~ | wc -l

echo ---

# shell parameter expansion - $
echo $unknown_var
echo ${unknown_var:-99}
echo $unknown_var
echo ${unknown_var:=99}
echo $unknown_var

echo -

str=abcdefghij
echo ${str:3}
echo ${str: -3}
echo ${str:3:2}
echo ${str:3:-2}
echo ${str: -5:2}
echo ${str: -5:-2}

echo ---

# command substitution - output of command to replace command itself
output=$(tail -n 2 ~/.bash_history)
echo $output

echo ---

# arithmetic expansion
echo $((2**5+1))
