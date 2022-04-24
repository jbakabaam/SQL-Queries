'''
Find whether hosts or guests give higher review scores based on their average review scores.
Output the higher of the average review score rounded to the 2nd decimal spot (e.g., 5.11).
'''

SELECT from_type,
ROUND(AVG(review_score),2) AS winner
FROM airbnb_reviews
GROUP BY from_type
ORDER BY winner DESC
LIMIT 1
;
