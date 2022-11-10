SELECT a.PRODUCT_CODE, (a.PRICE * SUM(b.SALES_AMOUNT)) AS SALES
FROM PRODUCT a
JOIN OFFLINE_SALE b
ON a.PRODUCT_ID = b.PRODUCT_ID
GROUP BY 1
ORDER BY 2 DESC, 1 ASC
