--- Menampilkan Karyawan teratas dengan penjualan terbanyak
SELECT TOP 1 CONCAT(D.LastName, ' ', D.FirstName) [Employee Name], SUM(F.SalesAmount) [Total Sales]
FROM FactInternetSales F
INNER JOIN DimEmployee D
on F.SalesTerritoryKey = D.SalesTerritoryKey
GROUP BY CONCAT(D.LastName, ' ', D.FirstName)
ORDER BY [Total Sales] Desc;