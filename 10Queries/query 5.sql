USE hotel1db;

SELECT room.id_room, room.floor, customer.id_customer, customer.name, customer.surname

FROM room 
JOIN reservation ON reservation.id_room = room.id_room
JOIN customer ON customer.id_customer = reservation.id_customer
WHERE floor = 'prwtos orofos' 