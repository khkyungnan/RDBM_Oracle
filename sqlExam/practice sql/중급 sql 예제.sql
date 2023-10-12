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
