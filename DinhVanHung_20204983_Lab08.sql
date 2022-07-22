
-- CREATE TABLE Khachhang (
--     [MaKH]        INT           NOT NULL,
--     [Hoten]       NVARCHAR (50) NULL,
--     [Sodienthoai] INT           NULL,
--     [Coquan]      NVARCHAR (50) NULL,
--     CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED ([MaKH] ASC)
-- );

-- CREATE TABLE Nhachothue (
--     [MaN]       INT           NOT NULL,
--     [Diachi]    NVARCHAR (50) NULL,
--     [Giathue]   INT           NULL,
--     [Tenchunha] NVARCHAR (50) NULL,
--     CONSTRAINT [PK_Nhachothue] PRIMARY KEY CLUSTERED ([MaN] ASC)
-- );

-- CREATE TABLE Hopdong (
--     [MaN]         INT  NULL,
--     [MaKH]        INT  NULL,
--     [Ngaybatdau]  DATE NULL,
--     [Ngayketthuc] DATE NULL,
-- );
-- ALTER TABLE Hopdong
-- ADD CONSTRAINT MaN
-- FOREIGN KEY (MaN)
-- REFERENCES Nhachothue (MaN);

-- ALTER TABLE Hopdong
-- ADD CONSTRAINT MaKH
-- FOREIGN KEY (MaKH)
-- REFERENCES Khachhang (MaKH);


--INSERT INTO Khachhang () VALUES (); -- 1 bản ghi
-- INSERT INTO Khachhang (MaKH) SELECT 0 FROM Khachhang; -- 2 bản ghi
-- INSERT INTO Khachhang (MaKH) SELECT 0 FROM Khachhang; -- 4 bản ghi
-- INSERT INTO Khachhang (MaKH) SELECT 0 FROM Khachhang; -- 8 bản ghi
-- INSERT INTO Khachhang (MaKH) SELECT 0 FROM Khachhang; -- 16 bản ghi
-- INSERT INTO Khachhang (MaKH) SELECT 0 FROM Khachhang; 

-- UPDATE Khachhang SET
--     MaKH      = CEIL(RAND() * 10000)
-- ;  
-- CREATE TABLE item (
--   id INT PRIMARY KEY ,
--   name VARCHAR(10),
--   description VARCHAR(30),
--   price INT,
--   created_at DATETIME
-- );
-- INSERT INTO Khachhang (MaKH,Hoten,Sodienthoai,Coquan)
-- VALUES
--   (39,'Teegan Gross',25706954,'P.O. Box 715, 8747 Libero. Ave'),
--   (79,'Vincent Cardenas',72538903,'2913 Orci, Road'),
--   (3,'Isabella Bird',73396971,'P.O. Box 801, 8062 Interdum St.'),
--   (10,'Neil Gray',34494264,'Ap #629-3371 Erat St.'),
--   (61,'Mallory Bright',30285279,'P.O. Box 707, 4202 Gravida Avenue');
-- INSERT INTO Khachhang (MaKH,Hoten,Sodienthoai,Coquan)
-- VALUES
--   (41,'Dinhvanhung',25706954,'P.O. Box 715, 8747 Libero. Ave');

-- INSERT INTO Nhachothue (MaN,Diachi,Giathue,Tenchunha)
-- VALUES
--   (39,'P.O. Box 715, 8747 Libero. Ave',1461919,'Teegan Gross'),
--   (79,'2913 Orci, Road',1381783,'Vincent Cardenas'),
--   (3,'P.O. Box 801, 8062 Interdum St.',1871526,'Isabella Bird'),
--   (10,'Ap #629-3371 Erat St.',1740353,'Neil Gray'),
--   (61,'P.O. Box 707, 4202 Gravida Avenue',1134037,'Mallory Bright'),
--   (66,'P.O. Box 406, 8277 Posuere Rd.',1025158,'Malik Malone'),
--   (78,'523-2127 Aliquam Avenue',1088148,'Lacy Irwin'),
--   (59,'Ap #129-5551 Aenean Street',1357776,'Celeste Hartman'),
--   (2,'P.O. Box 988, 9244 Rutrum2. St.',1737451,'Joleni Holder'),
--   (77,'657-3789 Phasellus Ave',1886919,'Abigail Fischer'),
--   (7,'Ap #561-8720 Scelerisque Av.',1693763,'Paloma Chase'),
--   (31,'Ap #417-9721 Vitae Rd.',1028839,'Martha Parker'),
--   (13,'865-5234 Lacus Rd.',1191634,'Fatima Frye'),
--   (65,'5985 Vel, Avenue',1753692,'Sacha Ellis'),
--   (14,'970-8431 Ornare Rd.',1163205,'Leonard Medina'),
--   (23,'Ap #807-3444 Curae Ave',1627711,'Gay Wall'),
--   (82,'Ap #510-8290 Commodo Avenue',1066882,'Hop Avery'),
--   (92,'P.O. Box 353, 6534 Aliquet Ave',1290231,'Amena Salazar'),
--   (43,'Ap #393-9299 Non Avenue',1688885,'Tallulah Byrd'),
--   (76,'867-4781 Eros St.',1662761,'Cally Hays')
--   ;

-- INSERT INTO Nhachothue (MaN,Diachi,Giathue,Tenchunha)
-- VALUES
--   (9,'P.O. Box 715, 8747 Libero. Ave',20000000,'DinhVanHung');

