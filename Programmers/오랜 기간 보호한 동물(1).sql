SELECT a.name, a.datetime
FROM animal_ins a
LEFT JOIN animal_outs o
ON a.animal_id = o.animal_id
WHERE o.animal_id IS NULL
ORDER BY a.datetime
LIMIT 3
;
