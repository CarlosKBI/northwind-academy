with
    -- import models
   products as (
        select *
        from {{ ref('stg_erp__products') }}
   ) 
    , suppliers as (
        select *
        from {{ ref('stg_erp__suppliers') }}
   ) 
    , categories as (
        select *
        from {{ ref('stg_erp__category') }}
   ) 
   , joined as(
        select 
        from products
        left join suppliers on products.supplier_fk = suppliers.supplier_pk
      
   )