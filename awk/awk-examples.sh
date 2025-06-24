# awk basic functionality
cat people.txt
awk '{print $1, $3}' people.txt
awk '{print $1 $3}' people.txt
awk '{print $0}' people.txt
awk '{print $1, $NF}' people.txt

cat ragged.txt
awk '{print $NF}' ragged.txt

awk '{print $1 " favorite food is " $3}' people.txt
awk '{print $1 "'\''s favorite food is " $3}' people.txt

# Specifying delimiter with -F
cat states.txt
awk -F , '{print $1, $3}' states.txt

# Patterns
cat people.txt
awk '/pizza/ {print $0}' people.txt
awk '/pizza/ {print $1, $3}' people.txt

cat ragged.txt
awk 'NF==2 {print $1, $NF}' ragged.txt
awk 'NF>2 {print $1, $NF}' ragged.txt

cat numbers.txt
awk '$1<$2' numbers.txt
awk '$2<$1' numbers.txt

# BEGIN and END
awk -F , 'BEGIN {OFS=","} {print $1, $3}' states.txt
awk 'BEGIN {OFS=","; FS=","} /bird/ {print $1, $3}' states.txt
awk 'BEGIN {OFS=","; FS=","} /bird/ {print $1, $3} END {print "-all done -"}' states.txt

# Doing math with awk
awk '{print $1, $2, $1+$2}' numbers.txt
awk 'BEGIN {print "c1 c2 sum"} {print $1, $2, $1+$2}' numbers.txt
awk '{s1+=$1; s2+=$2; print $1, $2} END {print "--- ---"; print s1, s2}' numbers.txt
awk '{s1+=$1; s2+=$2; print $1, $2} END {print "--- ---"; print s1/NR, s2/NR}' numbers.txt
awk '{print $1, $2, log($1), sqrt($2)}' numbers.txt

# if-else construct
cat numbers.txt
awk '{if ($1 < $2) print $1, $2}' numbers.txt
awk '$1 < $2 {print $1, $2}' numbers.txt
awk '{if ($1 < $2) print $1, $2; else print $2, $1}' numbers.txt
awk 'BEGIN {min=1e100; max=-1e100} {if ($1<min) min=$1; if ($2>max) max=$2} END {print "min1 = " min " max2 = " max}' numbers.txt

cat words.txt
awk '{if ($1 < $2) print $1, $2; else print $2, $1}' words.txt

# Formatted output
cat mixed.txt
awk '{printf "%-12s %7d %8.3f\n", $1, $2, $3}' mixed.txt
