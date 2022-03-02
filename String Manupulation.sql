select * from recipes;

select 
recipe_name                              as orig_recipe_name, 
substring_index(recipe_name, ' ', -1)     as upd_reciper_name
from recipes;

select concat(fname, ' ',minitial,' ' , lname) as name ,ssn
from employee;