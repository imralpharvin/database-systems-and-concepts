CREATE TABLE POSSIBLE_IDS(
ID VARCHAR (60)
);

CREATE OR REPLACE FUNCTION generate_id (fname VARCHAR, lname VARCHAR, dbirth VARCHAR)
RETURNS VOID
AS $$

DECLARE
    theAge INTEGER;
    noy INTEGER;
    sign VARCHAR;

BEGIN
    
    SELECT (date_part('year', age(current_date, to_timestamp(dbirth, 'YYYY-MM-DD'))))
    INTO theAge;
  
    SELECT EXTRACT(DOY FROM to_timestamp(dbirth, 'YYYY-MM-DD'))
    INTO noy;

    IF(noy >= 80 AND noy <= 110) THEN
    sign:= 'Aries';

    ELSIF(noy >= 111 AND noy <= 141) THEN
    sign:= 'Taurus';

    ELSIF(noy >= 142 AND noy <= 172) THEN
    sign:= 'Gemini';

    ELSIF(noy >= 143 AND noy <= 203) THEN
    sign:= 'Cancer';
    
    ELSIF(noy >= 204 AND noy <= 233) THEN
    sign:= 'Leo';

    ELSIF(noy >= 234 AND noy <= 266) THEN
    sign:= 'Virgo';

    ELSIF(noy >= 267 AND noy <= 296) THEN
    sign:= 'Libra';
    
    ELSIF(noy >= 297 AND noy <= 326) THEN
    sign:= 'Scorpio';

    ELSIF(noy >= 327 AND noy <= 356) THEN
    sign:= 'Sagittarius';

    ELSIF(noy >= 357 AND noy <= 366) THEN
    sign:= 'Capricorn';

    ELSIF(noy >= 0 AND noy <= 20) THEN
    sign:= 'Capricorn';

    ELSIF(noy >= 21 AND noy <= 50) THEN
    sign:= 'Aquarius';

    ELSIF(noy >= 51 AND noy <= 79) THEN
    sign:= 'Aquarius';
    
    END IF;
    INSERT into POSSIBLE_IDS VALUES(CONCAT(fname, '_', lname));
    INSERT into POSSIBLE_IDS VALUES(CONCAT(fname, '_', lname, '_', theAge));
    INSERT into POSSIBLE_IDS VALUES(CONCAT(fname, '_', theAge));
    INSERT into POSSIBLE_IDS VALUES(CONCAT(lname, '_', theAge));
    INSERT into POSSIBLE_IDS VALUES(CONCAT(fname, '_', lname ,'_', sign));
    INSERT into POSSIBLE_IDS VALUES(CONCAT(lname ,'_', sign));
    INSERT into POSSIBLE_IDS VALUES(CONCAT(fname, '_', sign));
    INSERT into POSSIBLE_IDS VALUES(CONCAT(fname, '_', lname ,'_', sign, '_',theAge));



END;
$$
LANGUAGE plpgsql;