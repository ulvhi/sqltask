CREATE TABLE departments (
        department_id BIGSERIAL PRIMARY KEY,
        department_name VARCHAR(32));
CREATE TABLE employees (
        employee_id BIGSERIAL PRIMARY KEY,
        employee_name VARCHAR(32),
        department_id BIGSERIAL,
            FOREIGN KEY (department_id) REFERENCES departments(department_id)
                       );