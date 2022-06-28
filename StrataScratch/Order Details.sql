'''
Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.
'''

SELECT first_name, order_date, order_details, total_order_cost
FROM customers c
JOIN orders o
ON c.id = o.cust_id
WHERE c.first_name IN ("Jill", "Eva")
ORDER BY c.id
;
