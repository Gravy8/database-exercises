USE codeup_test_db;

SELECT album AS 'All Albums' FROM albums;

UPDATE albums
SET sales_in_millions = (sales_in_millions * 10);

SELECT album AS 'All Albums' from albums;

SELECT album AS 'Albums Released Before 1990' from albums WHERE release_date < 1990;

UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

SELECT album as 'Albums Released Before 1990' from albums WHERE release_date < 1990;

SELECT album as 'All Albums by Michael Jackson' from albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT album as 'All Albums by Michael Jackson' from albums WHERE artist = 'Peter Jackson';