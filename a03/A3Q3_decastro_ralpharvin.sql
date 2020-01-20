CREATE OR REPLACE FUNCTION generateEmail (numId INTEGER)
RETURNS VARCHAR
AS $$

DECLARE
    generateemail VARCHAR;
    firstname VARCHAR;
    lastname VARCHAR;
    uni VARCHAR;
    cntry VARCHAR;

BEGIN
    SELECT lower(fname)
    INTO firstname
    FROM agents 
    WHERE aid = numId;

    SELECT lower(lname)
    INTO lastname
    FROM agents 
    WHERE aid = numId;

    
    SELECT lower(name)
    INTO cntry
    FROM country
    WHERE cid IN (SELECT cid
                    FROM agents
                    WHERE aid = numId);

    SELECT lower(name)
    INTO uni
    FROM university
    WHERE uid IN (SELECT uid
                    FROM agents
                    WHERE aid = numId); 

    IF uni = 'brock' OR uni = 'trent' THEN
    generateemail := CONCAT(firstname, '.', lastname , '.' , cntry, '@', uni, 'u.ca' );

    ELSIF uni = 'windsor' OR uni = 'sherbrooke' OR uni = 'toronto' THEN
    generateemail := CONCAT(firstname, '.', lastname , '.' , cntry,'@', 'u' ,uni, '.ca' );

    ELSIF uni = 'guelph' THEN
    generateemail := CONCAT(firstname, '.', lastname , '.' , cntry,'@', 'uo' ,uni, '.ca' );

    END IF;

    return generateemail;
END;
$$
LANGUAGE plpgsql;

  