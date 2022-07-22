-- CREATE DATABASE QLKH

---1------------------
-- CREATE TABLE GiangVien(
-- 	GV# VARCHAR(10) NOT NULL PRIMARY KEY,
-- 	HoTen NVARCHAR(30),
-- 	NamSinh INT,
-- 	DiaChi NVARCHAR(50)
-- )

-- INSERT INTO Giangvien
-- VALUES
--   ('GV001','Wade Foley',1953,'584-9675 Ultricies'),
--   ('GV002','Grace Potts',1989,'P.O. Box 480, 148 Risus'),
--   ('GV003','Odessa Vinson',1960,'7987 Laoreet, Rd.'),
--   ('GV004','Gloria Underwood',1991,'Ap #534-2946 Augue'),
--   ('GV005','Brett Guy',1979,'731-1588 Urna. St.'),
--   ('GV006','Ariel Moran',1989,'Ap #337-6610 Est Av.'),
--   ('GV007','Maxwell Brock',1963,'174-9963 Sem. Avenue'),
--   ('GV008','Jermaine Bell',1993,'Ap #289-5611 Eu Ave'),
--   ('GV009','Silas Hyde',1966,'Ap #932-1316 Dictum Av.'),
--   ('GV010','Lucy Trevino',1977,'P.O. Box 226, 3551 Et Av.');

