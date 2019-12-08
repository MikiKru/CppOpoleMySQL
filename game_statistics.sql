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
INSERT INTO player VALUES (1, "John","White","Joe","JohnyJohnyYesPapa", "CAN","USA");

















