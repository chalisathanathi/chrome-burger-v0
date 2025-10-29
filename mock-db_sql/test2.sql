UPDATE orderitems
SET quantity = 14
WHERE item_id = 5;

UPDATE orderitems
SET quantity = 10
WHERE item_id = 1;

UPDATE orderitems
SET quantity = 10
WHERE item_id = 7;

DELETE FROM orderitems
WHERE item_id = 1;

DELETE FROM orderitems
WHERE item_id = 2;

DELETE FROM orderitems
WHERE item_id = 3;

DELETE FROM orderitems
WHERE item_id = 4;

DELETE FROM orderitems
WHERE item_id = 5;

DELETE FROM orderitems
WHERE item_id = 6;

DELETE FROM orderitems
WHERE item_id = 7;

DELETE FROM orderitems
WHERE item_id = 8;

SELECT *
FROM orderitems;