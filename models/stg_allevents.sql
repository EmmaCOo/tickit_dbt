with allevents as (

    select 
	    id as eventid,
	    venueid as venueid,
	    catid,
	    dateid,
	    eventname,
	    starttime
    
    from tickit.allevents

)
select * from allevents

