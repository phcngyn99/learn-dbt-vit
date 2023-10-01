SELECT 
  ws.stock_item_id AS product_id,
  ws.stock_item_name AS product_name,
  CASE
    WHEN ws.brand IS NOT NULL THEN ws.brand
    ELSE "Undefined"
  END AS brand_name,
  us.supplier_id AS supplier_id,
  us.up_supplier_name AS supplier_name
FROM 
  `vit-lam-data.wide_world_importers.warehouse__stock_items` AS ws  /* {{source('public','warehouse__stock_items')}} */
  JOIN
  {{ ref("up_supplier") }} AS us  /* Compile up_supplier first to transform data then product after */
    ON
      ws.supplier_id = us.supplier_id
