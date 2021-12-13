explain analyze
select *
from range_test_1 
where r && int4range(999, 1000) ;

explain analyze
select *
from range_test_2 
where r && int4range(999, 1000) ;

explain analyze
select *
from range_test_3 
where r && int4range(999, 1000) ;

explain analyze
select *
from range_test_4 
where r && int4range(999, 1000) ;

explain analyze
select *
from range_test_5 
where r && int4range(999, 1000) ;

explain analyze
select *
from range_test_6 
where r && int4range(999, 1000) ;

