--- Menampilkan Total Top 10 pelanggan dengan penjualan terbanyak
SELECT TOP 10 CONCAT(LastName, ' ', FirstName) [Customer Name], SUM(SalesAmount) [Total Sales]
FROM FactInternetSales F
INNER JOIN DimCustomer D
ON F.CustomerKey = D.CustomerKey
GROUP BY CONCAT(D.LastName,' ', FirstName)
ORDER BY [Total Sales] Desc;