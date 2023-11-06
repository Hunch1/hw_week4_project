INSERT INTO customer(
    first_name,
    last_name,
    home_address,
    phone_number
) VALUES (
    'George',
    'Reyes',
    '555 thieves st',
    '111-111-1111'
);



INSERT INTO customer(
    first_name,
    last_name,
    home_address,
    phone_number
) VALUES (
    'Pablo',
    'Reyes',
    '556 thieves st',
    '222-222-2222'
);


INSERT INTO sales_person(
    first_name,
    last_name
) VALUES (
    'Sandra',
    'Ortega'
);

INSERT INTO sales_person(
    first_name,
    last_name
) VALUES (
    'Luis',
    'Ortega'
);

INSERT INTO vehicle_information(
    make,
    model,
    vehicle_year,
    color,
    condition,
    vehicle_price
) VALUES (
    'Toyota',
    'Corolla',
    '10/01/2006',
    'Black',
    'New',
    '9000'
);

INSERT INTO vehicle_information(
    make,
    model,
    vehicle_year,
    color,
    condition,
    vehicle_price
) VALUES (
    'Honda',
    'Civic',
    '11/01/20012',
    'White',
    'Used',
    '9500'
);

INSERT INTO vehicle_invoice(
    customer_id,
    vehicle_id,
    sales_person_id   
) VALUES (
    '1',
    '1',
    '1'
);

INSERT INTO vehicle_invoice(
    customer_id,
    vehicle_id,
    sales_person_id   
) VALUES (
    '2',
    '2',
    '2'
);


INSERT INTO mechanics(
    mechanic_id,
    first_name,
    last_name
) VALUES (
    '303',
    'Miguel',
    'Reyes'
);

INSERT INTO mechanics(
    mechanic_id,
    first_name,
    last_name
) VALUES (
    '304',
    'Angel',
    'Reyes'
);


INSERT INTO service_record(
    record_id,
    vehicle_id,
    mechanic_id
) VALUES (
    '500',
    '1',
    '303'
);

INSERT INTO service_record(
    record_id,
    vehicle_id,
    mechanic_id
) VALUES (
    '501',
    '1',
    '304'
);


INSERT INTO service_ticket(
    service_price,
    service_type,
    vehicle_id,
    customer_id
) VALUES (
    '350',
    'Replaced tires',
    '1',
    '1'
);

INSERT INTO service_ticket(
    service_price,
    service_type,
    vehicle_id,
    customer_id
) VALUES (
    '450',
    'Replaced windshield',
    '1',
    '1'
);