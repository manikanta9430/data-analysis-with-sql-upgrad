drop function if exists project_pay_calc;
select * from works_on;

DELIMITER $$

create function project_pay_calc( pno int, num_of_hours float(4,2))
returns float(8,2)
deterministic
begin
  declare project_pay_per_hour float(8,2);
  if (pno > 0 and pno <=5 ) then
    set project_pay_per_hour = 1000;
  elseif (pno > 5 and pno <= 10) then
    set project_pay_per_hour = 2000;
  else
   set project_pay_per_hour = 3000;
end if;
return (project_pay_per_hour * num_of_hours);
end
$$  

DELIMITER ;


select essn, pno, hours,

project_pay_calc(pno, hours) as total_project_pay

from works_on;