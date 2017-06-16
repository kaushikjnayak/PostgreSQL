SELECT generate_series(1,50) As x;

--Odd number series
SELECT generate_series(1,100,2) As x;

--Date ranges

SELECT generate_series('2017-06-15','2017-12-31', interval  '7 days') As x;

SELECT generate_series(now(),'2017-12-31', interval  '7 days') As x;


--Backwards
SELECT generate_series(now(),TO_DATE('19-01-1987','DD-MM-YYYY'), interval  '-30 days') As x;