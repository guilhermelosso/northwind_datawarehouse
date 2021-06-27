with
    renamed as (
        select
            customer_id
            , country
            , city
            , fax
            , postal_code
            , address
            , region
            , contact_name
            , phone
            , company_name
            , contact_title
            , _sdc_sequence
            , _sdc_received_at
            , _sdc_table_version
            , _sdc_batched_at
            , _sdc_extracted_at
        from 
            {{source('northwind','customers')}}    
    )
select * from renamed