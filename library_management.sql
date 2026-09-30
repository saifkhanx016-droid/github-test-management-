create database library;
use library;
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100)
);

INSERT INTO Books (book_id, title, author)
VALUES
(1, 'one piece', 'Oda Sensei'),
(2, 'bleach', 'Kubo'),
(3, 'JJK', 'GEGE'),
(4, 'jojo', 'Araki');


CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100)
);

INSERT INTO Students (student_id, student_name)
VALUES
(1, 'saif'),
(2, 'prince'),
(3, 'mujtaba'),
(4, 'nitesh');


CREATE TABLE Issue (
    issue_id INT PRIMARY KEY,
    book_id INT,
    student_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id)
        REFERENCES Books(book_id),
    FOREIGN KEY (student_id)
        REFERENCES Students(student_id)
);

INSERT INTO Issue (issue_id, book_id, student_id, issue_date, return_date)
VALUES
(1, 1, 1, '2026-09-01', '2026-09-05'),
(2, 2, 2, '2026-09-03', '2026-09-07'),
(3, 3, 3, '2026-09-03', '2026-09-11');

SELECT * FROM Books;
SELECT * FROM Students;
SELECT * FROM Issue;
