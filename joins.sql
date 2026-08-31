use collage;
create table student (std_id int primary key, name varchar(30), crs_id int, city varchar(10));
insert into student values (4, "gayu ", 5, "mumbai"),
(2, " sahil ", 1, "pune"),
(3, " 'prathmesh ", 2, "mumbai");

create table course (crs_id int primary key, name varchar(30), fees int);
insert into course values (4, "data anlyst ",20000),
(2, " Java Full stack ", 250000),
(3, " Python  ", 23000);
select * from student;

select student.name,course.name, course.fees from student inner join course where student.crs_id = course.crs_id;

select student.name,course.name from student left join course on student.crs_id = course.crs_id;

select student.name,course.name from student right join course on student.crs_id = course.crs_id;

select student.name, course.name  from student left join course on student.crs_id = course.crs_id  where course.name  = "DA full stack ";

select student.name, course.name,  student.city from student left join course on student.crs_id = course.crs_id  where student.city  = "pune";

