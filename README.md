
BINF 6308 Assignment9

# Project name: Blast and TransDecoder 


## Description
Assignment 9 demonstrates the usage of the BLAST database to examine 
transcriptome assembly results and get homology indications such as
identity, similarity Evalue, etc. On the other hand, the TransDecoder
is another approach to compare by protein prediction.


## Getting Started

* Hi, this is the documentation for assignment 9 of the bio-computational
  method course.
* That's start BLAST and TransDecoder project from the beginning, step
  by step, code by code.
* The working environment is under the Command line prompt, such as a Mac
  terminal or Ubuntu (with Bash script), so please prepare it in advance.   


### Dependencies

Protein-Protein BLAST 2.12.0
HMMER 3.3.2
TransDecoder.LongOrfs 5.6.0
TransDecoder.Predict 5.6.0

### Installing

Install the third-party software above with specific dependencies
(if needed)

### Executing program

* Use the vim editor to prepare bash scripts for the following steps:

* BLAST
 1. Set the query Fasta data for analyzing
 2. Choose a database to map 
 3. Tunning the setting and output options

* TransDecoder
 1. Use TransDecoder.LongOrf to get the most extended open reading
 frames and translates them to protein seq.
 2. Apply the aligned open reading frames to the SwissProt database
 and identify similar proteins for guiding the prediction process.
 3. The hmmscan program is based on Hidden Markov Model (HMM) to find
 protein domains (orfs location) to guide the prediction process.
 4. The TransDecoder.Predict takes inputs from No.1-3, open reading
 frames, the BLAST output, and the protein domains to conduct the 
 predictions and produce a protein Fasta file (.pep).

* In the end, make all scripts into one via the pipeline

  Here is the link of file: 
```
https://github.com/NU-Bioinformatics/module-09-YaoChiehYao.git
```

## Method
* BLAST and BLAST program
 This project uses blastx (translated nucleotide-protein) algorithm to align the transcriptome assembly result
 to the swissprot database

   Build custom Blast database:
   - makeblastdb is the program name to call
   - in is the path of input Fasta file 
   - dbtype is the database type(Nucl or protein)
   - parse_seqids handlingactions 

   blastx parameters: 
   - blastx is the program name to call
   - query is the Fasta data resource for mapping 
   - db is the path of the reference database for alignment
   - num_alignments is the number of alignments to show in the BLAST output
   - outfmt is the output format of the search
   (reference: https://www.animalgenome.org/bioinfo/resources/manuals/blast2.2.24/user_manual.pdf Author: NCBI )


* TransDecoder
 As mentioned, the TransDecoder.Predict approach requires inputs such as the most extended open reading frames, the
 BLAST output and the protein domains to conduct. Here are the parameters of each method: 

   TransDecoder.LongOrfs 
   - t is the input Fasta file
   - O output files path to store in the TransDecoder directory

   Align protein from orfs to swissprot by blastp
   - blastp is the program name to call
   - query is the Fasta data resource for mapping 
   - db is the path of the reference database for alignment
   - max_target_seqs is the maximum number of aligned sequences to keep from the BLAST database.
   - outfmt is the output format of the search

   Use Hummscan to find the protein domain
   - hmmscan is the program name to call
   - cpu allocates computing resource 
   - domtblout is the path of pfam. domtblout
   - a path of the reference database Pfam-A.hmm for alignment
   - a path of the query data longest_orfs.pep for alignment

   TransDecoder.Predict
   - t is the input Fasta file
   - O output files path to store in the transcoder directory
   - retain_pfam_hits keep the ORF hit as prediction criteria 
   - retain_blastp_hits keep the blastp hit as prediction criteria 



## Citations
  1. Trinity citation
  Haas, Brian J., Alexie Papanicolaou, Moran Yassour, Manfred Grabherr, Philip D. Blood, Joshua Bowden, Matthew Brian Couger, et al. 2013. "De Novo Transcript Sequence Reconstruction from RNA-Seq Using the Trinity Platform for Reference Generation and Analysis." Nat Protoc 8 (8): 1494–1512.

  2. Blast citation:
  Altschul, S. F., T. L. Madden, A. A. Schäffer, J. Zhang, Z. Zhang, W. Miller, and D. J. Lipman. 1997. "Gapped BLAST and PSI-BLAST: A New Generation of Protein Database Search Programs." Nucleic Acids Res 25 (17): 3389–3402.

  Pertsemlidis, A., and 3rd Fondon J. W. 2001. “Having a BLAST with Bioinformatics (and Avoiding BLASTphemy).” Genome Biol 2 (10): REVIEWS2002–REVIEWS2002.

  3. TransDecoder citation:
  Finn, Robert D., Jody Clements, William Arndt, Benjamin L. Miller, Travis J. Wheeler, Fabian Schreiber, Alex Bateman, and Sean R. Eddy. 2015. "HMMER Web Server: 2015 Update." Nucleic Acids Res 43 (W1): W30–W38.


## Help

Any other issue contact with yao.yao-@northeastern.edu


## Authors

Yao Chieh Yao
Northeastern University Bioinformatics


## Version History

* 1.0
    * Assignment01 Finish 
* 0.1
    * Assignment01 Release 


## License

This project is an assignment work and only license to TA and professors of Northeastern University Bioinformatics 


## Acknowledgments
