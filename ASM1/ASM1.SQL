SELECT [first_name]
, [last_name]
, [state]
FROM [BikeStores].[sales].[customers]
WHERE state = 'NY'
ORDER BY [first_name] ASC

SELECT [city], COUNT([customer_id]) AS so_luong_khach_hang
FROM[BikeStores].[sales].[customers]
WHERE state = 'NY'
GROUP BY [city]
HAVING COUNT([customer_id]) >= 10
ORDER BY [city] DESC

SELECT YEAR([order_date]) AS nam
,COUNT([order_id]) AS so_luong_don_hang
FROM [BikeStores].[sales].[orders]
GROUP BY YEAR([order_date])
ORDER BY nam

SELECT [first_name]
,[last_name]
FROM [BikeStores].[sales].[customers]
WHERE [first_name] LIKE 'W%'
OR [first_name] LIKE '%a'

SELECT [product_name]
, [model_year]
, [list_price]
FROM [BikeStores].[production].[products]
WHERE [model_year] = 2018
AND [list_price] > 1000

SELECT MONTH([order_date]) AS thang,
COUNT([order_id]) AS so_luong_don_hang
FROM [BikeStores].[sales].[orders]
WHERE [order_date] BETWEEN '2016-02-01' AND '2017-02-28'
GROUP BY MONTH([order_date])
ORDER BY so_luong_don_hang DESC