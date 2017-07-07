--Use ILIKE to ignore case.

select * from 
(
    VALUES (1, 'kjn' ),
           (2, 'Kjn' ),
           (3 , 'kjnayak'),
           (4 , 'kju') 
    )AS a(id,txt) where txt ILIKE 'kjn%';



--Use ANY operator to compare in an array.
select * from staff where department ILIKE ANY ( ARRAY['AUT%', '%COM%' ,'SP%' ] :: TEXT[] );


CREATE TABLE NUM_L AS
SELECT * FROM 
(
    VALUES  (15, 'V'),
             (20, 'B'),
             (60, 'D')
    ) AS NUM_L(N1 , V1) ; 

    
--Generate series with intervals as column elements.
select V1, GENERATE_SERIES(0,60,N1)  from     NUM_L;