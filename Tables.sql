CREATE TABLE "car" (
  "car_id" SERIAL,
  "year" SMALLINT,
  "make" VARCHAR(100),
  "model" VARCHAR(100),
  "trim" VARCHAR(100),
  "msrp" MONEY,
  "type" VARCHAR(100),
  "country" VARCHAR(100),
  PRIMARY KEY ("car_id")
);

CREATE TABLE "part" (
  "part_id" SERIAL,
  "part_description" VARCHAR(150),
  "manufacturer" VARCHAR(100),
  "cost" MONEY,
  PRIMARY KEY ("part_id")
);

CREATE TABLE "address" (
  "address_id" SERIAL,
  "housenumber" VARCHAR(100),
  "streetname" VARCHAR(100),
  "city" VARCHAR(100),
  "country" VARCHAR(100),
  PRIMARY KEY ("address_id")
);

CREATE TABLE "inventory" (
  "inventory_id" SERIAL,
  "car_id" INTEGER,
  "color" VARCHAR(100),
  "used" BOOLEAN,
  "recieved_date" DATE,
  "miles" INTEGER,
  PRIMARY KEY ("inventory_id"),
  FOREIGN KEY (car_id) REFERENCES "car"("car_id")
);

CREATE TABLE "employee" (
  "employee_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "address_id" INTEGER,
  "email" VARCHAR,
  "phone" VARCHAR(10),
  "position" VARCHAR(100),
  "startdate" DATE,
  PRIMARY KEY ("employee_id"),
  FOREIGN KEY (address_id) references "address"(address_id)
);

CREATE TABLE "bank" (
  "bank_id" SERIAL,
  "bankname" VARCHAR(100),
  "address_id" INTEGER,
  "balance" MONEY,
  PRIMARY KEY ("bank_id"),
  foreign key (address_id) references address(address_id)
);

CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "address_id" INTEGER,
  "email" VARCHAR,
  "phone" VARCHAR(10),
  "bank_id" INTEGER,
  PRIMARY KEY ("customer_id"),
  foreign key (address_id) references address(address_id),
  foreign key (bank_id) references bank(bank_id)
);

CREATE TABLE "purchase" (
  "purchase_id" SERIAL,
  "customer_id" INTEGER,
  "inventory_id" INTEGER,
  "soldprice" MONEY,
  "purchase_time" DATE,
  "employee_id" INTEGER,
  PRIMARY KEY ("purchase_id"),
  foreign key (customer_id) references customer(customer_id),
  foreign key (inventory_id) references inventory(inventory_id),
  foreign key (employee_id) references employee(employee_id)
);

alter table purchase rename to invoice;

alter table invoice rename column purchase_id to invoice_id;

CREATE TABLE "service" (
  "service_ticket" SERIAL,
  "service_type" VARCHAR(150),
  "inventory_id" INTEGER,
  "customer_id" INTEGER,
  "employee_id" INTEGER,
  "part_id" INTEGER,
  "cost" MONEY,
  "labor_hours" INTERVAL,
  PRIMARY KEY ("service_ticket"),
  foreign key (customer_id) references customer(customer_id),
  foreign key (inventory_id) references inventory(inventory_id),
  foreign key (employee_id) references employee(employee_id),
  foreign key (part_id) references part(part_id)
);