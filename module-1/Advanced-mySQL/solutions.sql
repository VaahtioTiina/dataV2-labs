USE publications; 

# Challenge 1 Most Profiting Authos 

# Step 1 royalty for each sale for authors and advance for author and publication 

SELECT 
		s.title_id,
        ta.au_id, 
        t.advance * ta.royaltyper / 100 AS advance, 
        t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS royalty
FROM sales s 
LEFT JOIN titles t
ON s.title_id = t.title_id 
INNER JOIN titleauthor ta
ON t.title_id = ta.title_id; 

# Step 2 Aggregate total royalties for each title and author 

SELECT summary.title_id, summary.au_id, SUM(summary.royalty) AS royalty, SUM(summary.advance) AS advance
FROM ( SELECT 
		s.title_id,
        ta.au_id, 
        t.advance * ta.royaltyper / 100 AS advance, 
        t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS royalty
FROM sales s 
LEFT JOIN titles t
ON s.title_id = t.title_id 
INNER JOIN titleauthor ta
ON t.title_id = ta.title_id) summary 
GROUP BY  summary.title_id, summary.au_id;

# Step 3

SELECT summary.au_id as 'Author ID', SUM(summary.advance)+SUM(summary.royalty) AS Profits
FROM ( 
SELECT summary.title_id, summary.au_id, SUM(summary.royalty) AS royalty, SUM(summary.advance) AS advance
FROM ( SELECT 
		s.title_id,
        ta.au_id, 
        t.advance * ta.royaltyper / 100 AS advance, 
        t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS royalty
FROM sales s 
LEFT JOIN titles t
ON s.title_id = t.title_id 
INNER JOIN titleauthor ta
ON t.title_id = ta.title_id) summary 
GROUP BY  summary.title_id, summary.au_id
) summary
GROUP BY 1
ORDER BY Profits DESC
LIMIT 3; 

# Challenge 2 - TEMPORARY TABLES  

CREATE TEMPORARY TABLE royalty_per_sale (
SELECT 
		s.title_id,
        ta.au_id, 
        t.advance * ta.royaltyper / 100 AS advance, 
        t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS royalty
FROM sales s 
LEFT JOIN titles t
ON s.title_id = t.title_id 
INNER JOIN titleauthor ta
ON t.title_id = ta.title_id); 

CREATE TEMPORARY TABLE royalty_title_author (
SELECT title_id, au_id, SUM(advance) AS advance, SUM(royalty) AS royalty FROM royalty_per_sale
GROUP BY title_id, au_id
); 

# Result rable for Challenge 2
SELECT au_id AS 'Author ID', SUM(advance) + SUM(royalty) AS Profits
FROM royalty_title_author 
GROUP BY 1 
ORDER BY 2 DESC 
LIMIT 3; 


# Challenge 3 BONUS Permenent storage for most profiting authors  

CREATE TABLE most_profiting_authors_tiina (
SELECT au_id AS 'Author ID', SUM(advance) + SUM(royalty) AS profits
FROM royalty_title_author 
GROUP BY 1 
ORDER BY 2 DESC 
LIMIT 3); 

# Chellenge 3 using sub queries 

CREATE TABLE most_profiting_authors_subq_tiina ( 
SELECT summary.au_id as 'Author ID', SUM(summary.advance)+SUM(summary.royalty) AS Profits
FROM ( 
SELECT summary.title_id, summary.au_id, SUM(summary.royalty) AS royalty, SUM(summary.advance) AS advance
FROM ( SELECT 
		s.title_id,
        ta.au_id, 
        t.advance * ta.royaltyper / 100 AS advance, 
        t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS royalty
FROM sales s 
LEFT JOIN titles t
ON s.title_id = t.title_id 
INNER JOIN titleauthor ta
ON t.title_id = ta.title_id) summary 
GROUP BY  summary.title_id, summary.au_id
) summary
GROUP BY 1
ORDER BY Profits DESC
LIMIT 3

);







