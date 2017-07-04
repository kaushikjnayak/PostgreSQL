create
or           replace FUNCTION trigger_func1() returns TRIGGER AS 
$$     
BEGIN
IF  ( TG_OP = 'UPDATE'  )
             THEN 
             IF ROW(
                          OLD.department,
                          OLD.last_name,
                          OLD.job_title  )
             != ROW(
                          NEW.department,
                          NEW.last_name,
                          NEW.job_title )
             THEN
UPDATE staff
SET    start_date = current_date,
       department = NEW.department,
       last_name = NEW.last_name,
       job_title = NEW.job_title;
RETURN NEW;
ELSE
   RETURN NULL;
     END IF;
  END IF;
END;
$$ 
LANGUAGE plpgsql volatile;

CREATE OR REPLACE VIEW V_STAFF AS SELECT id,department,last_name,job_title FROM STAFF;

CREATE TRIGGER trigg_staff_upd INSTEAD OF UPDATE ON V_STAFF FOR EACH ROW EXECUTE PROCEDURE  trigger_func1();

SELECT * FROM STAFF order by ID;

UPDATE V_STAFF SET last_name = 'Murray' , department = 'jewelry'  WHERE id = 4;

UPDATE V_STAFF SET last_name = 'Murray2' , department = 'jewellery',job_title = 'Desktop Technician'   WHERE id = 4;

select current_date;