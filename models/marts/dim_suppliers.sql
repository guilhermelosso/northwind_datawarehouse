with
    suppliers as (
        select
            supplier_id
            , company_name
            , country
            , city
            , contact_title
            , contact_name
            , fax
            , postal_code
            , homepage
            , address
            , region
            , phone
        from 
            {{ref('stg_suppliers')}}    
    )
select * from suppliers