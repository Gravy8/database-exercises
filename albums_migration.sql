use codeup_test_db;
drop table if exists albums;
create table albums(id int unsigned not null auto_increment, artist varchar(100) not null, album varchar(100) not null, genre varchar(100) not null, release_date year not null, sales_in_millions decimal(8,2) not null, primary key(id));