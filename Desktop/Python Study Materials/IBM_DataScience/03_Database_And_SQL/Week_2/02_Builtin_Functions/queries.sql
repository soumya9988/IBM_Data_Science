-- Aggregate Functions
select SUM(SALEPRICE) from PETSALE;
select SUM(SALEPRICE) AS SUM_OF_SALEPRICE from PETSALE;
select MAX(QUANTITY) AS Maximum_Quantity from PETSALE;
select AVG(SALEPRICE) AS Average_Price from PETSALE;
select AVG( SALEPRICE / QUANTITY ) from PETSALE where ANIMAL = 'Dog';

-- Scalar Functions
select ROUND(SALEPRICE) AS Sales_price_Rounded from PETSALE;
select LENGTH(ANIMAL) from PETSALE;
select UCASE(ANIMAL) from PETSALE;
select DISTINCT(UCASE(ANIMAL)) from PETSALE;
select * from PETSALE where LCASE(ANIMAL) = 'cat';

-- Date And Time Functions
select DAY(SALEDATE) from PETSALE where ANIMAL = 'Cat';
select COUNT(*) from PETSALE where MONTH(SALEDATE)='05';
select (SALEDATE + 3 DAYS) from PETSALE;
select (CURRENT DATE - SALEDATE) from PETSALE;

