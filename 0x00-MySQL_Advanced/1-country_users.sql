-- Creates a table with unique users.
DROP TABLE IF EXISTS Users;
CREATE TABLE Users(
	id INT NOT NULL AUTO-INCREAMENT PRIMARY KEY,
	email VARCHAR (255)NOT NULL UNIQUE,
	name VARCHAR (255),
	country char(2) NOT NULL defualt 'US' check (country IN('US', 'CO', 'TN'))
);
