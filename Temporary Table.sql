CREATE TEMPORARY TABLE first_pageview_seen
SELECT
		website_session_id,
        MIN(website_pageview_id) AS first_pv_id
	FROM website_pageviews
    WHERE created_at BETWEEN '2014-01-01' AND '2014-04-01'
    GROUP BY website_session_id;
    
SELECT
	first_pageview_seen.website_session_id,
    website_pageviews.pageview_url AS landing_page
FROM first_pageview_seen
LEFT JOIN website_pageviews
	ON website_pageviews.website_pageview_id = first_pageview_seen.first_pv_id