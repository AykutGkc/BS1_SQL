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




