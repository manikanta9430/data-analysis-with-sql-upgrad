create function hello (s char(30) )
returns char(50) deterministic
return concat('Hello, ',s,' !');

select hello('Mani') as Welcome;
 
