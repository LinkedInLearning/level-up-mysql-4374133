# All order numbers should start with 111 or 110 and contain only numbers
SELECT * FROM transactions WHERE ((OrderNum NOT LIKE "110%") AND (OrderNum NOT LIKE "111%")) OR (OrderNum LIKE "%-%");

# Data entry department says that all missing order prefixes are "110"
UPDATE transactions SET OrderNum = concat('110', OrderNum) WHERE (OrderNum NOT LIKE "110%") AND (OrderNum NOT LIKE "111%");

# Remove the - character from OrderNum
UPDATE transactions SET OrderNum = replace(OrderNum, '-', '');
UPDATE transactions SET OrderNum = replace(OrderNum, ']', '');