CREATE TABLE Customers (
    CustomerID int,
    Name varchar(255),
    Email varchar(255)
);

CREATE TABLE Orders (
    OrderID int,
    Quantity int,
    CustomerID int
);

CREATE TABLE Books (
    BooksID int,
    Title varchar(255),
    OrderID int
);

INSERT INTO Customers
VALUES (1, 'Alice Johnson', 'alice.johnson@email.com'),
       (2, 'Bob Smith', 'bob.smith@email.com'),
       (3, 'Charlie Brown', 'charlie.brown@email.com');
       
INSERT INTO Orders
VALUES (123, 1, 1),
       (234, 2, 2),
       (345, 1, 3);
       
INSERT INTO Books
VALUES (101, 'The Great Gatsby', 123),
       (201, 'War of the Worlds', 234),
       (301, 'Lord of the Rings', 345);
       
       
SELECT Name, Title, Quantity 
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
LEFT JOIN Books
ON Orders.OrderID = Books.OrderID;
