DROP TABLE IF EXISTS range_test_1 ;
CREATE TABLE range_test_1 as (
	SELECT int4range(lb, lb + len) AS r 
	FROM (SELECT (sqrt(-2*ln(random())) * sin(2*pi()*random()) * 5000)::int as lb,
		  (-2000*ln(1.0 - random()) + 1)::int as len 
		  FROM generate_series(1,1000)) x);

DROP TABLE IF EXISTS range_test_2 ;
CREATE TABLE range_test_2 as (
	SELECT int4range(lb, lb + len) AS r 
	FROM (SELECT (sqrt(-2*ln(random())) * sin(2*pi()*random()) * 5000)::int as lb,
		  (-2000*ln(1.0 - random()) + 1)::int as len 
		  FROM generate_series(1,2500)) x);

DROP TABLE IF EXISTS range_test_3 ;
CREATE TABLE range_test_3 as (
	SELECT int4range(lb, lb + len) AS r 
	FROM (SELECT (sqrt(-2*ln(random())) * sin(2*pi()*random()) * 5000)::int as lb,
		  (-2000*ln(1.0 - random()) + 1)::int as len 
		  FROM generate_series(1,5000)) x);

DROP TABLE IF EXISTS range_test_4 ;
CREATE TABLE range_test_4 as (
	SELECT int4range(lb, lb + len) AS r 
	FROM (SELECT (sqrt(-2*ln(random())) * sin(2*pi()*random()) * 5000)::int as lb,
		  (-2000*ln(1.0 - random()) + 1)::int as len 
		  FROM generate_series(1,10000)) x);

DROP TABLE IF EXISTS range_test_5 ;
CREATE TABLE range_test_5 as (
	SELECT int4range(lb, lb + len) AS r 
	FROM (SELECT (sqrt(-2*ln(random())) * sin(2*pi()*random()) * 5000)::int as lb,
		  (-2000*ln(1.0 - random()) + 1)::int as len 
		  FROM generate_series(1,25000)) x);

DROP TABLE IF EXISTS range_test_6 ;
CREATE TABLE range_test_6 as (
	SELECT int4range(lb, lb + len) AS r 
	FROM (SELECT (sqrt(-2*ln(random())) * sin(2*pi()*random()) * 5000)::int as lb,
		  (-2000*ln(1.0 - random()) + 1)::int as len 
		  FROM generate_series(1,50000)) x);



VACUUM ANALYZE range_test_1 ;
VACUUM ANALYZE range_test_2 ;
VACUUM ANALYZE range_test_3 ;
VACUUM ANALYZE range_test_4 ;
VACUUM ANALYZE range_test_5 ;
VACUUM ANALYZE range_test_6 ;