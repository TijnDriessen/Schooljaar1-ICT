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

insert into Autotype(typecode, omschrijving, aantal_personen, prijs_per_dag, url_image)
Values('GSUV6', 'hele grote suv', 6, 40.00, 'https://www.opel.nl/personenwagens/corsa-modellen/nieuwe-corsa/overzicht/_jcr_content/pageContent/grid_builder_v2_copy/col1/tiled_gallery/item_1655292846904.coreimg.87.1440.jpeg/1711353942046/opel-corsa-ice-exterior-front-16x9-cosol23-e01-008.jpeg');

insert into Auto (autonr, autotype, kenteken, merk, modelnaam, kleur, is_automaat, is_elektrisch, is_in_orde)
Values(12, 'GSUV6', 'FG-SR-79', 'Opel', 'Corsa', 'blauw', 0,1,1);

insert into Auto (autonr, autotype, kenteken, merk, modelnaam, kleur, is_automaat, is_elektrisch, is_in_orde)
Values(12, 'GSUV6', 'FG-SR-78', 'Opel', 'Corsa', 'blauw', 0,1,1);


insert into Locatie (locatiecode, naam, adres, postcode, plaats, land)
Values('MDLBRG2', 'autoverhuur Heijendaal Middelburg', 'Faunastraat 1', '4331 AA', 'Middelburg', 'Nederland');

insert into Locatie (locatiecode, naam, adres, postcode, plaats, land)
Values('MDLBRG3', 'autoverhuur Heijendaal Middelburg', 'Faunastraat 2', '4331 AA', 'Middelburg3', 'Nederland3');
