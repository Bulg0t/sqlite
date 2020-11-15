DROP TABLE IF EXISTS tbUczniowie;
CREATE TABLE tbUczniowie (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	imie TEXT,
	nazwisko TEXT,
	plec INTEGER,
	idKlasa INTEGER NOT NULL REFERENCES tbklasy(id),
	egzHum NUMERIC NOT NULL DEFAULT 0,
	egzMat NUMERIC NOT NULL DEFAULT 0,
	egzJez NUMERIC NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS tbKlasy;
CREATE TABLE tbKlasy (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
	klasa TEXT,
	rokNaboru INTEGER,
	rokMatury INTEGER
);
DROP TABLE IF EXISTS tbPrzedmioty;
CREATE TABLE tbPrzedmioty (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
	przedmiot TEXT,
	nazwiskoNaucz TEXT,
	imieNaucz TEXT,
    plec INTEGER
);
DROP TABLE IF EXISTS tbOceny;
CREATE TABLE tbOceny (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
	ocena NUMERIC,
    datad DATE,
    id_ucznia INTEGER,
    id_przedm INTEGER,
    FOREIGN KEY (id_ucznia) REFERENCES tbUczniowie(id),
    FOREIGN KEY (id_przedm) REFERENCES tbPrzedmioty(id)
);

INSERT INTO tbKlasy(klasa, rokNaboru, rokMatury)
VALUES('1B', 2015, 2018);
INSERT INTO tbKlasy(klasa, rokNaboru, rokMatury)
VALUES('1A', 2015, 2018);

SELECT id FROM tbKlasy WHERE klasa='1B';

INSERT INTO tbUczniowie(imie, nazwisko, plec, idKlasa, egzHum, egzMat, egzJez)
VALUES('Adam', 'Kowalski', 0, 1, 80.6, 50, 90.5);

SELECT * FROM tbUczniowie;

INSERT INTO tbUczniowie(imie, nazwisko, plec, idKlasa, egzHum, egzMat, egzJez)
VALUES('Jaś', 'Fasola', 0, 2, 50.6, 78.9, 80);

INSERT INTO tbPrzedmioty(przedmiot, nazwiskoNaucz, imieNaucz, plec)
VALUES('biologia', 'Henryszewski', 'Robert', 0);

SELECT * FROM tbPrzedmioty;

INSERT INTO tbOceny(ocena, datad, id_ucznia, id_przedm)
VALUES(4.5, '2015-10-01', 1, 1);

SELECT * FROM tbOceny;

