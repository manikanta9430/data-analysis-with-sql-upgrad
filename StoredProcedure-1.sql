drop procedure if exists employee_details;
delimiter $$

create procedure employee_details
(in n char(9))
begin
select *
from employee
where ssn = n;
end $$

delimiter ;

call employee_details();
call employee_details('123456789');
