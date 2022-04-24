'''
Find the average score for grades A, B, and C.
Output the results along with the corresponding grade (ex: 'A', avg(score)).
'''

SELECT grade, AVG(score)
FROM los_angeles_restaurant_health_inspections
GROUP BY 1
;
