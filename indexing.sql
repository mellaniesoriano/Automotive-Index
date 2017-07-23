CREATE INDEX title_index ON car_models(make_title);

CREATE USER indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

\c indexed_cars;

\i scripts/cars_models.sql

\i scripts/car_model_data.sql

CREATE INDEX title_index ON car_models(make_title) WHERE make_code LIKE '%LAM%';
-- Time: 0.223 ms
SELECT DISTINCT make_title FROM car_models WHERE make_code LIKE '%LAM%';
-- Time : 29.501 ms

CREATE INDEX title_index ON car_models(make_title) WHERE make_code LIKE '%NISSAN%' AND model_code LIKE '%GT-R%';
-- Time : 0.473 ms
SELECT DISTINCT model_title FROM car_models WHERE make_code LIKE '%NISSAN%' AND model_code LIKE '%GT-R%';
-- Time : 32.251 ms


SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code LIKE '%LAM%';
-- Time : 30.273 ms

SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;
-- Time : 83.180 ms

SELECT * FROM car_models WHERE year = 2010;
-- Time : 35.467 ms


