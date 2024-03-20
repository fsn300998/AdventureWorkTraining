--- Memberikan peringkat pelanggan berdasarkan total penjualan
SELECT CONCAT(D.LastName,' ', D.FirstName) [Customer Name], ROUND(SUM(F.SalesAmount), 2) [Total Sales],
CASE
    WHEN SUM(SalesAmount) > 10000 THEN 'Diamond'
    WHEN SUM(SalesAmount) > 5000 AND SUM(SalesAmount) < 9999 THEN 'Gold'
    WHEN SUM(SalesAmount) > 1000 AND SUM(SalesAmount) < 4999 THEN 'Silver'
    ELSE 'Bronze'
END AS 'Customer Rank'
FROM FactInternetSales F
INNER JOIN DimCustomer D
ON F.CustomerKey = D.CustomerKey
GROUP BY CONCAT(D.LastName,' ', D.FirstName)
ORDER BY[Total Sales] DESC;