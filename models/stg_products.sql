

{{ config(materialized='table') }}

WITH tb1  as(
 select
        sku ,
        name,
        type,
        price,
        description
     from {{source('datafeed_shared_schema','RAW_PRODUCTS')}})
     select * from tb1
