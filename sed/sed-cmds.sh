sed s'/pear/XXXX/' file1.txt
sed s'/pear/XXXX/g' file1.txt
sed s'/^pear/XXXX/' file1.txt
sed s'/pear$/XXXX/' file1.txt
echo

sed -n '5'p file2.txt
sed -n '3,5'p file2.txt
sed -n '2~3'p file2.txt
echo

head -2 file1.txt > file3.txt
sed s'/pear/XXXX/' file3.txt > file3.txt
cat file3.txt
echo

head -2 file1.txt > file3.txt
sed -i s'/pear/XXXX/' file3.txt # Does not work on MacOS
cat file3.txt
