
-- Core
CREATE TABLE films(
 id SERIAL PRIMARY KEY,
 title VARCHAR(40) NOT NULL,
 genre VARCHAR(40) NOT NULL,
release_year integer NOT NULL,
score integer NOT NULL,
 UNIQUE (title)
);


INSERT INTO films (title, genre, release_year, score) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', 1999, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven','Western', 1992, 7)


SELECT * FROM films
SELECT * FROM films ORDER BY score DESC
SELECT * FROM films ORDER BY release_year ASC
SELECT * FROM films WHERE score >= 8
SELECT * FROM films WHERE score <= 7
SELECT * FROM films WHERE release_year = 1990
SELECT * FROM films WHERE release_year < 2000
SELECT * FROM films WHERE release_year > 1990
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999
SELECT * FROM films WHERE genre LIKE 'SciFi'
SELECT * FROM films WHERE genre LIKE 'Western' OR genre LIKE 'SciFi'
SELECT * FROM films WHERE genre != 'SciFi'
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000
SELECT * FROM films WHERE title LIKE '%Matrix%'


-- Extension 2
SELECT AVG(score) FROM films
SELECT COUNT(title) FROM films
SELECT AVG(score) FROM films WHERE genre = 'SciFi'



-- Entension 3
CREATE TABLE directors(
directorID SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL
);

INSERT INTO directors (name) VALUES
('James Brown'),
('Michle Buble'),
('Michael Jordan')


DROP table films


CREATE TABLE films(
 id SERIAL PRIMARY KEY,
 title VARCHAR(40) NOT NULL,
 genre VARCHAR(40) NOT NULL,
release_year integer NOT NULL,
score integer NOT NULL,
directorID integer,
 UNIQUE (title)
);

INSERT INTO films (title, genre, release_year, score, directorID) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 1),
('Total Recall', 'SciFi', 1990, 8, 2),
('The Matrix', 'SciFi', 1999, 8, 3),
('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
('The Hunt for Red October', 'Thriller', 1990, 7, 3),
('Misery', 'Thriller', 1990, 7, 1),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 3),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
('Unforgiven','Western', 1992, 7, 2)

SELECT films.title, directors.name
FROM films
INNER JOIN directors ON films.directorID=directors.directorID;