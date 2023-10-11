### DDL ###
sqlplus sys/oracle as sysdba
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
CREATE USER khcafe IDENTIFIED BY kh1234;
GRANT CREATE SESSION TO khcafe;
GRANT CREATE ANY TABLE TO khcafe;
GRANT connect, resource, dba to khcafe;
conn khcafe/kh1234;

--카페 테이블
CREATE TABLE cafes (
    cafe_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    phone_number VARCHAR(15),
    operating_hours VARCHAR(255)
);

--시퀀스
CREATE SEQUENCE cafe_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

--트리거
CREATE OR REPLACE TRIGGER cafe_trigger
BEFORE INSERT ON cafes
FOR EACH ROW
BEGIN
  SELECT cafe_seq.NEXTVAL
  INTO :NEW.cafe_id
  FROM dual;
END;
/

--메뉴 테이블
CREATE TABLE menu (
    menu_id INT PRIMARY KEY,
    cafe_id INT,
    menu_name VARCHAR2(255) NOT NULL,
    price NUMBER(8, 2) NOT NULL,
    CONSTRAINT fk_cafe
        FOREIGN KEY (cafe_id)
        REFERENCES cafes(cafe_id)
);




