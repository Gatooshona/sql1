CREATE TABLE IF NOT EXISTS genre ( 
    genre_id SERIAL PRIMARY KEY, 
    genre_name TEXT UNIQUE
); 
 
CREATE TABLE IF NOT EXISTS singer ( 
    singer_id SERIAL PRIMARY KEY, 
    singer_name TEXT 
); 
 
CREATE TABLE IF NOT EXISTS singer_genre ( 
    singer_genre_id SERIAL PRIMARY KEY, 
    singer_id INTEGER NOT NULL REFERENCES singer(singer_id), 
    genre_id INTEGER NOT NULL REFERENCES genre(genre_id) 
); 
 
CREATE TABLE IF NOT EXISTS album ( 
    album_id SERIAL PRIMARY KEY, 
    album_name TEXT, 
    album_year INTEGER CHECK (album_year > 1500)
); 
 
CREATE TABLE IF NOT EXISTS singer_album ( 
    singer_album_id SERIAL PRIMARY KEY, 
    album_id INTEGER NOT NULL REFERENCES album(album_id),
    singer_id INTEGER NOT NULL REFERENCES singer(singer_id)
); 
 
CREATE TABLE IF NOT EXISTS collection ( 
    collection_id SERIAL PRIMARY KEY, 
    collection_name TEXT, 
    collection_year INTEGER CHECK (collection_year > 1500)
); 
 
CREATE TABLE IF NOT EXISTS track ( 
    track_id SERIAL PRIMARY KEY, 
    track_name TEXT, 
    track_time INTEGER, 
    album_id INTEGER NOT NULL REFERENCES album(album_id)
); 
 
CREATE TABLE IF NOT EXISTS track_collection ( 
    track_collection_id SERIAL PRIMARY KEY, 
    track_id INTEGER NOT NULL REFERENCES track(track_id), 
    collection_id INTEGER NOT NULL REFERENCES collection(collection_id) 
);
