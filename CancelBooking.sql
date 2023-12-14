delimiter //
create procedure CancelBooking(booking_id int)
begin
delete FROM Bookings 
Where BookingID = booking_id;

Select concat("booking ", booking_id, " cancelled") as Confirmation;
end//

call CancelBooking(9);