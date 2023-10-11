##### MENU DML #####
-- menu 1
INSERT INTO menu (menu_id, cafe_id, menu_name, price)
VALUES (1, 1, '에스프레소', 3.50);

UPDATE menu
SET description = '강렬한 에스프레소 커피 영국을 느낄 수 있음'
WHERE menu_id = 1 AND cafe_id = 1;

-- menu 2
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (2, 1, '아메리카노', 4.00, '매끈한 아메리카노 커피');

-- menu 3
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (3, 2, '카페 라떼', 4.50, '부드러운 카페 라떼');

-- menu 4
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (4, 2, '카푸치노', 4.50, '크림이 올라간 카푸치노');

-- menu 5
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (5, 3, '아이스 커피', 3.75, '시원한 아이스 커피');

-- menu 6
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (6, 3, '모카라떼', 5.00, '초콜릿 풍미의 모카라떼');

-- menu 7
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (7, 4, '핫 초코렛', 4.25, '따뜻한 핫 초콜릿');

-- menu 8
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (8, 4, '카페 아메리카노', 3.75, '매쁜한 카페 아메리카노');

-- menu 9
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (9, 5, '카페 모카', 4.50, '모카풍미의 카페 모카');

-- menu 10
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (10, 5, '바닐라 라떼', 4.25, '바닐라 향의 라떼');





-- menu 11
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (11, 6, '차이 티', 3.25, '상쾌한 차이 티');

-- menu 12
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (12, 7, '아포카토', 4.75, '부드러운 아포카토');

-- menu 13
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (13, 8, '헤이즐넛 라떼', 4.50, '고소한 헤이즐넛 풍미');

-- menu 14
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (14, 9, '바닐라 아메리카노', 4.00, '바닐라 아메리카노');

-- menu 15
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (15, 10, '딸기 스무디', 5.50, '달콤한 딸기 스무디');

-- menu 16
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (16, 11, '레몬에이드', 4.25, '상큼한 레몬에이드');

-- menu 17
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (17, 12, '아이스 카페 모카', 5.25, '시원한 아이스 카페 모카');

-- menu 18
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (18, 13, '초코 민트 커피', 4.75, '상쾌한 초코 민트 풍미');

-- menu 19
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (19, 14, '카라멜 맥치아또', 4.50, '달콤한 카라멜 풍미');

-- menu 20
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (20, 15, '아이스 그린 티', 3.75, '시원한 아이스 그린 티');

-- Update menu descriptions
UPDATE menu
SET description = '맛있는 차이 티'
WHERE menu_id = 11;

UPDATE menu
SET description = '향긋한 아포카토'
WHERE menu_id = 12;


-- 20
INSERT INTO orders (order_id, cafe_id, menu_id, order_date, quantity, total_price)
VALUES (30, 17, 26, TIMESTAMP '2023-10-11 12:00:00', 1, 4.25);


-- (메뉴 ID 21부터 26까지)
INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (21, 7, '아메리카노', 4.00, '매끈한 아메리카노 커피');

INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (22, 9, '카페 라떼', 4.50, '부드러운 카페 라떼');

INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (23, 11, '카푸치노', 4.50, '크림이 올라간 카푸치노');

INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (24, 13, '아이스 커피', 3.75, '시원한 아이스 커피');

INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (25, 15, '모카라떼', 5.00, '초콜릿 풍미의 모카라떼');

INSERT INTO menu (menu_id, cafe_id, menu_name, price, description)
VALUES (26, 17, '핫 초코렛', 4.25, '따뜻한 핫 초콜릿');



