--1a.
--ComponistId		naam				geboortedatum		schoolId		naam						plaatsnaam

--1					Charlie Parker		1904-12-12			NULL			NULL						NULL	
--2					Thom Guidi			1946-01-05			1				Muziekschool Amsterdam		Amsterdam
--4					Rudolf Escher		1912-01-08			NULL			NULL						NULL
--8					W.A. Mozart			1756-01-27			NULL			NULL						NULL
--10				Jan van Maanen		1965-09-08			1				Muziekschool Amsterdam		Amsterdam
--11				Hans Zimmer			1957-09-12			NULL			NULL						NULL


--2a.
Select S.componistId, C.naam AS Naam_componist, M.naam AS Naam_Muziekschool, SUM(S.speelduur) AS Totale_Speelduur, Count(Distinct S.componistId) AS Aantal_stukken
From Componist AS C
Left join Stuk AS S ON C.componistId = S.componistId 
Left join Muziekschool AS M ON M.schoolId = C.schoolId
Where niveaucode IS NOT NULL 
AND M.naam Like '%dam'
GROUP BY S.componistId, C.naam, M.naam

--2b.
Having Sum(S.speelduur) > 10.0;

--3
