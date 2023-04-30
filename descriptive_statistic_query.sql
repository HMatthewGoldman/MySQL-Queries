SELECT MIN(rental_rate) AS min_rent,
       MAX(rental_rate) AS max_rent,
       ROUND(AVG(rental_rate),2) AS avg_rent,
       COUNT(rental_rate) AS count_rent_values,
       COUNT(*) AS count_rows
FROM film;

-- Mode query
SELECT
rating,
COUNT(*) as count
FROM film
Group by rating
ORDER BY COUNT(*) DESC
LIMIT 1;