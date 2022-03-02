select ssn, salary,
row_number()     over (order by salary ) as 'row_number',
rank()           over (order by salary ) as 'rank',
dense_rank()     over (order by salary ) as 'dense_rank'
from employee;

-- instead use below

select ssn, salary,
row_number()     over w as 'row_number',
rank()           over w as 'rank',
dense_rank()     over w as 'dense_rank'
from employee
window w as (order by salary);