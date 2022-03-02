#unoptimised query
select fname, salary
from employee
where salary > 10000 and (salary/5) > 6000;

#optimised query
select fname, salary
from employee
where salary > 30000;