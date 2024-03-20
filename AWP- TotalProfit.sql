--- Menampilkan Total Profit yang didapatkan
SELECT SUM(SalesAmount) - SUM(TotalProductCost) [Total Profit]
FROM FactInternetSales;
