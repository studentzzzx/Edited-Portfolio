
-- Create Database
CREATE DATABASE MoviesDB;
GO
USE MoviesDB;
GO

-- Create Directors Table
CREATE TABLE Directors (
    DirectorID INT IDENTITY PRIMARY KEY,
    Director_Name VARCHAR(50),
    Movie_Name VARCHAR(100)
);

-- Create Actors Table
CREATE TABLE Actors (
    ActorID INT IDENTITY PRIMARY KEY,
    Actor_Name VARCHAR(50),
    Movie_Name VARCHAR(100),
    DirectorID INT FOREIGN KEY REFERENCES Directors(DirectorID)
);

-- Insert Data into Directors
INSERT INTO Directors (Director_Name, Movie_Name)
VALUES ('Victor Fleming', 'Gone_with_the_Wind'),
       ('Christopher Nolan', 'Inception'),
       ('Steven Spielberg', 'Jurassic_Park'),
       ('James Cameron', 'Titanic'),
       ('Quentin Tarantino', 'Pulp_Fiction');

-- Insert Data into Actors
INSERT INTO Actors (Actor_Name, Movie_Name, DirectorID)
VALUES ('Clark Gable', 'Gone_with_the_Wind', 1),
       ('Leonardo DiCaprio', 'Inception', 2),
       ('Sam Neill', 'Jurassic_Park', 3),
       ('Kate Winslet', 'Titanic', 4),
       ('John Travolta', 'Pulp_Fiction', 5);

-- Query joining both tables
SELECT 
    a.Actor_Name,
    a.Movie_Name,
    d.Director_Name
FROM Actors a
INNER JOIN Directors d ON a.DirectorID = d.DirectorID
WHERE a.Movie_Name = d.Movie_Name;
