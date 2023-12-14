SELECT Customers.CustomerID, Customers.FullName,
orderstable.OrderID, orderstable.Totalcost, 
Menus.MenuName,
MenuItems.CourseName, MenuItems.StarterName
FROM customers Inner Join orderstable 
ON customers.CustomerID = orderstable.CustomerID
Inner Join menus ON orderstable.MenuID = menus.MenuID
Inner Join menuitems ON menus.MenuItemsID = menuitems.MenuItemsID
WHERE orderstable.TotalCost > 150
order by orderstable.Totalcost ASC;