select * from employee;

select bdate,
extract(year from bdate) as year,
extract(month from bdate) as month,
extract(day from bdate) as day
from employee;