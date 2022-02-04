with category as (
    
    select 
        id as catid,
        catgroup,
        catname,
        catdesc
    
    from tickit.category

)

select * from category



