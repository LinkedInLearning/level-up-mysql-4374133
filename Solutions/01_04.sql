SELECT * FROM transactions WHERE ProdName LIKE "" OR ProdName LIKE " ";
SELECT ProdNumber FROM transactions WHERE ProdName LIKE "" OR ProdName LIKE " ";

UPDATE transactions, product_catalog SET transactions.ProdName = product_catalog.ProdName WHERE transactions.ProdNumber = product_catalog.ProdNumber;
