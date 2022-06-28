'''
Find departments with at more than or equal 5 employees.
'''

SELECT department
FROM employee
GROUP BY department
HAVING COUNT(1) >= 5
;
