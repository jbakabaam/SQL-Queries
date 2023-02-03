SELECT a.book_id, b.author_name, SUBSTR(a.published_date, 1,10) AS published_date
FROM book a
JOIN author b
ON a.author_id = b.author_id
WHERE a.category = '경제'
ORDER BY a.published_date ASC
