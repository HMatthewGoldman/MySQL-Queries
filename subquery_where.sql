/* Placing a subquery in the WHERE clause lets you filter the results of your outer 
statement based on the results of your inner statement, which can be very useful when 
working with data that's constantly changing.*/
-- find movies whose rental rate is lower than the average payment made.

SELECT
	title,
    rating,
    release_year,
    rental_rate
FROM film
WHERE rental_rate <
	(SELECT ROUND(AVG(amount),2)
	FROM payment)
;