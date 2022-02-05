#TOTAL Sales And Total Commission PER eventname

with events as (

    select * from {{ ref('stg_allevents')}}

),

sales as (

    select * from {{ ref('stg_sales') }}

),


commission_per_eventname as (

    select
        eventid,
        sum(qtysold) as total_qty_sold,
        sum(commission) as total_commission,
        sum(pricepaid) as total_sales


    from sales
    group by 1

    

),


final as (

    select
        events.eventid,
        events.eventname,
        commission_per_eventname.total_qty_sold,
        commission_per_eventname.total_sales,
        commission_per_eventname.total_commission
        
      
  

    from events

    left join commission_per_eventname using (eventid)

)

select * from final



