create type t1 AS ( a NUMERIC(10) , b TEXT );

--create a type as table column.
create table t2 ( id INTEGER, c_t1 t1 );


--insert the composite column as a set of elements.
INSERT INTO t2 VALUES ( 23, (1,'KJN'));


--select the values as separate columns.
select (c_t1).a, (c_t1).b from t2;