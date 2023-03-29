USE hotel1db;

SELECT *
FROM reservation
JOIN customer ON reservation.id_customer = customer.id_customer
JOIN room ON reservation.id_room = room.id_room
JOIN check_in ON reservation.key_in = check_in.key_in
JOIN check_out ON reservation.key_out = check_out.key_out
JOIN facilities ON reservation.id_pass = facilities.id_pass