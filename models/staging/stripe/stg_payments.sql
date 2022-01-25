with payments as (
    SELECT 
        id AS customer_id,
        orderid AS order_id,
        amount
    FROM {{ source('stripe', 'payment') }}
)

select * from payments