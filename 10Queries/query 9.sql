USE hotel1db;

SELECT SUM(price) as esoda
FROM invoices
ORDER BY esoda DESC LIMIT 1;