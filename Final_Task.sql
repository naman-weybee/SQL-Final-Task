use MOVIES_W3;

------------------------------------- initial tasks -------------------------------------

-- 1) Write a SQL query to find the name and year of the movies. Return movie title, movie release year.
select mov_title, mov_year
from movie;

-- 2) write a SQL query to find when the movie ‘American Beauty’ released. Return movie release year.
select mov_year
from movie
where mov_title = 'American Beauty';

-- 3) write a SQL query to find the movie, which was made in the year 1999. Return movie title.
select mov_title
from movie
where mov_year = 1999;

-- 4) write a SQL query to find those movies, which was made before 1998. Return movie title.
select mov_title
from movie
where mov_year < 1999;

-- 5) write a SQL query to find the name of all reviewers and movies together in a single list.
select rev_name as singleList
from reviewer
union
select mov_title
from movie;

-- 6) write a SQL query to find all reviewers who have rated 7 or more stars to their rating. Return reviewer name.
select rev_name
from reviewer
inner join rating
on reviewer.rev_id = rating.rev_id
where rev_stars >= 7
and rev_name <> ' ';

-- 7) write a SQL query to find the movies without any rating. Return movie title.
select mov_title
from movie
where mov_id not in (
	select mov_id from rating);

-- 8) write a SQL query to find the movies with ID 905 or 907 or 917. Return movie title.
select mov_title
from movie
where mov_id = 905 or mov_id = 907 or mov_id = 917;

-- 9) write a SQL query to find those movie titles, which include the words 'Boogie Nights'. Sort the result-set in ascending order by movie year. Return movie ID, movie title and movie release year.
select mov_id, mov_title, mov_year
from movie
where mov_title like '%Boogie Nights%'
order by mov_year;

-- 10) write a SQL query to find those actors whose first name is 'Woody' and the last name is 'Allen'. Return actor ID
select act_id
from actor
where act_fname = 'Woody' and act_lname = 'Allen';

------------------------------------- Subqueries -------------------------------------

-- 1) Find the actors who played a role in the movie 'Annie Hall'. Return all the fields of actor table.
select *
from actor
where act_id in (
select act_id from movie_cast
where mov_id in (
	select mov_id from movie
	where mov_title = 'Annie Hall'));

-- 2) write a SQL query to find the director who directed a movie that casted a role for 'Eyes Wide Shut'. Return director first name, last name.
select dir_fname, dir_lname
from director
where dir_id in (
	select dir_id from movie_direction
	where mov_id in (
		select mov_id from movie 
		where mov_title = 'Eyes Wide Shut'));

-- 3) write a SQL query to find those movies, which released in the country besides UK. Return movie title, movie year, movie time, date of release, releasing country.
select mov_title, mov_year, mov_time, mov_dt_rel, mov_rel_country
from movie
where mov_rel_country <> 'UK';

-- 4) write a SQL query to find those movies where reviewer is unknown. Return movie title, year, release date, director first name, last name, actor first name, last name.
select mov_title
from movie
where mov_id in (
	select mov_id from rating
	where rev_id in (
		select rev_id from reviewer
		where rev_name = ' '));

-- 5) write a SQL query to find those movies directed by the director whose first name is ‘Woddy’ and last name is ‘Allen’. Return movie title.
select mov_title
from movie
where mov_id in (
	select mov_id from movie_direction
	where dir_id in (
		select dir_id from director
		where dir_fname = 'Woody' and dir_lname = 'Allen'));

-- 6) write a SQL query to find those years, which produced at least one movie and that, received a rating of more than three stars. Sort the result-set in ascending order by movie year. Return movie year.
select distinct mov_year
from movie
where mov_id in (
	select mov_id from rating
	where rev_stars > 3)
	order by mov_year;

-- 7) write a SQL query to find those movies, which have no ratings. Return movie title.
select mov_title
from movie
where mov_id in (
	select mov_id from movie
	where mov_id not in (
		select mov_id from rating));

-- 8) write a SQL query to find those reviewers who have rated nothing for some movies. Return reviewer name.
select rev_name
from reviewer
where rev_id in (
	select rev_id from rating
	where rev_stars is null);

-- 9) write a SQL query to find those movies, which reviewed by a reviewer and got a rating. Sort the result-set in ascending order by reviewer name, movie title, review Stars. Return reviewer name, movie title, review Stars.
select rev_name, mov_title, rev_stars
from reviewer, movie, rating
where rev_stars in (
	select rev_stars from rating
	where rating.mov_id = movie.mov_id
	and rev_stars is not null
	and num_o_ratings is not null)
and reviewer.rev_id in (
	select rev_id from rating
	where rating.mov_id = movie.mov_id)
