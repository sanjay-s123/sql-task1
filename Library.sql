sql library
CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    publisher VARCHAR(255),
    year INT,
    isbn VARCHAR(20) UNIQUE,
    category VARCHAR(100),
    quantity INT NOT NULL
);
INSERT INTO Books (title, author, publisher, year, isbn, category, quantity)
VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner', 1925, '9780743273565', 'Fiction', 10),
('To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', 1960, '9780061120084', 'Fiction', 5),
('1984', 'George Orwell', 'Secker & Warburg', 1949, '9780451524935', 'Dystopian', 8);
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20),
    address TEXT,
    join_date DATE NOT NULL
);
INSERT INTO Members (name, email, phone, address, join_date)
VALUES ('Alice Johnson', 'alice.johnson@example.com', '321-654-9870', '789 Pine St, Newtown, USA', '2024-07-24');
CREATE TABLE Transactions2 (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    borrow_date DATE NOT NULL,
    return_date DATE
);
INSERT INTO Transactions2 (book_id, member_id, borrow_date, return_date)
VALUES
(1, 1, '2024-07-23', NULL),
(2, 2, '2024-07-23', NULL);
SELECT * FROM Books;
SELECT * FROM Members;
SELECT * FROM Transactions2;
UPDATE Books
SET quantity = 6
WHERE book_id = 2;
Select * from Books;