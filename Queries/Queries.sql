
-- ========================
-- Queries
-- ========================

-- 1. Display all the books
SELECT *
FROM books;

-- 2. Show the title and year of publication of the books
SELECT title, publish_year
FROM books;

-- 3. Show the authors
SELECT *
FROM authors;

-- 4. Show the genres
SELECT genre_name
FROM genre;

-- 5. Find the titles of books that start with the letter 'T'.
SELECT *
FROM books
WHERE title LIKE 'T%';

-- 6. Find the names of books that end with the letter 'S'.
SELECT *
FROM books
WHERE title LIKE '%S';

-- 7. Find the names of authors that consist of 5 letters.
SELECT *
FROM authors 
WHERE firstname LIKE '_____';

-- 8. Sort the books by year, starting with the most recent ones.
SELECT title, publish_year 
FROM books
WHERE publish_year > 1950
ORDER BY publish_year DESC;

-- 9. Select books written in the specified time period
SELECT publish_year, title
FROM books
WHERE publish_year BETWEEN 1950 AND 2000
ORDER BY publish_year;




