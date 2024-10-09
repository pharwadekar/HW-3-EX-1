SELECT Name FROM Students;
SELECT * FROM Students WHERE Age > 30;
SELECT Name FROM Students WHERE Gender='F' AND Age=30;
SELECT Points FROM Students WHERE Name='Alex';
INSERT INTO Students VALUES(10, 'Pranav', '18', 'M', 500);
UPDATE Students SET Points = 500 WHERE Name='Basma';
UPDATE Students SET Points = 100 WHERE Name='Alex';

CREATE TABLE graduates(
    ID INTEGER  PRIMARY KEY AUTOINCREMENT,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
DELETE FROM students WHERE Name='Layal';

SELECT employees.name, Company, date FROM employees Inner join companies ON employees.Company=companies.name;
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.name and companies.Date < 2000;
SELECT companies.name FROM companies Inner join employees ON employees.Company=companies.name and employees.Role='Graphic Designer';

SELECT Name FROM students WHERE points=(SELECT MAX(points) FROM students);
SELECT AVG(points) FROM students;
SELECT COUNT(Name) FROM students WHERE points=500;
SELECT Name FROM students WHERE Name GLOB '*s*';
SELECT Name FROM students ORDER BY points DESC;