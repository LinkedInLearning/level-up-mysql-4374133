SELECT * FROM `h+_sport`.transactions ORDER BY OrderNum ASC;
SELECT * FROM transactions ORDER BY OrderNum DESC;
# All order numbers should start with 111 or 110 and contain only numbers
SELECT * FROM transactions WHERE ((OrderNum NOT LIKE "110%") AND (OrderNum NOT LIKE "111%")) OR (OrderNum LIKE "%-%");