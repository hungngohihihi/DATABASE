
--SELECT * FROM dbo.FactInternetSalesReason
--SELECT * FROM  DimSalesReason
--SELECT * FROM DimProduct

--SELECT * FROM FactFinance
--SELECT * FROM DimOrganization
--SELECT * FROM DimScenario


--1
-- SELECT  dbo.FactInternetSalesReason.SalesOrderNumber,dbo.FactInternetSalesReason.SalesOrderLineNumber  ,SalesReasonKey
-- FROM  dbo.FactInternetSalesReason,dbo.FactInternetSales
-- WHERE dbo.FactInternetSales.SalesOrderNumber = dbo.FactInternetSalesReason.SalesOrderNumber AND dbo.FactInternetSales.SalesOrderLineNumber = dbo.FactInternetSalesReason.SalesOrderLineNumber AND  SalesReasonKey = 2 OR SalesReasonKey = 5;

--3

-- SELECT  DimDepartmentGroup.DepartmentGroupName, DimDepartmentGroup.ParentDepartmentGroupKey  AS "Parents"
-- FROM DimDepartmentGroup
--Hùng
-- WITH bangphu AS 
-- (
--     SELECT DepartmentGroupKey, DepartmentGroupName
--     FROM DimDepartmentGroup
-- )
-- SELECT DimDepartmentGroup.DepartmentGroupName,bangphu.DepartmentGroupName AS PARENTS
-- FROM DimDepartmentGroup LEFT JOIN bangphu
-- ON (bangphu.DepartmentGroupKey = DimDepartmentGroup.ParentDepartmentGroupKey)
--Nguyệt 
-- WITH tmp AS 
-- ( 
--     SELECT * FROM DimDepartmentGroup
-- ) 
-- SELECT DimDepartmentGroup.DepartmentGroupName, tmp.DepartmentGroupName AS ParentDepartmentGroupName 
-- FROM  DimDepartmentGroup LEFT JOIN tmp 
-- ON( DimDepartmentGroup.ParentDepartmentGroupKey = tmp.DepartmentGroupKey) 

--4 From FactInternetSales, DimProduct Display ProductKey, EnglishProductName of products 
--which never have been ordered and ProductCategory is 'Bikes'*/
-- SELECT * FROM FactResellerSales
-- SELECT * FROM DimProductCategory
-- SELECT * FROM DimProductSubcategory
-- SELECT * FROM DimProduct

-- SELECT * FROM FactInternetSales
-- SELECT ProductKey FROM DimProduct
-- EXCEPT
-- SELECT ProductKey FROM FactInternetSales



--5 
-- WITH bangphu2 AS
-- (
--     SELECT * FROM DimOrganization
-- )
-- SELECT DimOrganization.OrganizationKey, DimOrganization.OrganizationName,DimOrganization.ParentOrganizationKey,
-- bangphu2.OrganizationName AS Parents2, Amount
-- FROM FactFinance, DimScenario, DimOrganization LEFT JOIN bangphu2
-- ON( bangphu2.OrganizationKey = DimOrganization.ParentOrganizationKey) 
-- WHERE
-- ScenarioName = 'Actual' AND DimScenario.ScenarioKey = FactFinance.ScenarioKey 
-- AND FactFinance.OrganizationKey = DimOrganization.OrganizationKey;

-- WITH bangphu3 AS
-- (
--     SELECT * FROM DimProduct
-- )
-- SELECT  year(OrderDate) as "Year",MAX(FactResellerSales.UnitPriceDiscountPct) as"DiscountPercentage"
-- FROM  DimProduct, FactResellerSales LEFT JOIN bangphu3
-- ON (bangphu3.ProductKey = FactResellerSales.ProductKey)
-- where FactResellerSales.ProductKey = DimProduct.ProductKey
-- group by YEAR(OrderDate)
-- order by year(orderdate) ASC;

