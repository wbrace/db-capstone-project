Select MenuName FROM menus 
where MenuID = any(SELECT menuID FROM orderstable WHERE Quantity > 2)