CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    home_address VARCHAR,
    phone_number  VARCHAR
);

CREATE TABLE sales_person(
    sales_person_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE vehicle_information(
    vehicle_id SERIAL PRIMARY KEY,
    make VARCHAR,
    model VARCHAR,
    vehicle_year DATE,
    color  VARCHAR,
    condition VARCHAR,
    vehicle_price DECIMAL
);

CREATE TABLE vehicle_invoice(
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    vehicle_id INTEGER,
    FOREIGN KEY (vehicle_id) REFERENCES vehicle_information(vehicle_id),
    sales_person_id INTEGER,
    FOREIGN KEY (sales_person_id) REFERENCES sales_person(sales_person_id)
);

CREATE TABLE mechanics(
    mechanic_id INTEGER PRIMARY KEY,
    first_name INTEGER,
    last_name INTEGER
);

CREATE TABLE service_record(
    record_id INTEGER PRIMARY KEY,
    vehicle_id INTEGER,
    FOREIGN KEY (vehicle_id) REFERENCES vehicle_information(vehicle_id),
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id)
);

CREATE TABLE service_ticket(
    ticket_id SERIAL PRIMARY KEY,
    service_price DECIMAL,
    service_type TEXT,
    vehicle_id INTEGER,
    FOREIGN KEY (vehicle_id) REFERENCES vehicle_information(vehicle_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

ALTER TABLE mechanics
ALTER COLUMN first_name TYPE VARCHAR,
ALTER COLUMN last_name TYPE VARCHAR;