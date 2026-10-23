#1.4.2
#Aufgabe 1
select f.fahrradnr, f.tagesmietpreis, f.fahrradart 
from fahrradvermietung.fahrraeder as f;

#Aufgabe 2
select f.fahrradnr, f.tagesmietpreis, f.fahrradart 
from fahrradvermietung.fahrraeder as f
ORDER BY f.tagesmietpreis DESC;

#Aufgabe 3
select f.fahrradnr, f.fahrradart ,f.tagesmietpreis
from fahrradvermietung.fahrraeder as f
ORDER BY f.fahrradart, f.tagesmietpreis;

#Aufgabe 4
select * from fahrradvermietung.fahrraeder as f
ORDER BY f.anschaffungswert DESC, f.kaufdatum DESC;

#1.4.3
#Aufgabe 1
SELECT * FROM fahrraeder as f
where fahrradart='Mountainbike';

#Aufgabe 2
SELECT * FROM fahrraeder as f
where f.fahrradart='Mountainbike'
ORDER BY f.kaufdatum DESC;

#Aufgabe 3
SELECT f.fahrradnr, f.tagesmietpreis From fahrraeder as f
where f.tagesmietpreis>=20;

#Aufgabe 4
select * from fahrradvermietung.fahrraeder as f
where f.kaufdatum<='2015-12-31';

#Aufgabe 5
select * from fahrradvermietung.fahrraeder as f
where f.kaufdatum>='2015-01-01' and f.kaufdatum<='2015-12-31';

#Aufgabe 6
select * from fahrradvermietung.fahrraeder as f
where f.fahrradart LIKE 'T%';

#Aufgabe 7
select * from fahrradvermietung.fahrraeder as f
where f.rahmennr LIKE '%98%';

#Aufgabe 8
select * from fahrraeder as f
where anschaffungswert>400 and tagesmietpreis<17 ;

#Aufgabe 9
select f.fahrradnr, f.tagesmietpreis from fahrraeder as f
where f.tagesmietpreis>20 or f.tagesmietpreis<13;

#Aufgabe 10
select f.fahrradnr, f.tagesmietpreis from fahrraeder as f
where f.tagesmietpreis>20 or f.tagesmietpreis<13 and fahrradart='Mountainbike'









