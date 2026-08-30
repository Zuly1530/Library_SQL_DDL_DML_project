
-- ============================
-- Subqueries
-- ============================

-- 1. Find out the title and year of publication of one of the author’s books listed under number 1.
SELECT firstname,
       lastname,
       (SELECT title FROM books WHERE id = author_id) AS title_book,
       (SELECT publish_year FROM books WHERE id = author_id) AS publish_year
FROM authors        
WHERE id = 1;

-- 2. Get the titles of all books and the publication year of the author number 3.
SELECT title,
       publish_year
FROM books
WHERE author_id  = (SELECT id FROM authors WHERE id = 3);

-- 3. Number of books in genres
SELECT genre_name,
       (SELECT count(*)
       FROM books
       WHERE books.genre_id = genre.id) AS `Number of books`
FROM genre;