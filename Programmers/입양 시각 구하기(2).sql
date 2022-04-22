SET @hour := -1; -- 초기 변수값 선언, 0시부터 23시까지임으로 -1부터 시작.

SELECT (@hour := @hour+1) HOUR
,(SELECT COUNT(*)
FROM animal_outs
WHERE HOUR(datetime) = @hour) count -- HOUR 함수는 시간만 반환시켜준다.
FROM animal_outs
WHERE @hour < 23 -- @hour 값이 22+1, 즉 23까지 만들어진다.
;
