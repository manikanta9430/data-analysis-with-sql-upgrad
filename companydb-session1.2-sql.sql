create table emp as
select fname, minitial, lname, ssn, bdate
from employee;


create table e2 as
select concat(fname, minitial, lname) as 'Name' , ssn, bdate
from emp;


create table e3 as
select name  as `Full Name`, bdate as `Birth Date`, ssn as `Select`
from e2;

# dropping primary key
alter table recipes
drop primary key;

#adding primary key
alter table recipes
add primary key (recipe_id);