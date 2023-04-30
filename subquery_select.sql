/*Nesting a subquery in the SELECT clause allows you to use the results of 
the subquery to create a new column in your data output. This type of usage 
is handy should you wish to compare different data points*/
-- know the maximum amount paid for any movie in the database
SELECT 
	title,
    rating,
    release_year,
    (SELECT
		MAX(amount)
	FROM payment) AS max_amount
FROM film