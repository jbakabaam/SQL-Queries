SELECT a.animal_id, a.animal_type, a.name
FROM animal_ins a
JOIN animal_outs o
ON a.animal_id = o.animal_id
WHERE a.sex_upon_intake != o.sex_upon_outcome
;
