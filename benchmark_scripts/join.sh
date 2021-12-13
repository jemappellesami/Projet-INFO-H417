#!/usr/bin/bash
rm "../benchmark_results/join.txt"
/usr/local/pgsql/bin/psql -U postgres -d test -f "../benchmark_queries/join.sql" >> "../benchmark_results/join.txt"
