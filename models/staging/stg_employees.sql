with
    renamed as (
        select
            employee_id
            , country
            , city
            , postal_code
            , hire_date
            , extension
            , address
            , birth_date
            , region
            , photo_path
            , last_name
            , first_name
            , title
            , title_of_courtesy
            , notes
            , home_phone
            , reports_to
            , _sdc_batched_at
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_extracted_at
        from 
            {{source('northwind','employees')}}    
    )
select * from renamed