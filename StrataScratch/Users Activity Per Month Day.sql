'''
Return a distribution of users activity per day of the month
'''

SELECT day(post_date) AS day, COUNT(poster)
FROM facebook_posts
GROUP BY day
;
