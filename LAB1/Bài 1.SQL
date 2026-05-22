SELECT [category_id] , avg (list_price) as giaTB
      --,[product_id]
      --,[product_name]
      --,[brand_id]
      --,[category_id]
      --,[model_year]
      --,[list_price]
  FROM [BikeStores].[production].[products]
  where [product_name] like '%Ritchey%'
  group by [category_id]
  having avg (list_price) >=200