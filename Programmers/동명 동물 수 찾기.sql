SELECT name, COUNT(name)
FROM animal_ins a
GROUP BY name
HAVING COUNT(name) > 1
ORDER BY name
;
