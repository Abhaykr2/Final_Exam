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


question
use ditiss;
CREATE TABLE worker (
    worker_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10,2),
    department VARCHAR(100)
);

INSERT INTO worker (worker_id, first_name, last_name, salary, department) VALUES
(1, 'Amit',   'Sharma',   50000.00, 'IT'),
(2, 'Pooja',  'Verma',    60000.00, 'HR'),
(3, 'Raj',    'Malhotra', 55000.00, 'Finance'),
(4, 'Neha',   'Singh',    58000.00, 'IT'),
(5, 'Ravi',   'Kumar',    45000.00, 'Marketing'),
(6, 'Sneha',  'Gupta',    62000.00, 'HR'),
(7, 'Arjun',  'Mehta',    53000.00, 'Finance'),
(8, 'Simran', 'Patel',    47000.00, 'Marketing');
sql query to print details of salry lies btwn 55000 to 60000
SELECT * FROM worker
WHERE salary BETWEEN 55000 AND 60000;
sql query to fetch count emply working on department hr
SELECT COUNT(*) AS hr_employee_count
FROM worker
WHERE department = 'HR';

write sql table print details for workers with first name as pooja and simran
SELECT * FROM worker
WHERE first_name IN ('Pooja', 'Simran');

USE company;
DESC worker;
SHOW CREATE TABLE worker\G









