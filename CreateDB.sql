DROP DATABASE Streamflix;

CREATE DATABASE Streamflix;

USE Streamflix;

CREATE TABLE titles (
	id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR (255), 
    year SMALLINT NOT NULL, 
    PRIMARY KEY (id)
    );
    
CREATE TABLE actors ( 
	id INT NOT NULL AUTO_INCREMENT, 
    name VARCHAR (255), 
    gender CHAR (1), 
    PRIMARY KEY (id)
    );
    
CREATE TABLE ratings ( 
	id INT NOT NULL AUTO_INCREMENT, 
    title_id INT, 
    rating FLOAT (2,1), 
    PRIMARY KEY (id), 
    FOREIGN KEY (title_id) REFERENCES titles (id)
    );
    
CREATE TABLE producers (
	id INT NOT NULL AUTO_INCREMENT, 
    name VARCHAR (255), 
    PRIMARY KEY (id)
    );
    
CREATE TABLE title_producers (
	title_id INT, 
    producer_id INT, 
    FOREIGN KEY (title_id) REFERENCES titles (id), 
    FOREIGN KEY (producer_id) REFERENCES producers (id)
    );








SELECT * FROM titles;
SELECT * FROM actors;
SELECT * FROM ratings; 
SELECT * FROM producers;
SELECT * FROM title_producers;