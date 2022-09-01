/*
Question 511: Game Play Analysis 1

Write a query that returns the first login data for each player. 
The order of the resutls don't matter
*/


SELECT  player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id


/* Notes:
The player_id is not-unique in that it can appear more than once in the column.
For example player_id = 1 can have multiple event dates, which means they logged in 1+ times to play a game.
This is okay because we want to return the first_login date they made, which in effect is the first event_date they initiated.
We can obtain this by applying the MIN() function on the event_date column and GROUP BY the player_id to  determine each player's first login_date

Apparently there's an even faster solution on leetcode ~ 80ms faster, but this is simpler..
*/