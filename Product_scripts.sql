create table TProduct(
product_id VARCHAR(5),
name VARCHAR(64),
description VARCHAR(128),
price NUMBER,
rating NUMBER);

create table TOrder(
order_id VARCHAR(5),
product_id VARCHAR(5),
customer_id  VARCHAR(5),
cart_value number,
coupon_code VARCHAR(10));

insert into TProduct values('P001', 'test book', 'description', 99.9, 5);
insert into TProduct values('P002', 'test book', 'description', 99.9, 5);
insert into TProduct values('P003', 'test book', 'description', 99.9, 5);
insert into TProduct values('P004', 'test book', 'description', 99.9, 5);
insert into TProduct values('P005', 'test book', 'description', 99.9, 5);

select * from TProduct;