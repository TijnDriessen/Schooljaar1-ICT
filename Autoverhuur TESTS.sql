Update auto
Set kleur = 'Blauw'
where kenteken = 'FG-SR-79';

Update Accessoire
Set accessoirenaam= 'BABYSTLXL'
where accessoirenaam = 'BABYSTLGR';

Update Autotype
Set prijs_per_dag = prijs_per_dag * 1.1
where aantal_personen = 5;

Delete from Klant
where klantnr = 165321;
/*
de rij van klantnr 165321 kan niet verwijderd worden omdat er een foreign key aan vast zit, 
als deze foreign key eerst verwijderd word kan deze regel wel uitgevoerd worden.
*/

DECLARE @ConstraintName VARCHAR(255);

SELECT @ConstraintName = name
FROM sys.objects
WHERE type = 'D' AND parent_object_id = OBJECT_ID('Huurcontract');

IF @ConstraintName IS NOT NULL
    EXEC('ALTER TABLE Huurcontract DROP CONSTRAINT ' + @ConstraintName);



ALTER TABLE Huurcontract
DROP COLUMN IF EXISTS is_betaald;


ALTER TABLE Huurcontract
ADD is_betaald BIT NOT NULL DEFAULT 0;

