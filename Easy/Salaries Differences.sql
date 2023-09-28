SELECT ABS(
    MAX(CASE WHEN d.department = 'marketing' THEN e.salary ELSE 0 END) -
    MAX(CASE WHEN d.department = 'engineering' THEN e.salary ELSE 0 END)
) 
FROM db_employee AS e
JOIN db_dept AS d ON d.id = e.department_id;
