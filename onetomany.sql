CREATE TABLE departments (
        department_id BIGSERIAL PRIMARY KEY,
        department_name VARCHAR(35));
CREATE TABLE employees (
        employee_id BIGSERIAL PRIMARY KEY,
        employee_name VARCHAR(35),
        department_id INT,
            FOREIGN KEY (department_id) REFERENCES departments(department_id)
                       );