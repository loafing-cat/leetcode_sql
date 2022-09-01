/* 
Question 584: Find Customer Referee

Write a query that returns the names of the customer
that are not referred by the customer with id = 2.
The order does not matter
*/

/* Option 1: (!=) syntax */
SELECT  name
    FROM Customer
    WHERE referee_id != 2
    OR referee_id IS NULL

/* Option 2: (<>) syntax */
SELECT  name
    FROM Customer
    WHERE referee_id <> 2
    OR referee_id IS NULL


/* 
This problem was a little tricky. MySQL doesn't automatically return
rows where there is a null entry for referee_id, so we needed to
use an OR statement to return where the id was not 2 or everything else (including nulls)

*/