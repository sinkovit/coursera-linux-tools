# Character translation using tr
tr aeiou 12345 < file.txt
tr aeiou 1 < file.txt
tr aeiou 12 < file.txt
tr aeiou 11111 < file.txt
tr aeiou 12222 < file.txt

# Translating lower-to-upper and upper-to-lower case
tr a-z A-Z < file.txt
tr A-Z a-z < file.txt
tr [:lower:] [:upper:] < file.txt
tr [:upper:] [:lower:] < file.txt

# Deleting characters using tr
tr -d [:alpha:] < file.txt
tr -d [:punct:] < file.txt
tr -d [:blank:] < file.txt
tr -d [:space:] < file.txt
