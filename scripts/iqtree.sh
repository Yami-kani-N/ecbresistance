#!/bin/bash
#SBATCH --account=PAS2700
#SBATCH --output=iqtree_phylogeny_%j.out 
#SBATCH --mail-type=END,FAIL

set -euo pipefail

#load iqtree 2.3.3 Conda environment
module load miniconda3/23.3.1-py310
conda activate iqtree

#processing arguments 
infile=$1
outfile=$2

#create output 
outdir=$(dirname "$outfile")
mkdir -p "$outdir"

# Run IQ-TREE to construct the phylogenetic tree
iqtree -s "$infile" -nt AUTO

# Final reporting
echo
echo "# Done with script iqtree.sh"
date

