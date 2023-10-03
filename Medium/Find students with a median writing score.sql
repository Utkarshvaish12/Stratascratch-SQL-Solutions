WITH M AS (
  SELECT MAX(Row_Num) AS mr
  FROM (
    SELECT ROW_NUMBER() OVER (ORDER BY sat_writing) AS Row_Num
    FROM sat_scores
  ) AS RankedData
),
RankedData AS (
  SELECT
    ROW_NUMBER() OVER (ORDER BY sat_writing) AS Row_Num,
    sat_writing
  FROM sat_scores
)

select student_id
from sat_scores
where sat_writing=(
SELECT
 Round( CASE
    WHEN M.mr % 2 = 0 THEN
      (SELECT AVG(sat_writing)
       FROM RankedData
       WHERE Row_Num IN (M.mr / 2, M.mr / 2 + 1))
    WHEN M.mr % 2 != 0 THEN
      (SELECT sat_writing
       FROM RankedData
       WHERE Row_Num = (M.mr + 1) / 2)
  END ,4) AS median
FROM RankedData,M
LIMIT 1);

/*
with t1 as(
select *, ROW_NUMBER() OVER(order by sat_writing) as roww from sat_scores
)
select student_id from t1
WHERE sat_writing = (select sat_writing from t1
where roww = (SELECT ROUND(COUNT(*)/2) FROM t1))
*/