SELECT * 
FROM {{ source('public','warehouse__stock_items') }}