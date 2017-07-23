CREATE USER indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

\c indexed_cars;

\i scripts/cars_models.sql;

\i scripts/car_model_data.sql;

SELECT DISTINCT make_title FROM car_models WHERE make_code LIKE '%LAM%';

SELECT DISTINCT model_title FROM car_models WHERE model_code LIKE '%GT-R%';