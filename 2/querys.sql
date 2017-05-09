--OLDEST
SELECT firstname, lastname, age
    FROM crewmembers
    group by id
    order by max(age) desc
    limit 1


/*
N-th OLDEST

SELECT firstname, lastname, age
    FROM crewmembers
    group by id
    order by max(age) desc
    limit 1 offset [N-1]
*/

--2nd OLDEST
SELECT firstname, lastname, age
    FROM crewmembers
    group by id
    order by max(age) desc
    limit 1 offset 1

--3rd OLDEST
SELECT firstname, lastname, age
    FROM crewmembers
    group by id
    order by max(age) desc
    limit 1 offset 2

--i tako dalje [N-1]



--Most experienced
SELECT experience.c_id, crewmembers.id, crewmembers.firstname, crewmembers.lastname, crewmembers.age 
	FROM experience
	INNER JOIN crewmembers ON experience.c_id = crewmembers.id
	GROUP BY crewmembers.id, experience.c_id ORDER BY COUNT(*) DESC LIMIT 1



--Least experienced
SELECT experience.c_id, crewmembers.id, crewmembers.firstname, crewmembers.lastname, crewmembers.age 
	FROM experience
	INNER JOIN crewmembers ON experience.c_id = crewmembers.id
	GROUP BY crewmembers.id, experience.c_id ORDER BY COUNT(*) ASC LIMIT 1