#!/bin/bash
#SBATCH --account=PAS2700
#SBATCH --output=mafft_alignment_%j.out 
#SBATCH --mail-type=END,FAIL

set -euo pipefail


#Use this only when conda is not activated-------------
#Iqtree
#conda create -y -n mafft -c biconda mafft 
# Load mafft Conda environment
module load miniconda3/23.3.1-py310
conda activate mafft

#processing arguments 
infile=$1
outfile=$2

#create output 
outdir=$(dirname "$outfile")
mkdir -p "$outdir"

# Run MAFFT to perform sequence alignment
mafft --auto "$infile" > "$outfile"


# Final reporting
echo
echo "# Done with script mafft.sh"
date