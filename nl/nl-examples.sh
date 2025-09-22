# Basic nl functionality
nl fruits.txt

# left justified numbers
nl -n ln fruits.txt

# right justified numbers
nl -n rz fruits.txt

# ... plus adding a number width of 3
nl -n rz -w 3 fruits.txt

# ... plus starting numbering at 5
nl -n rz -w 3 -v 5 fruits.txt

# ... plus using an increment of 10
nl -n rz -w 3 -v 5 -i 10 fruits.txt

# Modifying the separator between number and line content
nl -s ',' fruits.txt
nl -s ' + ' fruits.txt
