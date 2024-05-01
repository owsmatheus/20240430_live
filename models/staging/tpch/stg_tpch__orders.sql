-- view for samples.tpch.orders
{{ config(materialized='view') }}

select * from {{ source('tpch', 'orders') }}
