ALTER TABLE orders
ADD COLUMN `OrderDateReal` DATETIME AFTER `OrderDate`;

UPDATE orders SET OrderDateReal = STR_TO_DATE(OrderDate, '%m/%d/%Y');

ALTER TABLE orders
DROP COLUMN OrderDate,
CHANGE COLUMN OrderDateReal OrderDate DATETIME NOT NULL;