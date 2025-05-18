SELECT *
FROM property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

SELECT * FROM users WHERE user_id in 
(select users.user_id from users JOIN Booking 
ON users.user_id = Booking.user_id 
Group by users.user_id having count(users.user_id) > 3);
