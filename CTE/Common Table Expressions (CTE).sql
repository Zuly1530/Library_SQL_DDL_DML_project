
-- ============================
-- Common Table Expressions (CTE)
-- ============================

-- 1. A simple example. Show the “books” table.
WITH CTE1 AS 
          (SELECT * FROM books)
SELECT *
FROM CTE1;

-- 2. Show all authors whose name starts with “S”
WITH CTE1 AS
          (SELECT firstname, lastname
          FROM authors 
          WHERE firstname LIKE 'S%')
SELECT *
FROM CTE1; 

-- 3. Show all books written after 1950 with the authors’ names
WITH CTE1 AS 
          (SELECT title, publish_year, author_id
          FROM books
          WHERE publish_year > 1950
          )
SELECT *
FROM CTE1
JOIN authors ON authors.id = CTE1.author_id
ORDER BY publish_year;

-- 4. Find authors whose average number of pages in their books is greater than the average number of pages across the entire library
WITH CTE1 AS (SELECT author_id,
              ROUND(AVG(pages)) AS Average_pages
              FROM books
              GROUP BY author_id)              
SELECT author_id,
       authors.firstname,
       authors.lastname,
       Average_pages
FROM CTE1
JOIN authors ON authors.id = CTE1.author_id
WHERE Average_pages > (SELECT 
      ROUND(AVG(pages))
      FROM books);

-- 5. Find authors whose average number of pages in their books is greater than the average number of pages across the entire library
WITH CTE1 AS (SELECT author_id,
              ROUND(AVG(pages)) AS Average_pages 
              FROM books
              GROUP BY author_id),
     CTE2 AS (SELECT
              ROUND(AVG(pages)) AS Total_avg 
              FROM books)
SELECT CTE1.author_id,
       authors.firstname,
       authors.lastname,
       CTE1.average_pages,
       CTE2.total_avg 
FROM CTE1
JOIN authors ON authors.id = CTE1.author_id
CROSS JOIN CTE2
WHERE CTE1.Average_pages > CTE2.Total_avg;
     
