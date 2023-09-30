#!/usr/bin/env bash
# blastPep.sh
# Usage: bash scripts/blastPep_args.sh <LONGEST_ORFS> <SWISSPROT_DB> 1>results/blastPep_args.outfmt6 2>results/logs/blastPep_args.err

blastp -query $1  \
    -db $2 \
    -max_target_seqs 1 \
    -outfmt 6 -evalue 1e-5 -num_threads 4 
