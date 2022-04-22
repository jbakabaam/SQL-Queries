SELECT animal_id, name,
IF(
sex_upon_intake LIKE '%Intact%', 'X', 'O'
) OP
FROM animal_ins a
;
