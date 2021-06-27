with
    renamed as (
        select
            state_region			
            , state_name
            , state_abbr
            , state_id
            , _sdc_batched_at
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_extracted_at
        from 
            {{source('northwind','us_states')}}    
    )
select * from renamed