-- exercise :1
create table student(id int primary key auto_increment, std_name varchar(40),course varchar(50),fees int);

insert into student(std_name,course,fees)
values
("ANIL","GEN AI",550000),
("ANIKET","FULL STACK",200000);
create table student_log(log_id int primary key auto_increment, std_id int ,student_name varchar(40),action varchar(50),log_date datetime);
delimiter ||
create trigger after_insert_student after insert on student for each row 
begin
insert into student_log(std_id,student_name, action,log_date)values(new.id, new.std_name," he takes addmission at",now());
end ||
delimiter 
select * from student_log

--
-- ----------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------

-- another trigger after insert 

create table members(id int primary key auto_increment,name varchar(20), birthday date );
create table reminder(id int primary key auto_increment  ,member_id int , message varchar(300) );
insert into members(name ,birthday) values ("ram",null);

delimiter ||
create trigger after_insert after insert on members  for each row
begin 
	if new.birthday is null
    then
		insert into reminder(member_id,message)values(new.id , concat("Hlw", new.name , " update your birth date "));
	end if ;

end ||
delimiter 
select * from reminder;
drop trigger after_insert