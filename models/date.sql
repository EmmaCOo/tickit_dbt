with date as (

    select 
        id as dateid,
        caldate,
        day,
        week,
        month,
        qtr,
        year,
        holiday
    from tickit.date
)

select * from date

