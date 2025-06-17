# Basic paste functionality
cat fruits.txt
cat colors.txt
paste fruits.txt colors.txt

# Using paste on more than two files
paste fruits.txt colors.txt fruits.txt

# Paste delimiters
paste -d ',' fruits.txt colors.txt
paste -d 'xx' fruits.txt colors.txt
paste -d '+*' fruits.txt colors.txt fruits.txt colors.txt fruits.txt

# Paste serial option
paste -s fruits.txt colors.txt

# Basic nl functionality
nl fruits.txt

# Formatting nl output
nl -n ln fruits.txt
nl -n rz fruits.txt
nl -n rz -w 3 fruits.txt
nl -n rz -w 3 -v 5 fruits.txt
nl -n rz -w 3 -v 5 -i 10 fruits.txt
nl -s ',' fruits.txt
nl -s ' + ' fruits.txt
