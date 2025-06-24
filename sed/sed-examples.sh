# sed basic functionality
cat bob.txt
sed 's/Bob/Robert/g' bob.txt
sed 's/Bob/Robert/' bob.txt
sed 's/linux/UNIX/gI' bob.txt

# Using other delimiters
sed 's#Bob#Robert#g' bob.txt
cat slashes.txt
sed 's/\//\\/g' slashes.txt
sed 's|/|\\|g' slashes.txt

# Multiple substitutions
cat fruit.txt
sed 's/pear/orange/g' fruit.txt
sed 's/pear/orange/g; s/apple/mango/g' fruit.txt

# Patterns
cat fruit.txt
sed 's/pear/orange/g' fruit.txt
sed '/grape/ s/pear/orange/g' fruit.txt

# Restricting output to matching lines
sed 's/pear/orange/g' fruit.txt | grep grape
grep grape fruit.txt | sed 's/pear/orange/g'
sed -n '/grape/ {s/pear/orange/g; p;}' fruit.txt
diff <(sed 's/pear/orange/g' fruit.txt) <(sed '/grape/ s/pear/orange/g' fruit.txt)

# Restricting output to matching lines (this probably doesn't do what you want)
sed -n '/grape/ s/pear/orange/g; p;' fruit.txt

# Printing selected line numbers
cat file.txt
sed -n '5p' file.txt
sed -n '3,6p' file.txt
sed -n '1p;2p;5p' file.txt