and rev_name in (
	select rev_name from reviewer
	where rev_id = rating.rev_id and reviewer.rev_name <> ' ')
order by rev_name, mov_title, rev_stars;

-- 10) write a SQL query to find those reviewers who rated more than one movie. Group the result set on reviewer’s name, movie title. Return reviewer’s name, movie title.
select rev_name, mov_title
from reviewer, movie
where rev_id in (
	select rev_id from rating
	where rating.mov_id = movie.mov_id)
and rev_id in (
	select rating.rev_id from rating
	group by rev_id
	having count(rating.rev_id) > 1)
group by rev_name, mov_title;

-- 11) write a SQL query to find those movies, which have received highest number of stars. Group the result set on movie title and sorts the result-set in ascending order by movie title. Return movie title and maximum number of review stars.
select mov_title, max(rev_stars)
from movie, rating
where movie.mov_id = rating.mov_id
and rating.rev_stars is not null
group by mov_title
order by mov_title;

-- 12) write a SQL query to find all reviewers who rated the movie 'American Beauty'. Return reviewer name.
select rev_name
from reviewer, movie
where rev_id in (
	select rev_id from rating
	where rating.rev_id = reviewer.rev_id)
and rev_id in (
	select rev_id from rating
	where mov_id = movie.mov_id
	and mov_title = 'American Beauty');

-- 13) write a SQL query to find the movies, which have reviewed by any reviewer body except by 'Paul Monks'. Return movie title.
select mov_title
from movie
where mov_id in (
	select mov_id from rating
	where rating.rev_id not in(
		select rev_id from reviewer
		where rev_name = 'Paul Monks'));

-- 14) write a SQL query to find the lowest rated movies. Return reviewer name, movie title, and number of stars for those movies.
select rev_name, mov_title, rev_stars
from reviewer, movie, rating
where rev_stars in (
	select rev_stars from rating
	where mov_id = movie.mov_id
	and rev_stars in (
		select min(rev_stars)
		from rating))
and reviewer.rev_id in (
	select rev_id from rating
	where mov_id = movie.mov_id)
	and reviewer.rev_id in (
	select rev_id from reviewer
	where rev_id = rating.rev_id);

-- 15) write a SQL query to find the movies directed by 'James Cameron'. Return movie title.
select mov_title
from movie
where mov_id in (
	select mov_id from movie_direction
	where dir_id in (
		select dir_id from director
		where dir_fname = 'James' and dir_lname = 'Cameron'));

-- 16) Write a query in SQL to find the name of those movies where one or more actors acted in two or more movies.
select mov_title
from movie
where mov_id in (
	select mov_id from movie_cast
	where act_id in (
		select act_id from movie_cast
		group by act_id
		having count(act_id) > 0)
	and mov_id in (
		select mov_id from movie_cast
		group by mov_id
		having count(mov_id) > 1));

------------------------------------- Joins -------------------------------------

-- 1) write a SQL query to find the name of all reviewers who have rated their ratings with a NULL value. Return reviewer name.
select rev_name
from reviewer
inner join rating
on reviewer.rev_id = rating.rev_id
where rev_stars is null;

-- 2) write a SQL query to find the actors who were cast in the movie 'Annie Hall'. Return actor first name, last name and role.
select act_fname, act_lname, role
from actor
inner join movie_cast
on actor.act_id = movie_cast.act_id
inner join movie
on movie.mov_id = movie_cast.mov_id
where mov_title = 'Annie Hall';

-- 3) write a SQL query to find the director who directed a movie that casted a role for 'Eyes Wide Shut'. Return director first name, last name and movie title.
select  dir_fname, dir_lname, mov_title
from director
inner join movie_direction
on director.dir_id = movie_direction.dir_id
inner join movie
on movie_direction.mov_id = movie.mov_id
where mov_title = 'Eyes Wide Shut';

-- 4) write a SQL query to find who directed a movie that casted a role as ‘Sean Maguire’. Return director first name, last name and movie title.
select dir_fname, dir_lname, mov_title
from director
inner join movie_direction
on director.dir_id = movie_direction.dir_id
inner join movie_cast
on movie_direction.mov_id = movie_cast.mov_id
inner join movie
on movie.mov_id = movie_cast.mov_id
where role = 'Sean Maguire';

-- 5) write a SQL query to find the actors who have not acted in any movie between1990 and 2000 (Begin and end values are included.). Return actor first name, last name, movie title and release year.
select act_fname, act_lname, mov_title, mov_year
from actor
inner join movie_cast
on actor.act_id = movie_cast.act_id
inner join movie
on movie.mov_id = movie_cast.mov_id
where mov_year not between 1990 and 2000;

