DELETE FROM Huurcontract;
DELETE FROM Wenst_accessoire;
DELETE FROM Auto;
DELETE FROM Klant;
DELETE FROM Locatie;
DELETE FROM Autotype;
DELETE FROM Accessoire;



INSERT INTO Klant (klantnr, voornaam, tussenvoegsels, achternaam, emailadres)
VALUES ('165321', 'Sjaak', 'van de', 'Hoek', 'sjakievandehoek@mailinator.com'),
('165322', 'Kees', 'van de', 'Spek', 'Keesvandespek@mailinator.com'),
('165323', 'Guus', 'van de', 'Plank', 'Guusvandeplank@mailinator.com'),
('165324', 'Gerard', 'van de', 'Boom', 'GerardvandeBoom@mailinator.com'),
('165325', 'Mark', 'van de', 'Straat', 'Markvandestraat@mailinator.com');




INSERT INTO Autotype (typecode, omschrijving, aantal_personen, prijs_per_dag, url_image)
VALUES ('KSUV5', 'Kleine SUV', '5', '25.50', 'https://www.ford.nl/content/dam/guxeu/nl/cars/focus/ford-nl-focus-focus_new_image_in-2160x925-16x9-red_focus_dark_new.jpg.renditions.extra-large.jpeg'),
('STW5', 'Kleine Station wagon', '5', '30.00', 'https://www.volvocars.com/images/cs/v3/assets/blt0feaa88e629251fc/blt4433bf5d2af511fd/668e630222b04bd08dc387b7/v60-hybrid-gallery-10-16x9.jpg?branch=prod_alias&auto=webp&iar=0&w=1920'),
('HTCHBK4', 'Goede Hatchback', '4', '17.50', 'https://aicuplpjbq.cloudimg.io/v7/https://media-eigenwebsiteincrementeel.export.dv.nl/16293582529/40316662-1.jpg?width=960&height=720'),
('MNVN6', 'Grote Minivan', '6', '35.00', 'https://www.autoscout24.nl/cms-content-assets/6R1hg1zlw8x4Vi89HjxEE2-83db3422efff3e234c006c4f42703a65-Chrysler-Pacifica-2021-1280-03-1100.webp'),
('GSUV5', 'Grote SUV', '5', '27.00', 'https://dmassets.hyundai.com/is/image/hyundaiautoever/HME_NX4_PHEV_Regular_EViz_EXT_T2P-Cypress+Green+Pearl_SHOT_01:16x9?wid=1920&hei=1080&fit=wrap,1');




INSERT INTO Accessoire (accessoirenaam, omschrijving, prijs_per_dag)
VALUES ('BABYSTLGR', 'Babystoel groot', '5.00'),
('NAVXL', 'Navigatie XL', '4.00'),
('TRKHK', 'Trekhaak', '8.00'),
('CMRAS', 'Cameras', '5.00'),
('ATPLT', 'Autopiloot', '20.00');




INSERT INTO Locatie (locatiecode, naam, adres, postcode, plaats, land)
VALUES ('SCHIPHAIRP', 'autoverhuur Heijendaal Amsterdam', 'Hoofdweg 27', '1011 AB', 'Amsterdam', 'Nederland' ),
('NMGN', 'autoverhuur Heijendaal Nijmegen', 'KeizerKarelPlein 14', '6511 AD', 'Nijmegen', 'Nederland' ),
('EDHVN', 'autoverhuur Heijendaal Eindhoven', 'straatweg 18', '5623 EL', 'Eindhoven', 'Nederland' ),
('APLDRN', 'autoverhuur Heijendaal Apeldoorn', 'florastraat 69', '7325 GP', 'Apeldoorn', 'Nederland' ),
('BERLCENTR', 'autoverhuur Heijendaal Berlijn', 'Hauptstraﬂe 78', '10317', 'Berlijn', 'Duitsland' ),
('MDLBRG', 'autoverhuur Heijendaal Middelburg', 'Founastraat 1', '4331 AA', 'Middelburg', 'Nederland' );





INSERT INTO Auto (autonr, autotype, kenteken, merk, modelnaam, kleur, is_automaat, is_elektrisch, is_in_orde)
VALUES ('59', 'KSUV5', 'FG-SR-79', 'Ford', 'Focus', 'rood', '1','0', '0'),
('38', 'STW5', 'LN-22-WI', 'Volvo', 'V60', 'zilver', '1','0', '1'),
('57', 'HTCHBK4', 'XX-53-RK', 'Volkswagen', 'Golf', 'zwart', '0','0', '1'),
('27', 'MNVN6', 'VO-82-HG', 'Chrysler', 'Pacifica', 'zwart', '1','0', '1'),
('28', 'GSUV5', 'RH-35-FS', 'Hyundai', 'Tucson', 'groen', '1','0', '1');





INSERT INTO Huurcontract (contractnr, klant, van_datum, tot_datum, locatie_ophalen, locatie_terugbrengen, wenst_autotype, wenst_automaat, wenst_elektrisch, krijgt_auto)
VALUES ('994412', '165321', '2024-07-16', '2024-08-04', 'SCHIPHAIRP', 'BERLCENTR', 'KSUV5', '1', '0','59'),
('994413', '165322', '2023-12-01', '2024-01-04', 'NMGN', 'MDLBRG', 'STW5', '1', '0','38'),
('994414', '165323', '2024-05-16', '2024-06-04', 'EDHVN', 'NMGN', 'HTCHBK4', '0', '0','57'),
('994415', '165324', '2021-07-11', '2021-08-04', 'APLDRN', 'EDHVN', 'MNVN6', '1', '0','27'),
('994416', '165325', '2023-02-07', '2023-03-04', 'MDLBRG', 'BERLCENTR', 'GSUV5', '1', '0','28'),
('994417', '165323', '2022-04-20', '2022-05-08', 'BERLCENTR', 'NMGN', 'HTCHBK4', '1', '1','57'),
('994418', '165325', '2020-08-15', '2020-09-20', 'SCHIPHAIRP', 'NMGN', 'STW5', '0', '0','38'),
('994419', '165321', '2024-10-20', '2024-11-14', 'EDHVN', 'APLDRN', 'KSUV5', '0', '0','28');





INSERT INTO Wenst_accessoire (huurcontract, accessoire, aantal)
VALUES ('994412', 'BABYSTLGR', '2'),
('994412', 'TRKHK', '1'),
('994412', 'NAVXL', '1'),
('994413', 'NAVXL', '1'),
('994414', 'TRKHK', '1'),
('994415', 'CMRAS', '1'),
('994416', 'ATPLT', '1'),
('994413', 'CMRAS', '2'),
('994416', 'NAVXL', '1'),
('994418', 'TRKHK', '1');






