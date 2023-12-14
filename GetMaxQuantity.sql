CREATE PROCedure GetMaxQuantity()
SELECT Quantity As MaxQuantityinOrder
FROM orderstable 
order by Quantity Desc
Limit 1;

Call GetMaxQuantity();
