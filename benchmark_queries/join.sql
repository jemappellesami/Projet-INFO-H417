explain analyze select count(*)
from seb1 as t1, seb2 as t2
where t1.r && t2.r ;

explain analyze select count(*)
from seb1 as t1, temp as t2
where t1.r && t2.r ;

explain analyze select count(*)
from seb1 as t1, range_test as t2
where t1.r && t2.r ;

explain analyze select count(*)
from range_test as t1, seb2 as t2
where t1.r && t2.r ;

explain analyze select count(*)
from range_test as t1, temp2 as t2
where t1.r && t2.r ;

explain analyze select count(*)
from range_test as t1, temp as t2
where t1.r && t2.r ;

explain analyze select count(*)
from temp as t1, seb2 as t2
where t1.r && t2.r ;
