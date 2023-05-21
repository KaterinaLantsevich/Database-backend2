CREATE USER 'customer'@'%' IDENTIFIED BY 'pass';
grant select, insert, delete, update on customerdb.* to 'customer'@'%';

CREATE USER 'product'@'%' IDENTIFIED BY 'pass';
grant select, insert, delete, update on productdb.* to 'product'@'%';

CREATE USER 'order'@'%' IDENTIFIED BY 'pass';
grant select, insert, delete, update on ordersdb.* to 'order'@'%';