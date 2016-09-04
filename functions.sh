#!/bin/bash



function print_the_thing() {
    echo you passed: $1
    # can return *numeric* status which is stored in $?
    return 0
}

# function def must precede calls
print_the_thing muffuletta
echo call returned status $?

echo ---

# command substitution to capture function stdout
function f() {
    echo forty-two
}

result=$(f)
echo $result

echo ---

# local/global
function scope() {
    local var1='local var1'
    echo inside function: var1=$var1 : var2=$var2
    var1='local var1 updated'
    var2='global var2 updated'
}

var1='global var1'
var2='global var2'
echo before call: var1=$var1 : var2=$var2
scope
echo after call: var1=$var1 : var2=$var2

echo ---

# override
ls() {
    command ls -lh
}

ls
command ls
