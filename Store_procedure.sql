DELIMITER //
CREATE PROCEDURE get_name2()
BEGIN 
	select * from employee;
    select epm_name from employee;
    select count(dept_id) from employee;
END
//
DELIMITER ;
 
 call get_name2(); 



DELIMITER || 
create procedure design_db_2()
BEGIN 
	create database ds_1_;
    
    create table emp_info_1(id int auto_increment primary key , name varchar(10),city varchar(30));
    insert into emp_info_1( name, city) values
    ("sahil", "pune"),
    ("ram", "pune"),
    ("shyam", "warje"),
    ("kiran", "mumbai"),
    ("sarthak", "pune");
    
    select * from emp_info_1;
    
     create table std_inf(id int auto_increment primary key , name varchar(10),dept varchar(30));
    insert into std_inf( name, dept) values
    ("sahil", "HR"),
    ("ram", "DA"),
    ("shyam", "JAVA"),
    ("kiran", "Pyhton"),
    ("sarthak", "Web Devlopment");
    
    select * from std_inf;
    
END
||
DELIMITER ;

call design_db_2();