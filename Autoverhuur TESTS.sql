Update auto
Set kleur = 'Blauw'
where kenteken = 'FG-SR-79';

Update Accessoire
Set accessoirenaam= 'BABYSTLXL'
where accessoirenaam = 'BABYSTLGR';

Update Autotype
Set prijs_per_dag = prijs_per_dag * 1.1
where aantal_personen = 5;

/*
Delete from Klant
where klantnr = 165321;
*/
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


Delete From Auto
Where modelnaam = 'Corsa' 

Delete From Auto
Where autonr = 12

Delete From Locatie
Where locatiecode = 'MDLBRGHD' 

Delete From Huurcontract
Where contractnr = 994450



insert into Auto (autonr, autotype, kenteken, merk, modelnaam, kleur, is_automaat, is_elektrisch, is_in_orde)
Values(12, 'GSUV5', 'FG-SR-79', 'Opel', 'Corsa', 'blauw', 0,1,1);

insert into Auto (autonr, autotype, kenteken, merk, modelnaam, kleur, is_automaat, is_elektrisch, is_in_orde)
Values(12, 'GSUV5', 'FG-SR-78', 'Opel', 'Corsa', 'blauw', 0,1,1);

insert into Locatie (locatiecode, naam, adres, postcode, plaats, land)
Values('MDLBRGHD', 'autoverhuur Heijendaal Middelburg', 'Faunastraat 1', '4331 AA', 'Middelburg', 'Nederland');

insert into Locatie (locatiecode, naam, adres, postcode, plaats, land)
Values('MDLBRGHD', 'autoverhuur Heijendaal Middelburg', 'Faunastraat 2', '4331 AA', 'Middelburg2', 'Nederland2');

insert into Huurcontract(contractnr, klant, van_datum, tot_datum, locatie_ophalen, locatie_terugbrengen, wenst_autotype, wenst_automaat, wenst_elektrisch, krijgt_auto)
Values (994450, 165321, '2024-10-20', '2024-09-14', 'EDHVN', 'APLDRN', 'KSUV5', 0, 0,28);

insert into Huurcontract(contractnr, klant, van_datum, tot_datum, locatie_ophalen, locatie_terugbrengen, wenst_autotype, wenst_automaat, wenst_elektrisch, krijgt_auto)
Values (994450, 165321, '2024-10-20', '2024-12-14', 'EDHVN', 'APLDRN', 'KSUV5', 0, 0,28);

