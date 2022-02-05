#Total sales per date/month/year/holiday#



with date as (

    select * from {{ ref('stg_date')}}

),

sales as (

    select * from {{ ref('stg_sales') }}

),


totalsales as (

    select
        dateid,
        sum(qtysold) as total_qty_sales,
        sum(pricepaid) as total_price_paid

    from sales
    group by 1
    

    

),


final as (

    select
        date.dateid,
        date.caldate,
        date.week,
        date.month,
        date.year,
        date.holiday,

    
        totalsales.total_price_paid,
        totalsales.total_qty_sales
      

    from date

    left join totalsales using (dateid)

)

select * from final



