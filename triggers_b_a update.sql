-- create table student_cls(id int primary key auto_increment, class int ,name varchar(30), email varchar(30));
-- create table students_log(user varchar(30),description varchar(300));

-- insert into student_cls(class, name, email)
-- values(10, 'Rahul Sharma', 'rahul.sharma@email.com'),
-- (10, 'Priya Patel', 'priya.patel@email.com'),
-- (11, 'Amit Verma', 'amit.verma@email.com'),
-- (11, 'Ananya Iyer', 'ananya.iyer@email.com'),
-- (12, 'Rohan Das', 'rohan.das@email.com');
-- select * from student_cls;
-- select * from students_log;
--  delimiter ||employees
-- create trigger after_update_std 
-- after update 
-- on student_cls for each row 
-- begin
-- 	insert into students_log(user, description) 
--     values (user(),concat("previous class :", old.class," curent class ", new.class));

-- end ||
-- delimiter ; 
-- update student_cls set class = class+1;


-- -------------------------------------------------------------------------------------------------------------------
--       Empolyee After Update

-- select * from emp_log;
--  create table emp_log(id int primary key auto_increment, name varchar(40), prevous_sal int , new_sal int);
--  
-- delimiter ||
-- create trigger after_update_emp 
-- after update 
-- on emp for each row 
-- begin
-- 	insert into emp_log(name, prevous_sal, new_sal) 
--     values (old.name, old.salary,new.salary);

-- end ||
-- delimiter ; 

-- update emp set salary = 65000 where id = 1;

--  ------------------------------------------------------------------------------------
--   before update 



select * from emp;

 
delimiter ||
create trigger before_update_emp 
before update 
on emp for each row 
begin
	declare error_msg varchar(250);
    set error_msg ="salary of employee is less than twice of this old salary" ;
	if new.salary > 2 * old.salary
    then
    signal sqlstate '45000'
    set message_text = error_msg ;
	end if ;
end ||
delimiter ; 
update emp set salary = 9999 where id = 2;