show databases;

-- creating data base for IMDB
create database IMDB;

-- selecting data base
USE IMDB;

-- creating table for movie
CREATE TABLE movie (
    movie_id INT NOT NULL AUTO_INCREMENT,
    movie_title VARCHAR(255) NOT NULL,
    release_year INT NOT NULL,
    PRIMARY KEY (movie_id)
);

-- creating table for media's
CREATE TABLE media (
    media_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    media_type VARCHAR(255) NOT NULL,
    media_url VARCHAR(255) NOT NULL,
    FOREIGN KEY (movie_id)
        REFERENCES movie (movie_id)
);

-- loading movie data's
INSERT INTO movie (movie_id,movie_title,release_year) VALUES 
	(1,'Vikram',2022),
    (2,'Kaithi',2019),
    (3,'Master',2021),
    (4,'Maanaadu',2021),
    (5,'Mankatha',2011),
    (6,'Jai Bhim',2021);
    
-- loading media data's
INSERT INTO media (media_id,movie_id,media_type,media_url) VALUES 
	(1,1,'image','https://vikram/img.png'),
	(2,1,'video','https://vikram/video.mp4'),
	(3,2,'image','https://kaithi/img.png'),
	(4,2,'video','https://kaithi/video.mp4'),
	(5,3,'image','https://master/img.png'),
	(6,3,'video','https://master/video.mp4'),	
    (7,4,'image','https://maanaadu/img.png'),	
    (8,4,'video','https://maanaadu/video.mp4'),
	(9,5,'image','https://mankatha/img.png'),
    (10,5,'video','https://mankatha/video.mp4'),
    (11,6,'image','https://jai-bhim/img.png'),
    (12,6,'video','https://jai-bhim/video.mp4');

--     
-- viewing movie and media data with join functions
SELECT 
    movie.movie_id,
    movie.movie_title,
    movie.release_year,
    media.media_url
FROM
    movie
        INNER JOIN
    media ON movie.movie_id = media.movie_id;
--   

-- creating table for genre's
CREATE TABLE genre (
	genre_id INT NOT NULL,
	genre_name VARCHAR(255) NOT NULL,
	PRIMARY KEY(genre_id)
);

-- loading genre data's
INSERT INTO genre (genre_id,genre_name) VALUES 
	(1,'Action'),
	(2,'Adventure'),
	(3,'Comedy'),
	(4,'Crime'),
	(5,'Drama'),
	(6,'Romance'),
	(7,'Thriller');
    
-- creating table for movie_genre's
CREATE TABLE movie_genre (
	movie_genre_id INT NOT NULL,
	movie_id INT NOT NULL,
	genre_id INT NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY (genre_id) REFERENCES genre(genre_id),
	PRIMARY KEY(movie_genre_id)
);

-- loading movie_genre data's
INSERT INTO movie_genre (movie_genre_id,movie_id,genre_id) VALUES
	(1,1,1),
	(2,1,2),
	(3,1,4),
	(4,1,7),
	(5,2,1),
	(6,2,2),
	(7,2,4),
	(8,2,7),
	(9,3,1),
	(10,3,2),
	(11,3,4),
	(12,3,6),
	(13,3,7),
	(14,4,1),
	(15,4,2),
	(16,4,3),
	(17,4,7),
	(18,5,1),
	(19,5,2),
	(20,5,3),
	(21,5,6),
	(22,5,7),
	(23,6,4),
	(24,6,5),
	(25,6,7);


--     
-- viewing movie and genre data with join functions
SELECT 
    movie.movie_id,
    movie.movie_title,
    movie.release_year,
    genre.genre_name
FROM
    movie
        INNER JOIN
    movie_genre ON movie.movie_id = movie_genre.movie_id
        INNER JOIN
    genre ON genre.genre_id = movie_genre.genre_id;
--

-- creating table for user
CREATE TABLE user (
  user_id INT NOT NULL,
  username VARCHAR(255),
  PRIMARY KEY(user_id)
); 

-- loading user data's
INSERT INTO user (user_id,username) VALUES 
(1,'user-1'),
(2,'user-2'),
(3,'user-3'),
(4,'user-4'),
(5,'user-5');

CREATE TABLE review (
  review_id INT NOT NULL,
  movie_id INT NOT NULL,
  user_id INT NOT NULL,
  review_text VARCHAR(255) NOT NULL,
  review_rating INT NOT NULL,
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
  FOREIGN KEY (user_id) REFERENCES user(user_id),
  PRIMARY KEY(review_id)
); 

