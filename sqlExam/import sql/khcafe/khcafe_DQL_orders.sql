
SELECT
	--주문 번호 --카페이름              --메뉴이름
	o.order_id, c.cname AS cafe_name,m.menu_name ,
	--메뉴가격   --총수량     --총금액
	m.price,    o.quantity, o.total_price
FROM ORDERS o
JOIN cafes c ON o.cafe_id = c.cafe_id
JOIN menu m ON o.menu_id = m.menu_id
WHERE o.order_id = 3;

