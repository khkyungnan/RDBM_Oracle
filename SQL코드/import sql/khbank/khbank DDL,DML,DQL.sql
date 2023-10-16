sqlplus sys/oracle as sysdba
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
CREATE USER khbank;IDENTIFIED BY kh1234;
GRANT CREATE SESSION TO khbank;
GRANT CREATE ANY TABLE TO khbank;
GRANT connect, resource, dba to khbank;



CREATE TABLE BANK(
    --각 계좌 id를  고유하게 식별
    account_id INT PRIMARY KEY, --기본키
    -- 중복된 계좌 번호 허용하지 않음, NULL 값은 허용되지 않음
    account_number VARCHAR2(15) UNIQUE NOT NULL, --고유 제약과 NOT NULL 키 제약
    -- 계좌 소유주 이름, NULL 값은  허용되지 않음
    account_name VARCHAR2(50) NOT NULL,
    -- 금액, 잔액, 소수점 이하 2자리까지 표현
    balance DECIMAL(10,2) NOT NULL, )잔액은 0보다 작거나 같을 수 없음
    --은행 계좌 정보를 저장
    branch_name VARCHAR2(50),
    -- 해당 계좌의 마지막 거래 날짜
    last_transaction_date DATE,
    -- 잔액은 0 이상이 되어야함, -값이 나오지 않도록 설정
    CONSTRAINT chk_balance CHECK (balance >= 0) --체크 제약
    );


INSERT INTO BANK (account_id, account_number, account_name, balance, branch_name, last_transaction_date)
VALUES (1, '1234567890', '가나다', 1000.00, 'kh', TO_DATE('2023-10-16', 'YYYY-MM-DD'));
INSERT INTO BANK (account_id, account_number, account_name, balance, branch_name, last_transaction_date)
VALUES (2, '1236777888', '이동연', 400.50, '북쪽지점', TO_DATE('2023-10-07', 'YYYY-MM-DD'));
INSERT INTO BANK (account_id, account_number, account_name, balance, branch_name, last_transaction_date)
VALUES (3, '1111222233', '김영희', 500.75, '서쪽지점', TO_DATE('2023-10-14', 'YYYY-MM-DD'));
INSERT INTO BANK (account_id, account_number, account_name, balance, branch_name, last_transaction_date)
VALUES (4, '4444555566', '박철수', 2000.00, '동쪽지점', TO_DATE('2023-10-13', 'YYYY-MM-DD'));
INSERT INTO BANK (account_id, account_number, account_name, balance, branch_name, last_transaction_date)
VALUES (5, '7777888899', '이지은', 750.25, '남쪽지점', TO_DATE('2023-10-12', 'YYYY-MM-DD'));
INSERT INTO BANK (account_id, account_number, account_name, balance, branch_name, last_transaction_date)
VALUES (6, '2222333344', '배민정', 3000.50, '북쪽지점', TO_DATE('2023-10-11', 'YYYY-MM-DD'));
INSERT INTO BANK (account_id, account_number, account_name, balance, branch_name, last_transaction_date)
VALUES (7, '5555666777', '송은희', 1500.75, '서쪽지점', TO_DATE('2023-10-10', 'YYYY-MM-DD'));
INSERT INTO BANK (account_id, account_number, account_name, balance, branch_name, last_transaction_date)
VALUES (8, '8888999000', '정민호', 4000.00, '동쪽지점', TO_DATE('2023-10-09', 'YYYY-MM-DD'));
INSERT INTO BANK (account_id, account_number, account_name, balance, branch_name, last_transaction_date)
VALUES (9, '3333444555', '김서영', 950.25, '남쪽지점', TO_DATE('2023-10-08', 'YYYY-MM-DD'));
INSERT INTO BANK (account_id, account_number, account_name, balance, branch_name, last_transaction_date)
VALUES (10, '6666777888', '이동훈', 3200.50, '북쪽지점', TO_DATE('2023-10-07', 'YYYY-MM-DD'));
