# Load packages
#install.packages("ape")
#install.packages("ggtree")
#install.packages("tidyverse")
#install.packages("ggnewscale")

# Load packages
library(ape)
library(ggtree)
library(tidyverse)
library(ggnewscale)

# Define the input files
tree_file <- "/fs/ess/PAS2700/users/yami/ecbresistance/results/allighnment.fasta.treefile"

# Define the output files
outdir <- "results/trees"
dir.create(outdir, showWarnings = FALSE, recursive = TRUE)
outfile_plot <- file.path(outdir, "tree.png")

# Read the tree file and prep the tree
tree <- read.tree(tree_file)

# Plot the tree
ggtree(tree, layout = "roundrect") +
  geom_rootedge(rootedge = sum(tree$edge.length) / 100) +
  geom_tiplab() +
  coord_cartesian(clip = "off") +
  theme(plot.margin = margin(0.2, 2.5, 0.2, 0.2, "cm"))

ggsave(outfile_plot)