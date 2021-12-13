explain analyze select count(*)
from range_test_1 as t1, range_test_2 as t2
where t1.r && t2.r ;
explain analyze select count(*)
from range_test_2 as t1, range_test_3 as t2
where t1.r && t2.r ;
explain analyze select count(*)
from range_test_3 as t1, range_test_4 as t2
where t1.r && t2.r ;
explain analyze select count(*)
from range_test_3 as t1, range_test_2 as t2
where t1.r && t2.r ;
explain analyze select count(*)
from range_test_1 as t1, range_test_3 as t2
where t1.r && t2.r ;
explain analyze select count(*)
from range_test_1 as t1, range_test_4 as t2
where t1.r && t2.r ;
