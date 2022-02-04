with sales as (

    select 
        id as salesid,
        listid,
        sellerid,
        buyerid,
        eventid as eventid,
        dateid as dateid,
        qtysold,
        pricepaid,
        commission,
        saletime
    
    from tickit.sales
)

select * from sales


