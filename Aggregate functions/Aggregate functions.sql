
-- ========================
-- Aggregate functions
-- ========================

-- 1. Count the number of books
SELECT count(*)
FROM books;

-- 2. Find the earliest book
SELECT MIN(publish_year)
FROM books;

-- 3. Find the latest book
SELECT MAX(publish_year)
FROM books;

-- 4. Find the average number of pages in all the books in the library.
SELECT round(AVG(pages))
FROM books;

-- 5. How many books were published each year over a certain period.
SELECT count(*) AS cnt, publish_year
FROM books
WHERE publish_year BETWEEN 1950 AND 1980
GROUP BY publish_year
ORDER BY publish_year;

-- 6. Show the years in which two or more books were published.
SELECT count(*) AS cnt, publish_year
FROM books
GROUP BY publish_year
HAVING cnt >= 2
ORDER BY publish_year;

-- 7. Distribute the books by century based on the year of publication.
SELECT count(*) AS `Number of books`,
       CASE
       	WHEN publish_year BETWEEN 1801 AND 1900 THEN '19th century'
       	WHEN publish_year BETWEEN 1901 AND 2000 THEN '20th century'
       	WHEN publish_year > 2000 THEN '21st century'
       END AS Century 
FROM books
GROUP BY Century;