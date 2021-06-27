with
    renamed as (
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
            , case
                when discontinued = 1 then 'discontinued'
                when discontinued = 0 then 'still producing'
            end as product_discontinued
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_extracted_at
        from 
            {{source('northwind','products')}}    
    )
select * from renamed