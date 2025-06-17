# Comparing sort -R and shuf
cat abc.txt
sort -R abc.txt
shuf abc.txt

# Using shuf to permute integers
shuf -i 1-5
shuf -i 10-20

# Using shuf to simulate rolling dice
shuf -r -n 10 -i 1-6
