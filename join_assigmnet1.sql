create table Author (id int primary key , name varchar(30), b_year date  , d_year date  );
insert into Author (id, name, b_year, d_year)
values 
(1, 'William Shakespeare', '1564-04-26', '1616-04-23'),
(2, 'Jane Austen', '1775-12-16', '1817-07-18'),
(3, 'George Orwell', '1903-06-25', '1950-01-21'),
(4, 'Mark Twain', '1835-11-30', '1910-04-21'),
(5, 'Virginia Woolf', '1882-01-25', '1941-03-28'),
(6, 'Gabriel Garcia Marquez', '1927-03-06', '2014-04-17'),
(7, 'J.K. Rowling', '1965-07-31', NULL),
(8, 'Stephen King', '1947-09-21', NULL),
(9, 'George R.R. Martin', '1948-09-20', NULL),
(10, 'Haruki Murakami', '1949-01-12', NULL)
;


create table Book (id int primary key , title varchar(30),au_id int,  pub_year date  ,pub_house varchar(30));
insert into Book(id, title ,au_id, pub_year,pub_house)
values
(101, 'Hamlet', 1, '1603-01-01', 'N. Ling'),
(102, 'Pride and Prejudice', 2, '1813-01-28', 'T. Egerton'),
(103, '1984', 3, '1949-06-08', 'Secker & Warburg'),
(104, 'Animal Farm', 3, '1945-08-17', 'Secker & Warburg'),
(105, 'Adventures of Tom Sawyer', 4, '1876-06-01', 'American Publishing Co'),
(106, 'Mrs Dalloway', 5, '1925-05-14', 'Hogarth Press'),
(107, 'One Hundred Years of Solitude', 6, '1967-05-30', 'Editorial Sudamericana'),
(108, 'Harry Potter 1', 7, '1997-06-26', 'Bloomsbury'),
(109, 'The Shining', 8, '1977-01-28', 'Doubleday'),
(110, 'A Game of Thrones', 9, '1996-08-01', 'Bantam Spectra'),
(111, 'Norwegian Wood', 10, '1987-09-04', 'Kodansha');

select * from Book;
select * from Author;
select Author.id,Author.name,Book.title,Book.pub_year, Book.pub_house from Author inner join Book  where Author.id =Book.au_id;
select Author.id,Author.name,Book.title,Book.pub_year, Book.pub_house from Author left join Book  on Author.id =Book.au_id;
select Author.id,Author.name,Book.title,Book.pub_year, Book.pub_house from Author right join Book  on Author.id =Book.au_id;