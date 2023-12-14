delimiter //
create procedure AddValidBooking(bookingDate1 date, tableNum1 int, CustomerID1 int)
Begin 
Declare numBookings int;
Start transaction;
Insert Into bookings(BookingDate, TableNum, CustomerID)
Values(bookingDate1, tableNum1, customerID1);

Select count(*) into numBookings
From Bookings
WHERE bookingDate1 = BookingDate AND tableNum1 = TableNum;

if numBookings> 1 THEN
	Rollback;
    Select concat("Table ", tableNum1, " is already booked - booking cancelled") as BookingStatus;
Else 
	Commit;
    Select concat("Table ", tableNum1, " is available - Booked") as BookingStatus;
End if;
End//


Call AddValidBooking('2022-11-10',5,12);
