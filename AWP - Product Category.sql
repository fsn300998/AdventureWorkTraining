---	Menampilkan jumlah produk di setiap kategori.
SELECT EnglishProductCategoryName [Product Category], COUNT(EnglishProductName) [No. Product in Category]
FROM DimProductCategory c
INNER JOIN DimProductSubcategory s
on c.ProductCategoryKey = s.ProductCategoryKey
INNER JOIN DimProduct p
on p.ProductSubcategoryKey = s.ProductSubcategoryKey
GROUP BY EnglishProductCategoryName;
