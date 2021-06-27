with
    renamed as (
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
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_extracted_at
        from 
            {{source('northwind','orders')}}    
    )
select * from renamed