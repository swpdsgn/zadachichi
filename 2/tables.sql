CREATE TABLE crewmembers (
	id int NOT NULL PRIMARY KEY,
	firstname varchar(128) NOT NULL,
	lastname varchar(128) NOT NULL,
	age int NOT NULL
);

CREATE TABLE aircrafts (
	id int NOT NULL PRIMARY KEY,
	aircraftname varchar(128) NOT NULL
);

CREATE TABLE experience (
	c_id int NOT NULL,
	a_id int NOT NULL,
	FOREIGN KEY (c_id) REFERENCES crewmembers(id),
	FOREIGN KEY (a_id) REFERENCES aircrafts(id)
);

insert into crewmembers (id, firstname, lastname, age) values (1, 'Maddy', 'Mingard', 41);
insert into crewmembers (id, firstname, lastname, age) values (2, 'Alfie', 'Glidden', 20);
insert into crewmembers (id, firstname, lastname, age) values (3, 'Ernesta', 'Flood', 54);
insert into crewmembers (id, firstname, lastname, age) values (4, 'Rosalinda', 'McAless', 41);
insert into crewmembers (id, firstname, lastname, age) values (5, 'Cairistiona', 'Restieaux', 19);
insert into crewmembers (id, firstname, lastname, age) values (6, 'Angelica', 'Draisey', 22);
insert into crewmembers (id, firstname, lastname, age) values (7, 'Ermanno', 'Czajkowska', 28);
insert into crewmembers (id, firstname, lastname, age) values (8, 'Arleyne', 'Troke', 18);
insert into crewmembers (id, firstname, lastname, age) values (9, 'Job', 'Pudsey', 18);
insert into crewmembers (id, firstname, lastname, age) values (10, 'Danica', 'Pellington', 31);
insert into crewmembers (id, firstname, lastname, age) values (11, 'Nanice', 'Eddy', 36);
insert into crewmembers (id, firstname, lastname, age) values (12, 'Filmore', 'Vannah', 30);
insert into crewmembers (id, firstname, lastname, age) values (13, 'Enrika', 'Gunson', 26);
insert into crewmembers (id, firstname, lastname, age) values (14, 'Donelle', 'Kivlehan', 53);
insert into crewmembers (id, firstname, lastname, age) values (15, 'Melodie', 'Giannazzo', 45);
insert into crewmembers (id, firstname, lastname, age) values (16, 'Alia', 'Pattlel', 36);
insert into crewmembers (id, firstname, lastname, age) values (17, 'Dulcea', 'Balderson', 38);
insert into crewmembers (id, firstname, lastname, age) values (18, 'Cull', 'Londsdale', 48);
insert into crewmembers (id, firstname, lastname, age) values (19, 'Michale', 'Grealy', 40);
insert into crewmembers (id, firstname, lastname, age) values (20, 'Dasie', 'Dusting', 23);
insert into crewmembers (id, firstname, lastname, age) values (21, 'Dex', 'Fursey', 41);
insert into crewmembers (id, firstname, lastname, age) values (22, 'Joye', 'Shiel', 27);
insert into crewmembers (id, firstname, lastname, age) values (23, 'Tyrone', 'Espinas', 26);
insert into crewmembers (id, firstname, lastname, age) values (24, 'Frazer', 'Wane', 19);
insert into crewmembers (id, firstname, lastname, age) values (25, 'Adrea', 'Brunelleschi', 48);
insert into crewmembers (id, firstname, lastname, age) values (26, 'Krystal', 'Childrens', 41);
insert into crewmembers (id, firstname, lastname, age) values (27, 'Bibbie', 'Whitton', 42);
insert into crewmembers (id, firstname, lastname, age) values (28, 'Verge', 'Karpman', 24);
insert into crewmembers (id, firstname, lastname, age) values (29, 'Alejoa', 'Hember', 47);
insert into crewmembers (id, firstname, lastname, age) values (30, 'Meta', 'Fleischmann', 52);
insert into crewmembers (id, firstname, lastname, age) values (31, 'Collette', 'Tocher', 47);
insert into crewmembers (id, firstname, lastname, age) values (32, 'Padriac', 'Cutchee', 34);
insert into crewmembers (id, firstname, lastname, age) values (33, 'Laurella', 'Minnis', 55);
insert into crewmembers (id, firstname, lastname, age) values (34, 'Waylin', 'Marflitt', 49);
insert into crewmembers (id, firstname, lastname, age) values (35, 'Wilhelm', 'Chaperlin', 42);
insert into crewmembers (id, firstname, lastname, age) values (36, 'Welbie', 'Clouston', 50);
insert into crewmembers (id, firstname, lastname, age) values (37, 'Rochester', 'Fontes', 20);
insert into crewmembers (id, firstname, lastname, age) values (38, 'Cleopatra', 'Flemyng', 23);
insert into crewmembers (id, firstname, lastname, age) values (39, 'Gunar', 'McBrearty', 26);
insert into crewmembers (id, firstname, lastname, age) values (40, 'Georgie', 'Vogeller', 28);
insert into crewmembers (id, firstname, lastname, age) values (41, 'Sadella', 'Dudgeon', 22);
insert into crewmembers (id, firstname, lastname, age) values (42, 'Tobie', 'Casajuana', 29);
insert into crewmembers (id, firstname, lastname, age) values (43, 'Millisent', 'Di Maria', 46);
insert into crewmembers (id, firstname, lastname, age) values (44, 'Arlena', 'Baildon', 51);
insert into crewmembers (id, firstname, lastname, age) values (45, 'Clive', 'Kemet', 21);
insert into crewmembers (id, firstname, lastname, age) values (46, 'Dion', 'Rawles', 29);
insert into crewmembers (id, firstname, lastname, age) values (47, 'Thibaud', 'Keelinge', 43);
insert into crewmembers (id, firstname, lastname, age) values (48, 'Paulo', 'Erwin', 34);
insert into crewmembers (id, firstname, lastname, age) values (49, 'Lawry', 'Kleinmann', 23);
insert into crewmembers (id, firstname, lastname, age) values (50, 'Sybilla', 'Shillabear', 25);



