-- Ex-01 
-- Find the title of each film
SELECT title 
FROM movies;

-- Find the director of each film
SELECT director 
FROM movies;

-- Find the title and director of each film
SELECT title, director 
FROM movies;

-- Find the title and year of each film
SELECT title, director
FROM movies;

-- Find all the information about each film
SELECT *
FROM movies;

--------------------------------------------------------------------------------------
-- Ex-02
-- Find the movie with a row id of 6
SELECT *
FROM movies
WHERE Id = 6;

-- Find the movies released in the years between 2000 and 2010
SELECT *
FROM movies
WHERE year BETWEEN 2000 AND 2010;

-- Find the movies not released in the years between 2000 and 2010
SELECT *
FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

-- Find the first 5 Pixar movies and their release  year
SELECT *
FROM movies
WHERE year <=2003;

--------------------------------------------------------------------------------------
-- Ex-03
-- Find all the Toy Story movies
SELECT *
FROM movies
WHERE title LIKE "%Toy Story%";

-- Find all the movies directed by John Lasseter
SELECT *
FROM movies
WHERE director = "John Lasseter";

-- Find all the movies (and director) not directed by John Lasseter
SELECT *
FROM movies
WHERE NOT director = "John Lasseter";

-- Find all the WALL-* movies
SELECT *
FROM movies
WHERE title LIKE "%WALL-%";

--------------------------------------------------------------------------------------
-- Ex-04
-- List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT director
FROM movies
ORDER BY director;

-- List the last four Pixar movies released (ordered from most recent to least)
SELECT *
FROM movies
ORDER BY year DESC
LIMIT 4;

-- List the first five Pixar movies sorted alphabetically
SELECT *
FROM movies
ORDER BY title 
LIMIT 5;

-- List the next five Pixar movies sorted alphabetically
SELECT *
FROM movies
ORDER BY title 
LIMIT 5,5;

--------------------------------------------------------------------------------------
-- Ex-05
-- List all the Canadian cities and their populations 
SELECT *
FROM North_american_cities
WHERE country = "Canada";

-- Order all the cities in the United States by their latitude from north to south
SELECT *
FROM North_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;

-- List all the cities west of Chicago, ordered from west to east
SELECT *
FROM North_american_cities
WHERE longitude < -87.69
ORDER BY longitude ASC;

-- List the two largest cities in Mexico (by population)
SELECT *
FROM North_american_cities
WHERE Country = "Mexico"
ORDER BY Population DESC
LIMIT 2;

-- List the third and fourth largest cities (by population) in the United States and their population
SELECT *
FROM North_american_cities
WHERE Country = "United States"
ORDER BY Population DESC
LIMIT 2,2;

--------------------------------------------------------------------------------------
-- Ex-06
-- Find the domestic and international sales for each movie
SELECT movies.title, Boxoffice.International_sales, Boxoffice.Domestic_sales
FROM movies 
INNER JOIN Boxoffice
ON movies.id=Boxoffice.movie_id;

-- Show the sales numbers for each movie that did better internationally rather than domestically
SELECT movies.title, Boxoffice.International_sales, Boxoffice.Domestic_sales
FROM movies 
INNER JOIN Boxoffice
ON movies.Id=Boxoffice.Movie_id
WHERE Boxoffice.International_sales > Boxoffice.Domestic_sales;

-- List all the movies by their ratings in descending order
SELECT movies.title, Boxoffice.Rating
FROM movies JOIN Boxoffice
ON movies.id=Boxoffice.Movie_id
ORDER BY Boxoffice.Rating DESC;

--------------------------------------------------------------------------------------
-- Ex-07
-- Find the list of all buildings that have employees
SELECT DISTINCT Building FROM Employees;

-- Find the list of all buildings and their capacity
SELECT Building_name, capacity 
FROM Buildings;

-- List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT Buildings.Building_name, employees.Role 
FROM Buildings 
LEFT JOIN employees ON Buildings.building_name = employees.building;

--------------------------------------------------------------------------------------
-- Ex-08
-- Find the name and role of all employees who have not been assigned to a building
SELECT *
FROM Employees
WHERE Building IS NULL;

