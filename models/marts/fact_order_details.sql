with
    orders as (
        select
            order_id
            , customer_id
            , employee_id
            , order_date
            , ship_via
            , ship_name
            , ship_region
            , ship_postal_code
            , ship_country
            , ship_city
            , shipped_date
            , required_date
            , freight
            , ship_address
        from 
            {{ref('stg_orders')}}    
    )
    , order_details as (
        select
            order_id
            , product_id
            , quantity
            , discount
            , unit_price
            , quantity * unit_price * (1 - discount) as subtotal
        from 
            {{ref('stg_order_details')}}    
    )
    , final as (
        select
            orders.order_id
            , orders.customer_id
            , orders.employee_id
            , orders.order_date
            , ord_details.product_id
            , ord_details.quantity
            , ord_details.unit_price
            , ord_details.discount
            , ord_details.subtotal
            , orders.ship_via
            , orders.ship_name
            , orders.ship_region
            , orders.ship_postal_code
            , orders.ship_country
            , orders.ship_city
            , orders.shipped_date
            , orders.required_date
            , orders.freight
            , orders.ship_address
        from 
            orders
        left join 
            order_details as ord_details on orders.order_id = ord_details.order_id
    )
select * from final