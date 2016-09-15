#!/bin/bash


echo second to last line in sec.txt:
tail -n 2 sec.txt | head -n 1

echo ---

echo random word:
shuf -n 1 /usr/share/dict/words

echo ---

# use to append timestamp to filename
date +%F_%R
