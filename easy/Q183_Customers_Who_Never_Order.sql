/*
Question 183: Customers Who Never Order

Write a query to return all of the customers who never order anything
The order doesn't matter.

This problem consists of using two tables. The customer_id field in the orders tables links the Orders table with the Customers table.
- customers - {id : int, name : varchar}
- orders - {id : int, customerID : int}
*/

/* Method 1: Left Join */
SELECT  name AS 'Customers'
    FROM Customers c                /* apply a pseudo name, easier to read for joins */
LEFT JOIN Orders o
    ON c.Id = o.customerID
WHERE o.customerID IS NULL

/* Method 2: sub-query + NOT IN Operator */
SELECT  name as 'Customers'
    FROM Customers
    WHERE id NOT IN 
    (
        SELECT customerID FROM Orders
    )






/*
Notes: I'm thinking that I'm going to need to apply a sort of NOT IN clause on the customer_id e.g.,
select customerID NOT IN (id)
    some form of join
A left join can work where customers is the left table and then filter out where there is a null.

I learned that you can apply a sub-query with two different tables within 1 query --> this is how one would apply the NOT IN operator
*/

/* wrote it in R to better see what's going on
## Leetcode SQL Problem 183: Customers Who Never Order
## Wrote this in R to visualise what is going on in Leetcode because it's hard to visualize JSON.

rm(list = ls()); gc()

library(tidyverse)

# create the two necessary tables
customers <- data.frame(id = c(1, 2, 3, 4),
                        name = c("Joe", "Henry", "Sam", "Max"))

orders <- data.frame(id = c(1, 2),
                     customerID = c(3, 1))

# see where the nulls are contained
cat1 <- left_join(customers, orders, by = c("id" = "customerID"))

# keep where the nulls are (the customers who never orders are the ones that don't have an order_id)
cat2 <- left_join(customers, orders, by = c("id" = "customerID")) %>%
  filter(!complete.cases(.))  */
