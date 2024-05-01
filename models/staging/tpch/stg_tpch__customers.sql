-- view for samples.tpch.customer
{{ config(materialized='view') }}

select * from {{ source('tpch', 'customer') }}
