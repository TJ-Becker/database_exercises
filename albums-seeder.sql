USE codeup_test_db;
TRUNCATE albums;
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES
('Michael Jackson', 'Thriller', 1982, 45000000, 'Pop'),
('Nirvana', 'Nevermind', 1991, 19400000, 'Grunge'),
('AC/DC', 'Back in Black', 1980, 25900000, 'Hard Rock'),
('Pink Floyd', 'The Dark Side of the Moon', 1973, 22700000, 'Progressive Rock'),
('The Beatles', 'Sgt. Pepper''s Lonely Island Club', 1967, 13100000, 'Rock');
