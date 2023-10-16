insert into car("year",make,model,"trim",msrp,"type",country)
values
(2014, 'VolksWagen', 'Jetta', 'SE', 20000, 'sedan', 'Germany'),
(2010, 'Dodge', 'Grand Caravan', 'Basic', 22000, 'minivan', 'USA'),
(2015, 'Mazda', 'CX-5', 'LT', 35000, 'SUV', 'Japan'),
(2020, 'Audi', 'Q3', 'Quatro', 40000, 'SUV', 'Germany');

insert into address(housenumber,streetname,city,country)
values
('5858', '230th Street', 'Bayside, NY', 'USA'),
('5915', '71st Ave', 'Ridgewood, NY', 'USA'),
('100', 'Bank Ave', 'New York, NY', 'USA'),
('200', 'Dealership Street', 'Bushwick, NY', 'USA'),
('300', 'Lost Drive', 'Houston, TX', 'USA'),
('400', '88th Blvd', 'White Stone, NY', 'USA');

insert into inventory(car_id, color, used, recieved_date, miles)
values
(1, 'white', FALSE, '2010-10-12', 0),
(2, 'white', TRUE, '2020-10-24', 10000),
(3, 'black', FALSE, '2022-06-12', 0),
(4, 'green', TRUE, '1996-12-26', 100000);

insert into employee(first_name,last_name,address_id,email,phone,"position",startdate)
values
('Arjan', 'Velovic', 4, 'arjan@dealer.com', '1237894567', 'salesmen', '2018-04-06'),
('Agron', 'Velovic', 4, 'agron@dealer.com', '1237894667', 'reception', '2018-04-20'),
('Adisa', 'Velovic', 4, 'adisa@dealer.com', '4005565896', 'mechanic', '2020-05-06'),
('Bajram', 'Velovic', 4, 'bajram@dealer.com', '5004659842', 'owner', '1990-04-06');

insert into bank(bankname,address_id,balance)
values
('Bank of America', 3, 250),
('SoFi', 5, 1000000),
('Chase', 5, 99999999);

insert into customer(first_name,last_name,address_id,email,phone,bank_id)
values
('John', 'Doe', 1, 'john@gmail.com', '7894562175', 1),
('Stacey', 'Facey', 2, 'stacey@gmail.com', '7894562172', 2),
('Jeff', 'Bezos', 6, 'jeffy@gmail.com', '1111111111', 3);

insert into purchase(customer_id,inventory_id,soldprice,purchase_time,employee_id)
values
(1, 3, 20000, '2020-08-06', 1),
(2, 4, 40000, '2022-08-06', 1),
(3, 1, 15000, '2023-10-13', 1);

insert into part(part_description,manufacturer,"cost")
values
('engine 2.0L', 'Honda', 2000),
('breaklight fluid', 'Bosch', 3000),
('oil filer', 'K&N', 30);

insert into service(service_type,inventory_id,customer_id,employee_id,part_id,"cost",labor_hours)
values
('engine installation', 3, 1, 3, 1, 3000, '10 hours 30 minutes'),
('breaklight change', 4, 2, 3, 2, 3000, '20 hours 30 minutes'),
('oil change', 2, 3, 3, 3, 100, '1 hours 0 minutes');