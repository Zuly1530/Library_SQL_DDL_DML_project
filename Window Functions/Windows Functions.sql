
-- ===========================
-- Window Functions
-- ===========================

-- 1. Rows numbering
SELECT genre_name,
       row_number() OVER (ORDER BY genre_name) AS NUMBER11
FROM genre;       

-- 2. Rank the books by year, adding the author’s first and last name
SELECT (SELECT firstname FROM authors WHERE authors.id = books.author_id) AS Firstname,
       (SELECT lastname FROM authors WHERE authors.id = books.author_id) AS Lastname,
       title,
       publish_year,
       DENSE_RANK() OVER(ORDER BY publish_year) AS `RANK`
FROM books;      

-- 3. Show the average number of pages by year
SELECT DISTINCT 
       publish_year, 
       round(avg(pages) OVER(PARTITION BY publish_year)) AS Average_pages
FROM books;

-- 4. The number of books written in a given year
SELECT DISTINCT 
       count(*) OVER (PARTITION BY publish_year) AS `number of books`,
       publish_year
FROM books
ORDER BY publish_year DESC;

-- 5. How the number of pages in books by the same author changed over the years
SELECT (SELECT firstname FROM authors WHERE firstname = 'Stephen') AS Firstname,
       (SELECT lastname FROM authors WHERE lastname = 'King') AS Lastname,
       title,
       publish_year, 
       pages,
       LAG (pages) OVER (ORDER BY publish_year) AS previous_pages
FROM books
WHERE author_id = (SELECT id FROM authors WHERE lastname = 'King');
