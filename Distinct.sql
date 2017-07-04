SELECT DISTINCT ITEM,PRICE FROM (
SELECT 'idli'  item , 10 price UNION ALL
SELECT 'idli' item , 20 price  UNION ALL
SELECT 'idli' item , 10 price  UNION ALL
SELECT 'idli' item , 10 price  UNION ALL
SELECT 'dosa' item , 10 price  UNION ALL
SELECT 'idli' item , 10 price  UNION ALL
SELECT 'idli' item , 30 price  UNION ALL
SELECT 'dosa' item , 20 price  UNION ALL
SELECT 'dosa' item , 20 price  UNION ALL
SELECT 'idli' item , 10 price  UNION ALL
SELECT 'idli' item , 20 price 
) a;


--Get the first value of the item,price combination

SELECT DISTINCT ON (item) item ,PRICE FROM (
SELECT 'idli'  item , 10 price UNION ALL
SELECT 'idli' item , 20 price  UNION ALL
SELECT 'idli' item , 10 price  UNION ALL
SELECT 'idli' item , 10 price  UNION ALL
SELECT 'dosa' item , 10 price  UNION ALL
SELECT 'idli' item , 10 price  UNION ALL
SELECT 'idli' item , 30 price  UNION ALL
SELECT 'dosa' item , 20 price  UNION ALL
SELECT 'dosa' item , 20 price  UNION ALL
SELECT 'idli' item , 10 price  UNION ALL
SELECT 'idli' item , 20 price 
) a order BY item,price desc;





