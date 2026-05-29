SELECT MONTH(order_date) AS Thang, COUNT(order_id) AS SoLuongDon
FROM [BikeStores].[sales].[orders]
WHERE order_date >= '2016-02-01' AND order_date <= '2017-02-28'
GROUP BY MONTH(order_date) 
ORDER BY COUNT(order_id) DESC 