-- CREATE TABLE DETAI (
--       DT# INT PRIMARY KEY,
--       TenDT VARCHAR(50),
--       TheLoai VARCHAR(20)
-- );
-- INSERT INTO [DETAI] (DT#,TenDT,TheLoai)
-- VALUES
--   (1,'Nec Inc.','Literary'),
--   (2,'Elit Pharetra Ut Incorporated','Al'),
--   (3,'Sapien LLC','BigData'),
--   (4,'Varius Et Incorporated','Literary'),
--   (5,'Nulla Eget Metus Incorporated','Al'),
--   (6,'Quisque Varius Associates','Nihonnobunka'),
--   (7,'Sodales Mauris Associates','Mathematic'),
--   (8,'Lorem Eget Industries','IT'),
--   (9,'Nec Quam Ltd','Nihonnobunka'),
--   (10,'Lectus Incorporated','IT');

-- CREATE TABLE SinhVien (
    
--     [SV#] INTEGER PRIMARY KEY,
--     [TenSV] NVARCHAR(30) NULL,
--     [NgaySinh] DATE NULL,
--     [QueQuan] NVARCHAR(20) NULL,
--     [Lop] VARCHAR(20) NULL,
-- );
-- GO

-- INSERT INTO SinhVien (SV#,TenSV,NgaySinh,QueQuan,Lop)
-- VALUES
--   (1,'Tamekah Nguyễn','1-Sep-1990','Berlin','12B'),
--   (2,'Pascale Nguyễn','25-May-1990','Yogyakarta','3C'),
--   (3,'Valentine Nguyễn','29-Aug-1996','Abergele','4D'),
--   (4,'Rinah Nguyễn','19-May-1999','Kalisz','4C'),
--   (5,'Moses Nguyễn','24-Aug-1994','Catemu','5B'),
--   (6,'Ava Nguyễn','2-Apr-1997','Châteauroux','6Z'),
--   (7,'Katelyn Kỳ','18-Nov-1988','Whakatane','8H'),
--   (8,'Naida Nguyễn','19-Feb-1994','Torrevecchia Teatina','6J'),
--   (9,'Dorian Nguyễn','11-Jan-1993','Whyalla','4D'),
--   (10,'Melvin Nguyễn','10-Oct-1993','Piedecuesta','8D'),
--   (11,'Lamar Nguyễn','12-Aug-1994','Port Harcourt','9C'),
--   (12,'Chancellor Nguyễn','12-Mar-1991','Uruapan','7A'),
--   (13,'Jena Nguyễn','25-Mar-2001','Hammerfest','8B'),
--   (14,'Quynn Nguyễn','22-Apr-1996','Navojoa','8B'),
--   (15,'Jin Nguyễn','24-Sep-1998','Shillong','4D');

-- INSERT INTO SinhVien (SV#,TenSV,NgaySinh,QueQuan,Lop)
-- VALUES
--   (16,'Nguyễn Văn Nam','1-Sep-1990','Bắc Giang','12B'),
--   (17,'Nguyễn Văn Nam','1-Sep-2000','Ninh Bình','12A');

--  DROP TABLE HuongDan

-- CREATE TABLE HuongDan (
--     [GV#] VARCHAR(10) NOT NULL,
--     [DT#] INTEGER NOT NULL,
--     [SV#] INTEGER NOT NULL,
--     [NamThucHien] INTEGER NULL,
-- 	[KetQua] FLOAT NOT NULL,
-- );

-- ALTER TABLE HuongDan
-- ADD CONSTRAINT GV#
--  FOREIGN KEY (GV#)
--  REFERENCES GiangVien (GV#);

-- ALTER TABLE HuongDan
-- ADD CONSTRAINT DT#
--  FOREIGN KEY (DT#)
--  REFERENCES DeTai (DT#);

-- ALTER TABLE HuongDan
-- ADD CONSTRAINT SV#
--  FOREIGN KEY (SV#)
--  REFERENCES SinhVien (SV#);

-- INSERT INTO [HuongDan] (GV#,DT#,SV#,NamThucHien,KetQua)
-- VALUES
--   ('GV008',9,1,1944,6.5),
--   ('GV002',6,1,1975,6.5),
--   ('GV006',8,4,1962,7.5),
--   ('GV001',3,5,1989,8.0),
--   ('GV008',5,7,2010,5.0),
--   ('GV005',5,3,1905,10),
--   ('GV009',9,10,2005,4.5),
--   ('GV002',7,11,1978,8.5),
--   ('GV009',5,11,2012,9.5),
--   ('GV004',1,10,2013,7.5),
--   ('GV003',6,4,1949,3.0),
--   ('GV005',8,8,2009,2.0),
--   ('GV001',8,7,1903,5.5),
--   ('GV007',1,4,1909,6.5),
--   ('GV005',6,11,1981,7.5),
--   ('GV002',4,7,1933,9.0),
--   ('GV009',4,14,1923,10.0),
--   ('GV005',5,5,1963,3.0),
--   ('GV003',6,10,1952,9.0),
--   ('GV002',2,2,1903,6.5);

-- INSERT INTO [HuongDan] (GV#,DT#,SV#,NamThucHien,KetQua)
-- VALUES
--   ('GV008',9,1,2022,7.5);


------2---------
-- ĐƯA RA THÔNG TIN GV = 'GV001'
-- SELECT * FROM GiangVien WHERE GV# = 'GV001';
--ĐẾM ĐỀ TÀI 'Ứng Dụng'
-- INSERT INTO DeTai(DT#,TenDT,TheLoai) VALUES(11,'Nec Inc.',N'Ứng Dụng');
-- INSERT INTO DeTai(DT#,TenDT,TheLoai) VALUES(12,'Nec Inc.',N'Ứng Dụng');
-- INSERT INTO DeTai(DT#,TenDT,TheLoai) VALUES(13,'Nec Quam Ltd',N'Ứng Dụng');
-- SELECT COUNT(DT#) FROM DeTai 
-- GROUP BY DeTai.TheLoai HAVING DeTai.TheLoai = 'Ứng Dụng';

--ĐẾM SỐ SINH VIÊN CÓ QUÊ Ở HẢI PHÒNG MÀ GIẢNG VIÊN CÓ MÃ GV012 ĐÃ DẠY 
-- UPDATE SinhVien 
-- SET QueQuan = N'Hải Phòng' WHERE SV# IN (2,4,5,1,7,9)
-- INSERT INTO GiangVien(GV#,HoTen,NamSinh,DiaChi) VALUES ('GV012','Bt Guy',1979,'731-588 Una. St.')
-- UPDATE HuongDan 
-- SET GV# = 'GV012' WHERE SV# IN (2,4,7,9)
-- SELECT COUNT(SinhVien.SV#) FROM GiangVien ,SinhVien,HuongDan
-- WHERE GiangVien.[GV#] = HuongDan.[GV#] AND SinhVien.[SV#] = HuongDan.[SV#] AND GiangVien.[GV#] = 'GV012'

-- ĐƯA RA ĐỀ NÀY CHƯA CÓ SINH VIÊN NÀO THỰC HIỆN
-- SELECT TenDT FROM DeTai
-- EXCEPT
-- SELECT TenDT FROM DeTai, HuongDan WHERE DeTai.DT# = HuongDan.DT#;

-- THAY ĐỔI NGÀY SINH CHÍNH XÁC CHO NGUYỄN XUÂN DŨNG
-- INSERT INTO SinhVien(SV#,TenSV,NgaySinh,QueQuan,Lop) VALUES (20,N'Nguyễn Xuân Dũng','12-12-1991',N'Hà Nam','12B')
-- UPDATE SinhVien
-- SET NgaySinh = '12-11-1991' WHERE TenSV = N'Nguyễn Xuân Dũng' AND QueQuan = N'Hà Nam';


-- Vì lý do khách quan, sinh viên : "Nguyễn Văn Nam", quê quán "Bắc Giang" đã xin thôi học.Hãy xoá toàn bộ thông tin liên quan đến sinh viên này.
-- INSERT INTO [HuongDan] (GV#,DT#,SV#,NamThucHien,KetQua)
-- VALUES
--   ('GV008',9,20,1944,6.5),
--   ('GV002',6,2,1975,6.5);
--  INSERT INTO SinhVien (SV#,TenSV,NgaySinh,QueQuan,Lop)
-- VALUES
--   (21,'Nguyễn Văn Nam','1-Sep-1990','Bắc Giang','12B'),
--   (22,'Nguyễn Văn Nam','1-Sep-2000','Ninh Bình','12A');


-- DELETE  FROM [HuongDan]
--    WHERE SV# IN
--    (SELECT SinhVien.SV# FROM SinhVien JOIN HuongDan ON SinhVien.SV# = HuongDan.SV#
--    WHERE SinhVien.TenSV =N'Nguyễn Văn Nam' AND SinhVien.QueQuan=N'Bắc Giang');

--    DELETE FROM [SinhVien]
--    WHERE TenSV=N'Nguyễn Văn Nam' AND QueQuan=N'Bắc Giang';

-- Tạo view để đưa ra các thông tin về đề tài hướng dẫn sinh viên của các giảng viên.
-- DROP VIEW detaihuongdan
-- CREATE VIEW detaihuongdan AS
-- SELECT DeTai.DT#,DeTai.TenDT, DeTai.TheLoai,HuongDan.NamThucHien
-- FROM DeTai,HuongDan
-- WHERE DeTai.DT# = HuongDan.DT#;

-- Sử dụng view vừa tạo cho biết thông tin các đề tài hướng dẫn năm 2022.
-- SELECT *
-- FROM detaihuongdan
-- WHERE  detaihuongdan.NamThucHien = '2022';

-- Tạo index view cho 2 trường hợp: sử dụng unique cluseted index và non-clusted index trên một trường trong view vừa tạo đê so sánh hiệu năng

-- ALTER VIEW detaihuongdan WITH SCHEMABINDING AS
-- SELECT DeTai.DT#,DeTai.TenDT, DeTai.TheLoai,HuongDan.NamThucHien
-- FROM DeTai,HuongDan
-- WHERE DeTai.DT# = HuongDan.DT#;
-- CREATE UNIQUE CLUSTERED INDEX nonix_NamThucHien ON detaihuongdan(NamThucHien);
-- ALTER VIEW detaihuongdan WITH SCHEMABINDING AS

-- CREATE INDEX IX_detaihuongdan_NamThucHien
-- ON detaihuongdan(NamThucHien)

-----------------3--------
--BACKUP
--backup database THIGIUAKI to disk = '/var/opt/mssql/data/THIGIUAKI.bar'
--RESTORE
--restore database THIGIUAKI to disk = '/var/opt/mssql/data/THIGIUAKI.bar'


--------4------------
--a, 
-----VÌ EM DÙNG AZURE NÊN MẬT KHẨU YÊU CẦU TỐI THIỂU PHẢI tối thiểu 8 ký tự và có ký tự đặc biệt Ạ.
-- CREATE LOGIN ThuyNV WITH PASSWORD = 'thuy@12345';
-- CREATE LOGIN QuanTL WITH PASSWORD = 'quan@12345';
--  CREATE USER [Nguyễn Văn Thủy] FOR LOGIN ThuyNV;
--   CREATE USER [Trần Lâm Quân] FOR LOGIN QuanTL;
-- GRANT CONNECT ANY DATABASE  TO QuanTL;
-- GRANT CONNECT ANY DATABASE  TO ThuyNV;
-- GRANT SELECT ON dbo.GiangVien TO [Nguyễn Văn Thủy];
--   GRANT SELECT ON dbo.HuongDan TO [Nguyễn Văn Thủy];
--   GRANT CREATE TABLE TO [Trần Lâm Quân];
--   GRANT CREATE VIEW  TO [Trần Lâm Quân];
-- GRANT SELECT ON SCHEMA::dbo TO [Nguyễn Văn Thủy];
--   GRANT SELECT ON SCHEMA::dbo TO [Nguyễn Văn Thủy];
--b,
--   CREATE ROLE TienvaCuong;
-- GRANT SELECT ON dbo.GiangVien TO TienvaCuong;
--   GRANT SELECT ON dbo.HuongDan TO TienvaCuong;
--   GRANT CREATE TABLE TO TienvaCuong;
--   GRANT CREATE VIEW  TO TienvaCuong;
--   GRANT ALL PRIVILEGES TO TienvaCuong ;
-- CREATE LOGIN TienND WITH PASSWORD = 'tien@12345';
--   CREATE LOGIN CuongPV WITH PASSWORD = 'cuong@12345';
-- CREATE USER [Nguyễn Duy Tiến] FOR LOGIN TienND;
--   CREATE USER [Phạm Việt Cường] FOR LOGIN CuongPV;
--   GRANT  TienvaCuong TO [Nguyễn Duy Tiến];
--   ALTER ROLE TienvaCuong ADD MEMBER [Nguyễn Duy Tiến]; 
--   ALTER ROLE TienvaCuong ADD MEMBER [Phạm Việt Cường]; 


