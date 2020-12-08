CREATE DATABASE IF NOT EXISTS spring_db;
CREATE TABLE IF NOT EXISTS init_table(
	id int(12) PRIMARY KEY,
	message VARCHAR(255) NOT NULL
);
INSERT INTO init_table(id, message) VALUES(1, 'Hello,世界!?')
