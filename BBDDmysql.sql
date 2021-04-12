/* Ejercicio 1 */
SELECT COUNT(`FlightNum`) AS Total FROM `flights`


/* 2 ejercicio */
SELECT `Origin`, AVG(`ArrDelay`), AVG(`DepDelay`) 
FROM `flights` 
GROUP BY `Origin`


/* 3 ejercicio */
SELECT `Origin`, `colYear`, `colMonth`, AVG(`ArrDelay`) 
AS `prom_arribades` FROM `flights` 
GROUP BY `Origin`, `colYear`, `colMonth`


/* 4 ejercicio */
SELECT City, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM flights
INNER JOIN usairports
ON flights.Origin=usairports.IATA
GROUP BY
`City`, `colYear`, `colMonth`


/* 5 ejercicio */
SELECT `UniqueCarrier`, `colYear`, `colMonth`, SUM(cancelled) AS total_cancelled 
FROM `flights`
WHERE Cancelled > 0  
GROUP BY UniqueCarrier, colYear, colMonth 
ORDER BY COUNT(*) DESC


/* 6 ejercicio  */
SELECT TailNum, SUM(Distance) AS totalDistance
FROM flights
WHERE NOT TailNum='NULL'
GROUP BY TailNum 
ORDER BY totalDistance DESC LIMIT 10


/* 7 ejercicio */
SELECT UniqueCarrier, AVG(ArrDelay)
FROM flights
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > 10
ORDER BY AVG(ArrDelay) DESC 