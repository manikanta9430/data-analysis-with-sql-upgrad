use companydb;
select * from employee;
describe employee;
alter table employee add des varchar(40) default 'Panodu';

update employee set des='sarele' where ssn='123456789';

alter table employee drop column des ;

alter table employee modify salary float(10,4)  null;

alter table employee change minit minitial char(1);

create table recipes (recipe_id int not null, recipe_name varchar(30) not null, nothing int not null,primary key (recipe_name),unique(recipe_id));

insert into recipes values(1,"Tacos",4),(2,"Tomato Soup",5),(3,"Grilled Cheese",4),(4,"Somehting Good",6),(5,"Biryani",3),(6,"Pizza",5);

desc recipes;
alter table recipes drop primary key;
alter table recipes add primary key (recipe_id);
alter table recipes add unique(recipe_name);

alter table employee drop foreign key fk_super_ssn;
alter table employee add constraint fk_super_ssn foreign key (super_ssn) references employee(ssn);



















