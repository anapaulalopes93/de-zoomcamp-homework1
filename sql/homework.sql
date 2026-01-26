-- Questão 3: Viagens com distância ≤ 1 milha
SELECT COUNT(*) AS trips_le_1_mile
FROM read_parquet('green_tripdata_2025-11.parquet')
WHERE lpep_pickup_datetime >= TIMESTAMP '2025-11-01'
  AND lpep_pickup_datetime <  TIMESTAMP '2025-12-01'
  AND trip_distance <= 1;

-- Questão 4: Dia com a maior distância percorrida (< 100 milhas)
SELECT
    DATE(lpep_pickup_datetime) AS pickup_day,
    MAX(trip_distance) AS max_distance
FROM read_parquet('green_tripdata_2025-11.parquet')
WHERE trip_distance < 100
GROUP BY pickup_day
ORDER BY max_distance DESC
LIMIT 1;

-- Questão 5: Zona de coleta com o maior valor total em 18/11/2025
SELECT
    zpu.Zone AS pickup_zone,
    SUM(t.total_amount) AS total_amount_sum
FROM read_parquet('green_tripdata_2025-11.parquet') t
JOIN read_csv_auto('taxi_zone_lookup.csv') zpu
  ON t.PULocationID = zpu.LocationID
WHERE DATE(t.lpep_pickup_datetime) = DATE '2025-11-18'
GROUP BY pickup_zone
ORDER BY total_amount_sum DESC
LIMIT 1;

-- Quatão 6: Zona de descida com a maior gorjeta
SELECT
    zdo.Zone AS dropoff_zone,
    MAX(t.tip_amount) AS max_tip
FROM read_parquet('green_tripdata_2025-11.parquet') t
JOIN read_csv_auto('taxi_zone_lookup.csv') zpu
  ON t.PULocationID = zpu.LocationID
JOIN read_csv_auto('taxi_zone_lookup.csv') zdo
  ON t.DOLocationID = zdo.LocationID
WHERE zpu.Zone = 'East Harlem North'
  AND t.lpep_pickup_datetime >= TIMESTAMP '2025-11-01'
  AND t.lpep_pickup_datetime <  TIMESTAMP '2025-12-01'
GROUP BY dropoff_zone
ORDER BY max_tip DESC
LIMIT 1;
