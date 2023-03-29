USE hotel1db;

SELECT reservation.id_room, customer.name, customer.surname, invoices.price, facilities.facilities_status
FROM reservation 
JOIN customer ON customer.id_customer = reservation.id_customer
JOIN invoices ON invoices.id_reservation = reservation.id_reservation
JOIN facilities ON facilities.id_pass = reservation.id_pass
WHERE id_room >= '300' AND invoices.status = 'paid'
ORDER BY id_room
