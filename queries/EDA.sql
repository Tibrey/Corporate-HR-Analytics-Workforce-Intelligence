SELECT * FROM departments;

CREATE TABLE departments_stage ( LIKE departments INCLUDING ALL);

SELECT * FROM departments_stage;
DROP TABLE departments_stage;


SELECT * FROM dept_emp;
DROP TABLE dept_emp_stage;

CREATE TABLE dept_emp_stage ( LIKE dept_emp INCLUDING ALL);

SELECT * FROM dept_emp_stage;