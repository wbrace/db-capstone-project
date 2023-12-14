Delimiter //
create procedure AddBooking(booking_id int, booking_date date, table_num int, customer_id int)
Begin
insert into bookings(BookingId, BookingDate, TableNum, CustomerID)
Values(booking_id, booking_date, table_num, customer_id);
Select 'New booking added' as Confirmation;

end//

call AddBooking(9,'2022-12-30',4,3);