
-- `Create database`

DROP DATABASE IF EXISTS library_first_project;
CREATE DATABASE library_first_project;

USE library_first_project;


-- `Create tables`

DROP TABLE IF EXISTS authors;
CREATE TABLE authors (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(100),
lastname VARCHAR(100)
);


DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(100)
);


DROP TABLE IF EXISTS books;
CREATE TABLE books (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR (200) NOT NULL,
publish_year YEAR,
pages INT UNSIGNED,
author_id INT UNSIGNED NOT NULL,
genre_id INT UNSIGNED NOT NULL,

INDEX ind_title(title),

FOREIGN KEY (author_id) REFERENCES authors(id),
FOREIGN KEY (genre_id) REFERENCES genre(id)
);

