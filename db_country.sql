-- 1. Selezionare tutte le nazioni il cui nome inizia con la P e la cui area è maggiore di 1000 kmq
select name
from countries c 
where name like 'P%' and area > 1.000;

-- 2. Contare quante nazioni sono presenti nel database
select count(*)
from countries c 

-- 3. Selezionare il nome delle regioni del continente europeo, in ordine alfabetico
select name
from regions r 
where continent_id = 4
order by name;

-- 4. Contare quante regioni sono presenti nel continente Africa
select count(*)
from regions r 
where continent_id = 3;

-- 5. Selezionare quali nazioni non hanno un national day
select name
from countries c 
where national_day is null;