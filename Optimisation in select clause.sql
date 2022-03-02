select *
from employee e
inner join department d
on e.dno = d.dnumber
having  dname like '%Research%';

-- instead we can try this to save time

select *
from employee e
inner join department d
on e.dno = d.dnumber
having  dname like '%Research%'
limit 2;