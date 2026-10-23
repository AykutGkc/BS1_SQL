/*Unternehmenswiki_Stand_2025_10_21*/

select * from fahrschule.fahrschueler as fs 
where ort='Welzheim'
ORDER BY fs.nachname desc;

select schuelernr, nachname, vorname from fahrschueler ;

select nachname, email, ort from fahrschule.fahrschueler;

/* ORDER BY */
/* Aufgabe 1 */
select schuelernr, vorname, nachname from fahrschueler
ORDER BY nachname;

/* Aufgabe 2 */
select schuelernr, vorname, nachname from fahrschueler
ORDER BY ort DESC;

/* Aufgabe 3 */
select schuelernr, vorname, nachname from fahrschueler
ORDER BY nachname, vorname;

/* WHERE */
/* Aufgabe 1 */
select * From fahrschueler where ort='Schorndorf';

/* Aufgabe 2 */
select vorname, nachname, geburtsdatum from fahrschueler 
where nachname='Dressel';

/* Aufgabe 3 */
select vorname, nachname, geburtsdatum from fahrschueler 
where nachname='Dressel'
ORDER BY vorname ;

/* Aufgabe 4 */
select * from fahrschueler
where fahrstundenzahl>20;

/* Aufgabe 5 */
select * from fahrschueler
where geburtsdatum<'1998-01-01';

/* Aufgabe 6 */
select * from fahrschueler
where geburtsdatum<'1998-01-01'
ORDER BY geburtsdatum ASC;

/* Aufgabe 7 */
select * from fahrschueler
where nachname LIKE 'D%';

/* Aufgabe 8 */
select * from fahrschueler
where ort= 'Schorndorf'
AND strasse='Drosselweg';

/* Aufgabe 9 */
select * from fahrschueler
where 
geburtsdatum<'1998-12-31' 
AND 
geburtsdatum>='1997-01-01';

/* Aufgabe 10 */
select * from fahrschueler
where 
geburtsdatum>'1998-12-31' 
OR 
geburtsdatum<'1997-01-01';

/* Aufgabe 11 */
select * From fahrschueler 
where ort!='Schorndorf';

/*5.1.4.4*/
/* Aufgabe 1 */
select count(*) from fahrschueler;
select count(*) as Anzahl_der_Fahrschueler from fahrschueler;


/* Aufgabe 2 */
select max(fahrstundenzahl) as Höchste_Anzahl_Fahrstunden from fahrschueler;

/* Aufgabe 3 */
select AVG(fahrstundenzahl) as durchschnittliche_Anzahl_Fahrstunden from fahrschueler;

/* Aufgabe 4 */
select SUM(fahrstundenzahl) as summe_der_Fahrstunden from fahrschueler;

/* Aufgabe 5 */
SELECT vorname, nachname,fahrstundenzahl*30 as umsatz_aus_fahrstunden_in_€ from fahrschule.fahrschueler;

/* Aufgabe 6 */
select Sum(fahrstundenzahl*30) as umsatzsumme_aus_fahrstunden_in_€ from fahrschueler;

/*5.1.4.5*/
/* Aufgabe 1 */
select ort, plz from fahrschueler 
GROUP by ort, plz;

SELECT DISTINCT ort, plz
FROM fahrschueler;

/* Aufgabe 2 */
SELECT ort, COUNT(*) AS 'Anzahl der Fahrschüler'
FROM fahrschueler
GROUP BY ort;

/* Aufgabe 3 */
SELECT plz, ort, COUNT(*) AS 'Anzahl der Fahrschüler'
FROM fahrschueler
WHERE plz LIKE '736%'
GROUP BY ort, plz;

/* Aufgabe 4 */
SELECT fahrstundenzahl, COUNT(*) AS 'Anzahl der Fahrschüler'
FROM fahrschueler
GROUP BY fahrstundenzahl
HAVING fahrstundenzahl>2;


