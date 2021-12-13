explain analyze select *
from temp
where r && int4range(370, 3279) ;
explain analyze select *
from temp2
where r && int4range(370, 3279) ;
explain analyze select *
from seb1
where r && int4range(370, 3279) ;
explain analyze select *
from seb2
where r && int4range(370, 3279) ;
explain analyze select *
from range_test
where r && int4range(370, 3279) ;
explain analyze select *
from range_test2
where r && int4range(370, 3279) ;