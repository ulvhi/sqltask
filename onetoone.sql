CREATE TABLE customers (
        customer_id BIGSERIAL PRIMARY KEY,
        name VARCHAR(32),
        last_name VARCHAR(32));
CREATE TABLE investors (
        investor_id BIGSERIAL PRIMARY KEY,
        customer_id INT UNIQUE,
        profile_data VARCHAR(256),
        amount NUMERIC(16,2),
            FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
                       );