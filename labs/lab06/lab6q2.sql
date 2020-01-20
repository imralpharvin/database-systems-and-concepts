CREATE OR REPLACE FUNCTION lab6q2
                    (ref refcursor, pcolor VARCHAR)

RETURNS refcursor
AS
$$

BEGIN
    OPEN ref FOR SELECT sname
                FROM S 
                WHERE sno NOT IN (SELECT sno
                                    FROM SPJ NATURAL JOIN P
                                    WHERE color = pcolor);

    RETURN ref;

END

$$
LANGUAGE plpgsql;