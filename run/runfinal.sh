sbatch scripts/mafft.sh fastq/abcc2.fasta results/alignment/alignment.fasta
sbatch scripts/iqtree.sh results/alignment/alignment.fasta. results/tree/tree.fasta
