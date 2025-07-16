# Colorize grep output
alias grep='grep --color=auto'

# Mac Homebrew users
# alias grep='/usr/local/bin/ggrep --color=auto'

# grep basic functionality
cat fruit.txt
grep banana fruit.txt
grep -i banana fruit.txt
grep banana fruit*.txt

# Forcing and supressing printing file name
grep -H banana fruit.txt
grep -h banana fruit*.txt

# Inverted match
grep lime fruit*.txt
grep -v lime fruit*.txt

# Listing files that contain / don't contain match
grep kumquat fruit*.txt
grep -l kumquat fruit*.txt
grep -L kumquat fruit*.txt

# Counting number of matching lines
grep lime fruit*.txt
grep -c lime fruit*.txt
grep lime fruit*.txt | wc -l

# Context of matching lines
grep -B 3 kumquat fruit.txt
grep -A 2 kumquat fruit.txt
grep -C 1 kumquat fruit.txt
grep -A 1 -B 1 kumquat fruit.txt

# Line number for matching lines
grep -n lime fruit*.txt

# Returning just the match rather than entire line
grep lime fruit*.txt
grep -o lime fruit*.txt
grep lime fruit*.txt | wc -l
grep -o lime fruit*.txt | wc -l

# Searching compressed files
xzgrep kumquat fruit.txt.gz
xzgrep kumquat fruit.txt.bz2
xzgrep kumquat fruit.txt.Z
xzgrep kumquat fruit.txt.xz

