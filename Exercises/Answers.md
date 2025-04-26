# Answers to exercises

(x) Write an awk one-liner to print out the first and last fields from
each record of a file. Assume that the records can contain different
numbers of fields. Test your script on fruit.txt 

```
awk '{print $1, $NF}' fruit.txt
```

(x) Modify the previous solution so that if the record contains a
single field, it's only printed once.

```
awk '{if (NF==1) print $1; else print $1, $NF}' fruit.txt
```

(x) Modify the previous solution to print "..." between the first and
last element if the record contains more than two fields. For example,
given the file with the following contents

a
a b
a b c
a b c d

The output would be

a
a b
a ... c
a ... d

```
awk '{if (NF==1) print $1; else if (NF==2) print $1, $2; else print $1, "...", $NF}' fruit.txt 
```