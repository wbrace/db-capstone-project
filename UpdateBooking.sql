delimiter //
create procedure UpdateBooking(booking_id int, booking_date date)
Begin
update Bookings 
set BookingDate = booking_date
WHERE BookingID = booking_id;

select concat("booking ", booking_id, " updated") as Confirmation;

end//

call UpdateBooking(9,"2022-12-17");