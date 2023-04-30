-- Missing Data
SELECT *
FROM film
WHERE length = NULL;

-- Fix missing Data
-- 1. ignore column in SELECT because it has a lot of missing values
-- 2. imputing missing values with the AVG value
		/*UPDATE tablename
		SET = AVG(col1)
		WHERE col1 IS NULL*/
