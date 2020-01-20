CREATE OR REPLACE FUNCTION find_max_commission (numId INTEGER)
RETURNS NUMERIC
AS $$

DECLARE
    maxcommission NUMERIC;

    c1 CURSOR FOR SELECT * FROM agents ORDER BY aid;

BEGIN
    SELECT commission
    INTO maxcommission
    FROM agents 
    WHERE aid = numId;

    IF NOT FOUND THEN
    RAISE NOTICE 'Invalid agent id. Valid agent ids are:';
    FOR i IN c1 LOOP
    
    RAISE NOTICE '%: % %', i.aid, i.fname, i.lname;
    END LOOP;
    RAISE EXCEPTION 'Invalid agent id';

    ELSE
    RETURN maxcommission;
    END IF;


END;
$$
LANGUAGE plpgsql;

