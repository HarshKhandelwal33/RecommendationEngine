use movies_recommend;
create table movies_recommendations as
select movie_id,collect_set(pair_Id) as listofMovies from (
select movie_id,pair_Id from (
select movie_id,pair_Id,cnt,
row_number() OVER (PARTITION BY movie_id ORDER BY cnt desc) as numb
from movies_recommendations_pre ) res
where numb < 5 ) res2
group by movie_id;


select m.title from movies_recommendations_pre p join movies m
on p.movie_id = m.id 
