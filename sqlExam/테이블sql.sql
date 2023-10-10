CREATE TABLE USER_INFO 
(
  USER_ID NUMBER(5) 
, USER_NAME VARCHAR2(20) 
, USER_MAIL VARCHAR2(20) 
);


--CREATE 
/*
CREATE TABLE FridayTABLE (
 id NUMBER(5) PRIMARY KEY,
 name VARCHAR2(50),
 description VARCHAR2(100),
 birthdate DATE
 );
 */
 --INSERT 문 
 --To Date 함수 사용해서 날짜 형식으로 데이터 삽입
 /*
 INSERT INTO fridaytable (id, name,description, birthdate)
 Values (1, '박창규', '금요일천사', TO_DATE('1970-05-25', 'YYYY-MM-DD'));
 INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (2, '나세희', '8월의 요정', TO_DATE('1997-08-16', 'YYYY-MM-DD')); 
  INSERT INTO fridaytable (id, name,description, birthdate)
 Values (3, '주서경', '11월의악마', TO_DATE('2002-11-29', 'YYYY-MM-DD'));
 INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (4, '김민수', '2월의 요정', TO_DATE('2000-02-07', 'YYYY-MM-DD')); 
  INSERT INTO fridaytable (id, name, description, birthdate)
 VALUES (5, '이미혜', '2월의 천사', TO_DATE('2001-02-09', 'YYYY-MM-DD')); 
 */
