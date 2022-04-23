'''
Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments.
Output just the absolute difference in salaries.
'''

(
SELECT MAX(salary)
FROM db_employee e
JOIN db_dept d
ON e.department_id = d.id
WHERE department = 'marketing'
)
-
(
SELECT MAX(salary)
FROM db_employee e
JOIN db_dept d
ON e.department_id = d.id
WHERE department = 'engineering'
) AS answer
;
