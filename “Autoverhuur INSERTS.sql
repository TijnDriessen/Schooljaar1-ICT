DELETE FROM Wenst_accessoire;
DELETE FROM Huurcontract;
DELETE FROM Auto;
DELETE FROM Klant;
DELETE FROM Locatie;
DELETE FROM Autotype;
DELETE FROM Accessoire;



INSERT INTO Klant (klantnr, voornaam, tussenvoegsels, achternaam, emailadres)
VALUES (165321, 'Sjaak', 'van de', 'Hoek', 'sjakievandehoek@mailinator.com'),
(176342, 'Bernadette', '', 'Hamerslag', 'b.hamerslag@mailinator.com'),
(165323, 'Guus', 'van de', 'Plank', 'Guusvandeplank@mailinator.com'),
(165324, 'Gerard', 'van de', 'Boom', 'GerardvandeBoom@mailinator.com'),
(165325, 'Mark', 'van de', 'Straat', 'Markvandestraat@mailinator.com');




INSERT INTO Autotype (typecode, omschrijving, aantal_personen, prijs_per_dag, url_image)
VALUES ('KSUV5', 'Kleine SUV', 5, 25.50, 'https://www.ford.nl/content/dam/guxeu/nl/cars/focus/ford-nl-focus-focus_new_image_in-2160x925-16x9-red_focus_dark_new.jpg.renditions.extra-large.jpeg'),
('SUV7', 'Grote SUV', 7, 40.00, 'https://www.google.com/url?sa=i&url=https%3A%2F%2F7zitter.nl%2Fdatabase%2Ftoyota-prius-wagon-prius%2F&psig=AOvVaw1UWyyz4jzzb2jy-HW5gTtD&ust=1732005109173000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCOjE4f275YkDFQAAAAAdAAAAABAR'),
('HTCHBK4', 'Goede Hatchback', 4, 17.50, 'https://aicuplpjbq.cloudimg.io/v7/https://media-eigenwebsiteincrementeel.export.dv.nl/16293582529/40316662-1.jpg?width=960&height=720'),
('MNVN6', 'Grote Minivan', 6, 35.00, 'https://www.autoscout24.nl/cms-content-assets/6R1hg1zlw8x4Vi89HjxEE2-83db3422efff3e234c006c4f42703a65-Chrysler-Pacifica-2021-1280-03-1100.webp'),
('GSUV5', 'Grote SUV', 5, 27.00, 'https://dmassets.hyundai.com/is/image/hyundaiautoever/HME_NX4_PHEV_Regular_EViz_EXT_T2P-Cypress+Green+Pearl_SHOT_01:16x9?wid=1920&hei=1080&fit=wrap,1');




INSERT INTO Accessoire (accessoirenaam, omschrijving, prijs_per_dag)
VALUES ('BABYSTLGR', 'Babystoel groot', 5.00),
('NAVXL', 'Navigatie XL', 4.00),
('TRKHK', 'Trekhaak', 8.00),
('CMRAS', 'Cameras', 5.00),
('HONDNET', 'Hondennet', 3.50);




INSERT INTO Locatie (locatiecode, naam, adres, postcode, plaats, land)
VALUES ('SCHIPHAIRP', 'autoverhuur Heijendaal Amsterdam', 'Hoofdweg 27', '1011 AB', 'Amsterdam', 'Nederland' ),
('ROTTMAAS2', 'autoverhuur Heijendaal Maasvlakte', 'Havenweg 128', '6511 AD', 'Rotterdam', 'Nederland' ),
('EDHVN', 'autoverhuur Heijendaal Eindhoven', 'straatweg 18', '5623 EL', 'Eindhoven', 'Nederland' ),
('APLDRN', 'autoverhuur Heijendaal Apeldoorn', 'florastraat 69', '7325 GP', 'Apeldoorn', 'Nederland' ),
('BERLCENTR', 'autoverhuur Heijendaal Berlijn', 'Hauptstraﬂe 78', '10317', 'Berlijn', 'Duitsland' ),
('MDLBRG', 'autoverhuur Heijendaal Middelburg', 'Faunastraat 1', '4331 AA', 'Middelburg', 'Nederland' );





INSERT INTO Auto (autonr, autotype, kenteken, merk, modelnaam, kleur, is_automaat, is_elektrisch, is_in_orde)
VALUES (59, 'KSUV5', 'FG-SR-79', 'Ford', 'Focus', 'rood', 1,0,0),
(38, 'SUV7', '7-XSN-44', 'Toyota', 'Prius+', 'Blauw', 1,1,1),
(57, 'HTCHBK4', 'XX-53-RK', 'Volkswagen', 'Golf', 'zwart', 0,0,1),
(27, 'MNVN6', 'VO-82-HG', 'Chrysler', 'Pacifica', 'zwart', 1,0,1),
(28, 'GSUV5', 'RH-35-FS', 'Hyundai', 'Tucson', 'groen', 1,0,1);





INSERT INTO Huurcontract (contractnr, klant, van_datum, tot_datum, locatie_ophalen, locatie_terugbrengen, wenst_autotype, wenst_automaat, wenst_elektrisch, krijgt_auto)
VALUES (994412, 165321, '2024-07-16', '2024-08-04', 'SCHIPHAIRP', 'BERLCENTR', 'KSUV5', 1, 0,59),
(995513, 176342, '2024-08-13', NULL , 'SCHIPHAIRP', 'ROTTMAAS2', 'SUV7', 0, 1,38),
(994414, 165323, '2024-05-16', '2024-06-04', 'EDHVN', 'ROTTMAAS2', 'HTCHBK4', 0, 0,57),
(994415, 165324, '2021-07-11', '2021-08-04', 'APLDRN', 'EDHVN', 'MNVN6', 1, 0,27),
(994416, 165325, '2023-02-07', '2023-03-04', 'MDLBRG', 'BERLCENTR', 'GSUV5', 1, 0,28),
(994417, 165323, '2022-04-20', '2022-05-08', 'BERLCENTR', 'ROTTMAAS2', 'HTCHBK4', 1, 1,57),
(994418, 165325, '2020-08-15', '2020-09-20', 'SCHIPHAIRP', 'ROTTMAAS2', 'SUV7', 0, 0,38),
(994419, 165321, '2024-10-20', '2024-11-14', 'EDHVN', 'APLDRN', 'KSUV5', 0, 0,28);





INSERT INTO Wenst_accessoire (huurcontract, accessoire, aantal)
VALUES (994412, 'BABYSTLGR', 2),
(994412, 'TRKHK', 1),
(994412, 'NAVXL', 1),
(995513, 'HONDNET', 1),
(994414, 'TRKHK', 1),
(994415, 'CMRAS', 1),
(994416, 'HONDNET', 1),
(995513, 'CMRAS', 2),
(994416, 'NAVXL', 1),
(994418, 'TRKHK', 1);






