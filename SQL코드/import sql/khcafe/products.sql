-- 제품 테이블 생성
CREATE TABLE products (
    product_id NUMBER(5) PRIMARY KEY,
    product_name VARCHAR2(100),
    category VARCHAR2(50),
    price NUMBER(10, 2),
    stock_quantity NUMBER(5)
);
--인덱스 생성 : 제품 이름으로 검색을 최적화
CREATE INDEX idx_product_name ON products(product_name);

--인덱스 생성 : 카테고리로 검색을 최적화
CREATE INDEX idx_category ON products(category);

INSERT INTO products( product_id, product_name, category, price, stock_quantity)
VALUES (1, '노트북', '전자제품', 899.99, 10);

INSERT INTO products( product_id, product_name, category, price, stock_quantity)
VALUES (2, '스마트폰', '전자제품', 499.99, 20);

INSERT INTO products( product_id, product_name, category, price, stock_quantity)
VALUES (3, '커피머신', '가전제품', 59.99, 5);

INSERT INTO products( product_id, product_name, category, price, stock_quantity)
VALUES (4, '운동화', '신발', 79.99, 30);

INSERT INTO products(product_id, product_name, category, price,stock_quantity)
VALUES (5, '후드 집업', '의류', 20.99, 33);

INSERT INTO products(product_id, product_name, category, price,stock_quantity)
VALUES (6, '원 피 스', '의류', 10.99,2);




--제품 이름으로 검색 (인덱스 활용)
SELECT * FROM products
WHERE product_name = '노트북';