-- loading review data's
INSERT INTO review (review_id,movie_id,user_id,review_text,review_rating) VALUES 
(1,1,1,'Block Buster',5),
(2,2,2,'Super Hit',4),
(3,3,3,'Block Buster',5),
(4,4,4,'Super Hit',4),
(5,5,5,'Block Buster',5),
(6,6,1,'Block Buster',5),
(7,1,2,'Ultimate',5),
(8,2,3,'Block Buster',5),
(9,3,4,'Ultimate',5),
(10,4,5,'Block Buster',5),
(11,5,2,'Ultimate',5),
(12,6,3,'Super Hit',4);

--   
-- viewing movie and review data with join functions
SELECT 
    movie.movie_title,
    review.review_text AS review,
    review.review_rating AS rating,
    user.username
FROM
    movie
        INNER JOIN
    review ON movie.movie_id = review.movie_id
        INNER JOIN
    user ON user.user_id = review.user_id;
--

-- creating table for artist
CREATE TABLE artist (
	artist_id INT NOT NULL,
    movie_id INT NOT NULL,
	artist_name VARCHAR(255) NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
	PRIMARY KEY(artist_id)
);

-- loading artist data's
INSERT INTO artist (artist_id,movie_id,artist_name) VALUES 
	(1,1,'Kamal'),
	(2,2,'Karthi'),
	(3,3,'Vijay'),
	(4,4,'Simbu'),
	(5,5,'Ajith'),
	(6,6,'Suriya');

-- creating table for skill 
CREATE TABLE skill (
	skill_id INT NOT NULL,
	skill_name VARCHAR(255) NOT NULL,
	PRIMARY KEY(skill_id)
);

-- loading skill data's
INSERT INTO skill (skill_id,skill_name) VALUES 
	(1,'Acting'),
	(2,'Dance'),
	(3,'Comedy'),
	(4,'Direction'),
	(5,'Stunt'),
	(6,'Singing');
    
-- creating table for artist_skill 
CREATE TABLE artist_skill (
	artist_id INT NOT NULL,
	skill_id INT NOT NULL,
	movie_id INT NOT NULL,
	FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
	FOREIGN KEY (skill_id) REFERENCES skill(skill_id),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

-- loading artist_skill data's
INSERT INTO artist_skill (artist_id,skill_id,movie_id) VALUES 
(1,1,1),
(1,2,1),
(1,5,1),
(1,6,1),
(2,1,1),
(2,5,1),
(3,1,1),
(3,2,1),
(3,3,1),
(3,5,1),
(3,6,1),
(4,1,1),
(4,2,1),
(4,3,1),
(4,5,1),
(4,6,1),
(5,1,1),
(5,2,1),
(5,3,1),
(6,1,1);

--   
-- viewing artist skill data with join functions
SELECT 
    artist.artist_name AS artist, skill.skill_name AS skill
FROM
    artist_skill
        INNER JOIN
    artist ON artist.artist_id = artist_skill.artist_id
        INNER JOIN
    skill ON skill.skill_id = artist_skill.skill_id;
--

-- Create table for role
CREATE TABLE role (
	role_id INT NOT NULL,
	role_name VARCHAR(255) NOT NULL,
	PRIMARY KEY(role_id)
);

-- loading role data's
INSERT INTO role (role_id,role_name) VALUES 
	(1,'father'),
	(2,'spy'),
	(3,'teacher'),
	(4,'hero'),
	(5,'police'),
	(6,'lawyer'),
	(7,'prisoner'),
	(8,'thief');


-- Create table for artist_role
CREATE TABLE artist_role (
	artist_id INT NOT NULL,
	movie_id INT NOT NULL,
	role_id INT NOT NULL,
	FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY (role_id) REFERENCES role(role_id),
	PRIMARY KEY (artist_id, movie_id,role_id)
);

-- loading role data's
INSERT INTO artist_role (artist_id,movie_id,role_id) VALUES 
	(1,1,1),
	(1,1,2),
	(2,2,7),
	(3,3,3),
	(4,4,4),
	(5,5,5),
    (5,5,8),
    (6,6,6);


--   
-- viewing movie and artist role data with join functions
SELECT 
    movie.movie_title,
    artist.artist_name AS artist,
    role.role_name AS role
FROM
    movie
        INNER JOIN
    artist_role ON movie.movie_id = artist_role.movie_id
        INNER JOIN
    artist ON artist.artist_id = movie.movie_id
        INNER JOIN
    role ON role.role_id = artist_role.role_id;
--