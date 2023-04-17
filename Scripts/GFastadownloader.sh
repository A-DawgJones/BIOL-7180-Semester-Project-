#!/bin/bash
 
module load fastqc

FILELIST='accessioncodes.txt'

for FILENAME in $FILELIST
    do

        curl -OJX GET "https://api.ncbi.nlm.nih.gov/datasets/v2alpha/genome/accession/$FILENAME/download?include_annotation_type=GENOME_FASTA&filename=$FILENAME.zip" -H "Accept: application/zip"

done

unzip *.zip 
cd /home/aubatm001/Scripting_project/ncbi_dataset/data/
cp *.fna /home/aubatm001/Scripting_project/
