explain analyze
select *
from date_test_1 
where r && daterange('2021-11-09', '2035-11-09') ;

explain analyze
select *
from date_test_2 
where r && daterange('2021-11-09', '2035-11-09') ;

explain analyze
select *
from date_test_3 
where r && daterange('2021-11-09', '2035-11-09') ;

explain analyze
select *
from date_test_4 
where r && daterange('2021-11-09', '2035-11-09') ;

explain analyze
select *
from date_test_5 
where r && daterange('2021-11-09', '2035-11-09') ;

explain analyze
select *
from date_test_6 
where r && daterange('2021-11-09', '2035-11-09') ;

