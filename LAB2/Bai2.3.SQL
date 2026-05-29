SELECT YEAR([order_date]) , COUNT ([order_id])
  FROM [BikeStores].[sales].[orders]
  GROUP BY YEAR ([order_date])