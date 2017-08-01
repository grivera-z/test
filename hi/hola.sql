create table Scientists (
  SSN int,
  Name Char(30) not null,
  Primary Key (SSN)
);

Create table Projects (
  Code Char(4),
  Name Char(50) not null,
  Hours int,
  Primary Key (Code)
);
	
create table AssignedTo (
  Scientist int not null,
  Project char(4) not null,
  Primary Key (Scientist, Project),
  Foreign Key (Scientist) references Scientists (SSN),
  Foreign Key (Project) references Projects (Code)
);

INSERT INTO Scientists(SSN,Name) 
  VALUES(123234877,'Michael Rogers'),
    (152934485,'Anand Manikutty'),
    (222364883, 'Carol Smith'),
    (326587417,'Joe Stevens'),
    (332154719,'Mary-Anne Foster'),	
    (332569843,'George ODonnell'),
    (546523478,'John Doe'),
    (631231482,'David Smith'),
    (654873219,'Zacary Efron'),
    (745685214,'Eric Goldsmith'),
    (845657245,'Elizabeth Doe'),
    (845657246,'Kumar Swamy');

 INSERT INTO Projects ( Code,Name,Hours)
 VALUES ('AeH1','Winds: Studying Bernoullis Principle', 156),
       ('AeH2','Aerodynamics and Bridge Design',189),
       ('AeH3','Aerodynamics and Gas Mileage', 256),
       ('AeH4','Aerodynamics and Ice Hockey', 789),
       ('AeH5','Aerodynamics of a Football', 98),
       ('AeH6','Aerodynamics of Air Hockey',89),
       ('Ast1','A Matter of Time',112),
       ('Ast2','A Puzzling Parallax', 299),
       ('Ast3','Build Your Own Telescope', 6546),
       ('Bte1','Juicy: Extracting Apple Juice with Pectinase', 321),
       ('Bte2','A Magnetic Primer Designer', 9684),
       ('Bte3','Bacterial Transformation Efficiency', 321),
       ('Che1','A Silver-Cleaning Battery', 545),
       ('Che2','A Soluble Separation Solution', 778);

 INSERT INTO AssignedTo ( Scientist, Project)
   VALUES (123234877,'AeH1'),
    (152934485,'AeH3'),
    (222364883,'Ast3'),	   
    (326587417,'Ast3'),
    (332154719,'Bte1'),
    (546523478,'Che1'),
    (631231482,'Ast3'),
    (654873219,'Che1'),
    (745685214,'AeH3'),
    (845657245,'Ast1'),
    (845657246,'Ast2'),
    (332569843,'AeH4');
    
    
INSERT INTO AssignedTo ( Scientist, Project)
   VALUES (123234877,'AeH1'),
    (152934485,'AeH3'),
    (222364883,'Ast3'),	   
    (326587417,'Ast3'),
    (332154719,'Bte1'),
    (546523478,'Che1'),
    (631231482,'Ast3'),
    (654873219,'Che1'),
    (745685214,'AeH3'),
    (845657245,'Ast1'),
    (845657246,'Ast2'),
    (332569843,'AeH4');



SELECT 
    COUNT(*)
FROM
    cran_logs_2015_01_01;

-- 9.2 the number of packages listed in this table?
SELECT 
    COUNT(DISTINCT package)
FROM
    cran_logs_2015_01_01;

-- 9.3 How many times the package "Rcpp" was downloaded?
SELECT 
    COUNT(*)
FROM
    cran_logs_2015_01_01
WHERE
    package = 'Rcpp';

-- 9.4 How many recordings are from China ("CN")?
SELECT 
    COUNT(*)
FROM
    cran_logs_2015_01_01
WHERE
    country = 'CN';

-- 9.5 Give the package name and how many times they're downloaded. Order by the 2nd column descently.
SELECT 
    package, COUNT(*)
FROM
    cran_logs_2015_01_01
GROUP BY package
ORDER BY 2 DESC;

-- 9.6 Give the package ranking (based on how many times it was downloaded) during 9AM to 11AM
select a.package, count(*) 
from 
(select * from cran_logs_2015_01_01 
	where 
		substr(time, 1, 5)<"11:00" 
        and 
        substr(time, 1, 5)>"09:00")
as a
group by a.package 
order by 2 desc;

-- 9.7 How many recordings are from China ("CN") or Japan("JP") or Singapore ("SG")?
--    Select based on a given list.
SELECT 
    COUNT(*)
FROM
    cran_logs_2015_01_01
WHERE
    country = 'CN' 
    OR country = 'JP'
	OR country = 'SG';
    
SELECT 
    COUNT(*)
FROM
    cran_logs_2015_01_01
WHERE
    country IN ('CN' , 'JP', 'SG');

Hola a todos



hello everyone
