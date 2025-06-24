# Colorize grep output
alias grep='grep --color=auto'

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
