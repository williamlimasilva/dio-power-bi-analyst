use company_constraints;
show tables;

SELECT 
    *
FROM
    employee e;-- Dno
    
SELECT 
    *
FROM
    department d;-- Dnumber

SELECT 
    Dno, Ssn
FROM
    employee e
        INNER JOIN
    department d ON Dno = Dnumber;


-- Frequência e Categorização dos dados

SELECT 
    Dname, Dno, COUNT(*) AS Employees
FROM
    employee e
        INNER JOIN
    department d ON Dno = Dnumber
GROUP BY 1
ORDER BY Employees ASC;

-- Projetos por departamento
SELECT 
    Pname, Dnum
FROM
    project p
        INNER JOIN
    department d ON Dnum = Dnumber;

SELECT 
    Dnum, COUNT(*) AS Projects
FROM
    project p
        INNER JOIN
    departament d ON Dnum = Dnumber
GROUP BY 1
ORDER BY Projects ASC;
		
SELECT 
    d.Dname, Dnum, COUNT(*) AS Projects
FROM
    project p
        INNER JOIN
    department d ON Dnum = Dnumber
GROUP BY 1;

show tables;

SELECT 
    *
FROM
    employee e; -- Dno
SELECT 
    *
FROM
    department d; -- Dnumber

SELECT 
    Dno, Ssn
FROM
    employee e
        INNER JOIN
    department d ON Dno = Dnumber; 


-- Frequência e Categorização dos dados

-- Categorizar os departamentos por número de colaboradores
SELECT 
    Dname, Dno, COUNT(*) AS Employees
FROM
    employee e
        INNER JOIN
    department d ON Dno = Dnumber
GROUP BY 1
ORDER BY Employees ASC; 

-- Projetos por departamento
SELECT 
    Pname, Dnum
FROM
    project p
        INNER JOIN
    department d ON Dnum = Dnumber;

SELECT 
    Dnum, COUNT(*) AS Projects
FROM
    project p
        INNER JOIN
    department d ON Dnum = Dnumber
GROUP BY 1
ORDER BY Projects ASC;
		
SELECT 
    d.Dname, Dnum, COUNT(*) AS Projects
FROM
    project p
        INNER JOIN
    department d ON Dnum = Dnumber
GROUP BY 1
ORDER BY Projects ASC;
	
select * from employee e ;


-- Discretização
SELECT 
    concat(Fname,' ', Lname) as Employee, Salary,
    CASE
        WHEN Salary > 39000 THEN 'Executivo'
        WHEN Salary > 29000 THEN 'Senior'
        WHEN Salary > 19000 THEN 'Pleno'
        ELSE 'NA'
    END AS Employee_level
FROM
    employee e
ORDER BY 3;


-- exemplo de NPS
/*SELECT 
    reponse_id,
    CASE
        WHEN nps <= 6 THEN 'Detrator'
        WHEN nps <= 8 THEN 'Passivo'
        ELSE 'Promoter'
    END AS NPS
FROM
    table_name e
ORDER BY NPS;*/


-- Padronização

SELECT 
    Fname,
    CASE
        WHEN Sex = 'M' THEN 'Masculino'
        WHEN Sex = 'F' THEN 'Feminino'
        ELSE Sex
    END AS Gender
FROM
    employee e;



  SELECT 
    Fname,
    Sex,
    CASE
        WHEN Sex = 'm' THEN 'M'
        WHEN Sex = 'f' THEN 'F'
        ELSE Sex
    END AS Gender    
 FROM employee
 ORDER BY 1;

	
select * from employee e ;


-- Discretização
SELECT 
    Fname,
    CASE
        WHEN Salary > 39000 THEN 'Executivo'
        WHEN Salary > 29000 THEN 'Senior'
        WHEN Salary > 19000 THEN 'Pleno'
        ELSE 'NA'
    END AS Employee_level
FROM
    employee e
ORDER BY Employee_level;


-- exemplo de NPS

/*SELECT 
    reponse_id,
    CASE
        WHEN nps <= 6 THEN 'Detrator'
        WHEN nps <= 8 THEN 'Passivo'
        ELSE 'Promoter'
    END AS NPS
FROM
    table_name e
ORDER BY NPS;*/


-- Padronização

SELECT 
    Fname,
    CASE
        WHEN Sex = 'M' THEN 'Masculino'
        WHEN Sex = 'F' THEN 'Feminino'
        ELSE Sex
    END AS Gender
FROM
    employee e;


  SELECT 
    Fname,
    Sex,
    CASE
        WHEN Sex = 'M' THEN 'Male'
        WHEN Sex = 'F' THEN 'Female'
        ELSE Sex
    END AS Gender
FROM
    employee e;