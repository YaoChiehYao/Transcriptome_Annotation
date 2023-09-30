#!/usr/bin/env bash
# pfamScan_args.sh
# Usage: bash scripts/pfamScan_args.sh <DOMTBLOUT> <PFAMA_PATH> <LONGEST_ORF> 1>results/logs/pfamScan_args.log 2>results/logs/pfamScan_args.err

hmmscan --cpu 4 --domtblout $1 \
    $2 \
    $3
