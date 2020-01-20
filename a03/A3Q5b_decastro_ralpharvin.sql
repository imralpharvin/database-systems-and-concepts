CREATE OR REPLACE FUNCTION to_warn ()
RETURNS trigger
AS $$


BEGIN
    RAISE NOTICE 'University of % is changing its url', initcap(old.name);

    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER url_change
AFTER UPDATE ON university
FOR EACH ROW
EXECUTE PROCEDURE to_warn();

  