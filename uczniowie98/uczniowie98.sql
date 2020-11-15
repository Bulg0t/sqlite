DROP TABLE IF EXISTS tbUczniowie;
CREATE TABLE tbUczniowie (
    id_ucz INTEGER,
    imie TEXT,
    nazwisko TEXT,
    klasa TEXT
);
DROP TABLE IF EXISTS tbPrzedmioty;
CREATE TABLE tbPrzedmioty (
    id integer PRIMARY KEY AUTOINCREMENT,
    nazwa TEXT
);
DROP TABLE IF EXISTS tbOceny;
CREATE TABLE tbOceny (
    id_oceny integer PRIMARY KEY AUTOINCREMENT,
    datad DATE,
    id_ucz TEXT,
    id_przedm integer,
    ocena NUMERIC                                     
);