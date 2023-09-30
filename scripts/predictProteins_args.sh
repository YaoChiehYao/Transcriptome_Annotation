#!/usr/bin/env bash
# predictProteins_args.sh
# Usage: bash scripts/predictProteins_args.sh <TRANSCRIPTOME> <TRANSDECODER_DIR> <DOMTBLOUT> <OUTFMT> 1>results/logs/predictProteins_args.log 2>results/logs/predictProteins_args.err

TransDecoder.Predict \
    -t $1 \
    -O $2 \
    --retain_pfam_hits $3 \
    --retain_blastp_hits $4
