select e.first_name,d.department_name, p.project_id, p.project_name
from {{ source("SUBQ", "projects") }} as p
join {{ source("SUBQ", "departments") }} as d on p.department_id = d.department_id
join {{source("SUBQ","employees")}} as e on e.department_id = d.department_id
