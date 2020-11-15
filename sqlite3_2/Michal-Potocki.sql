/* 3a */SELECT Imie, Nazwisko FROM tbUczniowie, tbKlasy WHERE KlasaID = IDKlasy AND Klasa = '1A';
/* 3b */SELECT MAX(EgzHum) FROM tbUczniowie;
/* 3c */SELECT AVG(EgzMat) FROM tbUczniowie, tbKlasy WHERE KlasaID = IdKlasy AND Klasa = '1A';
/* 3d */SELECT Ocena FROM tbOceny, tbUczniowie WHERE UczenID = IdUcznia AND Imie = 'Dorota' AND Nazwisko = 'Nowak';
/* 3e */SELECT AVG(Ocena) FROM tbOceny, tbPrzedmioty WHERE PrzedmiotID = IdPrzedmiotu 
AND Datad BETWEEN '2012-10-01' AND '2012-10-31';
/* 4a */UPDATE tbUczniowie SET EgzJez=35 WHERE Imie = 'Paulina' AND Nazwisko = 'Dziedzic'
/* 4b */SELECT IDUcznia FROM tbUczniowie WHERE Imie = 'Paulina' AND Nazwisko = 'Dziedzic';
SELECT IDPrzedmiotu FROM tbPrzedmioty WHERE Przedmiot = 'niemiecki';    
DELETE FROM tbOceny WHERE Ocena = 1 AND PrzedmiotID = 1 AND UczenID = 135;