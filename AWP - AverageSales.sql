---	Rata rata penjualan per pelanggan
SELECT CONCAT(D.LastName,' ', D.FirstName) [Customer Name], AVG(F.SalesAmount) [Average Sales]
FROM FactInternetSales F
JOIN DimCustomer D
ON F.CustomerKey = D.CustomerKey
GROUP BY CONCAT(D.LastName, ' ', FirstName)
ORDER BY [Customer Name];