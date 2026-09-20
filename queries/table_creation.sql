CREATE TABLE employees (
  emp_no     INT PRIMARY KEY,
  birth_date DATE,
  first_name VARCHAR(50),
  last_name  VARCHAR(50),
  gender     CHAR(1) CHECK (gender IN ('M','F')),
  hire_date  DATE
);
 
CREATE TABLE departments (
  dept_no   CHAR(4) PRIMARY KEY,
  dept_name VARCHAR(50) NOT NULL UNIQUE
);
 
CREATE TABLE dept_emp (
  emp_no   INT REFERENCES employees(emp_no),
  dept_no  CHAR(4) REFERENCES departments(dept_no),
  from_date DATE NOT NULL,
  to_date   DATE NOT NULL,
  PRIMARY KEY (emp_no, dept_no, from_date)
);
 
CREATE TABLE dept_manager (
  emp_no   INT REFERENCES employees(emp_no),
  dept_no  CHAR(4) REFERENCES departments(dept_no),
  from_date DATE NOT NULL,
  to_date   DATE NOT NULL,
  PRIMARY KEY (emp_no, dept_no, from_date)
);
 
CREATE TABLE titles (
  emp_no   INT REFERENCES employees(emp_no),
  title    VARCHAR(50) NOT NULL,
  from_date DATE NOT NULL,
  to_date   DATE,
  PRIMARY KEY (emp_no, title, from_date)
);
 
CREATE TABLE salaries (
  emp_no   INT REFERENCES employees(emp_no),
  salary   INT NOT NULL,
  from_date DATE NOT NULL,
  to_date   DATE NOT NULL,
  PRIMARY KEY (emp_no, from_date)
);
 
CREATE INDEX idx_dept_emp_dept ON dept_emp(dept_no);
CREATE INDEX idx_salaries_emp ON salaries(emp_no);
CREATE INDEX idx_titles_emp ON titles(emp_no);
