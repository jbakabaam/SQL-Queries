'''
Find the most common grade earned by bakeries.
'''

SELECT grade
FROM los_angeles_restaurant_health_inspections
WHERE facility_name LIKE '%bakery%'
GROUP BY grade
ORDER BY COUNT(grade) DESC LIMIT 1
;
