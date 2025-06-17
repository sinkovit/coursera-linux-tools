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
