-- models/employee_department_join.sql

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.department_id,
    d.department_name
FROM {{ source('SUBQ', 'employees') }} AS e
JOIN {{ source('SUBQ', 'departments') }} AS d
  ON e.department_id = d.department_id