USE codeup_test_db;

select album AS 'The name of all albums by Pink Floyd' from albums where artist = 'Pink Floyd';
select release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' from albums where album = 'Sgt. Pepper''s Lonely Hearts Club Band';
select genre as'The Genre for Nevermind' from albums where album = 'Nevermind';
select album as 'Albums Released in the 1990\'s' from albums where release_date BETWEEN 1990 AND 2000;
select album AS 'Albums with less than 20 million in sales' from albums where sales_in_millions < 20;
select album AS 'Albums with the Rock Genre' from albums where genre LIKE '%Rock%';