
--print the 6 digits after skipping 3 digits
select generate_series(1,10) AS num  ORDER BY num LIMIT 6 OFFSET 3;



CREATE TABLE matches(
    t_m TEXT,
    t_date DATE,
    t_price NUMERIC );
    
 --Insert multiple rows with values.
    INSERT INTO MATCHES VALUES
    ( 'IND_Vs_PAK', '2017-08-06'::DATE , 1500 ),
    ( 'IND_Vs_AUS', '2017-08-15'::DATE , 1200 );


--Using Values to select multiple values.

SELECT DISTINCT  item ,price FROM (
 VALUES 
( 'idli' ,10  ),
( 'idli' , 20    ),
( 'idli' , 10    ),
( 'idli' , 10    ),
( 'dosa' , 10    ),
( 'idli' , 10    ),
( 'idli' , 30    ),
( 'dosa' , 20    ),
( 'dosa' , 20    ),
( 'idli' , 10    ),
( 'idli' , 20    )
 
) AS a(item,price) order BY item,price desc;