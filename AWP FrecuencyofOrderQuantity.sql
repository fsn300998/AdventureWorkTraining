---	Menampilkan frekuensi kuantitas pesanan pelanggan
SELECT [Total Order Quantity], COUNT([Total Order Quantity]) AS [Frequency of Order Quantity]
FROM (SELECT CONCAT(D.LastName,' ', D.FirstName)[Customer Name], SUM(OrderQuantity) AS [Total Order Quantity]
    FROM FactInternetSales F
    INNER JOIN DimCustomer D
    on F.CustomerKey = D.CustomerKey
    GROUP BY CONCAT(D.LastName, ' ', D.FirstName)) [Total Order Quantity Table]
GROUP BY [Total Order Quantity]
ORDER BY [Frequency of Order Quantity] Desc;
