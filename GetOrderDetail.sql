Prepare GetOrderDetail FROM
'Select OrderID, Quantity, TotalCost 
FROM orderstable 
Where CustomerID = ?';

Set @CustomerID = 1;
execute GetOrderDetail USing @CustomerID;