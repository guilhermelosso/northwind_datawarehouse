with
    renamed as (
        select
            category_id
            , category_name
            , description as category_description
            , _sdc_sequence
            , _sdc_received_at
            , _sdc_table_version
            , _sdc_batched_at
            , _sdc_extracted_at
        from 
            {{source('northwind','categories')}}    
    )
select * from renamed