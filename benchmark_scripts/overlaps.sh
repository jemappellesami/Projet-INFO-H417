#!/usr/bin/bash
rm "../benchmark_results/overlaps.txt"

/usr/local/pgsql/bin/psql -U postgres -d test -f "../benchmark_queries/overlaps.sql" >> "../benchmark_results/overlaps.txt"
