/*This function works similar to the COUNT() function. The difference is that COUNT() returns its result as an int, whereas COUNT_BIG() returns its result as a bigint.

Therefore COUNT_BIG() could come in handy if you expect your result set to have a very large number of rows (i.e. larger than 2,147,483,647).*/


select count_big(*) from sys.tables;