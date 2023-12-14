Create VIEW OrdersView AS  
SELECT OrderID, Quantity, TotalCost
 FROM orderstable 
 WHERE Quantity > 2;

Select * FROM OrdersView ;
