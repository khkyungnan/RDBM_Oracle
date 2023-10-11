-- 주문을 주문 테이블에 추가
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (1, 1, 1, TIMESTAMP '2023-10-11 14:30:00', 2, 7.00);

-- 주문 2
INSERT INTO orders (order_id, cafe_id, menu_id,order_date, quantity, total_price)
VALUES (2,2,2, TIMESTAMP '2023-10-11 10:00:00', 3 ,12.00)

-- 주문 3
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (3, 3, 4, TIMESTAMP '2023-10-11 10:00:00', 1, 4.50);

-- 주문 4
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (4, 5, 6, TIMESTAMP '2023-10-11 17:15:00', 2, 10.00);

--주문 5
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (5, 8, 8, TIMESTAMP '2023-10-11 16:30:00', 3, 11.25);

--  주문 6
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (6, 10, 10, TIMESTAMP '2023-10-11 15:45:00', 1, 4.25);

-- 주문 7
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (7, 11, 12, TIMESTAMP '2023-10-11 13:15:00', 2, 10.00);

-- 주문 8
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (8, 13, 14, TIMESTAMP '2023-10-11 11:00:00', 4, 18.00);

-- 주문 9
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (9, 14, 16, TIMESTAMP '2023-10-11 18:30:00', 2, 9.00);

-- 주문 10
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (10, 16, 18, TIMESTAMP '2023-10-11 19:45:00', 1, 4.50);





/*******************************
      수정된 insert 문
********************************/


-- 주문 7
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (7, 7, 7, TIMESTAMP '2023-10-11 09:00:00', 1, 4.25);

-- 주문 8 
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (8, 4, 5, TIMESTAMP '2023-10-11 16:30:00', 3, 15.00);

-- 주문 9 
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (9, 5, 6, TIMESTAMP '2023-10-11 15:45:00', 2, 10.00);

-- 주문 10
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (10, 6, 7, TIMESTAMP '2023-10-11 14:15:00', 1, 4.25);



/*******************************
      추가된 insert 문
********************************/

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (11, 6, 7, TIMESTAMP '2023-10-11 14:30:00', 3, 12.75);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (12, 7, 8, TIMESTAMP '2023-10-11 15:45:00', 2, 7.50);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (13, 8, 9, TIMESTAMP '2023-10-11 16:00:00', 1, 4.50);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (14, 10, 10, TIMESTAMP '2023-10-11 11:30:00', 4, 17.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (15, 12, 11, TIMESTAMP '2023-10-11 13:15:00', 2, 7.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (16, 13, 12, TIMESTAMP '2023-10-11 12:45:00', 3, 13.50);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (17, 15, 13, TIMESTAMP '2023-10-11 17:30:00', 1, 4.25);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (18, 17, 14, TIMESTAMP '2023-10-11 18:15:00', 2, 9.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (19, 19, 15, TIMESTAMP '2023-10-11 19:00:00', 1, 5.50);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (20, 1, 16, TIMESTAMP '2023-10-11 14:00:00', 3, 15.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (21, 2, 17, TIMESTAMP '2023-10-11 15:30:00', 4, 18.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (22, 3, 18, TIMESTAMP '2023-10-11 16:45:00', 2, 9.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (23, 4, 19, TIMESTAMP '2023-10-11 12:15:00', 1, 4.50);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (24, 7, 21, TIMESTAMP '2023-10-11 14:30:00', 3, 12.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (25, 9, 22, TIMESTAMP '2023-10-11 15:45:00', 2, 9.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (26, 11, 23, TIMESTAMP '2023-10-11 17:30:00', 2, 9.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (27, 13, 24, TIMESTAMP '2023-10-11 18:45:00', 3, 13.50);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (28, 15, 25, TIMESTAMP '2023-10-11 19:15:00', 1, 4.25);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (29, 17, 26, TIMESTAMP '2023-10-11 10:00:00', 4, 17.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (30, 7, 21, TIMESTAMP '2023-10-11 14:15:00', 2, 8.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (31, 7, 21, TIMESTAMP '2023-10-11 14:45:00', 2, 8.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (32, 9, 22, TIMESTAMP '2023-10-11 17:00:00', 4, 18.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (33, 11, 23, TIMESTAMP '2023-10-11 18:30:00', 1, 4.50);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (34, 13, 24, TIMESTAMP '2023-10-11 19:15:00', 2, 9.00);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (35, 15, 25, TIMESTAMP '2023-10-11 10:45:00', 3, 13.50);

INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (36, 17, 26, TIMESTAMP '2023-10-11 12:00:00', 1, 4.25);


