SELECT *
FROM menuitems
WHERE category = 'Burger';

SELECT name, price
FROM menuitems
ORDER BY price DESC;

SELECT name, price
FROM menuitems
ORDER BY price ASC
LIMIT 3;

SELECT ingredients.name AS ingredient, suppliers.name AS supplier_name
FROM suppliers
JOIN ingredients
  ON suppliers.supplier_id = ingredients.supplier_id
WHERE suppliers.name = 'Patty''s Premium Meats';

SELECT *
FROM staff
JOIN orders
  ON staff.staff_id = orders.staff_id
WHERE staff.staff_id = 1;

SELECT s.first_name, 
  s.last_name,
  COUNT(o.order_id) AS order_count
FROM staff s
JOIN orders o ON s.staff_id = o.staff_id
GROUP BY s.staff_id
ORDER BY order_count DESC;

SELECT DATE(order_date) AS sales_day, SUM(total_price) AS total_sales
FROM orders
GROUP BY sales_day
ORDER BY sales_day;

SELECT mi.name, SUM(oi.quantity) AS total_sold
FROM orderitems oi
JOIN menuitems mi ON oi.item_id = mi.item_id
GROUP BY mi.name
ORDER BY total_sold DESC;

SELECT 
  i.name,
  ri.quantity_needed,
  i.unit
FROM recipeitems ri
JOIN menuitems mi ON ri.item_id = mi.item_id
JOIN ingredients i ON ri.ingredient_id = i.ingredient_id
WHERE mi.name LIKE '%burger%';