-- Find the names of the buildings that hold no employees
SELECT DISTINCT Building.Building_name
FROM Buildings
LEFT JOIN Employees
ON Buildings.Building_name = Employees.Building
WHERE Employees.Role IS NULL;

--------------------------------------------------------------------------------------
-- Ex-09 
-- List all movies and their combined sales in millions of dollars
SELECT movies.title, (Boxoffice.Domestic_sales + Boxoffice.International_sales)/1000000 AS Total
FROM movies
LEFT JOIN Boxoffice ON movies.Id=Boxoffice.Movie_Id;

-- List all movies and their ratings in percent
SELECT movies.title, Boxoffice.Rating*10 as Percent
FROM movies
LEFT JOIN Boxoffice ON movies.Id=Boxoffice.Movie_Id;

-- List all movies that were released on even number years
SELECT *
FROM movies
WHERE year % 2 = 0;

--------------------------------------------------------------------------------------
-- Ex-10
-- Find the longest time that an employee has been at the studio
SELECT * FROM Employees
ORDER BY years_employed DESC
LIMIT 1;

-- For each role, find the average number of years employed by employees in that role
SELECT DISTINCT Role, AVG(years_employed) 
FROM Employees
GROUP BY Role;

-- Find the total number of employee years worked in each building
SELECT DISTINCT Building, SUM(years_employed) 
FROM Employees
GROUP BY Building;

--------------------------------------------------------------------------------------
-- Ex-11
-- Find the number of Artists in the studio (without a HAVING clause)
SELECT Role, COUNT(*) AS Number_of_Artists
FROM Employees
WHERE Role = "Artist";

-- Find the number of Employees of each role in the studio
SELECT Role, COUNT(*)
FROM Employees
GROUP BY Role;

-- Find the total number of years employed by all Engineers
SELECT Role, SUM(years_Employed) as Year
FROM Employees
WHERE Role = "Engineer";

--------------------------------------------------------------------------------------
-- Ex-12

-- Find the number of movies each director has directed
SELECT Director, COUNT(*) as Directed
FROM movies
GROUP BY director;

-- Find the total domestic and international sales that can be attributed to each director
SELECT movies.director, sum(Boxoffice.Domestic_sales + Boxoffice.International_Sales) as Total
FROM movies
LEFT JOIN Boxoffice ON movies.Id = Boxoffice.Movie_ID
GROUP BY movies.director;

--------------------------------------------------------------------------------------
-- Ex-13

-- Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
INSERT INTO movies
VALUES (4, "Toy Story 4", "John Lasseter", 2017, 123);

-- Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the  BoxOffice table. 
INSERT INTO Boxoffice
VALUES (4, 8.7, 340000000, 270000000);

--------------------------------------------------------------------------------------
-- Ex-14

-- The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
UPDATE movies 
SET director = "John Lasseter"
WHERE Id = 2;

-- The year that Toy Story 2 was released is incorrect, it was actually released in 1999
UPDATE movies 
SET year = 1999
WHERE Id = 3;

-- Both the title and directory for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
UPDATE movies
SET title = "Toy Story 3", 
director = "Lee Unkrich"
WHERE Id = 11;

--------------------------------------------------------------------------------------
-- Ex-15

-- This database is getting too big, lets remove all movies that were released before 2005.
DELETE FROM movies
WHERE year < 2005;

-- Andrew Stanton has also left the studio, so please remove all movies directed by him.
DELETE FROM movies
WHERE director = "Andrew Stanton";

--------------------------------------------------------------------------------------
-- Ex-16

-- Create a new table named Database with the following columns:
-- 1. Name A string (text) describing the name of the database
-- 2. Version A number (floating point) of the latest version of this database
-- 3. Download_count An integer count of the number of times this database was downloaded
-- This table has no constraints.
CREATE TABLE `Database` (
    Name VARCHAR(255),
    Version FLOAT,
    Download_Count INT);

--------------------------------------------------------------------------------------
-- Ex-17

-- Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in.
ALTER TABLE movies
  ADD COLUMN Aspect_ratio FLOAT DEFAULT 3;
  
-- Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.
ALTER TABLE movies
  ADD COLUMN Language TEXT DEFAULT "English";

--------------------------------------------------------------------------------------
-- Ex-18

-- removing the movies table
DROP TABLE movies;

-- And drop the BoxOffice table as well
DROP TABLE BoxOffice;