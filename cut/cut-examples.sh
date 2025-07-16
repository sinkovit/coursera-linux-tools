# cut by character position
cat letters.txt
cut -c 5,10,15 letters.txt
cut -c 5,10-15,17 letters.txt

# cut by field
cat tab.tsv
cut -f 1,3,5 tab.tsv
cut -f 3-5 tab.tsv
cut -f 1,3,5 whitespace.txt

# Mac users may want to try the following
# but be aware that it's not portable
# cut -f 1,3,5 -w whitespace.txt

# specifying a different delimiter
cut -f 1,3,5 -d ',' comma.csv
