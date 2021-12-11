DROP TABLE temp ;
CREATE TABLE temp(r int4range);
INSERT INTO temp (
	SELECT int4range(s, s+10)
	FROM generate_series(0,1000) AS s
	)

DROP TABLE temp_csv ;
CREATE TABLE temp_csv(a int , b int) ;
COPY temp_csv(a, b) 
FROM '/tmp/random_ranges.csv' 
DELIMITER ',' 
CSV HEADER ;

CREATE TABLE seb1(r int4range) ;

INSERT INTO seb1 (
	SELECT int4range(a, b)
	FROM temp_csv
	) ;
	
DROP TABLE temp_csv ;
CREATE TABLE temp_csv(a int , b int) ;
COPY temp_csv(a, b) 
FROM '/tmp/random_ranges2.csv' 
DELIMITER ',' 
CSV HEADER ;


CREATE TABLE seb2(r int4range) ;
INSERT INTO seb2 (
	SELECT int4range(a, b)
	FROM temp_csv
	) ;
