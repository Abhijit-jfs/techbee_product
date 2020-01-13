create table TProduct(
product_id VARCHAR(8),
book_name VARCHAR(128),
book_author VARCHAR(128),
book_description VARCHAR(1024),
book_price NUMBER,
book_rating NUMBER
);

create table TOrder(
order_id VARCHAR(8),
product_id VARCHAR(8),
customer_id  VARCHAR(8),
cart_value number,
coupon_code VARCHAR(16)
);

insert into TProduct values('P001', 'Architects of Intelligence', 'How will AI evolve and what major innovations are on the horizon? ', 99.9, 5);
insert into TProduct values('P002', 'Hello World: Being Human in the Age of Algorithms', 'Hello World takes us on a tour through the good, the bad, and the downright ugly of the algorithms that surround us on a daily basis', 99.9, 5);
insert into TProduct values('P003', 'The Fourth Age', 'The Fourth Age provides extraordinary background information on how we got to this point, and how', 99.9, 5);
insert into TProduct values('P004', 'Click Here to Kill Everybody', 'description', 99.9, 5);
insert into TProduct values('P005', 'test book', 'description', 99.9, 5);
insert into TProduct values('P005', 'test book', 'description', 99.9, 5);
insert into TProduct values('P005', 'test book', 'description', 99.9, 5);   
insert into TProduct values('P005', 'test book', 'description', 99.9, 5);
insert into TProduct values('P005', 'test book', 'description', 99.9, 5);
insert into TProduct values('P005', 'test book', 'description', 99.9, 5);
                    
select * from TProduct;
