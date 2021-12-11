EXPLAIN ANALYZE SELECT count(*) FROM temp AS t1, temp AS t2 WHERE t1.r && t2.r;
