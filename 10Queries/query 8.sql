USE hotel1db;

SELECT ro.id_room, re.id_customer
FROM room ro
LEFT JOIN reservation re ON re.id_room = ro.id_room
ORDER BY ro.id_room