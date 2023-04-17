#!/bin/sh

source /opt/asn/etc/asn-bash-profiles-special/modules.sh
module load bwa/0.7.12
module load samtools/1.3.1

ls *.fna > FSamplesList.txt

FILELIST='FSamplesList.txt'

for FILENAME in $FILELIST
do

#########Creating Variable for File names#################
##Need to be changed based on naming system
SHORTER=`echo $FILENAME | awk -F "." '{print $1}'`
#SHORT=`echo $SHORTER | awk -F "_" '{print $1"_"$2}'`

#

        bwa mem -t 20 -M /home/aubatm001/Scripting_project/"$SHORTER".fna 
        > "$SHORTER".mem.sam
        
samtools view -Sb -@ 20 "$SHORTER".mem.sam -o "$SHORTER".mem.bam
samtools sort -@ 20 "$SHORTER".mem.bam -o "$SHORTER".memsorted.bam
samtools index -@ 20 "$SHORTER".memsorted.bam
done
