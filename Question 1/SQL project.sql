show databases;
          -- create a database name is company 
create database company;
use company;
show tables;
         -- craete a table name as employee 
CREATE TABLE employee (
    empno INT,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr VARCHAR(50),
    hiredate DATE,
    sal DECIMAL(10,2),
    comm DECIMAL(10,2),
    depto INT
);

        -- insertinng a values of each column
insert into employee (empno,ename,job,mgr,hiredate,sal,comm,depto) values(8369,'smith','Clert','8902','1990-12-18',800.0,null,20);
insert into employee (empno,ename,job,mgr,hiredate,sal,comm,depto) values(8499,'Anya','Salesman',8698,'1991-02-20',1600.0,300.0,30),
(8521,'Seth','Salesman',8698,'1991-02-22',1600.0,300.0,30),
(8522,'Mahadevan','Manager',8839,'1991-04-02',2985.00,null,20),
(8654,'MOMIN','SALESMAN',8698,'1991-09-28',1250.00,1400.00,30),
(8698,'ΒΙΝΑ','MANAGER',8839,'1991-05-01',2850.00,null,30),
(8882,'SHIVANSH','MANAGER',8839,'1991-06-09',2450.00,null,10),
(8888,'SCOTT','ANALYST',8566,'1992-12-09',3000.0,null,20),
(8839,'AMIR','PRESIDENT',null,'1991-11-18',5000.00,null,10),
(8844,'KULDEEP','SALESMAN',8698,'1991-09-08',1500.0,0.00,30);

select * from employee;

insert into employee (empno,ename,job,mgr,hiredate,sal,comm,depto) values (8521,'Seth','Salesman',8698,'1991-02-22',1600.0,300.0,30);
select * from employee;

UPDATE employee 
SET comm = NULL
WHERE empno = 8499;
select * from employee;

select * from employee;

-- query number 1
SELECT ename, sal
FROM employee
WHERE sal >= 2200;

 -- query number 2
SELECT *
FROM employee
WHERE comm IS NULL;

-- query number 3
select * from employee where sal<2500 or sal>4000;

-- query number 4
select ename,job,sal from employee where mgr is null;

-- query number 5
SELECT ename
FROM employee
WHERE ename LIKE '__A%';


-- query number 6
SELECT ename
FROM employee
WHERE ename LIKE '%T';