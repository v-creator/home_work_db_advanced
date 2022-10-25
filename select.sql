1
select g.name, count(s.id) as count_songwriter
from netology.genre g
left join netology.genre_connection gc on g.id = gc.id_genres
left join netology.songwriter s on gc.id_songwriter = s.id
group by g.name;


2
select count(t.id) as count_track
from netology.album a
left join netology.track t on a.id = t.id_albums
where a.release_year between 2019 and 2020;


3
select a.name, avg(t.duration) as avg_duration
from netology.album a
left join netology.track t on a.id = t.id_albums
group by
a.name;


4
select s.name  from netology.songwriter s
where s.id not in (
select distinct ac.id_songwriter
from netology.album a
left join netology.album_connection ac on a.id = ac.id_albums
where a.release_year = 2020);


5
select distinct c.name from netology.songwriter s
left join netology.album_connection ac on s.id = ac.id_songwriter
left join netology.album a on ac.id_albums = a.id
left join netology.track t on a.id = t.id_albums
left join netology.track_connection tc on t.id = tc.id_track
left join netology.compilation c on tc.id_compilation = c.id
where s.name = 'Michael Jackson';


6
select a.name
from netology.album a
left join netology.album_connection ac on a.id = ac.id_albums
left join netology.genre_connection gc  on ac.id_songwriter =  gc.id_songwriter
group by a.name
having count(gc.id_genres) > 1;


7
select t.name
from netology.track t
left join netology.track_connection tc on t.id = tc.id_track
where tc.id_track is null;


8
select distinct s.name
from netology.track t
left join netology.album_connection ac on t.id_albums = ac.id_albums
left join netology.songwriter s on ac.id_songwriter = s.id
where t.duration = (select min(duration) from netology.track);


9
select a.name
from netology.album a
left join netology.track t on a.id = t.id_albums
group by a.name
having count(t.id) = (
		select min(tm.count_track)
		from (
			select id_albums, count(id) as count_track
			from netology.track
			group by id_albums) as tm);