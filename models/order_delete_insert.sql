

{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert",
         
) }}

select * from {{source('datafeed_shared_schema','RAW_ORDERS')}} 
where id=93 and user_id=91
