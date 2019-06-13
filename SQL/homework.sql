create database if not exists company1;
use company1;
create table if not exists employees (
id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
salary decimal(11,2)
);
INSERT INTO employees ( id, first_name, last_name, salary) VALUES ( null, 'Anna',
'Ivanova', 32155);
INSERT INTO employees ( id, first_name, last_name, salary) VALUES ( null, 'Alexandre',
' Vins' , 85451);
INSERT INTO employees ( id, first_name, last_name, salary) VALUES ( null,'Denis', 
'Smolov' , 56246);
INSERT INTO employees ( id, first_name, last_name, salary) VALUES ( null, 'Svetlana',
' Sorokina' , 28900);
INSERT INTO employees ( id, first_name, last_name, salary) VALUES ( null, 'Ivan',
' Smirnov' , 45000);
create table if not exists post (
id int unsigned not null auto_increment primary key,
post_name varchar(20) 
);
insert into post (id, post_name) values (null, 'Director');
insert into post (id, post_name) values (null, 'Accountant');
insert into post (id, post_name) values (null, 'Engineer');
ALTER TABLE employees ADD position_id INTEGER NOT NULL;
UPDATE employees SET position_id=1 WHERE id=2;
UPDATE employees SET position_id=2 WHERE id IN (1,4);
UPDATE employees SET position_id=3 WHERE id IN (3,5);