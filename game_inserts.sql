drop table game;

CREATE TABLE game(
	game_id int primary key auto_increment,
    name varchar(255) not null,
    description longtext not null,
    rating enum('0','1','2','3','4','5','6','7','8','9','10') not null,
    author varchar(255) not null,
    price double(9,2) default 10.0,
    releaseDate datetime default now()
);

insert into game values(default,"Rainbow Six Siege","fajna gra","8","Ubisoft",249.99,"2020-05-06");
insert into game values(default,"Diablo IV","Swietny H&S","10","Blizzard",299.99,"2023-05-14");
insert into game values(default,"Starcraft II","super tactic game","7","Blizzard",199.99,"1999-10-30");
insert into game values(default,"Minecraft","Piekny sandbox","10","Mojang",99.00,"2004-12-03");
insert into game values(default,"Terraria","Wspanialy sandbox ale 2D","7","Re-Logic",49.99,"2010-04-28");
INSERT INTO game VALUES(default,'XD','You can click on XD and earn money','6','Jacob Noll',15, '2019-12-12');
INSERT INTO game VALUES(default,':D','Create your own world and play with your friends!','8','Barbara Rabarbar',40,'2016-03-06');
INSERT INTO game VALUES(default,':)','You are a wild cat and live with your owner','9','Arthur Jones',50, '1999-11-07');
INSERT INTO game VALUES(default,'DX','You have to run away from the city of zombies','10','Jonas Smith',35,'2018-08-24');
INSERT INTO game VALUES(default,':P','You are very popular and have to start a new chapter of your life...','9','Tom Gilbert',60,'2006-04-13');
INSERT INTO game VALUES ( default,"SIMSY", "POGRYWAJ Z ŻYCEM", "6", "Simona Sims", 3 ,"2019-11-23" );
INSERT INTO game VALUES ( default,"SZACHY", "WYGRYWAJ Z INNYMI", "4", "Bogumił Wygrana", 6,"1978-03-05" );
INSERT INTO game VALUES (default, "WARCABY", "WYGRYWAJ I WSPINAJ SIE CORAZ WYŻEJ", "5", "Ewa GWIZDEK", 7, "2004-06-07" );
INSERT INTO game VALUES (default, "WOW", "KRZYŻOWKA NA KAZDY DZIEN", "3", "JAN KOWALCZYK", 4,"2009-12-30" );
INSERT INTO game VALUES (default, "XYZ", "GRAJ I WYGRYWAJ", "6", "JohnyJohanson", 3, "2017-07-27" );
INSERT INTO game VALUES (default, "Fortnite Battle Royale","Some shitty battle royale game, worse than Minecraft","2","Epic Games","0.0","2017-09-26");
INSERT INTO game VALUES (default, "Minecraft","Best game in the world, don't try to change my mind","10","Mojang","150.0","2009-05-17");
INSERT INTO game VALUES (default, "Roblox","Game just for kids","1","Roblox Corporation","0.0","2006-01-01");
INSERT INTO game VALUES (default, "Fallout 76","Don't play this game, please, it's just wrong","0","Bethesda","70.0","2018-11-17");
INSERT INTO game VALUES (default, "FNaF World","Scott's Cawthon disinherited child","4","Scott Cawthon","0.0","2016-01-26");
INSERT INTO game VALUES (default, "Pou", "You can plays games with him", "1","Jan Kowalski", 10.0, "2019-02-02");
INSERT INTO game VALUES (default, "Szachy", "You can play with other people", "2","Mariusz Sum", 25, "2019-06-28");
INSERT INTO game VALUES (default, "Snake", "You eat apple and collect points", "3","Alicja Rys", 5, "2019-03-23");
INSERT INTO game VALUES (default, "Moy", "You can look after him", "4" ,"Katarzyna Duk", 34, "2019-04-21");
INSERT INTO game VALUES (default, "HayDay", "You can have your own farm", "6" ,"Barbara Lange", 5, "2019-11-29");
insert into game values (default,"Just Cause 3","Pelna akcji","7","Square Enix",74,"2015-12-01");
insert into game values (default,"Epic Battle Fantasy 5","Idealny RPG z cientym humorem","8","Matt Roszak",74,"2018-11-30");
insert into game values (default,"Wiedzmin 3","SAPKOWSKI","9","CD Project Red",99.99,"2015-05-18");
insert into game values (default,"Dying Light","RPG-postapo","9","Techland",99.99,"2015-01-26");
insert into game values (default,"Rebel Inc:Escalation","Swietna strategia","10","Ndemic Creations",53.99,"2019-10-15");
insert into game values (default, "Overwatch", "Normal game with heroes but you get stunned every 5 seconds","10","Blizzard Entertainment",20,"2016-05-24");
insert into game values (default, "Half life 2","One of the best games ever, you should deffinitely try it out","10","Valve Corp.",9.31,"2004-11-16");
insert into game values (default, "World of Warcraft","Idk just a Blizzard rpg that will suck you right in so ps buy","10","Blizzard Entertainment",15.52,"2004-11-23");
insert into game values (default, "Enter the Gungeon","just try it out... seriously.. just do it..","10","David Rubel,Brent Sodman",15,"2016-04-05");

select * from game;
