'''
Count the number of unique facilities per municipality zip code along with the number of inspections.
Output the result along with the number of inspections per each municipality zip code.
Sort the result based on the number of inspections in descending order.
'''

SELECT
	facility_zip,
	count(distinct facility_id) AS no_facilities,
	count(*) AS no_inspections
FROM
	los_angeles_restaurant_health_inspections
GROUP BY
	facility_zip
ORDER BY
	no_inspections DESC
;
