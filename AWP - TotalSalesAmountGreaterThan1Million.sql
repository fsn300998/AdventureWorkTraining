--- Menampilkan EmployeeKey, Employee Name(LastName + FirstName) + Total Sales Amount(Sum(SalesAmount)) dari Tabel EmployeeKey left Join FactResellerSales Group by EmployeeKey, [Employee Name] dimana Total Sales Amount > 1.000.000 Order By [Total Sales Amount] dari urutan terbesar.
SELECT D.EmployeeKey, CONCAT(D.LastName,' ', D.FirstName) [Employee Name], SUM(F.SalesAmount) [Total Sales Amount]
FROM DimEmployee D
LEFT JOIN FactResellerSales F
ON D.EmployeeKey = F.EmployeeKey
GROUP BY D.EmployeeKey, CONCAT(D.LastName, ' ', D.FirstName)
HAVING SUM(F.SalesAmount)>1000000
ORDER BY [Total Sales Amount] DESC;
