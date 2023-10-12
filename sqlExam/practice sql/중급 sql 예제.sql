--서브쿼리활용해서 가장 비싼책의 정보
SELECT * FROM book
WHERE price = (SELECT MAX(price) FROM book);

-- 윈도우 함수 RANK 활용해서 각 장르별로 가장 비싼 두번째 책 가져오기
SELECT * FROM (
  SELECT b.*, RANK() OVER (PARTITION BY genre ORDER BY price DESC) AS rnk
  FROM book b
) WHERE rnk = 2;

-- 윈도우 함수 ROW_NUMBER 활용 해서 가장 비싼책 가져오기 장르별로
SELECT * FROM (
	SELECT b.*m ROW_NUMBER() OVER(~~~ 쿼리 넣기)
	FROM BOOK b
)
WHERE rn = 1; -- rn 행 번호 순서 번호를 나타내는 별칭

--각 저자가 쓴 책 수가 2권 이상인 저자 찾기
SELECT author, COUNT(*) as book_count
FROM book
GROUP BY author
HAVING COUNT(*) >= 2;

--각 장르별로 판매된 가장 비싼 책을 가져오기
SELECT genre, MAX(price) as max_price
FROM book
GROUP BY genre
ORDER BY max_price DESC;

-- 'Romance' 장르의 책 중에서 제일 비싼 책 찾기
SELECT * FROM book
WHERE genre = 'Romance' AND price = (SELECT MAX(price) FROM book WHERE genre = 'Romance');

--가격대 별로 책의 판매량(CASE와 JOIN)
-- (price < 10  '상대적으로 구매할 수 있는 책' 10 AND price < 20 THEN '보통 책')
SELECT price_range, COUNT(*) as book_count
FROM (
  SELECT *,
    CASE
      WHEN price < 10 THEN '상대적으로 구매할 수 있는 책'
      WHEN price >= 10 AND price < 20 THEN '보통 책'
      ELSE '비싼 책'
    END AS price_range
  FROM book
)
--'소설' 장르의 책과 'Novel' 장르의 책 합치기 (UNION)
SELECT title, genre FROM book WHERE genre = '소설'
UNION
SELECT title, genre FROM book WHERE genre = 'Novel';

--상위 5권의 책 가져오기 (ROWNUM)
SELECT * FROM (
  SELECT ROWNUM AS rn, b.*
  FROM book b
)
WHERE rn <= 5;

--책의 저자 중에서 다른 책도 쓴 저자를 찾 찾기(where in 활용)
SELECT DISTINCT author
FROM book
WHERE author IN (SELECT author FROM book GROUP BY author HAVING COUNT(*) > 1);


GROUP BY price_range;

--동일한 장르 내에서 책의 평균 가격을 넘는 책을 찾기
SELECT b1.*
FROM book b1
JOIN (
  SELECT genre, AVG(price) as avg_price
  FROM book
  GROUP BY genre
) b2 ON b1.genre = b2.genre
WHERE b1.price > b2.avg_price;

--책의 출판 년도와 그 해에 출판된 책 수
SELECT publication_year, COUNT(*) OVER (PARTITION BY publication_year) as book_count
FROM book;

--각 장르별로 평균 가격과 최고 가격 가져오기 (PIVOT)
SELECT * FROM (
  SELECT genre, price, AVG(price) OVER (PARTITION BY genre) as avg_price
  FROM book
)
PIVOT (
  MAX(price) as max_price, AVG(avg_price) as avg_price
  FOR genre IN ('Fiction', 'Historical Fiction', 'Short Story')
);
