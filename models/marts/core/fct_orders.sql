
with payments as (

        select * from {{ ref('stg_payments') }}
)

    select 
        customer_id,
        order_id,
        sum(amount) as amount
    from payments
    group by customer_id, order_id
    