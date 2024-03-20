--- Mengecek dan menampilkan data customer yang EnglishOccupationnya yang hilang/kosong pada database DimCustomer. Setelah dicek tidak ada data yang hilang di tabel DimCustomer.
SELECT * 
FROM DimCustomer
WHERE EnglishOccupation iS NULL;