insert into aircrafts (id, aircraftname) values (1, 'Bytecard');
insert into aircrafts (id, aircraftname) values (2, 'Asoka');
insert into aircrafts (id, aircraftname) values (3, 'Vagram');
insert into aircrafts (id, aircraftname) values (4, 'Daltfresh');
insert into aircrafts (id, aircraftname) values (5, 'Viva');
insert into aircrafts (id, aircraftname) values (6, 'Quo Lux');
insert into aircrafts (id, aircraftname) values (7, 'Sonair');
insert into aircrafts (id, aircraftname) values (8, 'Y-find');
insert into aircrafts (id, aircraftname) values (9, 'Holdlamis');
insert into aircrafts (id, aircraftname) values (10, 'Veribet');
insert into aircrafts (id, aircraftname) values (11, 'Bytecard');
insert into aircrafts (id, aircraftname) values (12, 'Alpha');
insert into aircrafts (id, aircraftname) values (13, 'Zoolab');
insert into aircrafts (id, aircraftname) values (14, 'Sonsing');
insert into aircrafts (id, aircraftname) values (15, 'Alphazap');
insert into aircrafts (id, aircraftname) values (16, 'Stronghold');
insert into aircrafts (id, aircraftname) values (17, 'Greenlam');
insert into aircrafts (id, aircraftname) values (18, 'Daltfresh');
insert into aircrafts (id, aircraftname) values (19, 'Regrant');
insert into aircrafts (id, aircraftname) values (20, 'Viva');


