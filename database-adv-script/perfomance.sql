SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id      AS booking_user_id,
    u.first_name,
    u.last_name,
    p.property_id  AS booked_property_id,
    p.name         AS property_name,
    p.location     AS property_location,
    pay.payment_id,
    pay.amount     AS payment_amount,
    pay.payment_date
FROM Booking AS b,
     users   AS u,
     property AS p,
     Payment  AS pay
WHERE b.user_id = u.user_id
  AND b.property_id = p.property_id
  AND pay.booking_id = b.booking_id;

SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.name,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.payment_date
FROM Booking AS b
INNER JOIN users    AS u   ON b.user_id     = u.user_id
INNER JOIN property AS p   ON b.property_id = p.property_id
LEFT  JOIN Payment  AS pay ON b.booking_id  = pay.booking_id;
