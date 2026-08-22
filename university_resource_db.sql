USE university_library;

DESCRIBE borrowed_books;

INSERT INTO borrowed_books (member_id, book_id, return_date)
VALUES
(1, 1, NULL),
(2, 2, '2026-08-15'),
(3, 3, NULL);

SELECT bb.borrow_id, m.member_name, b.title AS book_title, b.author, bb.borrowed_at, bb.return_date
FROM borrowed_books bb
JOIN members m ON bb.member_id = m.member_id
JOIN books b ON bb.book_id = b.book_id;

SELECT * FROM borrowed_books;
SELECT bb.borrow_id, m.member_name, b.title AS book_title, b.author, bb.borrowed_at, bb.return_date
FROM borrowed_books bb
JOIN members m ON bb.member_id = m.member_id
JOIN books b ON bb.book_id = b.book_id;

SELECT m.member_name, b.title AS book_title, bb.borrowed_at
FROM borrowed_books bb
JOIN members m ON bb.member_id = m.member_id
JOIN books b ON bb.book_id = b.book_id
WHERE bb.return_date IS NULL;
