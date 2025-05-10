
-- ── Users ───────────────────────────────────────────────────────────────────
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice',   'Admin',  'alice.admin@example.com', '$2b$12$hash...', '+201001234567', 'admin'),
  ('22222222-2222-2222-2222-222222222222', 'Bob',     'Host',   'bob.host@example.com',   '$2b$12$hash...', '+201002345678', 'host'),
  ('33333333-3333-3333-3333-333333333333', 'Carol',   'Host',   'carol.host@example.com', '$2b$12$hash...', '+201003456789', 'host'),
  ('44444444-4444-4444-4444-444444444444', 'Dave',    'Guest',  'dave.guest@example.com',  '$2b$12$hash...', '+201004567890', 'guest'),
  ('55555555-5555-5555-5555-555555555555', 'Eve',     'Guest',  'eve.guest@example.com',   '$2b$12$hash...', NULL,               'guest');

-- ── Properties ─────────────────────────────────────────────────────────────
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222',
   'Seaside Villa',
   'A beautiful villa with ocean views, private pool, and modern amenities.',
   'Hurghada, Egypt', 200.00),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '33333333-3333-3333-3333-333333333333',
   'Mountain Cabin',
   'Cozy wooden cabin nestled in the mountains, perfect for hiking enthusiasts.',
   'Aswan, Egypt', 150.00);

-- ── Bookings ────────────────────────────────────────────────────────────────
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('cccccccc-cccc-cccc-cccc-cccccccccccc',
   'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '44444444-4444-4444-4444-444444444444',
   '2025-06-01', '2025-06-05', 200.00 * 4, 'confirmed'),
  ('dddddddd-dddd-dddd-dddd-dddddddddddd',
   'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '55555555-5555-5555-5555-555555555555',
   '2025-07-10', '2025-07-12', 200.00 * 2, 'pending'),
  ('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
   'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '44444444-4444-4444-4444-444444444444',
   '2025-05-20', '2025-05-22', 150.00 * 2, 'canceled');

-- ── Payments ────────────────────────────────────────────────────────────────
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('ffffffff-ffff-ffff-ffff-ffffffffffff',
   'cccccccc-cccc-cccc-cccc-cccccccccccc', 800.00, 'credit_card');

-- ── Reviews ─────────────────────────────────────────────────────────────────
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('99999999-9999-9999-9999-999999999999',
   'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '44444444-4444-4444-4444-444444444444',
   5, 'Amazing stay! The villa exceeded our expectations.');

-- ── Messages ────────────────────────────────────────────────────────────────
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('10101010-1010-1010-1010-101010101010',
   '44444444-4444-4444-4444-444444444444', '22222222-2222-2222-2222-222222222222',
   'Hi Bob, is the Seaside Villa available for an early check-in?'),
  ('20202020-2020-2020-2020-202020202020',
   '22222222-2222-2222-2222-222222222222', '44444444-4444-4444-4444-444444444444',
   'Yes, early check-in is possible for a small fee.'),
  ('30303030-3030-3030-3030-303030303030',
   '55555555-5555-5555-5555-555555555555', '33333333-3333-3333-3333-333333333333',
   'Hello Carol, can you confirm availability for July?');
