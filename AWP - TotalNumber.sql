--- Menampilkan total Produk pada tabel DimProduct.
SELECT COUNT(DISTINCT EnglishProductName) AS [Total Numbers Of Products]
FROM DimProduct;
