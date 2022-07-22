-- CREATE TABLE [dbo].[GiangVien] (
--     [GV#]      nVARCHAR (10) NOT NULL,
--     [HoTen]    nVARCHAR (40) NULL,
--     [DiaChi]   nVARCHAR (50) NULL,
--     [NgaySinh] DATE         NULL,
--     CONSTRAINT [PK_NewTable] PRIMARY KEY CLUSTERED ([GV#] ASC)
-- );

-- CREATE TABLE [dbo].[DeTai] (
--     [DT#]     nVARCHAR (10) NOT NULL,
--     [TenDT]   nVARCHAR (40) NULL,
--     [Cap]     nVARCHAR (20) NULL,
--     [KinhPhi] INT          NULL,
--     CONSTRAINT [PK_DeTai] PRIMARY KEY CLUSTERED ([DT#] ASC)
-- );

-- CREATE TABLE [dbo].[ThamGia] (
--     [GV#]   nVARCHAR (10) NULL,
--     [DT#]   nVARCHAR (10) NULL,
--     [SoGio] INT          NULL,
    
-- );
-- ALTER TABLE ThamGia
-- ADD CONSTRAINT GV#
--  FOREIGN KEY (GV#)
--  REFERENCES GiangVien (GV#);

--1
--SELECT GV#,HoTen,DiaChi,NgaySinh FROM GiangVien WHERE DiaChi LIKE N'Hai Bà Trưng%' ORDER BY HoTen DESC;

--2
--SELECT HoTen,DiaChi,NgaySinh FROM ThamGia,DeTai,GiangVien WHERE  TenDT LIKE N'Tính toán lưới%' AND ThamGia.DT# = DeTai.DT# AND GiangVien.GV# = ThamGia.GV# ;

--*****SELECT GV#,DT#,SoGio FROM ThamGia WHERE ThamGia.DT# = 'DT01' ; 
--SELECT DT#,TenDT,Cap,KinhPhi FROM 

--SELECT SUM(KinhPhi),Cap FROM DeTai GROUP BY Cap;
--SELECT DISTINCT Cap,KinhPhi FROM DeTai ORDER BY Cap;
--SELECT * FROM DeTai WHERE TenDT LIKE N'Tính toán lưới%' ORDER BY TenDT DESC;
--SELECT * FROM ThamGia,DeTai WHERE  TenDT LIKE N'Tính toán lưới%' AND ThamGia.DT# = DeTai.DT#;
--3
--SELECT DISTINCT HoTen,DiaChi,NgaySinh FROM ThamGia,DeTai,GiangVien WHERE  TenDT LIKE N'Phân loại văn bản%' OR TenDT LIKE N'Dịch tự động Anh Việt%'  AND ThamGia.DT# = DeTai.DT# AND GiangVien.GV# = ThamGia.GV# ;

--4
--SELECT GV#, COUNT(DT#) AS "So luong de tai"  FROM ThamGia GROUP BY GV# HAVING COUNT(DT#) >=2 ;

--SELECT  ThamGia.GV#, COUNT(DISTINCT ThamGia.DT#) AS "So luong de tai"  FROM ThamGia,GiangVien GROUP BY ThamGia.GV# HAVING COUNT(DISTINCT ThamGia.DT#) >=2 ;

--SELECT HoTen,DiaChi,NgaySinh  FROM ThamGia,GiangVien GROUP BY GV# HAVING COUNT(DT#) = MAX(COUNT(DT#));

--SELECT HoTen,DiaChi,NgaySinh FROM ThamGia,GiangVien WHERE GiangVien.GV# = ThamGia.GV# AND COUNT(ThamGia.DT#) > 2;
--SELECT HoTen,DiaChi,NgaySinh FROM ThamGia,DeTai,GiangVien WHERE GiangVien.GV# = ThamGia.GV# AND COUNT(ThamGia.DT#) > 2;

--5
--SELECT GV#, COUNT(DT#) AS "So luong"  FROM ThamGia GROUP BY GV# HAVING COUNT(DT#) >=2 ;
-- SELECT *
--    FROM GiangVien
--    WHERE ThamGia.GV# = GiangVien.GV# AND EXISTS (SELECT COUNT(DISTINCT ThamGia.DT#)  FROM ThamGia,GiangVien GROUP BY ThamGia.GV# HAVING COUNT(DISTINCT ThamGia.DT#) >=2 );
-- --ThamGia.GV# = GiangVien.GV#
-- SELECT COUNT(DISTINCT ThamGia.DT#)  FROM ThamGia,GiangVien GROUP BY ThamGia.GV# HAVING COUNT(DISTINCT ThamGia.DT#) >=2 

--SELECT  ThamGia.GV#, COUNT(DISTINCT ThamGia.DT#) AS "So luong de tai"  FROM ThamGia,GiangVien GROUP BY ThamGia.GV# HAVING COUNT(DISTINCT ThamGia.DT#) >=2 ;

--SELECT ThamGia.GV#, COUNT(DISTINCT ThamGia.DT#)  FROM ThamGia,GiangVien WHERE COUNT(DISTINCT ThamGia.DT#) > ALL (SELECT COUNT(DISTINCT ThamGia.DT#) FROM ThamGia GROUP BY ThamGia.GV# HAVING COUNT(DISTINCT ThamGia.DT#) >=2 );

-- SELECT * FROM GiangVien WHERE GV# IN
-- (SELECT GV#  FROM ThamGia GROUP BY GV# HAVING COUNT(DT#) >= ALL
-- (SELECT COUNT(DT#) FROM ThamGia GROUP BY GV#));
-- --

--SELECT ThamGia.GV#,GiangVien.GV# FROM ThamGia,GiangVien GROUP BY ThamGia.GV#,GiangVien.GV# HAVING COUNT(DT#) =0;
-- SELECT GV# FROM GiangVien 
-- EXCEPT
-- SELECT GV# FROM ThamGia;

--6
-- SELECT * FROM DeTai
-- WHERE KinhPhi = (
--     SELECT MIN(KinhPhi)
--     FROM DeTai
-- )

--7
-- SELECT GiangVien.GV#,HoTen,DiaChi,NgaySinh,DeTai.TenDT FROM GiangVien,DeTai,ThamGia 
-- WHERE DiaChi LIKE N'Tây Hồ%' AND ThamGia.DT# = DeTai.DT# AND GiangVien.GV# = ThamGia.GV# ;

--8


--9
-- SELECT ThamGia.GV#,GiangVien.HoTen, SUM(ThamGia."SoGio") AS "Tong so gio"
-- FROM GiangVien,ThamGia WHERE GiangVien.GV# = ThamGia.GV# 
-- GROUP BY ThamGia.GV#,GiangVien.HoTen;

--10
-- INSERT INTO GiangVien(GV#,HoTen,DiaChi,NgaySinh) 
-- VALUES ('GV06',N'Ngô Tuấn Phong',N'Đống Đa, Hà Nội','1986-09-08');

--12
-- DELETE  FROM [GiangVien]
--   WHERE GV#='GV02';


---------------------------------------------------------------
--create login hung1 with Password = 'Voanh0377234560';
--create user hung for login hung1;

--CREATE ROLE managerhihihihihihihi;
-- GRANT create table, create view
-- TO manager;

--GRANT managerhihihihihihihi TO hung;


