--A:Dùng các câu lệnh SQL tạo CSDL Productiongồm các bảng như trên. (Nhập dữliệu gồm tối thiểu: 5 brands, 10 categories, 20 products)
-- CREATE DATABASE Production
-- CREATE SCHEMA Production

-- CREATE TABLE [production].[categories] (
--     [category_id]   INT           NOT NULL,
--     [category_name] NVARCHAR (50) NULL,
--     CONSTRAINT [PK_production.categories] PRIMARY KEY CLUSTERED ([category_id] ASC)
-- );

-- CREATE TABLE [production].[brands] (
--     [brand_id]   INT           NOT NULL,
--     [brand_name] NVARCHAR (50) NULL,
--     CONSTRAINT [PK_production.brands] PRIMARY KEY CLUSTERED ([brand_id] ASC)
-- );
-- DROP TABLE [dbo].[production.brands]
-- CREATE TABLE [production].[products] (
--     [product_id]   INT           NOT NULL,
--     [product_name] NVARCHAR (50) NULL,
--     [brand_id]     INT           NOT NULL,
--     [category_id]  INT           NOT NULL,
--     [model_year]   DATE          NULL,
--     [list_price]   INT           NULL,
--     CONSTRAINT [PK_production.products] PRIMARY KEY CLUSTERED ([product_id] ASC)
-- );
-- SELECT * FROM production.brands
-- ALTER TABLE production.products
-- ADD CONSTRAINT category_id
--  FOREIGN KEY (category_id)
--  REFERENCES production.categories (category_id);

-- ALTER TABLE production.products
-- ADD CONSTRAINT brand_id
--  FOREIGN KEY (brand_id)
--  REFERENCES production.brands (brand_id);

-- INSERT INTO [production].[brands] (brand_id,brand_name)
-- VALUES
--   (1,'Stargard Szczeciński'),
--   (2,'Wolfsberg'),
--   (3,'Jecheon'),
--   (4,'Suncheon'),
--   (5,'Haisyn');

-- INSERT INTO [production].products(product_id,product_name,brand_id,category_id,model_year,list_price)
-- VALUES
--   (1,'Ultrices Posuere Institute',4,8,'2023',51038),
--   (2,'Pellentesque Massa Lobortis Ltd',5,5,'2022',51200),
--   (3,'Sed Auctor Odio LLP',2,7,'2022',105480),
--   (4,'Quis Diam Pellentesque Incorporated',4,3,'2021',75759),
--   (5,'Proin Vel Arcu Corp.',5,2,'2023',198763),
--   (6,'Scelerisque Mollis Phasellus Corporation',3,7,'2022',101354),
--   (7,'Mi Aliquam Corp.',2,2,'2022',109031),
--   (8,'Mi Duis PC',3,4,'2022',89608),
--   (9,'Elementum Sem Industries',4,8,'2023',172093),
--   (10,'Molestie Corp.',1,3,'2022',99735),
--   (11,'Quisque Fringilla Euismod PC',2,8,'2021',125398),
--   (12,'Velit Justo Nec Ltd',3,1,'2022',97189),
--   (13,'Eu Inc.',2,5,'2021',57750),
--   (14,'Sed Est PC',1,1,'2022',106313),
--   (15,'Dictum Eleifend Ltd',3,4,'2021',68892),
--   (16,'Scelerisque Dui Suspendisse Company',4,5,'2022',83766),
--   (17,'Amet Ante Foundation',3,7,'2023',70606),
--   (18,'Elit Pharetra Ut Industries',4,2,'2021',132574),
--   (19,'Quam Corporation',3,2,'2022',166560),
--   (20,'Enim Nunc Company',3,2,'2021',132681);
-- SELECT * FROM production.categories
-- INSERT INTO production.categories (category_id,category_name)
-- VALUES
--   (1,'Kirby Lawson'),
--   (2,'Azalia Horne'),
--   (3,'Keiko Schultz'),
--   (4,'Christopher Pruitt'),
--   (5,'Camden Boyd'),
--   (6,'Madeson Oliver'),
--   (7,'Meghan Wood'),
--   (8,'Clare Poole'),
--   (9,'Harriet Chavez'),
--   (10,'Mariko Henson');

--B:Sửdụng view theo các nội dung:
--1:Tạo  view  có  tên v_productđểđưara các thông  tin  gồm:product_id, product_name, models_year, list_price, brand_name, category_name.

-- CREATE VIEW v_product AS
-- SELECT product_id, product_name, model_year, list_price, brand_name, category_name
-- FROM production.categories,production.products,production.brands;

-- SELECT * FROM v_product

--2:Sửdụng view vừa tạocho biết thông tin các sản phẩm có năm sản xuất là 2022.
-- SELECT * FROM v_product
-- WHERE 2022 = YEAR(model_year);

--3:Sửa đổi view v_productvới điều kiện list_price>100000

-- ALTER VIEW v_product
-- AS
--     SELECT product_id, product_name, model_year, list_price, brand_name, category_name
--     FROM production.categories,production.products,production.brands
--     WHERE production.products.list_price > 100000
-- GO
-- SELECT * FROM v_product

--4:Tạo index view cho 2 trường hợp: sửdụng unique clusetedindexvà non-clusted indextrên cộtproduct_name sau đó so sánh hiệu năng của việc sửdụng cho 2 trường hợp này.

-- ALTER VIEW v_product WITH SCHEMABINDING AS
-- SELECT product_id, product_name, model_year, list_price, brand_name, category_name
-- FROM production.categories,production.products,production.brands
-- WHERE production.products.list_price > 100000;
-- CREATE UNIQUE CLUSTERED INDEX nonix_product_name ON v_product(product_name);
-- SELECT SUM(list_price) FROM Production.products WHERE product_id = '3' 

