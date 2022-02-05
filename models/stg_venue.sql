with venue as (
    
    select 
        id as venueid,
        venuename,
        venuecity,
        venuestate,
        venueseats

    from tickit.venue
)

select * from venue
