-- Finding Duplicate Data
SELECT 
	release_year,
    language_id,
    rental_duration,
    COUNT(*)
FROM film
GROUP BY 
	release_year,
    language_id,
    rental_duration
HAVING COUNT(*) > 1;

-- Returns only unique records from the film table
SELECT DISTINCT title,
                release_year,
                language_id,
                rental_duration
FROM film;