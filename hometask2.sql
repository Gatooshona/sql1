INSERT INTO genre(genre_name) VALUES
    ('Шансон'), 
    ('Попса'), 
    ('Рок');
   
INSERT INTO singer(singer_name) VALUES
    ('Кот и Мышь'),
    ('Чайка'),
    ('Лето'),
    ('Маска');
   
INSERT INTO album(album_name, album_year) VALUES
    ('Длинные усы', 2019),
    ('Море', 2017),
    ('Музыка', 2020);
   
INSERT INTO track(track_name, track_time, album_id) VALUES 
    ('Яблоко на столе', 157, 3),
    ('Мой сыр', 230, 1),
    ('Кто этот кот', 250, 1),
    ('Сахар и соль', 195, 3),
    ('Пляжные шлепки', 130, 2),
    ('Луч', 175, 2);
   
INSERT INTO collection(collection_name, collection_year) VALUES
    ('Мой путь', 2020),
    ('Солнце', 2017),
    ('Небо и земля', 2018),
    ('Серая мышь', 2019);
   
INSERT INTO singer_album(album_id, singer_id) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(3, 4);

INSERT INTO singer_genre(singer_id, genre_id) VALUES
	(1, 3),
	(2, 1),
	(3, 2),
	(4, 2);

INSERT INTO track_collection(track_id, collection_id) VALUES
	(1, 1),
	(2, 4),
	(3, 4),
	(4, 3),
	(5, 2),
	(6, 2);
