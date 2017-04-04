USE codeup_test_db;

SELECT name, release_date
FROM albums
WHERE release_date < '1991-01-01';

SELECT name, genre
FROM albums
WHERE genre REGEXP '[Dd]isco';

SELECT name, artist
FROM albums
WHERE artist LIKE '%Whitney Houston%';