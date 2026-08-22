
# University Library Database

## Project Overview

This project is a MySQL database for managing a university library. It stores information about books, library members, and the books borrowed by members.

## Steps I Followed

1. I created a MySQL schema named `university_library`.

2. I created a `books` table to store book ID, title, and author details.

3. I created a `members` table to store member ID, member name, email, and registration details.

4. I created a `borrowed_books` table to track which member borrowed which book.

5. I used `member_id` and `book_id` as foreign keys in the `borrowed_books` table.

6. I inserted book records into the `books` table.

7. I inserted member records into the `members` table.

8. I inserted borrowing records into the `borrowed_books` table.

9. I used `SELECT *` queries to verify the data in all three tables.

10. I wrote JOIN queries to display member names, borrowed book titles, authors, borrow timestamps, and return dates.

11. I used a `WHERE return_date IS NULL` query to find books that have not been returned.

## Database Tables

- `books` — Stores book details such as title and author.
- `members` — Stores library member details.
- `borrowed_books` — Connects members and books to record borrowing activity.

## Reflection

I learned how to create related database tables and connect them using foreign keys. I also practiced inserting data and using JOIN queries to combine information from multiple tables. The most challenging part was using the correct column names and understanding how `borrowed_books` connects the `members` and `books` tables.