CREATE OR REPLACE FUNCTION lab6q1()
RETURNS void
AS
$$

DECLARE
		c1 CURSOR (vpno VARCHAR)  IS SELECT sname
		FROM S
		WHERE sno IN
			(SELECT sno
			FROM SPJ
			WHERE pno = vpno);

	c2 CURSOR IS SELECT * FROM p ORDER BY pno;

BEGIN

	FOR vc2 in c2 LOOP
	RAISE NOTICE 'Part %: % % %', vc2.pno, vc2.pname, vc2.color, vc2.city;

	RAISE NOTICE 'Supplied By';
		
	FOR vc1 IN c1 (vc2.pno) LOOP
		RAISE NOTICE '%', vc1.sname;
	END LOOP;

	END LOOP;
END

$$
LANGUAGE plpgsql;