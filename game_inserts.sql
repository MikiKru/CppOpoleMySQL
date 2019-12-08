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

select * from game where author like '%lizzard%';

select * from game where price between 10 and 100;
select * from game where rating = "8" or rating = "9" or rating = "10" order by rating DESC, name ASC;

# gra najlepsza w stosunku jakości do ceny
select * from game where rating = "10" order by rating DESC, price ASC limit 1;
# gra najgorsza w stosunku jakkości do ceny
select * from game where rating = "0" order by rating DESC, price DESC limit 1;

# średnia cena
select round(avg(price),2) as 'średna cena gry' from game;

# średnia cena gry dla każego ratingu
select rating, round(avg(price),2) as 'średna cena gry' from game group by rating;

# ile jest gier w ramach każdego ratingu
select rating, count(*) from game group by rating;


# Utworzenie tabeli relacyjnej
CREATE TABLE player_has_game(
	player_has_game_id int primary key auto_increment,
    player_id int not null,
    game_id int not null,
    foreign key (player_id) references player(player_id), 	# klucz obcy z tabeli player
    foreign key (game_id) references game(game_id)			# klucz obcy z tabeli game
);


# Łączenie gracza z grą
select * from player;
select * from game;
select * from player_has_game;

# Przypisz Johnowi gry ktore kupił o indeksach 5, 10, 15
INSERT INTO player_has_game VALUES (default, 1, 5);
INSERT INTO player_has_game VALUES (default, 1, 10);
INSERT INTO player_has_game VALUES (default, 1, 15);

# Janusz kupił grę nr 20
INSERT INTO player_has_game VALUES (default, 6, 20);

# Wyświetlenie danych pochodzących z wielu table
SELECT
	player.name,
    player.lastname,
	player.login,
    player.country,
    player.language,
    game.name,
    game.rating,
    game.price,
    game.releaseDate
FROM					# złączenie wielu tabel na podstawie kluczy primary to forign
	player 
		join
	player_has_game on (player.player_id = player_has_game.player_id)
		join
	game on (game.game_id = player_has_game.game_id);
	
select * from player;


# 1. Dodaj nowego gracza o dowolnych danych
INSERT INTO player VALUES (default, "Anna","Nowy","Ano","Ano", "POL", default, "an@an.pl");
# 2. Niech ten użytkownik kupi grę nr 1 i 3
INSERT INTO player_has_game VALUES (default, 8, 1);
INSERT INTO player_has_game VALUES (default, 8, 3);
# 3. Zabierz wszystkie gry Johnowi
DELETE FROM player_has_game WHERE player_id = 1;
# 4. Zmień hasło Johna na xxx
UPDATE player SET password = "xxx" WHERE player_id = 1;
# *5. Zahashuj -> zaszyfruj hasła wszystkich graczy algorytmem md5()
UPDATE player SET password = md5(password);


# 6. Dodaj kolejnego użytkownika tak żeby miał hasahowane hasło
INSERT INTO player VALUES (default, "Omar","Rzeznik","OmRze",md5("mmmm"), "KSA", default, "or@or.pl");
select * from player;

# LOGOWANIE GRACZA NA PODSTAWIE LOGINU I HASŁA MD5
SELECT * FROM player WHERE login = "OmRze" AND password = md5("mmmm");
 
# FUNKCJA DO LOGOWANIA GRACZA
DROP FUNCTION login;
CREATE FUNCTION login(input_login varchar(55), input_password varchar(512))
	RETURNS bool DETERMINISTIC
	RETURN (SELECT login is not null FROM player WHERE login = input_login AND password = md5(input_password));
 
select if(login("OmRze","mmmm") is null, "niezalogowano", "zalogowano") as login_result;

# 0. Utwórz aktualny kurs dolara w zmiennej toUSD
SET @toUSD = (SELECT 3.99);

