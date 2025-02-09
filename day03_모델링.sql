--   TBL_PHONE
--   PHONE_SERIAL_NUMBER : VARCHAR2(1000) : PRIMARY KEY
--   ---------------------------------------------------
--   PHONE_COLOR : VARCHAR2(100)
--   PHONE_SIZE : NUMBER
--   PHONE_PRICE : NUMBER
--   PHONE_PRODUCTION_DATE : DATE
--   PHONE_SALE : NUMBER
CREATE TABLE TBL_PHONE(
	PHONE_SERIAL_NUMBER VARCHAR2(1000),
	PHONE_COLOR VARCHAR2(100),
	PHONE_SIZE NUMBER,
	PHONE_PRICE NUMBER,
	PHONE_PRODUCTION_DATE DATE,
	PHONE_SALE NUMBER,
	CONSTRAINT PK_PHONE PRIMARY KEY(PHONE_SERIAL_NUMBER)
);

SELECT * FROM TBL_PHONE;


--   TBL_CASE
--   CASE_SERIAL_NUMBER : VARCHAR2(1000) : PRIMARY KEY
--   --------------------------------------------------
--   CASE_COROL : VARCHAR2(1000)
--   CASE_PRICE : NUMBER
--   PHONE_SERIAL_NUMBER : VARCHAR2(1000) : FOREIGN KEY
CREATE TABLE TBL_CASE(
	CASE_SERIAL_NUMBER VARCHAR2(1000),
	CASE_COLOR VARCHAR2(1000),
	CASE_PRICE NUMBER,
	PHONE_SERIAL_NUMBER VARCHAR2(1000),
	CONSTRAINT PK_CASE PRIMARY KEY (CASE_SERIAL_NUMBER),
	CONSTRAINT FK_CASE FOREIGN KEY (CASE_SERIAL_NUMBER) REFERENCES TBL_PHONE (PHONE_SERIAL_NUMBER)
);

SELECT * FROM TBL_CASE;

-- [실습]
CREATE TABLE TBL_USER(
	USER_NUMBER NUMBER,
	USER_NAME VARCHAR2(1000),
	USER_AGE NUMBER,
	USER_PHONENUMBER VARCHAR2(1000),
	USER_ADDRESS VARCHAR2(1000),
	BOOK_NUMBER NUMBER,
	CONSTRAINT UK_USER UNIQUE (USER_PHONENUMBER),
	CONSTRAINT PK_USER PRIMARY KEY (USER_NUMBER),
	CONSTRAINT FK_USRE FOREIGN KEY (BOOK_NUMBER) REFERENCES TBL_BOOK(BOOK_NUMBER)
);

SELECT * FROM TBL_USER;

CREATE TABLE TBL_BOOK(
	BOOK_NUMBER NUMBER,
	BOOK_NAME VARCHAR2(1000),
	BOOK_GENRE VARCHAR2(1000) 
	CHECK(BOOK_GENRE = '인문학' OR BOOK_GENRE = '추리' OR BOOK_GENRE = 'IT' OR BOOK_GENRE = '로맨스'),
	CONSTRAINT PK_BOOK PRIMARY KEY (BOOK_NUMBER)
);

SELECT * FROM TBL_BOOK;

-- 값 넣어서 확인
INSERT INTO TBL_BOOK
VALUES (1, '자바', 'IT');

SELECT * FROM TBL_BOOK;

INSERT INTO TBL_USER
VALUES (1, '김민채', 27, 1234, '한국', 1);

SELECT * FROM TBL_USER;


