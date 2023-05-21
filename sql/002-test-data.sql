USE customerdb;
insert into customer (name, ssn, id) values ("Gigi", "19910419-4459", 1);
insert into customer (name, ssn, id) values ("Johan", "19610512-6745",2);
insert into customer (name, ssn, id) values ("Mimmi", "19810412-8965",3);
UPDATE customer_seq SET next_val = 54;

USE productdb;
insert into product (name, price, id) values ("Chanel 5", 1200, 1);
insert into product (name, price, id) values ("Chanel Cristalle", 1300,2);
insert into product (name, price, id) values ("Black Phantom", 2400,3);
update product_seq set next_val= 54;

USE ordersdb;
insert into orders (customer_id, date, id) values (1, "2023-04-21 10:43:28.345257", 1);
insert into orders (customer_id, date, id) values (2, "2023-04-22 10:43:28.345310", 2);
insert into orders (customer_id, date, id) values (3, "2023-04-23 10:43:28.345310", 3);
insert into orders (customer_id, date, id) values (2, "2023-04-24 10:43:28.345310", 4);
update orders_seq set next_val= 55;

-- Items for order 1
insert into orders_products (order_id, product_id) values (1, 1);
insert into orders_products (order_id, product_id) values (1, 2);


-- Items for order 2
insert into orders_products (order_id, product_id) values (2, 2);
insert into orders_products (order_id, product_id) values (2, 3);


-- Items for order 3
insert into orders_products (order_id, product_id) values (3, 1);
insert into orders_products (order_id, product_id) values (3, 3);


-- Items for order 4
insert into orders_products (order_id, product_id) values (4, 2);
insert into orders_products (order_id, product_id) values (4, 3);
