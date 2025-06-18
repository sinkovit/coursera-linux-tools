# split basic functionality
seq 10000 > seq.txt
split seq.txt
wc -l x* seq.txt
rm -f x*

# Using split when input does not divide into equal sized chunks
seq 10001 > seq.txt
split seq.txt
wc -l x* seq.txt
rm -f x*

# Controlling chunk size
seq 10000 > seq.txt
split -l 2000 seq.txt
wc -l x* seq.txt
rm -f x*
split -l 500 seq.txt
wc -l x* seq.txt
rm -f x*

# Setting the prefix
seq 10000 > seq.txt
split -l 2000 seq.txt part_
wc -l part_* seq.txt
rm -f part_*

# Using a numeric suffix
seq 10000 > seq.txt
split -l 2000 -d seq.txt part_
wc -l part_* seq.txt
rm -f part_*

# Increasing the suffix width
seq 10000 > seq.txt
split -l 10 seq.txt part_
echo $?
rm -f part_*
split -l 10 -a 4 seq.txt part_
wc -l part_* seq.txt
rm -f part_*

# Splitting into a specified number of files
# Be careful - may not do what you were expecting
seq 10001 > seq.txt
split -n 10 seq.txt
wc -l x* seq.txt
tail xaa
head xab
