SELECT
  ps.supplier_id,
  UPPER(ps.supplier_name) as up_supplier_name
FROM `vit-lam-data.wide_world_importers.purchasing__suppliers` AS ps /* {{source('public','purchasing__suppliers')}} */