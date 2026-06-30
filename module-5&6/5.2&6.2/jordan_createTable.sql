-- Delete the database if it already exists
DROP DATABASE IF EXISTS CSD430;

-- Create the database
CREATE DATABASE CSD430;

-- Use the database
USE CSD430;

-- Create the Movies table
CREATE TABLE jordan_movies_data (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_year INT,
    rating VARCHAR(10),
    director VARCHAR(100)
);

-- Insert 10 movie records
INSERT INTO jordan_movies_data
(movie_id, title, genre, release_year, rating, director)
VALUES
(1,'The Dark Knight','Action',2008,'PG-13','Christopher Nolan'),
(2,'Forrest Gump','Drama',1994,'PG-13','Robert Zemeckis'),
(3,'Jurassic Park','Adventure',1993,'PG-13','Steven Spielberg'),
(4,'The Matrix','Sci-Fi',1999,'R','The Wachowskis'),
(5,'Toy Story','Animation',1995,'G','John Lasseter'),
(6,'Inception','Sci-Fi',2010,'PG-13','Christopher Nolan'),
(7,'Jaws','Thriller',1975,'PG','Steven Spielberg'),
(8,'Rocky','Drama',1976,'PG','John G. Avildsen'),
(9,'Avatar','Sci-Fi',2009,'PG-13','James Cameron'),
(10,'The Lion King','Animation',1994,'G','Roger Allers');

-- Create the student account
CREATE USER IF NOT EXISTS 'student1'@'localhost'
IDENTIFIED BY 'pass';

-- Give the student account full access to this database
GRANT ALL PRIVILEGES
ON CSD430.*
TO 'student1'@'localhost';

FLUSH PRIVILEGES;

-- Display the records
SELECT * FROM jordan_movies_data;