with
    renamed as (
        select
            region_id
            , region_description
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_extracted_at
        from 
            {{source('northwind','region')}}    
    )
select * from renamed