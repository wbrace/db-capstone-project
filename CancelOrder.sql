Delimiter //
CREATE procedure CancelOrder(orderIDwant int)
Begin 
Delete from orderstable 
Where orderID = orderIDwant;
Select concat('Order ', orderIDwant, ' is cancelled') as Confirmation;
End//

call CancelOrder(5);