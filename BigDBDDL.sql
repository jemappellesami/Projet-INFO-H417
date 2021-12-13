DROP TABLE IF EXISTS range_test3 ;
CREATE TABLE range_test3 as (
	SELECT int4range(lb, lb + len) AS r 
	FROM (SELECT (sqrt(-2*ln(random())) * sin(2*pi()*random()) * 10000)::int as lb,
		  (-10000*ln(1.0 - random()) + 1)::int as len 
		  FROM generate_series(1,1500)) x);
		  

DROP TABLE IF EXISTS range_test2 ;
CREATE TABLE range_test2 as (
	SELECT int4range(lb, lb + len) AS r 
	FROM (SELECT (sqrt(-2*ln(random())) * sin(2*pi()*random()) * 1000000)::int as lb,
		  (-1000000*ln(1.0 - random()) + 1)::int as len 
		  FROM generate_series(1,10000)) x);
		  
DROP TABLE IF EXISTS bigdata ;
CREATE TABLE bigdata as (
	SELECT daterange(lb::date, (lb + len)::date) AS r 
	FROM (SELECT (NOW() + (random() * (NOW()+'100 days' - NOW())))::date as lb,
	
		  (random() * ('100 days'::INTERVAL))::INTERVAL as len 
		  FROM generate_series(1,10000)) x);	
		  
DROP TABLE IF EXISTS bigdata2 ;
CREATE TABLE bigdata2 as (
	SELECT daterange(lb::date, (lb + len)::date) AS r 
	FROM (SELECT (NOW() + (random() * (NOW()+'100 days' - NOW())))::date as lb,
	
		  (random() * ('100 days'::INTERVAL))::INTERVAL as len 
		  FROM generate_series(1,10000)) x);	

\o /tmp/output.txt
explain analyze explain analyze select * from bigdata as t1, BIGDATA as t2 where t1.r && t2.r ;
\o
		  
EXPLAIN ANALYZE SELECT count(*) 
FROM range_test3 AS t1, range_test4 AS t2 
WHERE t1.r && t2.r;
