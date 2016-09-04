#!/bin/bash


# https://www.gnu.org/software/bash/manual/bash.html#Looping-Constructs
# break and continue https://www.gnu.org/software/bash/manual/bash.html#Bourne-Shell-Builtins
i=0
while [ $i -lt 5 ]; do
    echo i = $i
    ((i++))
done

echo ---

i=0
until [ $i -gt 4 ]; do
    echo i = $i
    ((i++))
done

echo ---

for i in $( ls ); do
    echo item: $i
done

echo ---

for i in {1..10..3}; do
    echo $i
done

echo ---

for qb in Drew\ Brees "Archie Manning" "Bobby Hebert"; do
    echo $qb
done

echo ---

for scr in ./*.sh; do
    echo $scr
done

echo ---

names='Brees   Manning Hebert'
for name in $names; do
    echo $name
done
