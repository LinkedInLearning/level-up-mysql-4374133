SELECT * FROM transactions
WHERE (OrderNum NOT LIKE '110%' AND OrderNum NOT LIKE '111%')
OR OrderNum LIKE '%-%'
ORDER BY OrderNum DESC;