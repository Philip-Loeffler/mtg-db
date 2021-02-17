DROP DATABASE IF EXISTS MTG_DB;
CREATE DATABASE MTG_DB;
USE bmdb;

Create table Card (
ID 			integer 		primary key auto_increment,
Name		varchar(255) 	not null,
Quanity     integer			not null,
TypeID		integer			not null,
ExpansionID	integer			not null,
Foreign Key (TypeID) references Type(ID),
Foreign Key (ExpansionID) references Expansion(ID)
);

Create table Expansion (
ID 			integer 		primary key auto_increment,
Name 		varchar(255) 	not null,
Year		varchar(255)	not null
);


Create table Type (
ID 			integer 		primary key auto_increment,
Name 		varchar(255)	not null
);



insert into Card VALUES
(1, "Underground Sea", 2, 4, 1),
(2, "Dark Confidant", 4, 2, 2),
(3, "Force of Will", 12, 6, 3),
(4, "Lion's Eye Diamond", 4, 1, 1);

insert into Expansion VALUES
(1, "Revised", '1994'),
(2, "Ravnica", '2005'),
(3, "Alliance", '1996'),
(4, "Mirage", '1996');

insert into Type VALUES
(1, 'Artifact'),
(2, 'Creature'),
(3, 'Enchantment'),
(4, 'Land'),
(5, 'Planeswalker'),
(6, 'Instant'),
(7, 'Sorcery')
