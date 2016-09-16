#!/bin/bash

# http://www.catonmat.net/blog/bash-one-liners-explained-part-three/

# stdin  - file descriptor 0
# stdout - file descriptor 1
# stderr - file descriptor 2

# > output redirection operator
# ls 1>tmp.txt
ls > tmp.txt

# stdout redirected to file then stderr redirected to same as stdout
ls > tmp.txt 2>&1
# same thing
ls &> tmp.txt

# /dev/null     discards everything

# >> appends instead of overwriting
echo 42 >> tmp.txt

# < input redirection operator
more < tmp.txt

# <<word   here-document.  read input from current source until line containing only word is seen
# echo enter some text then enter \'STOP\' when done
# wc -l << STOP

# <<< word   here-string.  redirect single line of text to stdin
# same as echo 'some stuff' | more
more <<< 'text to redirect to stdin of a command'
