CREATE TABLE TPRODUCT(
  PRODUCT_ID VARCHAR(8) PRIMARY KEY,
  PRODUCT_NAME VARCHAR(128) NOT NULL,
  PRODUCT_DESCRIPTION VARCHAR(1024),
  PRODUCT_PRICE NUMBER NOT NULL,
  PRODUCT_RATING NUMBER NOT NULL
);

CREATE TABLE TORDER(
  ORDER_ID VARCHAR(8) PRIMARY KEY,
  PRODUCT_ID VARCHAR(8),
  CUSTOMER_ID VARCHAR(8),
  PRODUCT_QUANTITY NUMBER NOT NULL,
  GIFT_WRAP VARCHAR(8) NOT NULL,
  DELIVERY_INSTRUCTIONS VARCHAR(512),
  DELIVERY_DATE NUMBER,
  CART_VALUE NUMBER NOT NULL,
  COUPON_CODE VARCHAR(16),
  FOREIGN KEY(PRODUCT_ID) REFERENCES TPRODUCT(PRODUCT_ID)
);

INSERT INTO TPRODUCT VALUES('P001', 'Architects of Intelligence', 'How will AI evolve and what major innovations are on the horizon?', 169, 4.6);
INSERT INTO TPRODUCT VALUES('P002', 'Hello World: Being Human in the Age of Algorithms', 'Hello World takes us on a tour through the good, the bad, and the downright ugly of the algorithms that surround us on a daily basis.', 269, 4.2);
INSERT INTO TPRODUCT VALUES('P003', 'The Fourth Age', 'The Fourth Age provides extraordinary background information on how we got to this point, and how.', 990, 5);
INSERT INTO TPRODUCT VALUES('P004', 'Click Here to Kill Everybody', 'Click Here to Kill Everybody, renowned expert and best-selling author Bruce Schneier examines the hidden risks of this new reality.', 149, 4.5);
INSERT INTO TPRODUCT VALUES('P005', 'Elon Musk: Tesla, SpaceX, and the Quest for a Fantastic Future', 'Elon Musk is both an illuminating and authorized look at the extraordinary life of one of Silicon Valleys most exciting, unpredictable, and ambitious entrepreneurs.', 379, 4.8);
INSERT INTO TPRODUCT VALUES('P006', 'Bold: How to Go Big, Create Wealth and Impact the World', 'A radical, how-to guide for using exponential technologies, moonshot thinking, and crowd-powered tools.', 189, 4.7);
INSERT INTO TPRODUCT VALUES('P007', 'Zero to One', 'In Zero to One, legendary entrepreneur and investor Peter Thiel shows how we can find singular ways to create those new things.', 229, 4.6);
INSERT INTO TPRODUCT VALUES('P008', 'How Google Works', 'Seasoned Google execs Eric Schmidt and Jonathan Rosenberg provide an insiders guide to Google.', 99, 4.2);
INSERT INTO TPRODUCT VALUES('P009', 'Alibaba: The House That Jack Ma Built', 'An engrossing, insider’s account of how a teacher built one of the world’s most valuable companies.', 209, 4.9);
INSERT INTO TPRODUCT VALUES('P010', 'Homo Deus', 'Describes a bleak future without sickness, hunger, and war', 199, 4.4);

INSERT INTO TORDER VALUES('O001', 'P001', 'C001', 2, 'True', 'Gift wrap', 1, 169, 'FIRSTORDER');
INSERT INTO TORDER VALUES('O002', 'P003', 'C002', 3, 'False', 'Please give hardcover books', 2, 1485, 'FIRSTORDER');
INSERT INTO TORDER VALUES('O003', 'P005', 'C003', 1, 'True', 'Please deliver on the specified date!', 3, 379, '');
INSERT INTO TORDER VALUES('O004', 'P007', 'C004', 4, 'True', 'Gift wrap', 2, 458, 'TECHBEE50');
INSERT INTO TORDER VALUES('O005', 'P009', 'C005', 1, 'True', 'Gift wrap', 1, 209, '');

SELECT * FROM TPRODUCT;
SELECT * FROM TORDER;
SELECT * FROM TORDER JOIN TPRODUCT ON TPRODUCT.PRODUCT_ID = TORDER.PRODUCT_ID;

DROP TABLE TPRODUCT;
DROP TABLE TORDER;
