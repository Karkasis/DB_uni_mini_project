USE hotel1db;
SELECT date_in, time_in, reservation.id_reservation
FROM check_in
JOIN reservation ON reservation.key_in = check_in.key_in
WHERE date_in >= '10/6/2020'
ORDER BY id_reservation