-- Create Customer-database
CREATE SCHEMA IF NOT EXISTS customerdb;
USE customerdb;

-- Skapar tabeller i customer database
create table customer (id bigint not null, name varchar(255), ssn varchar(255), primary key (id)) engine=InnoDB;
create table customer_seq (next_val bigint) engine=InnoDB;
insert into customer_seq values ( 1 );


-- Skapar order-database
CREATE SCHEMA IF NOT EXISTS ordersdb;
USE ordersdb;

-- Skapar tabeller i order-database
create table orders (id bigint not null, date datetime(6), customer_id bigint, primary key (id)) engine=InnoDB;
create table orders_products (order_id bigint not null, product_id bigint not null) engine=InnoDB;
create table orders_seq (next_val bigint) engine=InnoDB;
insert into orders_seq values ( 1 );
alter table orders_products add constraint FKe4y1sseio787e4o5hrml7omt5 foreign key (order_id) references orders (id);

-- Skapar product-database
CREATE SCHEMA IF NOT EXISTS productdb;
USE productdb;

-- Skapar tabeller i product-database
create table product (id bigint not null, name varchar(255), price integer not null, primary key (id)) engine=InnoDB;
create table product_seq (next_val bigint) engine=InnoDB;
insert into product_seq values ( 1 );



