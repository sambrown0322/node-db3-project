-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT Product.ProductName, Category.CategoryName 
FROM Product
JOIN Category on Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.


Select [Order].Id, shipper.CompanyName 
FROM [Order]
JOIN Shipper on [Order].ShipVia = shipper.Id
Where OrderDate < ("2012-08-09");

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

Select OrderDetail.Quantity, Product.ProductName 
FROM [Order]
JOIN OrderDetail on [Order].Id = OrderDetail.OrderId
JOIN Product on OrderDetail.ProductId = Product.Id
WHERE [Order].Id = 10251
ORDER BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

Select [Order].Id as OrderId, Customer.CompanyName as CustomerCompanyName, Employee.LastName as EmployeeLastName
FROM [Order]
JOIN Customer on [Order].CustomerId = Customer.Id
JOIN Employee on [Order].EmployeeId = Employee.Id;
