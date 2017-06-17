--Create table with an array datatype and a Json datatype.

CREATE TABLE employee_details (id serial PRIMARY KEY, employee_groups integer[], emp_info json);

--Insert array data and Json data.

INSERT INTO employee_details ( employee_groups, emp_info ) values ( ARRAY[240,67,49] , '{ "name": "Kaushik",
                                                                        "address" : { "Home": "SG",
                                                                                     "Office": "GGA"
                                                                                    } ,
                                                                        "Salary" : "undefined"
                                                                     }' );
                                                                     
select * from employee_details;          


--query the array data
select employee_groups[1:2] from employee_details;    



--Query the json data
select emp_info->'name'  emp_name, emp_info->'address'->'Home'	home_address  from employee_details;



--use the #> pointer symbol to pass the path as an array.
SELECT employee_details#>array['address','Home'] FROM persons;


-- Convert the row into json.
select row_to_json(e) JSON_EMP from employee_details e; 