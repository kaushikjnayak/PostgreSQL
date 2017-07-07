--With clause for DML, writable DMLs

WITH t AS (
    DELETE FROM ONLY trans_data WHERE t_dt <= '2016-12-31' RETURNING *
)
INSERT INTO trans_data_2016 SELECT * FROM t;



--Lateral Joins allow data from left table available in the right.
SELECT e.employee_id, d.dpeartment_name
FROM
    employees AS e INNER JOIN LATERAL (
    SELECT department_id
    FROM departments
    WHERE
        department_name WHERE department_name = 
	 CASE 
	   WHEN e.JOB_ID = 'IT' THEN 'IT_DEPARTMENT' 
        END 
    ) d ON e.department_id = d.department_id;