-- ANS 1
SELECT a.animal_id, a.name
FROM animal_ins a
JOIN animal_outs o
ON a.animal_id = o.animal_id
WHERE SUBSTR(CONVERT(o.datetime, UNSIGNED INTEGER),1,12) - SUBSTR(CONVERT(a.datetime, UNSIGNED INTEGER),1,12) < 0
ORDER BY a.datetime
;

-- ANS 2
SELECT a.animal_id, a.name
FROM animal_ins a
JOIN animal_outs o
ON a.animal_id = o.animal_id
WHERE (o.datetime - a.datetime) < 0
ORDER BY a.datetime
;
