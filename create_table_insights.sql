use movies_recommend;

CREATE external TABLE IF NOT EXISTS genres(
 id int,
 name string
) row format delimited fields terminated by ',' location '/user/vm4learning/genres/';

CREATE external TABLE IF NOT EXISTS genres_movies(
 id int,
 movie_id int,
 genre_id int
) row format delimited fields terminated by ',' location '/user/vm4learning/genres_movies/';

CREATE external TABLE IF NOT EXISTS occupations (
  id int ,
  name string
) row format delimited fields terminated by ',' location '/user/vm4learning/occupations/';
