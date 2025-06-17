# tac
cat file.txt
tac file.txt

# expand and unexpand
expand space-and-tab.txt > space.txt
unexpand -a space.txt > tab.txt

# wc basics
wc file.txt
wc -c file.txt
wc -w file.txt
wc -l file.txt

# wc without printing filename
wc -l < file.txt
cat file.txt | wc -l
