use codeup_test_db;
drop table if exists albums;
create table albums(id int unsigned not null auto_increment, artist varchar(50) not null, name varchar(50) not null, release_date year not null, sales float not null, genre varchar(20) not null, primary key(id));