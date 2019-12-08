-- CTRL+Enter -> wykonianie jednego polecenia na którym znajduje się kursor
-- CTRL + SHIFT + ENTER -> wykonanie całego skryptu lub zaznaczonej części skryptu
select 1+2, "Ala ma kota";

# utworzenie bazy danych
CREATE DATABASE game_statistics				# worek w którym można przechowywać tabele, widoki, funkcje, triggery, zmienne
CHARACTER SET utf8 COLLATE utf8_polish_ci;	# kodowanie znaków 	

USE game_statistics;

# usunięcie bazy danych
-- DROP DATABASE game_statistics;

CREATE TABLE player(
	player_id int PRIMARY KEY auto_increment,
    name varchar(55) NOT NULL,
    lastname varchar(255) NOT NULL,
	login varchar(55) NOT NULL,
    password varchar(512) NOT NULL,
    country varchar(3) DEFAULT 'GBR',
	language enum('GBR', 'USA', 'POL', 'GER', 'FRA', 'ESP', 'ITA', 'RUS') DEFAULT 'GBR'
);
# wypisz właściwości tabeli
DESCRIBE player;
# wypisz zawartość tabeli
SELECT * FROM player;
# dodawanie danych do tabeli
INSERT INTO player VALUES (1, "John","White","Joe","JohnyJohnyYesPapa", "CAN","USA");
# wprowadzanie wybiórczo wieszy
INSERT INTO player VALUES (default, "Janusz","Czarny","JaCzarny","admin", "POL", default);
# usunięcie wybranych rekordów
DELETE FROM player WHERE login = "JaCzarny";	
# ZMIANA STRUKTURY TABELI
ALTER TABLE player MODIFY login varchar(55) unique not null;
# jak zmienić kolumnę na kolumnę z tą samą nazwą ale innymmi klauzulami
# login varchar(55) unique not null
# DODAJ NOWĄ KOLUMNĘ email varchar(255) not null
ALTER TABLE player ADD COLUMN email varchar(255) not null;

# edycja rekordów
UPDATE player SET email = 'test@test.pl';
SELECT * FROM player;

# zmodyfikuj adres Johna W. na jego prawdziwy adres jwhite@yahoo.com
UPDATE player SET email = 'jwhite@yahoo.com' WHERE player_id = 1;
# zmodyfikuj adres Janusza na czarnykot@kundelek.pl
UPDATE player SET email = 'czarnykot@kundelek.pl' WHERE player_id = 6;

# DODAJ TABLE GRY -> game_id, name, description, rating, author, price, releaseDate
CREATE TABLE game(
	game_id int primary key auto_increment,
    name varchar(255) not null,
    description longtext not null,
    rating enum('0','1','2','3','4','5','6','7','8','9','10') not null,
    author varchar(255) not null,
    price double(9,2) default 10.0,
    releaseDate datetime default now()
);
select * from game;








