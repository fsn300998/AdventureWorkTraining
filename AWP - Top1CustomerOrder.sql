---	Menampilkan pelanggan dengan pesanan tertinggi (order Quantity)
SELECT TOP 1 CONCAT(D.LastName, ' ', D.FirstName) [Customer Name], SUM(OrderQuantity) [Order Quantity]
FROM FactInternetSales F
INNER JOIN DimCustomer D
on F.CustomerKey = D.CustomerKey
GROUP BY CONCAT(D.LastName, ' ', D.FirstName)
ORDER BY [Order Quantity] Desc;