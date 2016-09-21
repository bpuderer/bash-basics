#!/bin/bash


# https://www.gnu.org/software/sed/manual/sed.html

echo "sec.txt with line numbers:"
cat -n sec.txt

echo ---

echo "lines 4-6:"
sed -n '4,6 p' sec.txt

echo ---

echo "all lines but 4-6:"
sed '4,6 d' sec.txt

echo ---

echo "lines 7-8 and 12 to end:"
# -e  multiple commands
sed -n -e '7,8 p' -e '12,$ p' sec.txt

echo ---

echo "start with \"t\":"
sed -n '/^t/ p' sec.txt

echo ---

echo "lines with \"Mississippi\"(case-insensitive):"
sed -n '/Mississippi/I p' sec.txt

echo ---

echo "lines without \"mississippi\":"
sed '/mississippi/ d' sec.txt

echo ---

echo "\"school: \" prepended to each line:"
sed 's/^/school: /' sec.txt

echo ---

echo "change second \"i\" to \"I\":"
sed 's/i/I/2' sec.txt

echo ---

echo "change all occurrences of \"i\" to \"I\" on first 5 lines only:"
# g to replace all occurrences, not just first
sed '1,5 s/i/I/g' sec.txt


# -i  in-place editing with optional suffix for backup (of orig)
#sed -i'.orig' 's/mississippi/MISSISSIPPI/' sec.txt

echo ---

# & - pattern found
sed 's/[0-9][0-9]*/& &/' <<< "123 abc"

# swap consecutive letters at beginning with rest of line
sed 's/\(^[a-z][a-z]*\)\(.*\)/\2\1/' <<< "abc123zzz"
