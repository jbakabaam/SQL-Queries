SELECT o.animal_id, o.name
FROM animal_ins a
JOIN animal_outs o
ON a.animal_id = o.animal_id
ORDER BY (o.datetime - a.datetime) DESC
LIMIT 2
;

-- 출력하지 않는 조건으로도 정렬은 가능하다.
