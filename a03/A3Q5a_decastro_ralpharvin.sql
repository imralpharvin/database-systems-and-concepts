CREATE OR REPLACE FUNCTION to_upper ()
RETURNS trigger
AS $$


BEGIN

    NEW.fname = UPPER(NEW.fname);
    NEW.lname = UPPER(NEW.lname);

    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER ensure_case
BEFORE INSERT ON agents
FOR EACH ROW
EXECUTE PROCEDURE to_upper();

  