# demonstrating that regex features from grep also work with awk
awk '/[bB]anana/' fruit.txt
awk '/[bdrw]ash/' ash.txt
awk '/[^c-r]ash/' ash.txt
awk '/ab+c/' abc.txt
awk '/[[:alpha:]]{6}[.]txt/' dot.txt
awk '/^pear|pear$/' fruit.txt
awk '/[[:alnum:]]+\*[[:alnum:]]+/' spc.txt
awk '/\{[0-9]+\}|\([0-9]+\)/' spc.txt
awk '/\<[0-9]{5}\>/' zip.txt

# The grep equivalents
grep -E '[bB]anana' fruit.txt
grep -E '[bdrw]ash' ash.txt
grep -E '[^c-r]ash' ash.txt
grep -E 'ab+c' abc.txt
grep -E '[[:alpha:]]{6}[.]txt' dot.txt
grep -E '^pear|pear$' fruit.txt
grep -E '[[:alnum:]]+\*[[:alnum:]]+' spc.txt
grep -E '\{[0-9]+\}|\([0-9]+\)' spc.txt
grep -E '\<[0-9]{5}\>' zip.txt

# using the positional field $0
awk '$0 ~ /[bB]anana/' fruit.txt
awk 'tolower($0) ~ /banana/' fruit.txt
awk '$0 !~ /[bB]anana/' fruit.txt

# simple applications of regexes in awk
cat repeat.txt
awk '$2 ~ /^[abc]/' repeat.txt
awk '$2 ~ /^[abc]/ {print $2, $4}' repeat.txt
awk '$1 ~ /^[ab]/ && $2 ~ /[aeiou]$/' repeat.txt
awk '$1 ~ /^[ab]/ || $2 ~ /[aeiou]$/' repeat.txt
awk '$1 == "apple" && $2 ~ /[aeiou]$/' repeat.txt

# a more complicated grep equivalent to "awk '$2 ~ /^[abc]/'"
grep -E '^[^[:space:]]+[[:space:]][abc].*' repeat.txt

