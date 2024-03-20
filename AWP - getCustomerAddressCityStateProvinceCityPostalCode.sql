---	Menampilkan kolom nama (last name + firstname disatukan menjadi customer name), (AddressLine1+AddressLine2 disatukan jadi Address), City, StateProvinceCode, Postal Code dengan tabel DimCustomer Inner Join DimGeography Order By LastName
SELECT CONCAT(D.LastName,' ', D.FirstName) [Customer Name], CONCAT(D.AddressLine1, ' ',D.AddressLine2) [Address], G.City, G.StateProvinceCode, G.PostalCode
FROM DimGeography G
JOIN DimCustomer D
ON G.GeographyKey = D.GeographyKey
ORDER BY LastName;