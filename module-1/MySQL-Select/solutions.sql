-- Q1 Who published what and were 
-- This query returns a list of authors, titles they wrote and who published each title, sorted by the writers last name in aplhabetical order
SELECT ta.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME', a.au_fname AS 'FIRST NAME', t.title AS TITLE, p.pub_name AS PUBLISHER
FROM titleauthor ta
INNER JOIN authors a 
ON ta.au_id = a.au_id
LEFT JOIN titles t
ON ta.title_id = t.title_id
INNER JOIN publishers p
ON t.pub_id = p.pub_id 
ORDER BY 2 ASC; 

-- Q2 Who Have Published How Many At Where? 
SELECT ta.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME', a.au_fname AS 'FIRST NAME', p.pub_name AS PUBLISHER, COUNT(t.title) AS 'TITLE COUNT'
FROM titleauthor ta
INNER JOIN authors a 
ON ta.au_id = a.au_id
LEFT JOIN titles t
ON ta.title_id = t.title_id
INNER JOIN publishers p
ON t.pub_id = p.pub_id 
GROUP BY 1, 2, 3, 4
ORDER BY 4 DESC; 
 
 -- Q3 Top 3 Best Selling Authors 
SELECT ta.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME', a.au_fname AS 'FIRST NAME', SUM(s.qty) AS TOTAL
FROM titleauthor ta
INNER JOIN authors a 
ON ta.au_id = a.au_id
INNER JOIN titles t
ON ta.title_id = t.title_id
LEFT JOIN sales s
ON t.title_id = s.title_id
GROUP BY 1, 2, 3
ORDER BY 4 DESC
LIMIT 3;  

-- Q4 Best Selling Authors ranking 
SELECT a.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME', a.au_fname AS 'FIRST NAME', IFNULL(SUM(s.qty),0) AS TOTAL
FROM authors a
LEFT JOIN titleauthor ta
ON ta.au_id = a.au_id
LEFT JOIN titles t
ON ta.title_id = t.title_id
LEFT JOIN sales s
ON t.title_id = s.title_id
GROUP BY 1
ORDER BY 4 DESC; 


