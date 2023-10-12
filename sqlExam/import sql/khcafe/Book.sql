
CREATE TABLE book (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(255) NOT NULL,
    author VARCHAR2(100) NOT NULL,
    publication_year NUMBER(4),
    isbn VARCHAR2(13),
    genre VARCHAR2(50),
    description CLOB,
    price NUMBER(10, 2),
    publication_date DATE,
    created_date DATE DEFAULT SYSDATE,
    updated_date DATE,
    is_available CHAR(1) CHECK (is_available IN ('Y', 'N'))
);

ALTER TABLE book MODIFY (isbn VARCHAR2(20));

INSERT INTO book (book_id, title, author, publication_year, isbn, genre, description, price, publication_date, updated_date, is_available)
VALUES
    (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, '978-0743273565', 'Fiction', 'A story of decadence and excess.', 12.99, TO_DATE('1925-04-10', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO book (book_id, title, author, publication_year, isbn, genre, description, price, publication_date, updated_date, is_available)

VALUES(2, 'To Kill a Mockingbird', 'Harper Lee', 1960, '978-0446310789', 'Fiction', 'A classic of modern American literature.', 14.99, TO_DATE('1960-07-11', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO book (book_id, title, author, publication_year, isbn, genre, description, price, publication_date, updated_date, is_available)

VALUES(3, 'The Catcher in the Rye', 'J.D. Salinger', 1951, '978-0316769488', 'Fiction', 'A controversial novel.', 11.99, TO_DATE('1951-07-16', 'YYYY-MM-DD'), NULL, 'N');

INSERT INTO book (book_id, title, author, publication_year, isbn, genre, description, price, publication_date, is_available)
SELECT 4, '태백산맥', '조정래', 1997, '978-8936433598', 'Historical Fiction', '한국 현대사를 배경으로 한 대하소설.', 20.99, TO_DATE('1997-05-15', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 5, '토지', '박경리', 1986, '978-8937409054', 'Historical Fiction', '한국의 근대사를 배경으로 한 대하소설.', 18.99, TO_DATE('1986-03-10', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 6, '또 다른 고향', '김유정', 1942, '978-8930205551', 'Short Story', '군산의 자연과 사람들의 삶을 그린 단편집.', 15.99, TO_DATE('1942-10-05', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 7, '삼포 가는 길', '황석영', 1973, '978-8937460148', 'Novel', '어촌을 배경으로 한 인간의 삶과 운명을 그린 소설.', 13.99, TO_DATE('1973-07-20', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 8, '감옥으로부터의 사색', '윤동주', 1941, '978-8937462807', 'Poetry', '저자의 생애와 사상을 반영한 시집.', 12.99, TO_DATE('1941-06-15', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 9, '별에서 온 그대', '박효련', 2013, '978-8965702024', 'Romance', '외계인과 인간의 사랑을 그린 로맨스 소설.', 14.99, TO_DATE('2013-11-16', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 10, '겨울왕국', '김민주', 2014, '978-8965702031', 'Fantasy', '눈의 마법으로 세상을 뒤흔든 두 자매의 이야기.', 16.99, TO_DATE('2014-01-10', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 11, '얼음과 불의 노래', '김진명', 2011, '978-8965702048', 'Fantasy', '대륙을 뒤흔든 전쟁과 정치를 그린 판타지 소설.', 19.99, TO_DATE('2011-04-20', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 12, '해를 품은 달', '정은궐', 2012, '978-8965702055', 'Historical Fiction', '왕과 무녀의 금지된 사랑을 그린 소설.', 18.99, TO_DATE('2012-09-15', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 13, '빛의 눈동자', '이동훈', 2015, '978-8965702062', 'Sci-Fi', '미래의 과학기술을 배경으로 한 과학 소설.', 17.99, TO_DATE('2015-02-10', 'YYYY-MM-DD'), 'Y' FROM dual;


SELECT 14, '바람의 나라', '유승희', 2006, '978-8965702079', 'Fantasy', '고대를 배경으로 한 판타지 대하소설.', 20.99, TO_DATE('2006-05-17', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 15, '미래의 선택', '정유미', 2016, '978-8965702086', 'Sci-Fi', '타임머신을 중심으로 한 과학 소설.', 15.99, TO_DATE('2016-07-20', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 16, '꽃을 보듯 너를 본다', '나태주', 1992, '978-8936434120', 'Poetry', '사랑과 삶을 주제로 한 시집.', 12.99, TO_DATE('1992-04-10', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 17, '아프니까 청춘이다', '김난도', 2009, '978-8934938841', 'Essay', '청춘의 아픔과 기쁨을 담은 에세이.', 14.99, TO_DATE('2009-11-11', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 18, '소나기', '황순원', 1953, '978-8930207562', 'Short Story', '어린 시절의 추억과 사랑을 그린 단편집.', 13.99, TO_DATE('1953-05-15', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 19, '우리들의 행복한 시간', '공지영', 2005, '978-8934918874', 'Novel', '죄책감에 시달리는 여성과 사형수의 이야기.', 16.99, TO_DATE('2005-04-20', 'YYYY-MM-DD'), 'Y' FROM dual
UNION ALL
SELECT 20, '몽실언니', '김련희', 2018, '978-8937464252', 'Novel', '한국 전통문화를 배경으로 한 여성의 이야기.', 18.99, TO_DATE('2018-10-25', 'YYYY-MM-DD'), 'Y' FROM dual;

UPDATE book SET title= '태백싼맥' WHERE title='태백산맥';
UPDATE book SET title = '땅' WHERE title = '토지';
select title from book;
UPDATE BOOK SET TITLE = '또 다른 쉼터' WHERE BOOK_ID = 6;

--책이름을 나디아 연대기으로 7~10번까지 변경하고자 함    BETWEEN
UPDATE BOOK SET TITLE = '나디아 연대기' 
WHERE BOOK_ID BETWEEN 7 AND 10;
--UPDATE 를 이용해서 쿼리문 변경하는 방법 
UPDATE BOOK
SET title = 
    CASE
        WHEN title= '얼음과 불의 노래' THEN '얼음과 바다의 노래'
        WHEN title = '해를 품은 달' THEN '달을 품은 달'
        WHEN title = '빛의 눈동자' THEN '햇빛의 눈동자'
        WHEN title = '바람의 나라' THEN '파도의 나라'
        WHEN title = '미래의 선택' THEN '과거의 선택'
        WHEN title = '꽃을 보듯 너를 본다' THEN '나를 보듯 너를 본다'
        WHEN title = '아프니까 청춘이다' THEN '아프니까 아픈거다'
        WHEN title = '소나기' THEN '장대비'
        WHEN title = '우리들의 행복한 시간' THEN '우리들의 아름다운 시간'
        WHEN title = '몽실언니' THEN '몽글언니'
        ELSE title
END;

