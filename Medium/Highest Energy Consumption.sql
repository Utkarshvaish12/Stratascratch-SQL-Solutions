WITH cte AS (
  SELECT * FROM fb_eu_energy
  UNION ALL
  SELECT * FROM fb_asia_energy
  UNION ALL
  SELECT * FROM fb_na_energy
),
a1 AS (
  SELECT SUM(cte.consumption) AS s
  FROM cte
  GROUP BY cte.date
)

SELECT cte.date, SUM(cte.consumption) AS consumption1
FROM cte
GROUP BY cte.date
having consumption1 = (SELECT MAX(s) FROM a1);