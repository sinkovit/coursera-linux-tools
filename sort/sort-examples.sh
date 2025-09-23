# Basic sort functionality
sort fruit.txt

# Effect of locale on sort results
LC_ALL=C sort fruit.txt

# Sorting by column (but note that we'll do this better below)
sort -k1 snacks.txt
sort -k2 snacks.txt
sort -k3 snacks.txt

# Numeric and reverse sorts
sort -k2n snacks.txt
sort -k2nr snacks.txt
sort -k2nr,2 snacks.txt

# Sorting on multiple columns more reliably with -kx,x
sort -k3,3 -k1,1 -k2,2 produce.txt
sort -k2r,2 -k1,1 -k3,3 produce.txt

# Defining custom delimiter
sort -k3,3 -t ',' snacks.csv

# Removing duplicates after sorting
sort -u fruit.txt
sort -u -k3,3 produce.txt
sort -u -k1,1 -k2,2 produce.txt

# Sorting file with header row
head -n 1 has-header.txt; tail -n +2 has-header.txt | sort -k2,2
head -n 1 has-header.txt > results.txt; tail -n +2 has-header.txt | sort -k2,2 >> results.txt
