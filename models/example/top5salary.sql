SELECT *
FROM (
    SELECT *
    FROM {{ source("SUBQ", "employees") }}
    ORDER BY SALARY DESC
    LIMIT 5
) AS top_employee

