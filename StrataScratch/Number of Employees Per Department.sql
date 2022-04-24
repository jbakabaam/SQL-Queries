'''
Find the number of employees in each department.
Output the department name along with the corresponding number of employees.
Sort records based on the number of employees in descending order.
'''

SELECT department, count(id)
FROM employee
GROUP BY 1
;
