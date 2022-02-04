with allusers as (
    
    select 
	    id as userid,
	    username,
        firstname,
        lastname,
        city,
        state,
        email,
        phone,
        likesports,
        liketheatre,
        likeconcerts,
        likejazz,
        likeclassical,
        likeopera,
        likerock,
        likevegas,
        likebroadways,
        likemusicals
    
    from tickit.allusers

)
select * from allusers




