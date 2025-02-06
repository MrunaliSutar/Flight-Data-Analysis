use data_analysis_flights

SELECT COUNT(DISTINCT airline) 
FROM flights;

SELECT state, COUNT(DISTINCT airport) AS airport_count
FROM airports
GROUP BY state
ORDER BY airport_count DESC;

SELECT cancel_reason, COUNT(*) AS reason_count
FROM flights
WHERE cancel_reason IS NOT NULL
GROUP BY cancel_reason
ORDER BY reason_count DESC

SELECT COUNT(*) 
FROM flights
WHERE airline = 'American Airlines Inc.'
AND origin_airport = 'Los Angeles International Airport'
AND destination_airport = 'Miami International Airport';

SELECT airline, COUNT(*) AS flight_count
FROM flights
GROUP BY airline

SELECT airline, SUM(delay_in_minutes) AS total_delay
FROM flights
WHERE delay_in_minutes IS NOT NULL
GROUP BY airline
ORDER BY total_delay DESC



SELECT airline, AVG(delay_in_minutes) AS avg_delay
FROM flights
WHERE origin_airport = 'LAX' 







