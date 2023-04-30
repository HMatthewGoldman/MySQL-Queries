/*use a subquery in the FROM clause when you want to analyze the results of a complex query*/
-- how many films are rated G, PG, or PG-13, and how many films are less than 100-minutes long. What's more, they want to see the results grouped by rating.


SELECT shortmovies.rating, COUNT(shortmovies.film_id) AS short_movie_count
FROM 
	(SELECT film_id, rating
	FROM film
	WHERE length < 100) AS shortmovies
GROUP BY shortmovies.rating
