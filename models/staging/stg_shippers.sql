with
    renamed as (
        select
            shipper_id
            , company_name  
            , phone
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_extracted_at
        from 
            {{source('northwind','shippers')}}    
    )
select * from renamed