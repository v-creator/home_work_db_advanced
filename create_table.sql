create table netology.songwriter (
	id serial primary key,
	name varchar(40) not null UNIQUE
);


create table netology.genre (
	id serial primary key,
	name varchar(40) not null UNIQUE
);


create table netology.genre_connection (
	id_connection serial primary key,
	id_genres integer references genre(id),
	id_songwriter integer references songwriter(id)
);


create table netology.album (
	id serial primary key,
	name varchar(40) not null,
	release_year integer not null CHECK(release_year >= 1900)
);


create table netology.album_connection (
	id_connection serial primary key,
	id_albums integer references album(id),
	id_songwriter integer references songwriter(id)
);


create table netology.track (
	id serial primary key,
	name varchar(40) not null,
	duration integer not null,
	id_albums integer references album(id)
);


create table netology.compilation (
	id serial primary key,
	name varchar(40) not null,
	release_year integer not null CHECK(release_year >= 1900)
);


create table netology.track_connection (
	id_connection serial primary key,
	id_track integer references track(id),
	id_compilation integer references compilation(id)
);