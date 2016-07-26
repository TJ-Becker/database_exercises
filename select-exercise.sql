USE codeup_test_db;
SELECT name as 'Pink Floyd Albums' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date as 'Year Sgt. Pepper''s was released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Island Club';
SELECT genre as 'Nevermind by Nirvana Genre' FROM albums WHERE name = 'Nevermind';
SELECT name as 'Released in the 1990''s', release_date FROM albums WHERE release_date >= 1990 AND release_date <= 1999;
SELECT name as 'Less than 30 million in sales', sales FROM albums WHERE sales < 30000000;
SELECT artist, name as 'Rock Albums' FROM albums WHERE genre = 'Rock';