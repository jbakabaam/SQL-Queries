'''
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
'''

SET @number = 21;
SELECT repeat('* ', @number := @number - 1)
FROM information_schema.tables
;
