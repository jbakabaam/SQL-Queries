'''
Find the total cost of each customer\'s orders.
Output customer\'s id, first name, and the total order cost.
Order records by customer\'s first name alphabetically.
'''

SELECT c.id, c.first_name, sum(o.total_order_cost)
FROM customers c
JOIN orders o
ON c.id = o.cust_id
GROUP BY 1,2
ORDER BY 2
;
