# Look in the split directory to see results of splitting FASTA file
split genome.fasta
split -l 2000 genome.fasta genome_v1_
split -l 200 -t '>' genome.fasta genome_v2_ # Does not work on MacOS
