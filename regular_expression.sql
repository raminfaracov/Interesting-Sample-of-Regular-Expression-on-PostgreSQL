-- create table 
CREATE TABLE sample_table (
	id serial4 NOT NULL,
	mytext text NULL,
	CONSTRAINT sample_table_pk PRIMARY KEY (id)
);


-- insert sample data 
INSERT INTO sample_table (mytext) VALUES('EL-300-A');
INSERT INTO sample_table (mytext) VALUES('EL-580');
INSERT INTO sample_table (mytext) VALUES('J-38125');
INSERT INTO sample_table (mytext) VALUES('Nick');
INSERT INTO sample_table (mytext) VALUES('javier');
INSERT INTO sample_table (mytext) VALUES('test');
INSERT INTO sample_table (mytext) VALUES('test1');
INSERT INTO sample_table (mytext) VALUES('test32');
INSERT INTO sample_table (mytext) VALUES('test2121AgainOn4/28');
INSERT INTO sample_table (mytext) VALUES('test12345');
INSERT INTO sample_table (mytext) VALUES('test123467 againOn4/28');
INSERT INTO sample_table (mytext) VALUES('test123467');
INSERT INTO sample_table (mytext) VALUES('test123467 again');
INSERT INTO sample_table (mytext) VALUES('Nick10');



-- Query example using one of regular_expression "regexp_replace" function
select 
	main.mytext, 
	main.letters as only_letters, 
	(case when main.numbers = '' then null else main.numbers end)::integer as only_numbers 
from (
	select 
	    mytext, 
	    regexp_replace(mytext, '[\ \/\-\d]',  '', 'g') as letters, 
	    regexp_replace(mytext, '[^\.\d]', '', 'g') as numbers 
	from sample_table
) main 
order by only_letters, only_numbers;

