SELECT company_name,
       (
           SUM(CASE WHEN year = '2020' THEN 1 ELSE 0 END) - 
           SUM(CASE WHEN year = '2019' THEN 1 ELSE 0 END)
       ) AS year_difference
FROM car_launches
GROUP BY company_name;
