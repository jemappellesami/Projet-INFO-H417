DROP TABLE temp ;
CREATE TABLE temp(r int4range);
INSERT INTO temp (
	SELECT int4range(s, s+10)
	FROM generate_series(0,1000) AS s
	)


CREATE TABLE temp_csv(a int , b int) ;
COPY temp_csv(a, b) 
FROM '/tmp/random_ranges.csv' 
DELIMITER ',' 
CSV HEADER ;

CREATE TABLE temp4(r int4range) ;

INSERT INTO temp4 (
	SELECT int4range(a, b)
	FROM temp_csv
	)