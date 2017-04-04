USE codeup_test_db;

SELECT name
AS 'Albums by Pink Floyd'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date
AS 'Year That "Sgt. Peppers Lonely Hearts Club Band" Was Released'
FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre
AS 'Genre of "Nevermind"'
FROM albums
WHERE name = 'Nevermind';

SELECT name
AS 'Albums Released in the 1990s'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT name
AS 'Albums with Less Than 20 Million Sales'
FROM albums
WHERE sales < 20;

SELECT name
AS 'Albums in the Rock Genre'
FROM albums
WHERE genre REGEXP '.*[Rr]ock.*';