INSERT INTO genre
VALUES (1, 'Шансон');

INSERT INTO genre
VALUES (2, 'Попса');

INSERT INTO genre
VALUES (3, 'Рок');

INSERT INTO singer
VALUES (1, 'Кот и Мышь');

INSERT INTO singer
VALUES (2, 'Чайка');

INSERT INTO singer
VALUES (3, 'Лето');

INSERT INTO singer
VALUES (4, 'Маска');

INSERT INTO album
VALUES (1, 'Длинные усы', 2019);

INSERT INTO album
VALUES (2, 'Море', 2017);

INSERT INTO album
VALUES (3, 'Музыка', 2020);

INSERT INTO track
VALUES (1, 'Яблоко на столе', 2.37, 3);

INSERT INTO track
VALUES (2, 'Мой сыр', 3.50, 1);

INSERT INTO track
VALUES (3, 'Кто этот кот', 4.10, 1);

INSERT INTO track
VALUES (4, 'Сахар и соль', 3.15, 3);

INSERT INTO track
VALUES (5, 'Пляжные шлепки', 2.10, 2);

INSERT INTO track
VALUES (6, 'Луч', 2.55, 2);

INSERT INTO collection
VALUES (1, 'Мой путь', 2020);

INSERT INTO collection
VALUES (2, 'Солнце', 2017);

INSERT INTO collection
VALUES (3, 'Небо и земля', 2018);

INSERT INTO collection
VALUES (4, 'Серая мышь', 2019);

INSERT INTO singer_album
VALUES (1, 1, 1);

INSERT INTO singer_album
VALUES (2, 2, 2);

INSERT INTO singer_album
VALUES (3, 3, 3);

INSERT INTO singer_album
VALUES (4, 3, 4);

INSERT INTO singer_genre
VALUES (1, 1, 3);

INSERT INTO singer_genre
VALUES (2, 2, 1);

INSERT INTO singer_genre
VALUES (3, 3, 2);

INSERT INTO singer_genre
VALUES (4, 4, 2);

INSERT INTO track_collection
VALUES (1, 1, 1);

INSERT INTO track_collection
VALUES (2, 2, 4);

INSERT INTO track_collection
VALUES (3, 3, 4);

INSERT INTO track_collection
VALUES (4, 4, 3);

INSERT INTO track_collection
VALUES (5, 5, 2);

INSERT INTO track_collection
VALUES (6, 6, 2);

