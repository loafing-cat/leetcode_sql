/*
Question 1757: Recyclable and Low Fat Products

Write a query to return the IDs of products that are both low fat 
and recylcable. The order doesn't matter
*/

SELECT  product_id
    FROM Products
    WHERE low_fats = "Y"
    AND recyclable = "Y"