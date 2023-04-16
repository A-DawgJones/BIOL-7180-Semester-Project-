#!/bin/bash

module load sra 
module load fastqc

FILELIST='sraaccession.txt'

for FILENAME in $FILELIST
    do

        prefetch --option-file $FILENAME

done
