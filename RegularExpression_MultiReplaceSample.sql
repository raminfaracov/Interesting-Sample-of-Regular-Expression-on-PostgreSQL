/****************************************************************************** 
**************** Replacing only words that start with numbers *****************
******************************************************************************/
with tbl as ( 
	select 'Clowns have taken over the world Authors Name 3h' as ptext
	union all 
	select 'My test My Test 25m My Test'  as ptext
	union all 
	select 'Test test test 32s test test'  as ptext
)
select
	REGEXP_REPLACE(ptext, '(?=[^ ]*[a-z])(?=[^ ]*[0-9])[^ ]+', '', 'g') as newtext 
from tbl

/*
Result:

newtext
---------------------------------------------------
Clowns have taken over the world Authors Name
My test My Test  My Test
Test test test  test test

*/
