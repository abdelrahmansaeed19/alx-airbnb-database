SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM users AS u
LEFT JOIN Booking AS b
    ON u.user_id = b.user_id
GROUP BY
    u.user_id,
    u.first_name,
    u.last_name;

SELECT
    t.property_id,
    t.name,
    t.booking_count,
    RANK() OVER (ORDER BY t.booking_count DESC) AS booking_rank
FROM (
    SELECT
        p.property_id,
        p.name,
        COUNT(b.booking_id) AS booking_count
    FROM property AS p
    LEFT JOIN Booking AS b
        ON p.property_id = b.property_id
    GROUP BY
        p.property_id,
        p.name
) AS t
ORDER BY booking_rank;
