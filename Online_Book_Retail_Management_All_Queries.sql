

-- 1) Retrieve all the books in the "Fiction" Genre
SELECT * FROM Book
WHERE Genre = 'Fiction';

-- 2) Find books published after the year 1950
SELECT * FROM Book
WHERE Published_Year > 1950;

-- 3) List all the customer from the Canada
SELECT * FROM Customers
WHERE Country = 'Canada';

-- 4) Show orders placed in November 2023
SELECT * FROM Orders
WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30';

-- 5) Retrieve the total stock of books available
SELECT SUM(Stock) AS Total_Stock
FROM Book;

-- 6) Find the details of the most expensive book
SELECT TOP 1 * FROM Book
ORDER BY Price DESC;

-- 7) Show all customers who ordered more than 1 quantity of a book
SELECT * FROM Orders
WHERE Quantity > 1;

-- 8) Retrieve all orders where the total amount exceeds $20
SELECT * FROM Orders
WHERE Total_Amount > 20;

-- 9) List all the genres available in the Books table
SELECT DISTINCT Genre 
FROM Book;

-- 10) Find the books with the lowest stock
SELECT TOP 1 * FROM Book
ORDER BY Stock;

-- 11) Calculate the total revenue generate from all orders
SELECT SUM(Total_Amount) AS Revenue
FROM Orders;

-- Advanced Questions

-- 1) Retrieve the total number of books sold for each genre
SELECT b.Genre, SUM(o.Quantity) AS Total_Books_Sold FROM Orders o 
INNER JOIN Book b ON o.Book_ID = b.Book_ID
GROUP BY b.Genre;

-- 2) Find the average price of books in the "Fantasy" genre
SELECT AVG(Price) AS Average_Price
FROM Book
WHERE Genre = 'Fantasy';

-- 3) List customers who have placed at least 2 orders
SELECT o.Customer_ID, c.Name, COUNT(o.Order_ID) AS Order_Count
FROM Orders o 
INNER JOIN Customers c ON o.Customer_ID = c.Customer_ID
GROUP BY o.Customer_ID, c.Name
HAVING COUNT(o.Order_ID) >= 2;

-- 4) Find the most frequently ordered books
SELECT TOP 1 o.Book_Id, b.Title, COUNT(o.Order_Id) AS Order_Count
FROM Orders o
INNER JOIN Book b ON o.Book_Id = b.Book_ID
GROUP BY o.Book_ID, b.Title
ORDER BY Order_Count DESC;

-- 5) Show the top 3 most expensive books of "Fantasy" Genre
SELECT TOP 3 * FROM Book
WHERE Genre = 'Fantasy'
ORDER BY Price DESC;

-- 6) Retrieve the total quantity of books sold by each author
SELECT b.Author, SUM(o.Quantity) AS Total_Books_Sold
FROM Orders o 
INNER JOIN Book b ON o.Book_ID = b.Book_ID
GROUP BY b.Author;

-- 7) List the cities where customers who spent over $30 are located
SELECT DISTINCT c.City
FROM Orders o
INNER JOIN Customers c ON o.Customer_ID = c.Customer_ID
WHERE o.Total_Amount > 30;

-- 8) Find the customer who spent the most o orders
SELECT TOP 1 c.Customer_Id, c.Name, SUM(o.Total_Amount) AS Total_Spent
FROM Orders o
INNER JOIN Customers c ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_ID, c.Name
ORDER BY Total_Spent DESC;

-- 9) Calculate the stock remaining after fulfilling all orders
SELECT b.Book_Id, b.Title, b.Stock, ISNULL(SUM(o.Quantity),0) AS Order_Quantity,
b.Stock - ISNULL(SUM(o.Quantity),0) AS Remaianing_Quantity
FROM Book b
LEFT JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Book_ID, b.Title, b.Stock
ORDER BY b.Book_ID;
