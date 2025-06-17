# uniq basic functionality
uniq unsorted-fruit.txt
sort unsorted-fruit.txt > sorted-fruit.txt
uniq sorted-fruit.txt
uniq -c sorted-fruit.txt

# A simple word frequency tool using tr, sort and uniq
tr -s '[:space:][:punct:]' '\n' < produce.txt | sort | uniq -c

