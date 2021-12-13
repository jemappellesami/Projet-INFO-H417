#!/usr/bin/bash
rm "../benchmark_results/leftof.txt"

/usr/local/pgsql/bin/psql -U postgres -d test -f "../benchmark_queries/leftof.sql" >> "../benchmark_results/leftof.txt"
