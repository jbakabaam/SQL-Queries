'''
Find employees that are not referred by the manager id 1.
Output the first name of the employee.
'''

SELECT first_name
FROM employee
WHERE manager_id != 1
;
