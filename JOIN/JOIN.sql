
-- ===========================
-- JOIN
-- ===========================

-- 1. Combine the books table with the genre table
SELECT title, genre_name 
FROM books 
JOIN genre ON books.genre_id = genre.id;

-- 2. CROSS JOIN
SELECT *
FROM books, authors;

-- 3. LEFT JOIN
SELECT title, genre.*
FROM books 
LEFT JOIN genre ON books.genre_id = genre.id;

-- 4. RIGHT JOIN
SELECT books.*, genre_name 
FROM books 
RIGHT JOIN genre ON books.genre_id = genre.id
ORDER BY genre_name;

-- 5. FULL JOIN
SELECT title, genre_name 
FROM books 
LEFT JOIN genre ON books.genre_id = genre.id
   UNION 
SELECT title, genre_name 
FROM books 
RIGHT JOIN genre ON books.genre_id = genre.id;   
