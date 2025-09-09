# Colorize grep output
alias grep='grep --color=auto'

# Mac Homebrew users
# alias grep='/usr/local/bin/ggrep --color=auto'

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
grep -E '^pear' fruit.txt
grep -E 'pear$' fruit.txt
grep -E '^pear|pear$' fruit.txt

# Alternation
grep -E '^pear|pear$' fruit.txt

# Escaping special characters
grep -E '[[:alnum:]]+\*[[:alnum:]]+' spc.txt
grep -E '[[:alnum:]]+[*][[:alnum:]]+' spc.txt
grep -E '[{(][0-9]+[})]' spc.txt
grep -E '\{[0-9]+\}|\([0-9]+\)' spc.txt

# ----- regex word boundaries -----

# Naive approach to finding 5-digit zip codes
cat zip.txt
grep -E '[0-9]{5}' zip.txt

# An improved solution in four parts
grep -E '^[0-9]{5}[[:punct:][:space:]]' zip.txt
grep -E '[[:punct:][:space:]][0-9]{5}[[:punct:][:space:]]' zip.txt
grep -E '[[:punct:][:space:]][0-9]{5}$' zip.txt
grep -E '^[0-9]{5}$' zip.txt

# An improved solution in four parts w/ -o to emphasize matches
grep -Eo '^[0-9]{5}[[:punct:][:space:]]' zip.txt
grep -Eo '[[:punct:][:space:]][0-9]{5}[[:punct:][:space:]]' zip.txt
grep -Eo '[[:punct:][:space:]][0-9]{5}$' zip.txt
grep -Eo '^[0-9]{5}$' zip.txt

# Using word boundaries
grep -E '\<[0-9]{5}\>' zip.txt
grep -Eo '\<[[:alnum:]]+[.]txt\>' dot.txt

# ----- Perl compatible regular expressions -----

# greedy and lazy matching
grep -E 'p.*r' fruit.txt
grep -E '\<p.*r\>' fruit.txt
grep -E 'p[[:lower:]]*r' fruit.txt

cat lazy.txt
grep -E 'A.*B' lazy.txt
grep -P 'A.*?B' lazy.txt

# PCRE character classes
grep -E '[[:alnum:]]+[*][[:alnum:]]+' spc.txt
grep -P '\w+[*]\w+' spc.txt
grep -E '\{[0-9]+\}|\([0-9]+\)' spc.txt
grep -P '\{\d+\}|\(\d+\)' spc.txt

# Lookahead and lookbehind
grep -P 'foo(?=bar)' foobar.txt 
grep -P 'foo(?!bar)' foobar.txt
grep -P '(?<=foo)bar' foobar.txt
grep -P '(?<!foo)bar' foobar.txt

grep -Po '\w+\.txt' dot.txt
grep -Po '\w+(?=\.txt)' dot.txt

# Capture groups and back references
cat repeat.txt
grep -P '\b(\w+)\s+\1\b' repeat.txt
grep -P '\b(\w+)\s+\1\s+\1\b' repeat.txt
grep -P '\b(\w+).*\1\b' repeat.txt
grep -P '\b(\w+).*?\1\b' repeat.txt
grep -P '\b(\w+)\s+(\w+)\s+\2\s+\1\b' repeat.txt
grep -P '\b(\w+)\s+((?!\1)\w+)\s+\2\s+\1\b' repeat.txt

