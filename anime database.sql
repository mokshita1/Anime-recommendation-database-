/* Creating the database for the project anime recommendation database*/

DROP DATABASE IF EXISTS anime_db ;
CREATE DATABASE anime_db ;
USE anime_db;

/* Creating two tables for anime and user rating */

CREATE TABLE  anime
(
     ranking      INT  PRIMARY KEY,
     anime_name   VARCHAR(300)    NOT NULL,
     anime_type   VARCHAR(50)     NOT NULL,
     episodes     VARCHAR(30)     NOT NULL
) ;

-- table for genre

CREATE TABLE genre_anime
(

ranking        INT                     NOT NULL,
genre           VARCHAR(150)             ,
demographics   VARCHAR (100) ,
age             VARCHAR(100) NOT NULL,
CONSTRAINT genres_fk_anime
FOREIGN KEY (ranking)
REFERENCES anime (ranking)

);

-- table for ratings

CREATE TABLE  anime_ratings
(
ranking        INT          NOT NULL  ,
rating        VARCHAR(10)  NOT NULL,
followers     VARCHAR(30)   NOT NULL,

CONSTRAINT ratings_fk_anime
FOREIGN KEY (ranking)
REFERENCES anime (ranking)
);

CREATE TABLE  anime_licenses
(
ranking        INT          NOT NULL  ,
license       VARCHAR(100)  NOT NULL,
study     VARCHAR(100)   NOT NULL,

CONSTRAINT anime_licenses_fk_anime
FOREIGN KEY (ranking)
REFERENCES anime (ranking)
);