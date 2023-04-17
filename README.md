# BIOL-7180-Semester-Project-
The purpose of this Github repository is to lay the groundwork for a pipeline that may be used for genome annotation. To begin this, I collected clean reads from two different research groups that have sequenced the _Periplaneta americana_ genome. Then, I mapped a subset of the reads to each other to observe differences between them. Finally, I utilized a scripted that picked out variants between the two curated genomes. The goal of this project is to eventually develop a **partially annotated** genome of _Periplaneta americana_ also known by its common name, the American cockroach. This initial step was done as project requirement for the course BIOL 7180.

# Abstract
> _Periplaneta americana_ or the American cockroach is an insect within the phylum arthropoda that has proven itself to be ubiquitous around the world as a result of global commerce.
> Additionally, this insect notoriously harbors organisms that are pathogenic towards humans, including _E. coli_ O157:H7 and _Samonella spp._ In conjunction, the American cockroach has not only manifested as a household pest but has become pervasive in numerous commercial environments.
> As a notion to add "insult to injury", these deleterious insects are becoming increasingly resistant to insecticides. 
> 
> Despite these factors, there are many phenotypic aspects that we do not know about this organism, chiefly in regards to its immune system.
> In an response to this, this repository will attempt to partially annotate the American cockroach genome with a focus on immune genes, so as to translate a computational basis into functional "wet lab" experiments.
# Methodology 
Much of the methodology used for this research project will be based on the [NCBI Eukaryotic Genome Annotation Pipeline](https://www.ncbi.nlm.nih.gov/genome/annotation_euk/process/#transcripts) that includes instructions on how to go from genome alignments and RNAseq data to annotation of transcription start sites and other annotations. A hurdle that may be encountered with this project is that while the  _Periplaneta americana_ genome is published and is robust in depth, respective RNAseq data may be scarce, providing some difficulty in the annotation process. 
>
To initiate this pipeline, I had to download the scripts of these genomes. Therefore, I developed the script [GFastadownloader.sh](https://github.com/A-DawgJones/BIOL-7180-Semester-Project-/blob/main/Scripts/GFastadownloader.sh) to quickly download genomes of any accession code. In order to not make the .zip files acquired through this process too large, I shortened the curl command that can be utlized to download sequences from the internet to only include the genomic sequences. However, if needed this can be used to acquire RNA FASTA, PROT FASTA, and more. 
>
Secondly, the script [BWA.sh](https://github.com/A-DawgJones/BIOL-7180-Semester-Project-/blob/main/Scripts/BWA.sh) is used to shorten both genomic sequences into a "bite-sized" portion that can be used with the command "bwa mem", that compares two sequences to each other and uses samtools to give analytics to the mapped reads (percentages, regions of commonality, etc.)
>
Lastly, the script [VariantID.sh](https://github.com/A-DawgJones/BIOL-7180-Semester-Project-/blob/main/Scripts/VariantID.sh) utlized the module GATK to examine and verify variants between the two genomic sequences using a truncated version first published sequence "ASM293952v1" as the reference. 
