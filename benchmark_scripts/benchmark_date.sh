#!/usr/bin/bash
/usr/local/pgsql/bin/psql -U postgres -d test -f "../benchmark_queries/date_ddl.sql" 
rm "../benchmark_results/join.txt"
/usr/local/pgsql/bin/psql -U postgres -d test -f "../benchmark_queries/join_date.sql" >> "../benchmark_results/join.txt"
rm "../benchmark_results/leftof.txt"
/usr/local/pgsql/bin/psql -U postgres -d test -f "../benchmark_queries/leftof_date.sql" >> "../benchmark_results/leftof.txt"
rm "../benchmark_results/overlaps.txt"
/usr/local/pgsql/bin/psql -U postgres -d test -f "../benchmark_queries/overlaps_date.sql" >> "../benchmark_results/overlaps.txt"
python3 clean_benchmark_results.py