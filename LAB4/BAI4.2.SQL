SELECT 
    [category_id]
    ,AVG([list_price]) AS GiaTrungBinh
FROM[BikeStores].[production].[products]
GROUP BY [category_id]
HAVING AVG([list_price]) >= 500
AND AVG([list_price]) <= 1000

