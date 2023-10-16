-------------------     book_log Table 생성       -------------------
CREATE TABLE book_log (
    log_id NUMBER PRIMARY KEY,
    action_type VARCHAR2(10),
    book_id NUMBER,
    log_date TIMESTAMP
);

-------------------       SEQUENCE 문 생성         -------------------
CREATE SEQUENCE book_log_seq START WITH 1 INCREMENT BY 1;

/*********************************************************************
 INSERT TRIGGER : 책이 INSERT 될 때마다 로그 테이블에 로그를 추가
*********************************************************************/
CREATE OR REPLACE TRIGGER book_insert_trigger
AFTER INSERT ON book
FOR EACH ROW
BEGIN
    INSERT INTO book_log (log_id, action_type, book_id, log_date)
    VALUES (book_log_seq.NEXTVAL, 'INSERT', :NEW.book_id, SYSTIMESTAMP);
END;
/

--------------------       INSERT 문을 실행         -------------------- 
INSERT INTO book (book_id, title, author, publication_year, isbn, genre, description, price, publication_date, is_available)
VALUES (22, '새로운 책', '새로운 저자', 2023, '978-1234567890', 'Fiction', '새로운 책 설명', 9.99, TO_DATE('2023-10-13', 'YYYY-MM-DD'), 'Y'); 


/*********************************************************************
                    INSERT    UPDATE    DELETE
*********************************************************************/
CREATE OR REPLACE TRIGGER book_trigger
AFTER INSERT OR UPDATE OR DELETE ON book
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        -- INSERT가 실행될 때
        INSERT INTO book_log (log_id, action_type, book_id, log_date)
        VALUES (book_log_seq.NEXTVAL, 'INSERT', :NEW.book_id, SYSTIMESTAMP);

    ELSIF UPDATING THEN
        -- UPDATE가 실행될 때
        INSERT INTO book_log (log_id, action_type, book_id, log_date)
        VALUES (book_log_seq.NEXTVAL, 'UPDATE', :OLD.book_id, SYSTIMESTAMP);
      
    ELSIF DELETING THEN
        -- DELETE가 실행될 때
        INSERT INTO book_log (log_id, action_type, book_id, log_date)
        VALUES (book_log_seq.NEXTVAL, 'DELETE', :OLD.book_id, SYSTIMESTAMP);
    END IF;
END;
/

--------------------       UPDATE 문 실행         -------------------- 
------------------ book_id가 22인 책의 정보를 업데이트 -----------------
UPDATE book
SET
    title = '업데이트된 책 제목',
    author = '업데이트된 저자',
    price = 12.99,
    publication_year = 2024
WHERE book_id = 22;

--------------------       DELETE 문 실행         -------------------- 
----------------------- book_id가 22인 책을 삭제 ----------------------
DELETE FROM book
WHERE book_id = 22;

