cat people.txt
awk '{print $1, $3, $NF}' people.txt
awk '{print $NF}' ragged.txt
awk '{print $1 " favorite food is " $3}' people.txt
awk '/pizza/ {print $1, $3}' people.txt
cat states.txt
awk -F ',' '{print $1 " state bird is " $3}' states.txt
awk '{sum=$1+$2; prod=$1*$2; print $1, $2, sum, prod}' numbers.txt
awk '{sin1=sin($1); cos2=cos($2); print $1, $2, sin1, cos2}' numbers.txt 
awk '{log1=log($1); sqrt2=sqrt($2); print $1, $2, log1, sqrt2}' numbers.txt
awk 'BEGIN {PI=3.14159; print "  x    y   sin(x)  cos(y)"} {sin1=sin($1*PI); cos2=cos($2*PI); printf "%4.1f %4.1f %7.4f %7.4f\n", $1, $2, sin1, cos2}' numbers.txt
awk '{s1+=$1; s2+=$2; print} END {print s1/NR, s2/NR}' numbers.txt
awk '{sum1+=$1; sum2+=$2; print} END {print sum1, sum2}' numbers.txt
