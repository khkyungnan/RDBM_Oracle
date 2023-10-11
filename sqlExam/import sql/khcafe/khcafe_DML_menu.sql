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