-- 6) write a SQL query to find the directors with number of genres movies. Group the result set on director first name, last name and generic title. Sort the result-set in ascending order by director first name and last name. Return director first name, last name and number of genres movies.
select dir_fname, dir_lname, gen_title
from director
inner join movie_direction
on director.dir_id = movie_direction.dir_id
inner join movie_genres
on movie_direction.mov_id = movie_genres.mov_id
inner join genres
on movie_genres.gen_id = genres.gen_id
group by dir_fname, dir_lname, gen_title
order by dir_fname, dir_lname;

-- 7) write a SQL query to find the movies with year and genres. Return movie title, movie year and generic title.
select mov_title, mov_year, gen_title
from movie
inner join movie_genres
on movie.mov_id = movie_genres.mov_id
inner join genres
on movie_genres.gen_id = genres.gen_id;

-- 8) write a SQL query to find all the movies with year, genres, and name of the director.
select mov_title, mov_year, genres.gen_id, gen_title, dir_fname, dir_lname
from movie
left join movie_genres
on movie.mov_id = movie_genres.mov_id
left join genres
on movie_genres.gen_id = genres.gen_id
left join movie_direction
on movie.mov_id = movie_direction.mov_id
left join director
on director.dir_id = movie_direction.dir_id;

-- 9) write a SQL query to find the movies released before 1st January 1989. Sort the result-set in descending order by date of release. Return movie title, release year, date of release, duration, and first and last name of the director.
select mov_title, mov_dt_rel as [date of release], mov_time as duration, mov_year as [release year], dir_fname, dir_lname
from movie
inner join movie_direction
on movie.mov_id = movie_direction.mov_id
inner join director
on movie_direction.dir_id = director.dir_id
where mov_dt_rel < '1989-01-01 00:00:00.000'
order by mov_dt_rel desc;

-- 10) write a SQL query to compute the average time and count number of movies for each genre. Return genre title, average time and number of movies for each genre.
select gen_title, avg(mov_time) as [Average Time], count(movie_genres.mov_id) as [Movie Count]
from movie
inner join movie_genres
on movie.mov_id = movie_genres.mov_id
inner join genres
on movie_genres.gen_id = genres.gen_id
group by gen_title;

-- 11) write a SQL query to find movies with the lowest duration. Return movie title, movie year, director first name, last name, actor first name, last name and role.
select mov_title, mov_year, dir_lname, dir_fname, act_lname, act_fname, mov_time, role
from movie
inner join movie_direction
on movie.mov_id = movie_direction.mov_id
inner join director
on movie_direction.dir_id = director.dir_id
inner join movie_cast
on movie.mov_id = movie_cast.mov_id
inner join actor
on movie_cast.act_id = actor.act_id
where mov_time in (
	select min(mov_time) from movie);

-- 12) write a SQL query to find those years when a movie received a rating of 3 or 4. Sort the result in increasing order on movie year. Return move year.
select distinct mov_year
from movie
inner join rating
on movie.mov_id = rating.mov_id
where rev_stars = 3 or rev_stars = 4
order by mov_year;

-- 13) write a SQL query to get the reviewer name, movie title, and stars in an order that reviewer name will come first, then by movie title, and lastly by number of stars.
select rev_name, mov_title, rev_stars
from reviewer
inner join rating
on reviewer.rev_id = rating.rev_id
inner join movie
on rating.mov_id = movie.mov_id
where rev_name <> ' '
order by rev_name, mov_title, rev_stars;

-- 14) write a SQL query to find those movies that have at least one rating and received highest number of stars. Sort the result-set on movie title. Return movie title and maximum review stars.
select mov_title, max(rev_stars) as [Maximum Review Star]
from movie
inner join rating
on movie.mov_id = rating.mov_id
group by mov_title
having max(rev_stars) > 0
order by mov_title;

-- 15) write a SQL query to find those movies, which have received ratings. Return movie title, director first name, director last name and review stars.
select mov_title, dir_fname, dir_lname, rev_stars
from movie
inner join rating
on movie.mov_id = rating.mov_id
inner join reviewer
on rating.rev_id = reviewer.rev_id
inner join movie_direction
on movie.mov_id = movie_direction.mov_id
inner join director
on movie_direction.dir_id = director.dir_id
where rev_stars is not null;

-- 16) Write a query in SQL to find the movie title, actor first and last name, and the role for those movies where one or more actors acted in two or more movies.
select mov_title, act_fname, act_lname, role
from movie
inner join movie_cast
on movie.mov_id = movie_cast.mov_id
inner join actor
on movie_cast.act_id = actor.act_id
where movie_cast.act_id in (
	select act_id from movie_cast
	group by act_id
	having count(act_id) > 1);