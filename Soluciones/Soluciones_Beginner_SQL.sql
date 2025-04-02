-- Ejercicio 1
Select *
From Shippers

-- Ejercicio 2
Select CategoryName
,Description
from Categories

-- Ejercicio 3
Select
FirstName
,LastName
,HireDate
From Employees
Where Title = 'Sales Representative'

-- Ejercicio 4
Select
FirstName
,LastName
,HireDate
From Employees
Where Title = 'Sales Representative' and Country = 'USA'

-- Ejercicio 5
Select
OrderID
,OrderDate
From Orders
Where EmployeeID = 5

-- Ejercicio 6
Select
SupplierID
,ContactName
,ContactTitle
From Suppliers
Where ContactTitle <> 'Marketing Manager'

-- Ejercicio 7
Select
ProductID
,ProductName
From Products
Where ProductName like '%queso%'

-- Ejercicio 8
Select
OrderID
,CustomerID
,ShipCountry
From Orders
where ShipCountry = 'France' or ShipCountry = 'Belgium'

-- Ejercicio 9
Select
OrderID
,CustomerID
,ShipCountry
From Orders
where
ShipCountry in
 (
 'Brazil'
 ,'Mexico'
 ,'Argentina'
 ,'Venezuela')

-- Ejercicio 10
Select
FirstName
,LastName
,Title
,BirthDate
From Employees
Order By Birthdate

-- Ejercicio 11
Select
FirstName
,LastName
,Title
,DateOnlyBirthDate = convert(date, BirthDate)
From Employees
Order By Birthdate

-- Ejercicio 12
Select
FirstName
,LastName
,FullName = FirstName + ' ' + LastName
From Employees

-- Ejercicio 13
Select
OrderID
,ProductID
,UnitPrice
,Quantity
,TotalPrice = UnitPrice * Quantity
From OrderDetails
Order by
OrderID
,ProductID

-- Ejercicio 14
Select
TotalCustomers = count(*)
from Customers

-- Ejercicio 15
Select
FirstOrder = min(OrderDate)
From Orders

-- Ejercicio 16
Select
Country
From Customers
Group by Country

-- Ejercicio 17
Select
ContactTitle
,TotalContactTitle = count(*)
From Customers
Group by
ContactTitle
Order by
count(*) desc

-- Ejercicio 18
Select
ProductID
,ProductName
,Supplier = CompanyName
From Products
Join Suppliers
on Products.SupplierID = Suppliers.SupplierID

-- Ejercicio 19
Select
OrderID
,OrderDate = convert(date, OrderDate)
,Shipper = CompanyName
From Orders
join Shippers
on Shippers.ShipperID = Orders.ShipVia
Where OrderID < 10300
Order by OrderID

-- Soluciones realizadas por Luciano Parodi--
-- https://github.com/Luciano-Parodi --