--CHeck if all elements in {2,45} are  present in '{2,45,6,7,45}'
 
SELECT '{2,45,6,7,45}'::int[] @> '{2,45}'::int[] AS exists;

--opposite of above. 

SELECT '{2,45,2,2,45}'::int[] <@ '{2,45}'::int[] AS exists;



--Check if the elements overlap. i.e atleast one element  found in both. 
SELECT '{abc,kjn,def,ijk,nam}'::varchar[] && '{kjn,lkjh,mno}'::varchar[] AS overlaps;