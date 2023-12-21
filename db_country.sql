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

-- 6. Per ogni nazione, in ordine alfabetico, selezionare il nome, la regione e il continente
select c.name,  r.name, c2.name 
from countries c
join regions r on c.region_id  = r.region_id  
join continents c2 on r.continent_id = c2.continent_id 
order by c.name; 

-- 7. Selezionare le lingue ufficiali dell’Albania
select l.`language`, c.name 
from country_languages cl
join languages l on cl.language_id = l.language_id 
join countries c on cl.country_id = c.country_id 
where cl.official = 1 and c.country_id = 5; 

-- 8. Selezionare il Gross domestic product (GDP) medio dello United Kingdom tra il 2000 e il 2010
select cs.gdp, cs.`year`
from country_stats cs
join countries c on cs.country_id = c.country_id 
where cs.`year` >= 2010 and cs.`year` <= 2020 and c.country_id = 77; 