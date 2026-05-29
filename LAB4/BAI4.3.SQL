SELECT 
    [order_id]
    ,SUM([quantity] * [list_price] * (1 - [discount])) AS Net_Value
FROM[BikeStores].[sales].[order_items]
GROUP BY [order_id]
HAVING SUM([quantity] * [list_price] * (1 - [discount])) >= 19000
AND SUM([quantity] * [list_price] * (1 - [discount])) <= 25000