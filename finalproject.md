# Project Background 

- Lepidoptera: Crambidae is a group of insects that are of high economic importance in corn production. Insect pests like corn earworm southwestern corn borer and European corn borer reduces farm yield through damages to plant (Reay-Jones et al., 2016). For example, During late instar, Crambids can cause severe damage by tunneling into corn stalks, potentially stunting or even killing young plants (Chandel et al., 2013). 

- The use of transgenic corn with insecticidal properties derived from Bacillus thuringiensis (Bt) has been used to control Crambids. This led to the formulation of transgenic corn that uses the genes encoding insecticidal properties  to control lepidopteran pests like Bt crops (Bravo et al., 2007)

- The ABCC2 gene is an essential player in the mechanism of resistance to Cry proteins in Lepidopteran insects. To monitor and understand the resistance mechanism we will focus on understanding and looking at differences between the ABCC2 gene in six Lepidopteran insects. This will help us know which species are genetically close and know which species to study and compare depending on the previous work that has been done in the related species. Understanding the ABCC2 gene will also help in insect managements strategies. 

# Methods and file location 
- To achieve the above goals, I will download the ABCC2 gene fastq from the NBIC gene bank for each of the species I used. I created a mafft script to align the data set. I then used iqtree to create the tree after alignment. For a better visualization of the tree. I used R to edit the visuals of the tree. 

 The raw data is loctaed in ecbresistance/fastq/

- The scripts are located in ecbresistance/scripts.  mafft.sh, iqtree.sh and R scripts.
The runfinal.sh has the batch job commands for the maftt and the iqtree scripts. The scipts are found in ecbresistance/scripts. The R script  produce a simple tree when run in R in VSCode. I have been having troouble to load some packages which prevented me from spending more time on it for better visualisation. For future jobs i would like to create my trees with bootsraps and more details.

- The runfinal.sh file has the two batch commands to rerun the mafft and iqtree scripts. The R script will be pasted in the R to be run since the commands were run in R extention.
- Ignore tree.R because that the file you sent me to learn from. 

