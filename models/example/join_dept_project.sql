select d.department_name, p.project_id, p.project_name
from {{ source("SUBQ", "projects") }} as p
join {{ source("SUBQ", "departments") }} as d on p.department_id = d.department_id
