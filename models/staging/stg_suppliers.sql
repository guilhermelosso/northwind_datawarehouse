with
    renamed as (
        select
            supplier_id
            , company_name
            , country
            , city
            , contact_name
            , fax
            , postal_code
            , homepage
            , address
            , region
            , phone
            , contact_title
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_extracted_at
        from 
            {{source('northwind','suppliers')}}    
    )
select * from renamed