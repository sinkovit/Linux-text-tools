grep banana file1.txt
grep Banana file1.txt
grep -i banana file1.txt
echo

grep -B 3 kumquat file1.txt
grep -A 2 kumquat file1.txt
echo

grep lime *.txt
grep -v lime *.txt
echo

grep lime *.txt
grep -c lime *.txt
grep -l kumquat *.txt
grep -L kumquat *.txt
echo

grep pear file1.txt
grep '^pear' file1.txt
grep 'pear$' file1.txt
