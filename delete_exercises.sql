USE codeup_test_db;

DELETE
FROM albums
WHERE release_date > '1991-01-01';

DELETE
FROM albums
WHERE genre REGEXP '[Dd]isco';

DELETE
FROM albums
WHERE artist LIKE '%Whitney Houston%';