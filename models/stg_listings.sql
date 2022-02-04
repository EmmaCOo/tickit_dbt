with listings as (

    select 
        id as listid,
        sellerid as sellerid,
        eventid as eventid,
        dateid as dateid,
        numtickets,
        priceperticket,
        totalprice,
        listtime

    from tickit.listings
)

select * from listings