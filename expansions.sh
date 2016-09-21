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
# From the Bash Reference Manual:
# The POSIX $() form of command substitution is implemented (see Command Substitution),
# and preferred to the Bourne shell's `` (which is also implemented for backwards compatibility).
output=$(tail -n 2 ~/.bash_history)
echo $output

echo ---

# filename expansion / globbing
ls ex*
ls [acl]*
ls [!acl]*		#same as ls [^acl]*
ls {a*,c*,l*}
ls [a-f]*
ls ????.sh

echo ---

name='brian fox'
echo ${#name} chars in $name

echo ---

# case modification - ^ and ^^ for upper , and ,, for lower
str=abc
echo first character uppercase: ${str^}
echo all characters uppercase: ${str^^}
str=${str^^}
echo first character lowercase: ${str,}
echo all characters lowercase: ${str,,}

echo ---

# removal with pattern. # and ## from beginning, latter is greedy.
# % and %% from end, latter is greedy
name='brian fox bash creator'
echo ${name#* }
echo ${name##* }
echo ${name% *}
echo ${name%% *}

echo ---

# search and replace
echo ${name/bash/GNU echo}

echo ---

# arithmetic expansion
echo $((2**5+1))
