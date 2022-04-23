We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information.
Find the current salary of each employee assuming that salaries increase each year.
Output their id, first name, last name, department ID, and current salary.
Order your list by employee ID in ascending order.

SELECT id, first_name, last_name, department_id, max(salary)
FROM ms_employee_salary m
GROUP BY 1,2,3,4
ORDER BY 1
;
