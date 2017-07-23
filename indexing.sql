CREATE USER indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

\c indexed_cars;

\i scripts/cars_models.sql;

\i scripts/car_model_data.sql;

-- SELECT COUNT(id) [ COLUMN NAME ] to check count

SELECT DISTINCT make_title FROM car_models WHERE make_code LIKE '%LAM%';

SELECT DISTINCT model_title FROM car_models WHERE model_code LIKE '%GT-R%';

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code LIKE '%LAM%';
-- Time: 30.273 ms

SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;
-- Time: 83.180 ms