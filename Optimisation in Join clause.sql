select fname, ssn, essn, dependent_name, relationship
from 
(
select fname, ssn, dno
from employee
where dno=4
) e
inner join
(
select essn, dependent_name, relationship
from dependent
where relationship = 'Spouse'
) d 
on e.ssn = d.essn;



-- instead use this

select fname, ssn, essn, dependent_name, relationship
from
(
select fname, ssn, dno
from employee
) e
inner join
(
select essn, dependent_name, relationship
from dependent
) d 
on e.ssn = d.essn and e.dno=4 and d.relationship= 'Spouse';