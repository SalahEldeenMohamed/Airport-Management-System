-- retrieve ALL DATA FROM EMPLOYEES.
SELECT * FROM employee;

--retrieve fname column from employee.
select  Fname FROM employee;

-- calculate TOTAL NUMBER OF EMPLOYEES.
SELECT COUNT(*) AS  NUMBER_OF_EMPLOYEES FROM employee;

SELECT Fname , Lname FROM employee 
WHERE ESSN =1002;

SELECT essn ,Fname , Lname ,salary FROM employee 
WHERE salary>60000;

SELECT fname, lname from employee 
ORDER BY salary;

-- order by desc
select pfname, plname from passenger
order by pfname DESC;

-- order by asc
select t_flight_number from trip
order by trip_date asc;

-- max min avg count sum QUERY
SELECT max(salary) as "Hihest salary", min(salary) as "Lowest salary",
AVG(salary) as "Average salary",sum(salary) as "total salary",
count(*) "no of employees"
from employee;

-- Group by query
SELECT position ,max(salary) as "Hihest salary", min(salary) as "Lowest salary",
AVG(salary) as "Average salary",sum(salary) as "total salary",
count(*) "no of employees"
from employee
GROUP BY position;

SELECT position,MAX(salary) FROM employee 
GROUP BY position
HAVING MAX(salary)>80000;

-- having query
select pfname,plname,seat_no
from passenger join ticket
on pag_pass_id = p_pass_id
where seat_no>102;

select *
from passenger join ticket
on pag_pass_id = p_pass_id


-- nested QUERY
select fname , lname ,salary from employee
WHERE salary =(SELECT max(salary) from employee);

-- nested QUERY
select fname , lname , salary  from employee
WHERE salary > (SELECT AVG(salary) from employee);

--where like QUERY
SELECT * from employee
where fname like 's%';

SELECT * from employee
where fname like '%d';

SELECT * from employee
where fname like '%a%';

SELECT * from employee
where address like '%city%';

-- DISTINCT QUERY
select DISTINCT salary from employee;

--between QUERY
SELECT * from passenger
where flight_number BETWEEN 102 and 104;
-- in query 
SELECT * from employee
where salary in (50000,60000);

select * from employee
where salary = 50000; 

-- not in query
SELECT * from employee
where salary not in (50000,60000);
-- Like QUERY
SELECT nationality from passenger
where pfname like 'j%';

SELECT  * from employee
JOIN control on cssn=essn
WHERE control.fnumber_id=1;

SELECT cssn FROM control
WHERE fnumber_id=6;

SELECT ticket_id from ticket
JOIN passenger on p_pass_id = pag_pass_id
where p_pass_id=10;

SELECT * from employee WHERE essn=1001;
SELECT * from passenger WHERE p_pass_id=2;
SELECT * from trip where t_flight_number=101;
SELECT * from plane where plane_number_id=1;
SELECT * from airline where air_name="Air France";

DELETE FROM employee WHERE essn=2000;

INSERT INTO employee (essn, fname,lname,phone,address,salary,position) VALUES 
"("+2001+",'"+fn"','"+ln+"','"+12314+"','"+eaddress+"',"+125+",'"+sadsadsa+"')";

INSERT INTO passenger (pfname, plname,pssn,p_pass_id,phone,address,nationality,flight_number) VALUES
("pfname","plname",20,"pp_pass_id","ppssn",'"+pphone+"','"+paddress+"','"+nationality+"',"+pflight_num+");

UPDATE passenger SET pfname = 'AHMED' WHERE pssn = 55;
UPDATE passenger SET plname = 'ali' WHERE p_pass_id =336;