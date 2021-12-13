#!/usr/bin/bash
#rm benchmark_results_join.txt
./ddl.sh
./join.sh
./leftof.sh
./overlaps.sh
python3 clean_benchmark_results.py