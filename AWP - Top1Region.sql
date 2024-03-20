--- Menampilkan wilayah-wilayah penjualan dengan penjualan terbanyak
SELECT TOP 1 D.SalesTerritoryRegion, SUM(F.SalesAmount) [Total Sales]
FROM FactInternetSales F
INNER JOIN DimSalesTerritory D
on F.SalesTerritoryKey = D.SalesTerritoryKey
GROUP BY D.SalesTerritoryRegion
ORDER BY [Total Sales] Desc;