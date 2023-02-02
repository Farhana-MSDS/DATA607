CREATE DATABASE Movie_Ratings;

CREATE TABLE Movies (
Movieid INTEGER NOT NULL AUTO_INCREMENT,
Title VARCHAR (40) NOT NULL,
Genre VARCHAR (40) NOT NULL,
PRIMARY KEY (Movieid)
);

CREATE TABLE Audience (
Nameid INTEGER NOT NULL AUTO_INCREMENT , 
Firstname VARCHAR(15) NOT NULL ,
Lastname VARCHAR(15) NOT NULL ,
PRIMARY KEY (Nameid)
);

CREATE TABLE Ratings(
Ratingid INTEGER NOT NULL AUTO_INCREMENT,
Nameid INTEGER,
Movieid INTEGER,
Rating INTEGER NULL,
PRIMARY KEY (Ratingid),
FOREIGN KEY (Nameid) REFERENCES Audience (Nameid) ON UPDATE CASCADE,
FOREIGN KEY (Movieid) REFERENCES Movies (Movieid) ON UPDATE CASCADE
);

INSERT INTO Movies (Title, Genre)
VALUES		('Jurassic Park', 'Science Fiction'),
			('Avatar', 'Sicence Fiction'),
			('Titanic', 'Drama'),
            ('The Pursuit of Happyness', 'Drama'),
			('The Lion King (Oreginal)', 'Family'),
			('The Dark Night', 'Action');
                    
INSERT INTO audience (firstname, lastname)
VALUES		('Mario', 'P'),
			('Teresa', 'C'),
			('Tyleah', 'C'),
			('Marisol', 'L'),
			('Leslie', 'B'),
			('Elizabeth', 'F'),
            ('Denzil', 'R');
                    
INSERT INTO Ratings (Nameid, Movieid, Rating)
VALUES		('1', '1', '5'),
			('1', '2', '5'),
			('1', '3', '4'),
			('1', '4', '4'),
			('1', '5', '3'),
			('1', '6', '5'),
			('2', '1', '2'),
			('2', '2', NULL),
			('2', '3', '4'),
			('2', '4', '5'),
			('2', '5', '5'),
			('2', '6', '3'),
			('3', '1', '4'),
			('3', '2', '5'),
			('3', '3', '5'),
			('3', '4', '5'),
			('3', '5', '3'),
			('3', '6', '1'),
			('4', '1', '4'),
			('4', '2', '5'),
			('4', '3', '3.8'),
			('4', '4', '5'),
			('4', '5', '5'),
			('4', '6', '4'),
			('5', '1', '3'),
			('5', '2', '4'),
			('5', '3', '4'),
			('5', '4', '5'),
			('5', '5', '5'),
			('5', '6', NULL),
			('6', '1', '5'),
			('6', '2', '3'),
			('6', '3', '4'),
			('6', '4', NULL),
			('6', '5', '5'),
			('6', '6', '5'),
            ('7', '1', '5'),
			('7', '2', '4.5'),
			('7', '3', '4'),
			('7', '4', 5),
			('7', '5', '4'),
			('7', '6', '5');
            
UPDATE Movie_Ratings.Movies
SET title = 'The Dark Knight'
WHERE Movieid = 6;