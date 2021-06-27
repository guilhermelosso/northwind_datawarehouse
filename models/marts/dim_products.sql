with
    products as (
        select
            product_id
            , category_id
            , supplier_id
            , product_name
            , units_in_stock
            , quantity_per_unit
            , unit_price
            , reorder_level
            , units_on_order
            , product_discontinued
        from 
            {{ref('stg_products')}}    
    )
select * from products