SELECT * FROM transactions 
WHERE ((OrderNum NOT LIKE "110%") AND (OrderNum NOT LIKE "111%")) 
OR (OrderNum LIKE "%-%")
ORDER BY OrderNum DESC;

UPDATE transactions SET OrderNum = concat('110', OrderNum)
WHERE OrderNum NOT LIKE '110%' AND OrderNum NOT LIKE '111%';

UPDATE transactions SET OrderNum = replace(OrderNum, '-', '');
UPDATE transactions SET OrderNum = replace(OrderNum, ']', '');
UPDATE transactions SET OrderNum = replace(OrderNum, '00', '')
WHERE LENGTH(OrderNum) > 7;


