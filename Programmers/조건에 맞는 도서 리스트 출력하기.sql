SELECT book_id, SUBSTR(published_date,1,10) AS published_date
FROM book
WHERE category = '인문'
    AND YEAR(published_date) = '2021'
ORDER BY 2 ASC
