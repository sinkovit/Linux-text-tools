# Linux tools exercises

This file contains some suggested exercises to help you master the
material covered in the COMPLECS "Linux tools for text processing"
training.

### General 1
Work through all the examples from the presentation, found in the
file Examples.sh, and make sure you understand what the commands are
doing. We also suggest modifying the examples or deliberately breaking
things (e.g., omitting quotes, backslashes, options, etc.) to see what
happens.

### General 2
The best way to learn Linux tools is to apply them to your own
work. If you have a data processing task where these tools might help,
try developing a solution now.

### head/tail 1
Display the first three/last three lines of file.txt using the
head/tail commands.

### head/tail 2
Using a combination of head and tail, display lines 5-10 of file.txt

### paste 1
Use the paste command to combine the planet names, colors,
masses and duration of year into a single file using the default
delimiter and user specified delimiters. Delete rows from one of the
files and see how this affects the output.

### nl 1
Add line numbers to the planet-name.txt file. Experiment with options to left justify numbering, right justify numbering with zero padding, adjust the width of the numbers (useful in combination with zero padding), change the increment and change the starting number. Consult the nl man page as needed.

### awk 1
Write an awk one-liner to print out the first and last fields from
each record of a file. Assume that the records can contain different
numbers of fields. Test your script on fruit.txt

### awk 2
Modify the previous solution so that if the record contains a
single field, it's only printed once.

### awk 3
Modify the previous solution to print "..." between the first and
last element if the record contains more thantwo fields. For example,
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


