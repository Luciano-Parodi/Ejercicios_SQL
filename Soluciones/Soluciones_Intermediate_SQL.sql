-- Ejercicio 20
Select
CategoryName
,TotalProducts = count(*)
From Products
Join Categories
on Products.CategoryID = Categories.CategoryID
Group by
CategoryName
Order by
 count(*) desc

-- Ejercicio 21
Select
Country
,City
,TotalCustomer = Count(*)
From Customers
Group by
Country
,City
Order by 
count(*) desc

-- Ejercicio 22
Select
ProductID
,ProductName
,UnitsInStock
,ReorderLevel
From Products
Where
UnitsInStock <= ReorderLevel
Order by ProductID

-- Ejercicio 23
Select
ProductID
,ProductName
,UnitsInStock
,UnitsOnOrder
,ReorderLevel
,Discontinued
From Products
Where
UnitsInStock + UnitsOnOrder <= ReorderLevel
and Discontinued = 0
Order by ProductID

-- Ejercicio 24
Select
CustomerID
,CompanyName
,Region
From Customers
Order By
Case
when Region is null then 1
else 0
End
,Region
,CustomerID

-- Ejercicio 25
Select Top 3
ShipCountry
,AverageFreight = Avg(freight)
From Orders
Group By ShipCountry
Order By AverageFreight desc;

-- Ejercicio 26
Select Top 3
ShipCountry
,AverageFreight = avg(freight)
From Orders
Where
OrderDate >= '20150101'
and OrderDate < '20160101'
Group By ShipCountry
Order By AverageFreight desc;

-- Ejercicio 26
-- Ejercicio 28
Select TOP (3)
ShipCountry
,AverageFreight = Avg(freight)
From Orders
Where
OrderDate >= Dateadd(yy, -1, (Select max(OrderDate) from Orders))
Group by ShipCountry
Order by AverageFreight desc;

-- Ejercicio 29
Select
Employees.EmployeeID
,Employees.LastName
,Orders.OrderID
,Products.ProductName
,OrderDetails.Quantity
From Employees
join Orders
on Orders.EmployeeID = Employees.EmployeeID
join OrderDetails
on Orders.OrderID = OrderDetails.OrderID
join Products
on Products.ProductID = OrderDetails.ProductID
Order by
Orders.OrderID
,Products.ProductID

-- Ejercicio 30
Select
Customers_CustomerID = Customers.CustomerID
,Orders_CustomerID = Orders.CustomerID
From Customers
left join Orders
on Orders.CustomerID = Customers.CustomerID
Where
Orders.CustomerID is null

-- Ejercicio 31
Select
Customers.CustomerID
,Orders.CustomerID
From Customers
left join Orders
on Orders.CustomerID = Customers.CustomerID
and Orders.EmployeeID = 4
Where
Orders.CustomerID is null

-- Soluciones realizadas por Luciano Parodi--
-- https://github.com/Luciano-Parodi --