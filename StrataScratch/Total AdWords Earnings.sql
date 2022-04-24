'''
Find the total AdWords earnings for each business type.
Output the business types along with the total earnings.
'''

SELECT business_type, SUM(adwords_earnings)
FROM google_adwords_earnings
GROUP BY 1
;
