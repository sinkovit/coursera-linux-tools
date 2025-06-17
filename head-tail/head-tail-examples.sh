# Write first 10 lines to stdout
head file1.txt

# Write last 10 lines to stdout
tail file1.txt

# Write first 5 lines to stdout
head -n 5 file1.txt

# Write all but last 5 lines to stdout
head -n -5 file1.txt

# Write last 5 lines to stdout
tail -n 5 file1.txt

# Write line 5 onward to stdout
tail -n +5 file1.txt

# Demonstrating verbose (-v) and quiet (-q) modes
head -v -n 3 file1.txt
head -q -n 3 file1.txt
head -v -n 3 file*.txt
head -q -n 3 file*.txt

# Writing lines 6-10 to stdout using head and tail
head -n 10 file1.txt | tail -n 5
tail -n +6 file1.txt | head -n 5

# Help, version and info
head --help
head --version
info '(coreutils) head invocation'
