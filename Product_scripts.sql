create table TProduct(
  product_id VARCHAR(8),
  product_name VARCHAR(128),
  product_description VARCHAR(1024),
  product_price NUMBER,
  product_rating NUMBER
);

create table TOrder(
  order_id VARCHAR(8),
  product_id VARCHAR(8),
  customer_id  VARCHAR(8),
  cart_value number,
  coupon_code VARCHAR(16)
);

insert into TProduct values('P001', 'Architects of Intelligence', 'How will AI evolve and what major innovations are on the horizon? ', 19.9, 4.6);
insert into TProduct values('P002', 'Hello World: Being Human in the Age of Algorithms', 'Hello World takes us on a tour through the good, the bad, and the downright ugly of the algorithms that surround us on a daily basis', 26.9, 4.2);
insert into TProduct values('P003', 'The Fourth Age', 'The Fourth Age provides extraordinary background information on how we got to this point, and how', 99.9, 5);
insert into TProduct values('P004', 'Click Here to Kill Everybody', 'Click Here to Kill Everybody, renowned expert and best-selling author Bruce Schneier examines the hidden risks of this new reality.', 14.9, 4.5);
insert into TProduct values('P005', 'Elon Musk: Tesla, SpaceX, and the Quest for a Fantastic Future', 'Elon Musk is both an illuminating and authorized look at the extraordinary life of one of Silicon Valleys most exciting, unpredictable, and ambitious entrepreneurs ', 37.9, 4.8);
insert into TProduct values('P006', 'Bold: How to Go Big, Create Wealth and Impact the World', 'A radical, how-to guide for using exponential technologies, moonshot thinking, and crowd-powered tools', 18.9, 4.7);
insert into TProduct values('P007', 'Zero to One ', 'In Zero to One, legendary entrepreneur and investor Peter Thiel shows how we can find singular ways to create those new things.', 22.9, 4.6);   
insert into TProduct values('P008', 'How Google Works', 'Seasoned Google execs Eric Schmidt and Jonathan Rosenberg provide an insiders guide to Google', 09.9, 4.2);
insert into TProduct values('P009', 'Alibaba: The House That Jack Ma Built', 'An engrossing, insider’s account of how a teacher built one of the world’s most valuable companies', 20.9, 4.9);
insert into TProduct values('P0010', 'Homo Deus', ' Describes a bleak future without sickness, hunger, and war', 10.99, 4.4);
                    
select * from TProduct;
