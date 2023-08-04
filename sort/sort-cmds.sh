sort unsorted1.txt
echo

export LC_ALL=C
sort unsorted1.txt 
export LC_ALL=''
echo

sort -k3 unsorted2.txt
sort -k2 unsorted2.txt
sort -k2 -n unsorted2.txt
echo

sort -u unsorted1.txt
