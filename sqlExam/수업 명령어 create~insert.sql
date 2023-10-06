CREATE TABLE user (
  user_id NUMBER(5) PRIMARY KEY,
  name VARCHAR2(50),
  age NUMBER(5),
  email  VARCHAR2(50),
  hire_date DATE,
  salary NUMBER(10,2)
);
INSERT INTO "user" (user_id, name, age, email, hire_date, salary)
 VALUES (1, 'KH',  35 ,'kh@kh.com', TO_DATE('2023-10-05', 'YYYY-MM-DD'), 5000.00);

INSERT INTO "user" (user_id, name, age ,email, hire_date, salary)
 VALUES (2, 'Jane', 25, 'jane@kh.com', TO_DATE('2023-09-25','YYYY-MM-DD'), 6000.25); 

SELECT * FROM "user"
WHERE age >= 30;
