with
    renamed as (
        select
            order_id
            , product_id
            , quantity
            , discount
            , unit_price
            , _sdc_batched_at
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_extracted_at
        from 
            {{source('northwind','order_details')}}    
    )
select * from renamed