use movies_recommend;

create table movies_recommendations_pre as
select movie_id,pair_Id,count(*) as cnt from (
select x.movie_id as movie_id,z.movie_id as pair_Id from good_ratings x join good_ratings y
on x.movie_id = y.movie_id join good_ratings z
on y.user_id = z.user_id ) res
where movie_id <> pair_Id
group by movie_id,pair_Id;


