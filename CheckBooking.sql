CREATE procedure CheckBooking(bookingDateCheck Date, tableNumCheck int)
Select 
case 
	When bookingDateCheck = any(Select bookingDate FROM Bookings)  AND tableNumCheck = any(select TableNum FROM Bookings) THEN concat("Table ", tableNumCheck, " is already booked")
    ELSE concat("Table ", tableNumCheck, " is available")
END As BookingStatus;

call CheckBooking("2022-10-10",5);