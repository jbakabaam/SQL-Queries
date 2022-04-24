'''
Find the average number of beds in each neighborhood that has at least 3 beds in total.
Output results along with the neighborhood name and sort the results based on the number of average beds in descending order.
'''

WITH a
AS (
SELECT neighbourhood, SUM(beds)
FROM airbnb_search_details
GROUP BY 1
HAVING SUM(beds) >= 3
)

SELECT a.neighbourhood, AVG(asd.beds)
FROM a
LEFT JOIN airbnb_search_details AS asd
ON (a.neighbourhood = asd.neighbourhood)
OR (a.neighbourhood IS NULL AND asd.neighbourhood IS NULL)
GROUP BY 1
ORDER BY 2 DESC
;
