INSERT INTO netology.genre ("name")
VALUES ('Рок'), ('Поп-музыка'), ('Джаз'), ('Блюз'), ('Классическая музыка');


INSERT INTO netology.songwriter ("name")
VALUES ('Michael Jackson'), ('Beatles'), ('Louis Armstrong'), ('Frank Sinatra'), ('Jimi Hendrix'), ('Coldplay'), ('Hans Zimmer'), ('Sting'), ('Imagine Dragons');


INSERT INTO netology.genre_connection (id_genres, id_songwriter)
VALUES (2, 1), (1, 2), (3, 3), (3, 4), (4, 5), (1, 6), (5, 7), (2, 8), (1, 9), (1, 1), (2, 6);


INSERT INTO netology.album ("name", release_year)
VALUES ('Thriller', 1982), ('Dangerous', 1991), ('XSCAPE', 2018),
('Abbey Road', 1969), ('Revolver', 1966), ('Love', 2006),
('Greatest Hits', 1967), ('Pure Gold', 1995), ('Satchmo Serenades', 1952),
('The World We Knew', 1967), ('Come Fly With Me', 1958),
('Woodstock', 1994),
('Parachutes', 2000), ('Magic', 2014), ('Music of the Spheres', 2021),
('The Da Vinci Code', 2006), ('Inception', 2010),
('All This Time', 1990), ('25 Years', 2011),
('Warriors', 2014), ('Evolve', 2018), ('Bones', 2022),
('Sharks', 2020), ('Wrecked', 2020), ('Birds', 2019);


INSERT INTO netology.track ("name", duration, id_albums)
VALUES ('Billie Jean', 295, 1),
('Human Nature', 246, 1),
('Black or White', 198, 2),
('Give in to Me', 205, 2),
('Chicago', 193, 3),
('Love Never Felt So Good', 234, 3),
('Polythene Pam', 187, 4),
('Eleanor Rigby', 243, 5),
('Yellow Submarine', 229, 5),
('Because', 214, 6),
('Bohemian Rhapsody', 250, 7),
('Killer Queen', 253, 7),
('Blueberry Hill', 202, 8),
('Maybe It Because', 187, 9),
('Somethin Stupid', 210, 10),
('Around the my World', 201, 11),
('Fire', 116, 12),
('Do not Panic', 116, 13),
('My Spies', 285, 13),
('Magic', 258, 14),
('Higher Power', 221, 15),
('Dies Mercurii I Martius', 364, 16),
('Old Souls', 464, 17),
('Fragile', 234, 18),
('If You Love Somebody Set Them Free', 254, 19),
('Warriors', 168, 20),
('Whatever It Takes', 190, 21),
('Believer', 204, 21),
('Bones', 165, 22),
('Sharks', 197, 23),
('Wrecked', 236, 24),
('Birds', 219, 25),
('Birds (feat. Elisa)', 221, 24);


INSERT INTO netology.compilation ("name", release_year)
VALUES ('Invincible', 2001), ('Viva la Vida', 2008), ('Help!', 1965), ('Night Visions', 2012), ('Natural', 2018), ('Roots', 2015), ('Off the Wall', 1979), ('King of Pop', 2020);


INSERT INTO netology.album_connection
(id_albums, id_songwriter)
VALUES (1, 1), (2, 1), (3, 1), (4, 2), (5, 2), (6, 2), (7, 3), (8, 3), (9, 4), (10, 4), (11, 4),
(12, 5), (13, 6), (14, 6), (15, 6), (16, 7), (17, 7), (18, 8), (19, 8), (20, 9), (21, 9), (22, 9), (23, 9), (24, 9), (25, 9);


INSERT INTO netology.track_connection (id_track, id_compilation)
VALUES (1, 1), (2, 1), (3, 1), (4, 1), (5, 2), (6, 2), (7, 3), (8, 4), (9, 4), (10, 5), (11, 5), (13, 6), (14, 6), (15, 6), (16, 7), (17, 7), (18, 8), (19, 8), (20, 8),
(21, 4),
(22, 2),
(23, 5),
(24, 8),
(25, 5),
(26, 3),
(27, 1),
(28, 4),
(29, 6),
(30, 7),
(31, 7),
(32, 2),
(33, 1);