USE codeup_test_db;

SELECT album as 'Albums released after 1991' FROM albums WHERE release_date > 1991;
SELECT album as 'Albums with the genre disco' FROM albums WHERE genre LIKE '%disco%';
SELECT album as 'Albums by Whitney Houston' FROM albums WHERE artist = 'Whitney Houston';

DELETE FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE genre LIKE '%disco%';
DELETE FROM albums WHERE artist = 'Whitney Houston';