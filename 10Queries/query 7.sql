USE hotel1db;

SELECT name,surname, phone_number as 'Arithmos_Cosmote' 
FROM customer
WHERE phone_number like '698%'