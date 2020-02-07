-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Category.CategoryName, Product.ProductName
FROM Category
JOIN Product
ON product.CategoryId = category.Id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT id, companyname
FROM [order]
JOIN shipper 
ON shipvia = shipper.id
WHERE [order].orderdate < "2012-08-09"
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, o.Quantity
FROM product AS p
JOIN orderdetail AS o
ON p.id = o.productid
WHERE o.orderid = 10251
ORDER BY p.ProductName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT Id AS [Order ID], CompanyName AS [Customer Name], LastName AS [Ordered By] 
FROM [Order]
JOIN Customer on [Order].CustomerId = Customer.Id
JOIN Employee on [Order].EmployeeId = Employee.Id
