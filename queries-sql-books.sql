-- running the queries outlined in "sql-project_dataset and sql query questions.pdf" which can be found in this repo

USE books;

SELECT COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'books_sql_4';

SELECT COUNT(*) AS row_count FROM books_sql_4;

-- =======================================
-- 1. GENERAL QUESTIONS
-- =======================================

-- a) How many pages do the books have on average?
SELECT ROUND(AVG(pages), 0)
FROM books_sql_4;

-- b) Which languages are the books in?
SELECT DISTINCT(language)
FROM books_sql_4;

-- c) Which genres are there?
SELECT DISTINCT(genre)
FROM books_sql_4;

-- d) Which type of binding do the books have?
SELECT DISTINCT(bookFormat)
FROM books_sql_4;

-- e) What is the average rating of the books?
SELECT ROUND(AVG(rating), 2) as avg_rating
FROM books_sql_4;

-- f) What is the highest price of a book?
SELECT MAX(rating) as max_rating
FROM books_sql_4;

-- =======================================
-- 2. QUESTIONS REGARDING AUTHORS
-- =======================================

-- a) Which authors have more than one book?
SELECT main_author, COUNT(title) as title_count
FROM books_sql_4
GROUP BY main_author
HAVING title_count > 1
ORDER BY title_count DESC;

-- b) Which author wrote the book with the highest rating?
SELECT main_author, title, MAX(rating) as max_rating
FROM books_sql_4
GROUP BY main_author, title
ORDER BY max_rating DESC
LIMIT 1;

-- =======================================
-- 3. QUESTIONS ON HIGHLY RATED BOOKS
-- =======================================

-- a) How many pages does the book with the highest rating have?
SELECT pages, title, rating
FROM books_sql_4
WHERE rating = (SELECT MAX(rating) FROM books_sql_4);

-- b) Which genres do the book with a rating higher than 4 have?
SELECT genre, title, rating
FROM books_sql_4
WHERE rating > 4
ORDER BY genre ASC;

-- c) What are the five leading books in the “Best Books Ever” list?
SELECT main_author, title, MAX(bbeScore) as best_ever
FROM books_sql_4
GROUP BY main_author, title
ORDER BY best_ever DESC
LIMIT 5;
