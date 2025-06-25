# Colorize grep output
alias grep='grep --color=auto'

# ----- regex characters -----

# Matching multiple character with square brackets
cat fruit.txt
grep 'banana' fruit.txt
grep 'Banana' fruit.txt
grep -i 'banana' fruit.txt
grep '[bB]anana' fruit.txt

grep -i 'banana' fruit2.txt
grep '[bB]anana' fruit2.txt

cat ash.txt
grep '[bdrw]ash' ash.txt
grep '[^bdrw]ash' ash.txt
grep '[d-h]ash' ash.txt
grep '[^c-r]ash' ash.txt
grep '[-g-l]ash' ash.txt

# POSIX character classes
cat oot.txt
grep '[[:lower:]]oot' oot.txt
grep '[[:upper:]]oot' oot.txt
grep '[[:punct:]]oot' oot.txt
grep '[[:punct:][:upper:]]oot' oot.txt

# Wildcards
grep 'b....a' fruit.txt
grep '.e..h' fruit.txt
grep '.ea. ' fruit.txt

grep '.txt' dot.txt
grep '\.txt' dot.txt
grep '[.]txt' dot.txt
grep -o '[.]txt' dot.txt

# ----- regex quantifiers -----

# Using full set of quantifiers
grep -E 'ab*c' abc.txt
grep -E 'ab+c' abc.txt
grep -E 'ab?c' abc.txt
grep -E 'ab{3}c' abc.txt
grep -E 'ab{,3}c' abc.txt
grep -E 'ab{3,}c' abc.txt
grep -E 'ab{3,5}c' abc.txt

# Doing the same thing as above with just * and |
grep -E 'ab*c' abc.txt
grep -E 'abb*c' abc.txt
grep -E 'ac|abc' abc.txt
grep -E 'abbbc' abc.txt
grep -E 'abbbb*c' abc.txt
grep -E 'ac|abc|abbc|abbbc' abc.txt
grep -E 'abbbc|abbbbc|abbbbbc' abc.txt

# Matching file names ending in .txt
grep -E -o '[[:alpha:]]*[.]txt' dot.txt
grep -E -o '[[:alpha:]]{6}[.]txt' dot.txt

# ----- regex grouping, anchors, alternation & special characters -----

# Grouping
cat grp.txt
grep -E 'A(xyz)?B' grp.txt
grep -E 'A(xyz){2,3}B' grp.txt
grep -E 'A(xyz)+B' grp.txt

# Anchors
cat fruit.txt
grep '^pear' fruit.txt
grep 'pear$' fruit.txt
grep -E '^pear|pear$' fruit.txt

# Alternation
grep -E '^pear|pear$' fruit.txt

# Escaping special characters
grep -E '[[:alpha:]]+\*[[:alpha:]]+' spc.txt
grep -E '[{(][0-9]+[})]' spc.txt
grep -E '\{[0-9]+\}|\([0-9]+\)' spc.txt
