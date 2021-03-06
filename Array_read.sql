SELECT ARRAY[1,6,12,18];

select ARRAY ( select distinct GAME_NAME FROM GAMES  order by 1) ;


--read | seperated string into array.

SELECT string_to_array('1|Kaushik|Bengaluru|Oracle', '|') As Val;


--convert arrays to rows using unnest.
select UNNEST(string_to_array('1|Kaushik|Bengaluru|Oracle', '|')) item;



--parse array and add element.
select '{a,e,i,o}'::text[] || '{u}'::text[]  arr;


--Get the second to 4th element 
SELECT  ('{2,4,5,6,9}'::int[]) [2:4] As Val;

--Refer description of Arrays

