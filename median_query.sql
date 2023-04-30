-- Median Subquery
SET @rowindex := -1;
 
SELECT
   AVG(d.rental_rate) as Median 
FROM
   (SELECT @rowindex:=@rowindex + 1 AS rowindex,
           film.rental_rate AS rental_rate
    FROM film
    ORDER BY film.rental_rate) AS d
WHERE
d.rowindex IN (FLOOR(@rowindex / 2), CEIL(@rowindex / 2));