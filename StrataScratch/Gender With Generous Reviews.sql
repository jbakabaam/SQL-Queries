'''
Write a query to find which gender gives a higher average review score when writing reviews as guests.
Use the `from_type` column to identify guest reviews.
Output the gender and their average review score.
'''

SELECT gender, AVG(review_score)
FROM airbnb_reviews r
JOIN airbnb_guests g
ON r.from_user = g.guest_id
WHERE from_type = 'guest'
GROUP BY 1
LIMIT 1
;
