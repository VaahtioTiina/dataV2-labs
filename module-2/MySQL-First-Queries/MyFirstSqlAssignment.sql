SELECT * FROM IHAMSFT.app; 

-- Q1 Which genres are there
SELECT prime_genre
FROM app 
GROUP BY prime_genre
; 

-- Q2 Genre with most apps rated 
SELECT prime_genre, SUM(rating_count_tot) AS rating_count
FROM app 
GROUP BY prime_genre
ORDER BY rating_count DESC
LIMIT 1;

-- Q3 Genre with most apps 
SELECT prime_genre, COUNT(*) AS no_apps
FROM app
GROUP BY prime_genre 
ORDER BY 2 DESC
LIMIT 1; 

-- Q4 Genre with the least apps 
SELECT prime_genre, COUNT(*) AS no_apps
FROM app
GROUP BY prime_genre 
ORDER BY 2 ASC
LIMIT 1; 

-- Q5 Top 10 most rated apps 
SELECT track_name, rating_count_tot
FROM app
ORDER BY rating_count_tot DESC
LIMIT 10;

-- Q6 Top 10 Apps best rated by users 
SELECT track_name, user_rating
FROM app 
ORDER BY user_rating DESC, track_name ASC
LIMIT 10; 
-- Comment Q6 there are more than 10 5/5 ratings from users in the apps so the top 10 here are the first in alphabetical order 

-- Q7 Take a look at the data you retrieved in question 5. Give some insights.  
SELECT track_name, rating_count_tot, prime_genre, user_rating, price, cont_rating
FROM app
ORDER BY rating_count_tot DESC
LIMIT 10; 
-- Comment: All the top 10 apps most rated apps are free. Games is the most popular genre, followed by Social Media and Music. 

-- Q8 Take a look at the data you retrieved in question 6. Give some insights.  
SELECT prime_genre, COUNT(*)
FROM app 
WHERE user_rating = 5
GROUP BY prime_genre
ORDER BY 2 DESC
;  
SELECT COUNT(*)
FROM app 
WHERE user_rating = 5;
-- COMMENT: As mentioned in Q6 there are more than 10 perfectly rated apps. Games has the highest number of perfect ratings. In total there are 492 perfectly rated apps.

-- Q9 Now compare the data from questions 5 and 6. What do you see?  
-- COMMENT: The most rated apps are not the apps with the best ratings. This is also natural as the more rating you get more likely there is variety in the asnwers of people. 

-- Q10 10. How could you take the top 3 regarding both user ratings and number of votes? 
SELECT track_name, user_rating, rating_count_tot
FROM app
ORDER BY  user_rating DESC, rating_count_tot DESC
LIMIT 3; 

-- Q11 11. Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? 
-- first let's see the top 10 price ranges
SELECT price, COUNT(*)
FROM app 
GROUP BY price 
ORDER BY 2 DESC
LIMIT 10; 
-- The majority of the apps are free, moreover seems that there are more cheaper apps. 
-- Let's continue to see how  average rating differ in these price groups 
SELECT price, COUNT(*), AVG(user_rating)
FROM app 
GROUP BY price 
ORDER BY 2 DESC
LIMIT 10; 
-- Seems there there are no huge differences in the average user rating and the price of the app.  
-- Finally let's see if there are differences in the rating counts 
SELECT price, COUNT(*), AVG(user_rating), AVG(rating_count_tot)
FROM app 
GROUP BY price 
ORDER BY 2 DESC
LIMIT 10;  
-- It seems that people are likely to rate the app if it's free
