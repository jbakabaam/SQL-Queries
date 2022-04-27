'''
We define an employee\'s total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings.
Then print these values as  space-separated integers.

where employee_id is an employee\'s ID number, name is their name, months is the total number of months they\'ve been working for the company, and salary is the their monthly salary.

The maximum earnings value is Kimberly. The only employee with earnings is Kimberly, so we print the maximum earnings value () and a count of the number of employees who have earned  (which is ) as two space-separated values.
'''

SELECT salarymonths AS earnings, COUNT(*)
FROM employee
GROUP BY 1
ORDER BY earnings DESC
LIMIT 1
;
