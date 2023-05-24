/*Задание 2*/

/*1. Название и продолжительность самого длительного трека*/

/*SELECT track_name, track_time FROM track
ORDER BY track_time DESC
LIMIT 1;*/

SELECT track_name, track_time FROM track
WHERE track_time = (SELECT MAX(track_time) FROM track);

/*2. Название треков, продолжительность которых не менее 3,5 минут*/

SELECT track_name, track_time FROM track
WHERE track_time >= 230; 

/*3. Названия сборников, вышедших в период с 2018 по 2020 год включительно*/

SELECT collection_name, collection_year FROM collection
WHERE collection_year BETWEEN 2018 AND 2020;

/*4. Исполнители, чьё имя состоит из одного слова*/

SELECT singer_name FROM singer
WHERE singer_name NOT LIKE '% %';

/*5. Название треков, которые содержат слово «мой» или «my»*/

SELECT track_name FROM track
WHERE track_name ILIKE 'мой %'
    OR ILIKE '% мой %'
    OR ILIKE '% мой'
    OR ILIKE 'мой';

/*Задание 3*/

/*1. Количество исполнителей в каждом жанре.*/

SELECT genre_name, COUNT(si.singer_id) singer_name FROM genre g
LEFT JOIN singer_genre si ON g.genre_id = si.genre_id
LEFT JOIN singer s ON si.singer_id = s.singer_id
GROUP BY genre_name;

/*2. Количество треков, вошедших в альбомы 2019–2020 годов*/

SELECT COUNT(track_name) FROM track t 
JOIN album a ON t.album_id = a.album_id 
WHERE album_year BETWEEN 2019 AND 2020;

/*3. Средняя продолжительность треков по каждому альбому*/
SELECT AVG(track_time), album_name FROM track t 
JOIN album a ON a.album_id = t.album_id 
GROUP BY album_name;

/*4. Все исполнители, которые не выпустили альбомы в 2020 году*/

SELECT singer_name FROM singer s 
WHERE singer_name NOT IN (
    SELECT singer_name FROM singer 
    JOIN singer_album sa ON s.singer_id = sa.singer_id
    JOIN album a ON a.album_id = sa.album_id
    WHERE album_year = 2020
);

/*5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)*/

SELECT DISTINCT collection_name FROM collection c 
JOIN track_collection tc ON c.collection_id = tc.collection_id 
JOIN track t ON tc.track_id = t.track_id 
JOIN album a ON t.album_id = a.album_id 
JOIN singer_album sa ON a.album_id = sa.album_id 
JOIN singer s ON sa.singer_id = s.singer_id 
WHERE singer_name = 'Кот и Мышь';
