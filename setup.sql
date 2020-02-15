DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
	name TEXT NOT NULL,
	id uuid PRIMARY KEY
);
CREATE TABLE users(
	name TEXT NOT NULL UNIQUE,
	id uuid PRIMARY KEY,
	department_id uuid REFERENCES departments(id)
);

INSERT INTO departments(name, id) VALUES 
	('Accounting', '885ebab2-8a00-4f3a-863e-f0f921253acc');
INSERT INTO departments(name, id) VALUES 
	('Human Resources', '480f548b-69c9-4204-8bed-d1d82a70d3b1');
INSERT INTO departments(name, id) VALUES 
	('Sales', 'c6d6c162-e174-482f-8add-e14f1f5e5aca');
INSERT INTO departments(name, id) VALUES 
	('Administration', '407d2220-abec-4b9c-a61d-5ab0dbdc837c');
INSERT INTO departments(name, id) VALUES 
	('Shipping', 'fced5bf3-8ff2-4ca3-a424-1ad78f39070d');

INSERT INTO users(name, id, department_id) VALUES
	('Angela Martin', 'd8f43236-b1a0-479c-ba38-bf7b90332e80', '885ebab2-8a00-4f3a-863e-f0f921253acc');
INSERT INTO users(name, id, department_id) VALUES
	('Dwight Schrute', '3b404cae-891d-4c42-ad4e-d0ac65cc3410', 'c6d6c162-e174-482f-8add-e14f1f5e5aca');
INSERT INTO users(name, id, department_id) VALUES
	('Toby Flenderson', '30a9a5bf-7522-47f0-862e-f2d2e7032121', '480f548b-69c9-4204-8bed-d1d82a70d3b1');	
INSERT INTO users(name, id, department_id) VALUES
	('Pam Beasley', 'df8abadf-0b5a-46f0-8db8-5901365fbd4b', '407d2220-abec-4b9c-a61d-5ab0dbdc837c');
INSERT INTO users(name, id, department_id) VALUES
	('Darryl Philbin', 'e537e479-41e5-4dca-afa4-fa3b8eb73a0b', 'fced5bf3-8ff2-4ca3-a424-1ad78f39070d');
INSERT INTO users(name, id, department_id) VALUES
	('Agla Mrtn', 'd8f43236-b1a0-479c-ba38-bf7b93332e80', '885ebab2-8a00-4f3a-863e-f0f921253acc');
INSERT INTO users(name, id, department_id) VALUES
	('Indo Barbo', 'd8f43236-b1a0-479a-ba38-bf7b90332e40', '885ebab2-8a00-4f3a-863e-f0f921253acc');
INSERT INTO users(name, id, department_id) VALUES
	('Long Chen', 'd8f43236-b1a0-479a-ba38-cbf490332e80', '885ebab2-8a00-4f3a-863e-f0f921253acc');
INSERT INTO users(name, id) VALUES
	('Keiko Matsuoka', 'd8f43236-b1a0-479a-ba38-bcf7b9332e80');
	

SELECT * FROM departments
JOIN users
ON users.department_id = departments.id;

SELECT users.name AS "Employee", departments.name AS "Department" FROM departments
LEFT JOIN users
ON users.department_id = departments.id;

SELECT users.name AS "Employee", departments.name AS "Department" FROM departments
RIGHT JOIN users
ON users.department_id = departments.id;