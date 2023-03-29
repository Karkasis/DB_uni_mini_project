DROP VIEW view_temp;
CREATE VIEW view_temp AS
SELECT Nationality
FROM
(
SELECT Nationality, count(distinct name) as count_customers
FROM customer
GROUP BY Nationality
HAVING count_customers > 1
) as temp_table ;

SELECT 
    customer.Nationality,
    ROUND(AVG(customer.age), 1) AS average_age
FROM
    customer
WHERE
    sustomer.Nationality IN (SELECT 
            Nationality
        FROM
            view_temp)
GROUP BY customer.Nationality