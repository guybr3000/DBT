{{config(materialized='table')}}

SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    o.order_date,
    o.total_amount
FROM {{source('GUY_DIT_45604', 'ORDERS')}} o
JOIN {{source('GUY_DIT_45604', 'CUSTOMERS')}} c ON o.customer_id = c.customer_id  