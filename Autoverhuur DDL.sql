DROP TABLE Wenst_accessoire;
DROP TABLE Huurcontract;
DROP TABLE Klant;
DROP TABLE Auto;
DROP TABLE Autotype;
DROP TABLE Accessoire;
DROP TABLE Locatie;

CREATE TABLE Klant (
	klantnr			int					NOT NULL,
	voornaam		varchar(255)		NOT NULL,
	tussenvoegsels	varchar(31)			NULL,
	achternaam		varchar(255)		NOT NULL,
	emailadres		varchar(255)		NOT NULL,

	CONSTRAINT pk_klant PRIMARY KEY (klantnr)
);



CREATE TABLE Autotype (
	typecode		char(10)			NOT NULL,
	omschrijving	varchar(255)		NOT NULL,
	aantal_personen	smallint			NOT NULL,
	prijs_per_dag	numeric(6,2)		NOT NULL,
	url_image		varchar(255)		NULL,

	CONSTRAINT pk_autotype PRIMARY KEY (typecode)
);







CREATE TABLE Accessoire (
	accessoirenaam		char(10)		NOT NULL,
	omschrijving		varchar(255)	NOT NULL,
	prijs_per_dag		numeric(6,2)	NOT NULL,

	CONSTRAINT pk_accessoire PRIMARY KEY (accessoirenaam)
);



CREATE TABLE Auto (
	autonr			int				NOT NULL,
	autotype		char(10)		NOT NULL,
	kenteken		char(10)		NOT NULL,
	merk			varchar(31)		NOT NULL,
	modelnaam		varchar(31)		NOT NULL,
	kleur			varchar(15)		NULL,
	is_automaat		bit				NOT NULL,
	is_elektrisch	bit				NOT NULL,
	is_in_orde		bit				NOT NULL,

	CONSTRAINT pk_auto PRIMARY KEY (autonr),
	CONSTRAINT fk_typecodeAuto FOREIGN KEY (autotype) REFERENCES Autotype(typecode)
	);
	


CREATE TABLE Locatie (
	locatiecode		char(10)		NOT NULL,
	naam			varchar(255)	NOT NULL,
	adres			varchar(255)	NOT NULL,
	postcode		char(10)		NULL,
	plaats			varchar(255)	NOT NULL,
	land			varchar(255)	NOT NULL,

	CONSTRAINT pk_locatie PRIMARY KEY (locatiecode)
	);



CREATE TABLE Huurcontract (
	contractnr				int			NOT NULL,
	klant					int			NOT NULL,	
	van_datum				date		NOT NULL,
	tot_datum				date		NULL,
	locatie_ophalen			char(10)	NOT NULL,
	locatie_terugbrengen	char(10)	NOT NULL,
	wenst_autotype			char(10)	NOT NULL,
	wenst_automaat			bit			NOT NULL,
	wenst_elektrisch		bit			NULL,
	krijgt_auto				int			NULL,

	CONSTRAINT pk_huurcontract PRIMARY KEY (contractnr),
	CONSTRAINT fk_klantnr FOREIGN KEY (klant) REFERENCES Klant(klantnr),
	CONSTRAINT fk_locatiecodeophalen FOREIGN KEY (locatie_ophalen) REFERENCES Locatie(locatiecode),
	CONSTRAINT fk_locatiecodewegbrengen FOREIGN KEY (locatie_terugbrengen) REFERENCES Locatie(locatiecode),
	CONSTRAINT fk_typecode FOREIGN KEY (wenst_autotype) REFERENCES Autotype(typecode),
	CONSTRAINT fk_autonr FOREIGN KEY (krijgt_auto) REFERENCES Auto(autonr)
);		



CREATE TABLE Wenst_accessoire (
	huurcontract		int			NOT NULL,	
	accessoire			char(10)	NOT NULL,
	aantal				int			NOT NULL,
	
	CONSTRAINT pk_Wenst_accessoire PRIMARY KEY (huurcontract, accessoire),
	CONSTRAINT fk_contractnr FOREIGN KEY (huurcontract) REFERENCES Huurcontract(contractnr),
	CONSTRAINT fk_accessoirenaam FOREIGN KEY (accessoire) REFERENCES accessoire(accessoirenaam)
);