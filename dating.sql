use dating;

CREATE TABLE users(id int unsigned not null AUTO_INCREMENT,
  name VARCHAR(25),
  gender ENUM('Male', 'Female', 'Non-Binary', 'Prefer to discuss at a later time'),
  age char(2),
  location VARCHAR(35),
  occupation VARCHAR(20),
  smoker ENUM('Y', 'N'),
  drinker ENUM('Y', 'N'),
  religion VARCHAR(25),
  ethnicity VARCHAR(25),
  hair_color VARCHAR(15),
  eye_color VARCHAR(10),
  PRIMARY KEY (id)
);

CREATE TABLE messages(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  message_body VARCHAR(500),
  sender_id INT UNSIGNED DEFAULT NULL,
  recipient_id INT UNSIGNED DEFAULT NULL,
  FOREIGN KEY (sender_id) REFERENCES users (id),
  FOREIGN KEY (recipient_id) REFERENCES users (id),
  PRIMARY KEY (id)
);

CREATE TABLE connections(
  id INT UNSIGNED not null AUTO_INCREMENT,
  interested_user INT UNSIGNED DEFAULT NULL,
  interested_in INT UNSIGNED DEFAULT NULL,
  match_made ENUM('0', '1', '2') DEFAULT '0',
  FOREIGN KEY (interested_user) REFERENCES users (id),
  FOREIGN KEY (interested_in) REFERENCES users (id),
  PRIMARY KEY (id)
);

CREATE TABLE interests(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  interest VARCHAR(15),
  PRIMARY KEY (id)
);

CREATE TABLE user_interests(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED,
  interest_id INT UNSIGNED,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (interest_id) REFERENCES interests (id),
  PRIMARY KEY (id)
);

CREATE TABLE user_looking_for_interests(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED,
  interest_id INT UNSIGNED,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (interest_id) REFERENCES interests (id),
  PRIMARY KEY (id)
);

CREATE TABLE attributes(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  attribute VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE user_attributes(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED,
  attribute_id INT UNSIGNED,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (attribute_id) REFERENCES attributes (id),
  PRIMARY KEY (id)
);

CREATE TABLE user_looking_for_attributes(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED,
  attribute_id INT UNSIGNED,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (attribute_id) REFERENCES attributes (id),
  PRIMARY KEY (id)
);