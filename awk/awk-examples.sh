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
