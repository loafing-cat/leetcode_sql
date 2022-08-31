/*
 Question 595: Big Countries - MySQL Syntax

Write a query that returns the name, population, and the area of big countries.
The order of the returned data doesn't matter.

Definition of a big country:
- area is at least 3million km^2 (area >= 3000000)
- population is at least 25million (population >= 25000000)
*/

SELECT  name, population, area
    FROM WORLD
    WHERE (area >= 3000000) OR (population >= 25000000);