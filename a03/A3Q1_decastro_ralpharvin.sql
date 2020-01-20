CREATE OR REPLACE FUNCTION numberAgents (uname VARCHAR)
RETURNS INTEGER
AS $$

DECLARE
    numberagents INTEGER;

BEGIN
    SELECT COUNT (*)
    INTO numberagents
    FROM agents 
    WHERE uid IN (SELECT uid 
                    FROM university
                    WHERE name = UPPER(uname) );
    RETURN numberagents;


END;
$$
LANGUAGE plpgsql;