--- Menampilkan tahun dengan penjualan tertinggi
SELECT TOP 1 YEAR(OrderDate) Year, SUM(SalesAmount) [Total Sales]
FROM FactInternetSales
GROUP BY YEAR(OrderDate)
ORDER BY [Total Sales] Desc;
