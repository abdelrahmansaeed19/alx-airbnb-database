
USE AirBnB_Clone

SELECT * FROM Booking INNER JOIN users ON Booking.user_id = users.user_id

SELECT * FROM property LEFT JOIN Review ON property.property_id = Review.property_id

SELECT * FROM users FULL OUTER JOIN Booking ON users.user_id = Booking.user_id
