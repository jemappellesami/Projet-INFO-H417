DROP TABLE IF EXISTS temp_csv ;
CREATE TABLE temp_csv(_from int , _to int) ;
COPY temp_csv(_from, _to) 
FROM '/tmp/random_ranges.csv' 
DELIMITER ',' 
CSV HEADER ;

DROP TABLE IF EXISTS seb1 ;
CREATE TABLE seb1(r int4range) ;

INSERT INTO seb1 ( SELECT int4range(_from, _to) FROM temp_csv ) ;


DROP TABLE IF EXISTS temp_csv ;
CREATE TABLE temp_csv(_from int , _to int) ;
COPY temp_csv(_from, _to) 
FROM '/tmp/random_ranges2.csv' 
DELIMITER ',' 
CSV HEADER ;

DROP TABLE IF EXISTS seb2 ;
CREATE TABLE seb2(r int4range) ;
INSERT INTO seb2 ( SELECT int4range(_from, _to) FROM temp_csv ) ;



SELECT * FROM seb2 ;

