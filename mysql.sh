sudo apt install MariaDB-server
sudo -s

mysql -u root -p
admin@123

CREATE DATABASE ditiss;

use ditiss;
create table students(
id int,
name char(20),
marks double);

show tables;
insert into students values (1, 'Nitin', 98.00);
insert into students values (2, 'Akshya', 99.00);
insert into students values (3, 'Abhay', 99.89);
select * from students;