# 1. Funkcja przeliczająca ceny gier na $3.99
CREATE FUNCTION priceUSD(input_price double) 
	RETURNS DOUBLE(9,2) DETERMINISTIC 
    RETURN input_price / @toUSD; 

SELECT *, priceUSD(price) as "PRICE USD" FROM game;

# 1. Dodaj nową tabelę do bazy game_statistics przechowującą dane o grach 
# game_logs
# -> kto grał	id gracza
# -> w co grał	id gry
# -> kiedy grał data i czas
# -> ile grał	minuty

CREATE TABLE game_logs(
	game_logs_id int primary key auto_increment,
    player_id int not null,
    game_id int not null,
    start_date datetime not null,
    time_interval int not null,
	foreign key (player_id) references player (player_id),
	foreign key (game_id) references game (game_id)    
);
select * from player_has_game;
# 2. Dodaj następujące logi graczy
# gracz id 8 grał w gre id 1 dziś o 9.00 przez 60 min  
# gracz id 6 grał w gre id 20 wczoraj o 23.00 przez 120 min 
insert into game_logs VALUES (default, 8, 1, "2019-12-09 09:00:00", 60);
insert into game_logs VALUES (default, 8, 1, "2019-12-10 09:00:00", 160);
insert into game_logs VALUES (default, 8, 1, "2019-12-11 09:00:00", 60);

insert into game_logs VALUES (default, 6, 20, "2019-11-07 23:00:00", 120);
insert into game_logs VALUES (default, 6, 20, "2019-10-07 23:00:00", 80);
insert into game_logs VALUES (default, 6, 20, "2019-10-01 11:00:00", 40);
insert into game_logs VALUES (default, 6, 20, "2019-11-02 12:00:00", 30);
insert into game_logs VALUES (default, 6, 20, "2019-09-03 23:00:00", 220);
insert into game_logs VALUES (default, 6, 20, "2019-07-04 20:00:00", 20);

select *, date_format(start_date, '%d.%m.%Yr. (%H:%i)') as 'formatted_date' from game_logs;

# Ile czasu wszyscy gracze poświęcili na naszej platformie
SELECT sum(time_interval) as 'czas na platformie' FROM game_logs;

# Ile czasu poświęcięcili wszyscy gracza na grze id 20 FNaF World
SELECT sum(time_interval) as 'czas na platformie' FROM game_logs WHERE game_id = 20;

# Oblicz ile czasu każdy z graczy spędził na naszej platformie jeżeli wczale to wypisz zero
SELECT 
	player.name, 
    player.lastname, 
    player.login, 
    ifnull(sum(game_logs.time_interval),0) as 'czas na platformie' 
FROM 
	player 
		left join
	game_logs on (player.player_id = game_logs.player_id)
GROUP BY 
	player.login
ORDER BY 
	4 DESC;


INSERT INTO player_has_game VALUES (default, 1, 5);
insert into game_logs VALUES (default, 1, 5, "2019-09-03 23:00:00", 2020);

# Ile razy każdy z graczy logował się na platformie
SELECT 
	player.name, 
    player.lastname, 
    player.login, 
    ifnull(count(game_logs.time_interval),0) as 'czas na platformie' 
FROM 
	player 
		left join
	game_logs on (player.player_id = game_logs.player_id)
GROUP BY 
	player.login
ORDER BY 
	4 DESC;

# Który gracz jest drugim najbardziej aktywnym na platformie
SELECT 
	player.name, 
    player.lastname, 
    player.login, 
    ifnull(sum(game_logs.time_interval),0) as 'czas na platformie' 
FROM 
	player 
		left join
	game_logs on (player.player_id = game_logs.player_id)
GROUP BY 
	player.login
ORDER BY 
	4 DESC
LIMIT
	1
OFFSET 
	1;
    
# ile jest gier na naszej platformie
SELECT count(*) as 'ilość' FROM game;

SELECT * FROM player_has_game;
# ile jest gier na naszej platformie które ktoś kupił
SELECT count(distinct game_id) as 'ilość' FROM player_has_game;









