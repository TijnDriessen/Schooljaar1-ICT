--1a.
--ComponistId		naam				geboortedatum

--10				Jan van Maanen		1965-09-08			
--2					Thom Guidi			1946-01-05			


--2a.
Select S.componistId, C.naam AS Naam_componist, M.naam AS Naam_Muziekschool, SUM(S.speelduur) AS Totale_Speelduur, Count(Distinct S.componistId) AS Aantal_stukken
From Componist AS C
Left join Stuk AS S ON C.componistId = S.componistId 
Left join Muziekschool AS M ON M.schoolId = C.schoolId
Where niveaucode IS NOT NULL 
AND M.plaatsnaam Like '%dam'
GROUP BY S.componistId, C.naam, M.naam

--2b.
Having Sum(S.speelduur) > 10.0;

--3
Select stuknr, titel
From Stuk
Where genrenaam = 'klassiek' 
OR stuknrOrigineel IN (SELECT stuknr 
From stuk
WHERE genrenaam = 'klassiek');

--4

