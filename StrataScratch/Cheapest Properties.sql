'''
Find the price of the cheapest property for every city.
'''

SELECT city, min(price)
FROM airbnb_search_details
GROUP BY 1
;
