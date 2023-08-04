split -l 200 -t '>' genome.fasta genome_ # Does not work on MacOS
for file in genome_*
do
    sed 's/^sp|/>sp|/' $file > temp
    mv temp $file
done

