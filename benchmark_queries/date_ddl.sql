DROP TABLE IF EXISTS date_test_1 ;
CREATE TABLE date_test_1 as (
	SELECT daterange(lb::date, (lb + len)::date) AS r 
	FROM (SELECT (NOW() + (random() * (NOW()+'3000 days' - NOW())))::date as lb,
		  (random() * ('6000 days'::INTERVAL))::INTERVAL as len 
		  FROM generate_series(1,1000)) x);	

DROP TABLE IF EXISTS date_test_2 ;
CREATE TABLE date_test_2 as (
	SELECT daterange(lb::date, (lb + len)::date) AS r 
	FROM (SELECT (NOW() + (random() * (NOW()+'3000 days' - NOW())))::date as lb,
		  (random() * ('6000 days'::INTERVAL))::INTERVAL as len 
		  FROM generate_series(1,2500)) x);	

DROP TABLE IF EXISTS date_test_3 ;
CREATE TABLE date_test_3 as (
	SELECT daterange(lb::date, (lb + len)::date) AS r 
	FROM (SELECT (NOW() + (random() * (NOW()+'3000 days' - NOW())))::date as lb,
		  (random() * ('6000 days'::INTERVAL))::INTERVAL as len 
		  FROM generate_series(1,5000)) x);	

DROP TABLE IF EXISTS date_test_4 ;
CREATE TABLE date_test_4 as (
	SELECT daterange(lb::date, (lb + len)::date) AS r 
	FROM (SELECT (NOW() + (random() * (NOW()+'3000 days' - NOW())))::date as lb,
		  (random() * ('6000 days'::INTERVAL))::INTERVAL as len 
		  FROM generate_series(1,10000)) x);


DROP TABLE IF EXISTS date_test_5 ;
CREATE TABLE date_test_5 as (
	SELECT daterange(lb::date, (lb + len)::date) AS r 
	FROM (SELECT (NOW() + (random() * (NOW()+'3000 days' - NOW())))::date as lb,
	
		  (random() * ('6000 days'::INTERVAL))::INTERVAL as len 
		  FROM generate_series(1,25000)) x);	
          
DROP TABLE IF EXISTS date_test_6 ;
CREATE TABLE date_test_6 as (
	SELECT daterange(lb::date, (lb + len)::date) AS r 
	FROM (SELECT (NOW() + (random() * (NOW()+'3000 days' - NOW())))::date as lb,
	
		  (random() * ('6000 days'::INTERVAL))::INTERVAL as len 
		  FROM generate_series(1,50000)) x);	

VACUUM ANALYZE date_test_1 ;
VACUUM ANALYZE date_test_2 ;
VACUUM ANALYZE date_test_3 ;
VACUUM ANALYZE date_test_4 ;
VACUUM ANALYZE date_test_5 ;
VACUUM ANALYZE date_test_6 ;