DROP TABLE IF EXISTS range_test4 ;
CREATE TABLE range_test4 as (
	SELECT int4range(lb, lb + len) AS r 
	FROM (SELECT (sqrt(-2*ln(random())) * sin(2*pi()*random()) * 10000)::int as lb,
		  (-10000*ln(1.0 - random()) + 1)::int as len 
		  FROM generate_series(1,50)) x);
		  

DROP TABLE IF EXISTS range_test2 ;
CREATE TABLE range_test2 as (
	SELECT int4range(lb, lb + len) AS r 
	FROM (SELECT (sqrt(-2*ln(random())) * sin(2*pi()*random()) * 1000000)::int as lb,
		  (-1000000*ln(1.0 - random()) + 1)::int as len 
		  FROM generate_series(1,10000)) x);
		  
EXPLAIN ANALYZE SELECT count(*) 
FROM range_test3 AS t1, range_test4 AS t2 
WHERE t1.r && t2.r;
