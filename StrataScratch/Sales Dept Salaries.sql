'''
Find employees in the Sales department who achieved a target greater than 150.
Output first names of employees.
Sort records by the first name in descending order.
'''

SELECT first_name
FROM employee
WHERE department = 'Sales'
AND target > 150
ORDER BY 1 DESC
;
