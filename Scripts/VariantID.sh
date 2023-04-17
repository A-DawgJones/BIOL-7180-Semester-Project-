#!/bin/sh

#establish working directory
cd /home/aubatm001/Scripting_project/BIOL-7180-Semester-Project-

#load modules that will be used
module load picard
module load gatk
module load vcftools

#Set path to reference genome, in this case I just used the first one published

ref="/home/aubatm001/Scripting_project/BIOL-7180-Semester-Project-/GCA_002939525.1_ASM293952v1_genomic.fna"

#Using GATK to call variants for multiple arguments 

 gatk --java-options "-Xmx32g" HaplotypeCaller  \
   -R $ref \
   -I *.bam \
   -O *.vcf \
   -ERC GVCF
