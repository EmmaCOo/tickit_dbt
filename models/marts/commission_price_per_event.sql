#Lowest and Highest Commission And Price Per Eventname

with events as (

    select * from {{ ref('stg_allevents')}}

),

sales as (

    select * from {{ ref('stg_sales') }}

),


commission_per_eventname as (

    select
        eventid,
        min(commission) as lowest_commission,
        max(commission) as highest_commission,
        min(pricepaid) as lowest_price,
        max(pricepaid) as highest_price

    from sales
    group by 1

    

),


final as (

    select
        events.eventid,
        events.eventname,
      
        commission_per_eventname.lowest_commission,
        commission_per_eventname.highest_commission,
        commission_per_eventname.lowest_price,
        commission_per_eventname.highest_price
      
  

    from events

    left join commission_per_eventname using (eventid)

)

select * from final

