WITH a
AS
(
    SELECT discount_rate
    FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
    WHERE car_type = '트럭'
        AND duration_type LIKE '90일%'
)
,
b
AS
(
    SELECT discount_rate
    FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
    WHERE car_type = '트럭'
        AND duration_type LIKE '30일%'
)
,
c
AS
(
    SELECT discount_rate
    FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
    WHERE car_type = '트럭'
        AND duration_type LIKE '7일%'
)

SELECT history_id ,
    Round(CASE
        WHEN (timestampdiff(day,start_date,end_date)>=90)
            THEN (timestampdiff(day,start_date,end_date)+1)*
                ((daily_fee/100)*(100-(SELECT *
                             FROM a)))
        WHEN (timestampdiff(day,start_date,end_date)>=30)
            THEN (timestampdiff(day,start_date,end_date)+1)*
            ((daily_fee/100) *(100-(SELECT *
                                   FROM b)))
        WHEN (timestampdiff(day,start_date,end_date)>=7)
            THEN (timestampdiff(day,start_date,end_date)+1)*
            ((daily_fee/100)*(100-(SELECT *
                                  FROM c)))
        ELSE (timestampdiff(day,start_date,end_date)+1)*daily_fee
    END) as Fee
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY as b
JOIN CAR_RENTAL_COMPANY_CAR as a
ON a.car_id = b.car_id
WHERE a.car_type="트럭"
ORDER BY Fee DESC, history_id DESC
