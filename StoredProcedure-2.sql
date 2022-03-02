delimiter $$

create procedure employee_salary (
in n char(9),
out annual_salary float(10, 2),
out all_project_pay float(8,2))

begin
 -- Query annual salary
select salary into annual_salary
from employee
where ssn = n;

 -- Query project_pay
select
sum(per_project_pay) into all_project_pay
from(
select essn, project_pay_calc(pno, hours) as per_project_pay
from works_on
where essn = n
) 
a;
end $$
delimiter ;


call employee_salary ('123456789', @annual_salary, @all_project_pay);

select @annual_salary, @all_project_pay;
