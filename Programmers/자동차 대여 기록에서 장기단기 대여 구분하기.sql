SELECT history_id, car_id,
date_format(start_date,'%Y-%m-%d') as start_date,
date_format(end_date,'%Y-%m-%d') as end_date,
IF(datediff(end_date,start_date)+1>=30,"장기 대여","단기 대여") as RENT_TYPE
FROM car_rental_company_rental_history
WHERE start_date LIKE '2022-09%'
ORDER BY 1 DESC
