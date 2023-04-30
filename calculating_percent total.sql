-- calculating percent total
SELECT 
	pageview_url,
    COUNT(DISTINCT website_session_id) AS views,
	(COUNT(DISTINCT website_session_id) / (SELECT COUNT(website_session_id) FROM website_pageviews)) * 100 AS percent_total
FROM website_pageviews
GROUP BY pageview_url
ORDER BY views DESC

