CREATE INDEX title_index ON car_models(make_title);

CREATE USER indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

\c indexed_cars;

\i scripts/cars_models.sql

\i scripts/car_model_data.sql

SELECT DISTINCT make_title FROM car_models WHERE make_code LIKE '%LAM%';
-- 1st Time : 29.501 ms
-- 2nd Time : 25.949 ms

SELECT DISTINCT model_title FROM car_models WHERE make_code LIKE '%NISSAN%' AND model_code LIKE '%GT-R%';
-- 1st Time : 32.251 ms
-- 2nd Time : 30.444 ms

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code LIKE '%LAM%';
-- 1st Time : 30.273 ms
-- 2nd Time : 26.248 ms

SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;
-- 1st Time : 83.180 ms
-- 2nd Time : 71.748 ms

SELECT * FROM car_models WHERE year = 2010;
-- 1st Time : 35.467 ms
-- 2nd Time : 29.852 ms

