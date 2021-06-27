with
    renamed as (
        select
            region_id
            , territory_description
            , territory_id
            , _sdc_batched_at
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_extracted_at
        from 
            {{source('northwind','territories')}}    
    )
select * from renamed