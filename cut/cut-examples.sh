# cut by character position
cat letters.txt
cut -c 5,10,15 letters.txt
cut -c 5,10-15,17 letters.txt
cat extended.txt
cut -c 4-9 extended.txt

# cut by field
cat tab.tsv
cut -f 1,3,5 tab.tsv
cut -f 3-5 tab.tsv
cut -f 1,3,5 whitespace.txt
cut -f 1,3,5 -w whitespace.txt

# specifying a different delimiter
cut -f 1,3,5 -d ',' comma.csv
