---- Menampilkan list tabel yang ada di database
SELECT * FROM AdventureWorksDW2022.INFORMATION_SCHEMA.TABLES;

---- Menampikan list tabel Dimana table_type yang ditampilkan hanya BASE TABLE
SELECT * FROM AdventureWorksDW2022.INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

---- Menampilkan Total table yang table_type =  BASE TABLE
SELECT COUNT(*) AS [Total Numbers Of Tables]
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

--- Menampilkan data dari tabel DimCustomer.
SELECT *FROM DimCustomer;

--- Menampilkan Jumlah Kolom yang ada pada tabel DimCustomer
SELECT COUNT(*) AS [Numbers Of Columns]
From INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'DimCustomer';

--- Menampilkan Jumlah Baris yang ada pada tabel DimCustomer
SELECT COUNT(*) AS [Numbers Of Rows]
FROM DimCustomer;

--- Mengecek dan menampilkan data customer yang EnglishOccupationnya yang hilang/kosong pada database DimCustomer. Setelah dicek tidak ada data yang hilang di tabel DimCustomer.
SELECT * 
FROM DimCustomer
WHERE EnglishOccupation iS NULL;
