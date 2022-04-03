with tbl as ( 
	select 'Clowns have taken over the world    Authors Name   3h' as ptext
	union all 
	select 'My test My Test 25m'  as ptext
	union all 
	select 'test test test 32s test test'  as ptext
)
select
	ptext, 
	REGEXP_REPLACE(ptext, '(?=[^ ]*[a-z])(?=[^ ]*[0-9])[^ ]+', '', 'g') as newtext 
from tbl
-- Result: 

ptext														newtext
---------------------------------------------------------------------------------------------------------------
Clowns have taken over the world    Authors Name   3h		Clowns have taken over the world    Authors Name   
My test My Test 25m											My test My Test 
test test test 32s test test								test test test  test test



