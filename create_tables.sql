CREATE DATABASE IF NOT EXISTS movies_recommend;
use movies_recommend;

CREATE EXTERNAL TABLE IF NOT EXISTS users 
(
id int,
age int,
gender string,
occupation_id int,
zip_code string
) row format delimited fields terminated by ',' location '/user/vm4learning/users/';

CREATE EXTERNAL TABLE IF NOT EXISTS movies
(
id int,
title string,
release_date string
) row format delimited fields terminated by ',' location '/user/vm4learning/movies/';

CREATE EXTERNAL TABLE IF NOT EXISTS ratings
(
 id int,
 user_id int,
 movie_id int,
 rating int
 ) row format delimited fields terminated by ',' location '/user/vm4learning/ratings/';

