SELECT [category_id] 
 ,avg ([list_price]) as giatrungbinh
--, [product_name]
--, [brand_id]
--, [category_id]
--, [model_year]
--, [list_price]
FROM [BikeStores].[production].[products]
group by [category_id]
having avg ([list_price]) >100