insert into experience (c_id, a_id) values (15, 6);
insert into experience (c_id, a_id) values (30, 14);
insert into experience (c_id, a_id) values (19, 9);
insert into experience (c_id, a_id) values (50, 20);
insert into experience (c_id, a_id) values (16, 2);
insert into experience (c_id, a_id) values (2, 14);
insert into experience (c_id, a_id) values (32, 7);
insert into experience (c_id, a_id) values (48, 5);
insert into experience (c_id, a_id) values (42, 15);
insert into experience (c_id, a_id) values (7, 18);
insert into experience (c_id, a_id) values (5, 4);
insert into experience (c_id, a_id) values (15, 16);
insert into experience (c_id, a_id) values (39, 6);
insert into experience (c_id, a_id) values (14, 14);
insert into experience (c_id, a_id) values (21, 20);
insert into experience (c_id, a_id) values (42, 19);
insert into experience (c_id, a_id) values (15, 15);
insert into experience (c_id, a_id) values (50, 10);
insert into experience (c_id, a_id) values (45, 3);
insert into experience (c_id, a_id) values (36, 1);
insert into experience (c_id, a_id) values (1, 6);
insert into experience (c_id, a_id) values (47, 16);
insert into experience (c_id, a_id) values (23, 8);
insert into experience (c_id, a_id) values (12, 8);
insert into experience (c_id, a_id) values (15, 5);
insert into experience (c_id, a_id) values (23, 12);
insert into experience (c_id, a_id) values (4, 17);
insert into experience (c_id, a_id) values (16, 18);
insert into experience (c_id, a_id) values (17, 2);
insert into experience (c_id, a_id) values (33, 4);
insert into experience (c_id, a_id) values (22, 11);
insert into experience (c_id, a_id) values (17, 1);
insert into experience (c_id, a_id) values (50, 4);
insert into experience (c_id, a_id) values (27, 20);
insert into experience (c_id, a_id) values (43, 16);
insert into experience (c_id, a_id) values (15, 16);
insert into experience (c_id, a_id) values (4, 16);
insert into experience (c_id, a_id) values (33, 18);
insert into experience (c_id, a_id) values (38, 4);
insert into experience (c_id, a_id) values (3, 11);
insert into experience (c_id, a_id) values (28, 11);
insert into experience (c_id, a_id) values (14, 1);
insert into experience (c_id, a_id) values (10, 19);
insert into experience (c_id, a_id) values (27, 13);
insert into experience (c_id, a_id) values (49, 5);
insert into experience (c_id, a_id) values (36, 11);
insert into experience (c_id, a_id) values (30, 4);
insert into experience (c_id, a_id) values (22, 8);
insert into experience (c_id, a_id) values (44, 6);
insert into experience (c_id, a_id) values (20, 14);
insert into experience (c_id, a_id) values (44, 18);
insert into experience (c_id, a_id) values (45, 4);
insert into experience (c_id, a_id) values (32, 11);
insert into experience (c_id, a_id) values (29, 4);
insert into experience (c_id, a_id) values (6, 8);
insert into experience (c_id, a_id) values (50, 9);
insert into experience (c_id, a_id) values (24, 6);
insert into experience (c_id, a_id) values (1, 16);
insert into experience (c_id, a_id) values (43, 14);
insert into experience (c_id, a_id) values (21, 13);
insert into experience (c_id, a_id) values (35, 6);
insert into experience (c_id, a_id) values (38, 8);
insert into experience (c_id, a_id) values (3, 16);
insert into experience (c_id, a_id) values (30, 2);
insert into experience (c_id, a_id) values (17, 6);
insert into experience (c_id, a_id) values (48, 2);
insert into experience (c_id, a_id) values (46, 20);
insert into experience (c_id, a_id) values (44, 7);
insert into experience (c_id, a_id) values (43, 3);
insert into experience (c_id, a_id) values (48, 17);
insert into experience (c_id, a_id) values (32, 1);
insert into experience (c_id, a_id) values (29, 15);
insert into experience (c_id, a_id) values (3, 1);
insert into experience (c_id, a_id) values (30, 19);
insert into experience (c_id, a_id) values (3, 20);
insert into experience (c_id, a_id) values (3, 17);
insert into experience (c_id, a_id) values (45, 15);
insert into experience (c_id, a_id) values (30, 12);
insert into experience (c_id, a_id) values (14, 18);
insert into experience (c_id, a_id) values (18, 12);
insert into experience (c_id, a_id) values (50, 9);
insert into experience (c_id, a_id) values (35, 19);
insert into experience (c_id, a_id) values (20, 18);
insert into experience (c_id, a_id) values (25, 6);
insert into experience (c_id, a_id) values (7, 16);
insert into experience (c_id, a_id) values (22, 14);
insert into experience (c_id, a_id) values (42, 11);
insert into experience (c_id, a_id) values (6, 4);
insert into experience (c_id, a_id) values (35, 14);
insert into experience (c_id, a_id) values (15, 10);
insert into experience (c_id, a_id) values (35, 13);
insert into experience (c_id, a_id) values (7, 13);
insert into experience (c_id, a_id) values (7, 14);
insert into experience (c_id, a_id) values (18, 15);
insert into experience (c_id, a_id) values (17, 13);
insert into experience (c_id, a_id) values (39, 19);
insert into experience (c_id, a_id) values (29, 8);
insert into experience (c_id, a_id) values (41, 1);
insert into experience (c_id, a_id) values (49, 15);
insert into experience (c_id, a_id) values (12, 7);
