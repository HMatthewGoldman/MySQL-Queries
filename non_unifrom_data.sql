-- Non UNiform Data
SELECT DISTINCT rating
FROM film;

-- Correct Uniformity
UPDATE film
SET rating = 'G'
WHERE rating IN ('gen',
                 'g',
                 'General');