DO
$$

DECLARE
    c1 CURSOR FOR SELECT * FROM university;
    c2 CURSOR FOR SELECT * FROM country NATURAL JOIN recruits_from ORDER BY numstudents DESC;
    c3 CURSOR FOR SELECT * FROM degree NATURAL JOIN degree_offered;
    numRecruited INTEGER;
    numDegreesOffered INTEGER;

BEGIN
    FOR i IN c1 LOOP
    RAISE NOTICE '************************';
    RAISE NOTICE 'University of %', initcap(i.name);
    RAISE NOTICE 'Recruited:';
    numRecruited:= 0;
    numDegreesOffered := 0;

        FOR j in c2 LOOP
            IF i.uid = j.uid THEN
            RAISE NOTICE '% students from %', j.numstudents ,initcap(j.name);
            numRecruited:= numRecruited + j.numstudents;
            END IF;
        END LOOP; 

    RAISE NOTICE 'Total number of students = %', numRecruited;
    RAISE NOTICE 'Degree offered:';
         FOR k in c3 LOOP
            IF i.uid = k.uid THEN
            RAISE NOTICE '%', k.name;
            numDegreesOffered := numDegreesOffered + 1;
            END IF;
        END LOOP; 
    
    INSERT INTO recruit_stats VALUES (i.name, numRecruited, numDegreesOffered);
    END LOOP;
End; $$
LANGUAGE plpgsql;