-- INSERT INTO Nhachothue (MaN,Diachi,Giathue,Tenchunha)
-- VALUES
--   (1000000,'P.O. Box 715, 8747 Libero. Ave',20000000,'Nông Văn Dền');
-- INSERT INTO [Hopdong] (MaN,MaKH,Ngaybatdau,Ngayketthuc)
-- VALUES
--   (76,39,'2022-Feb-18','2022-Feb-26'),
--   (92,3,'2022-Feb-6','2022-Apr-30'),
--   (43,3,'2023-Mar-12','2022-Apr-9'),
--   (76,3,'2021-Oct-30','2022-Dec-30'),
--   (82,79,'2022-Apr-15','2022-Jan-6'),
--   (82,10,'2022-Dec-3','2021-Oct-9'),
--   (23,10,'2022-Jun-27','2022-Jul-8'),
--   (14,61,'2023-Apr-5','2022-Aug-15'),
--   (65,10,'2021-Sep-22','2022-Dec-28'),
--   (13,39,'2021-Jul-31','2022-Jul-24'),
--   (31,39,'2021-Jul-28','2022-Apr-12'),
--   (7,79,'2022-Dec-29','2023-May-13'),
--   (77,3,'2022-Sep-23','2022-Nov-18'),
--   (2,3,'2023-Jan-4','2021-Jun-26'),
--   (59,10,'2021-Jun-28','2023-May-3'),
--   (78,10,'2021-Jun-14','2021-Sep-12'),
--   (65,10,'2023-Jan-23','2021-Sep-24'),
--   (61,61,'2022-Apr-10','2022-May-13'),
--   (3,10,'2022-Apr-3','2022-Sep-4'),
--   (79,3,'2022-May-19','2022-Mar-13');
-- INSERT INTO [Hopdong] (MaN,MaKH,Ngaybatdau,Ngayketthuc)
-- VALUES
--   (8,41,'2022-Feb-20','2022-Feb-26');
-- INSERT INTO [Hopdong] (MaN,MaKH,Ngaybatdau,Ngayketthuc)
-- VALUES
--   (1000000,41,'2022-Feb-20','2022-Feb-26');

--B
--1
-- SELECT Diachi,Tenchunha,Giathue
-- FROM Nhachothue
-- WHERE Giathue < 10000000;

--2
-- SELECT Khachhang.MaKH,Khachhang.Hoten,Khachhang.Coquan
-- FROM Khachhang,Nhachothue,Hopdong
-- WHERE Khachhang.MaKH = Hopdong.MaKH AND Hopdong.MaN = Nhachothue.MaN AND Nhachothue.Tenchunha = 'Nông Văn Dền';

--3
-- SELECT * 
-- FROM Nhachothue, Hopdong
-- WHERE Nhachothue.MaN <> Hopdong.MaN;

--4
-- SELECT MAX(Nhachothue.Giathue) AS "Gia thue cao nhat"
-- FROM  Nhachothue,Hopdong
-- WHERE Nhachothue.MaN = Hopdong.MaN;

--C

--1
-- DECLARE @Number INT = 10000;
--   WHILE @Number < 1000000
--   BEGIN
--   INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan)
--   VALUES (@Number,N'test',2473846,N'CoQuantest');
--   SET @Number = @Number + 1;
--   END
--   GO

-- DROP INDEX IX_Khachhang_Coquan ON Khachhang
--DROP INDEX PK_Khachhang ON Khachhang
-- CREATE INDEX IX_Khachhang_Coquan ON Khachhang(Coquan) 

-- SELECT * FROM Khachhang
-- WHERE Coquan = 'CoQuantest';

-- GO       
-- SET STATISTICS IO ON;
-- GO
-- SELECT * FROM Khachhang
-- WHERE Coquan = 'CoQuantest';
-- GO
-- SET STATISTICS IO OFF;
-- GO

--2
-- DECLARE @Number INT = 10;
--   WHILE @Number < 10000
--   BEGIN
--   INSERT INTO Nhachothue(MaN,Diachi,Giathue,Tenchunha)
--   VALUES (@Number,N'2913 Orci, Road',1381783,N'Tenchunhatest');
--   SET @Number = @Number + 1;
--   END
--   GO

-- CREATE INDEX IX_Nhachothue_Tenchunha
-- ON Nhachothue(Tenchunha)
-- DROP INDEX IX_Nhachothue_Tenchunha ON Nhachothue

-- SELECT Nhachothue.Tenchunha, COUNT(MaN) AS "TONG SO LUONG NHA CHO THUE"
-- FROM Nhachothue
-- GROUP BY Nhachothue.Tenchunha;

--D
--1

-- CREATE PROCEDURE SelectHopdonggialonhonmotnguongchotruoc
-- AS 
-- BEGIN
--     SELECT Hopdong.MaN,MaKH,Ngaybatdau,Ngayketthuc,Nhachothue.Giathue
--     FROM Hopdong,Nhachothue
--     WHERE Hopdong.MaN = Nhachothue.MaN AND Nhachothue.Giathue > 1000000
-- END;

-- EXEC SelectHopdonggialonhonmotnguongchotruoc


--2
-- DROP PROCEDURE SelectKhachhangcotonggiatrihopdonglonhonmotnguongchotruoc
-- CREATE PROCEDURE SelectKhachhangcotonggiatrihopdonglonhonmotnguongchotruoc
-- AS 
-- BEGIN
--     SELECT Khachhang.Hoten,SUM(Nhachothue.Giathue) AS "TONG TIEN HOP DONG"
--     FROM Hopdong,Nhachothue,Khachhang
--     WHERE Hopdong.MaN = Nhachothue.MaN 
--     AND Khachhang.MaKH = Hopdong.MaKH
--     GROUP BY Khachhang.Hoten
--     HAVING SUM(Nhachothue.Giathue) > 30000000
-- END;
-- EXEC SelectKhachhangcotonggiatrihopdonglonhonmotnguongchotruoc


