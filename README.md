# Let's look at examples of "Regular Expression" on an interesting issue.

How we can sort numbers with Letters. 
For example:
We have a these 


| mytext                 |
| ---------------------- |
| EL-300-A               |
| EL-580                 |
| J-38125                |
| Nick                   |
| Nick1.0                |
| javier                 |
| test                   |
| test1                  |
| test32                 |
| test2121AgainOn4/28    |
| test12345              |
| test123467 againOn4/28 |
| test123467             |
| test123467 again       |


string data on the table. We needing sort this data using these rules: 
1) sort string letters firstly
2) if has numbers inside the string then sorting numbers as a number type principies.

Our result data will be in this format:


| mytext                 | only_letters | only_numbers |
| ---------------------- | ------------ | ------------ |
| EL-580                 | EL           | 580          |
| EL-300-A               | ELA          | 300          |
| J-38125                | J            | 38125        |
| javier                 | javier	    |              |
| Nick10                 | Nick         | 10           |
| Nick                   | Nick	        |              |
| test1                  | test         | 1            |
| test32                 | test         | 32           |
| test12345              | test         | 12345        |
| test123467             | test         | 123467       |
| test                   | test	        |              |
| test123467 again       | testagain    | 123467       |
| test123467 againOn4/28 | testagainOn  | 123467428    |
| test2121AgainOn4/28    | testAgainOn  | 2121428      |


# Multi-character difficult logic replacing using PostgreSQL `regexp_replace` function
Sample Query
https://github.com/raminfaracov/Interesting-Sample-of-Regular-Expression-on-PostgreSQL/blob/main/RegularExpression_MultiReplaceSample.sql  

