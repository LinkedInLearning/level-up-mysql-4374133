#SELECT ProdNumber FROM transactions WHERE ProdName LIKE '';

UPDATE transactions, product_catalog
SET transactions.ProdName = product_catalog.ProdName
WHERE transactions.ProdNumber = product_catalog.ProdNumber;